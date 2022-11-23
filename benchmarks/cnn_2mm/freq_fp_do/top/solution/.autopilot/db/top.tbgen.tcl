set moduleName top
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_chain
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {top}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem_A int 512 regular {axi_master 0}  }
	{ gmem_B int 512 regular {axi_master 0}  }
	{ gmem_C int 512 regular {axi_master 1}  }
	{ A int 64 regular {axi_slave 0}  }
	{ B int 64 regular {axi_slave 0}  }
	{ C int 64 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem_A", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "A","cData": "int512","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "A","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "gmem_B", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "B","cData": "int512","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "B","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "gmem_C", "interface" : "axi_master", "bitwidth" : 512, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "C","cData": "int512","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "C","bundle": "control"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "A", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "B", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "C", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} ]}
# RTL Port declarations: 
set portNum 155
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_gmem_A_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_A_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_A_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_A_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_A_AWLEN sc_out sc_lv 8 signal 0 } 
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
	{ m_axi_gmem_A_ARLEN sc_out sc_lv 8 signal 0 } 
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
	{ m_axi_gmem_B_AWLEN sc_out sc_lv 8 signal 1 } 
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
	{ m_axi_gmem_B_ARLEN sc_out sc_lv 8 signal 1 } 
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
	{ m_axi_gmem_C_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_C_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_C_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem_C_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_C_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem_C_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_C_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_C_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_C_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_C_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_C_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_C_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_C_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_C_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_C_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_C_WDATA sc_out sc_lv 512 signal 2 } 
	{ m_axi_gmem_C_WSTRB sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem_C_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_C_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_C_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_C_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_C_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_C_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem_C_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_C_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem_C_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_C_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_C_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_C_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_C_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_C_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_C_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_C_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_C_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_C_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_C_RDATA sc_in sc_lv 512 signal 2 } 
	{ m_axi_gmem_C_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_C_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_C_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_C_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem_C_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_C_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_C_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem_C_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_C_BUSER sc_in sc_lv 1 signal 2 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"top","role":"start","value":"0","valid_bit":"0"},{"name":"top","role":"continue","value":"0","valid_bit":"4"},{"name":"top","role":"auto_start","value":"0","valid_bit":"7"},{"name":"A","role":"data","value":"16"},{"name":"B","role":"data","value":"28"},{"name":"C","role":"data","value":"40"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"top","role":"start","value":"0","valid_bit":"0"},{"name":"top","role":"done","value":"0","valid_bit":"1"},{"name":"top","role":"idle","value":"0","valid_bit":"2"},{"name":"top","role":"ready","value":"0","valid_bit":"3"},{"name":"top","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmem_A_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_A_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_A_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_A", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_A_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_A_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_A", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_gmem_A_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_A", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_gmem_B_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_B", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_gmem_B_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_B", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_gmem_C_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_C_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_C_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_C", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_C_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_C_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_C", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_gmem_C_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_C", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_gmem_C_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "432", "860"],
		"CDFG" : "top",
		"Protocol" : "ap_ctrl_chain",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8933291", "EstimateLatencyMax" : "8933291",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "gmem_A", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_kernel3_x0_fu_92", "Port" : "gmem_A"}]},
			{"Name" : "gmem_B", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_kernel3_x0_fu_92", "Port" : "gmem_B"}]},
			{"Name" : "gmem_C", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "432", "SubInstance" : "grp_kernel3_x1_fu_106", "Port" : "gmem_C"}]},
			{"Name" : "A", "Type" : "None", "Direction" : "I"},
			{"Name" : "B", "Type" : "None", "Direction" : "I"},
			{"Name" : "C", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_A_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_B_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_C_m_axi_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_xout0_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_xin1_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92", "Parent" : "0", "Child" : ["8", "9", "10", "12", "14", "16", "18", "20", "22", "24", "26", "28", "30", "32", "34", "36", "37", "39", "41", "47", "53", "59", "65", "71", "77", "83", "89", "95", "101", "107", "113", "119", "125", "131", "137", "143", "149", "155", "161", "167", "173", "179", "185", "191", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "215", "218", "221", "224", "227", "230", "233", "236", "239", "242", "245", "248", "251", "254", "257", "260", "263", "266", "269", "272", "275", "278", "281", "284", "287", "290", "291", "292", "294", "295", "296", "297", "298", "299", "300", "301", "302", "303", "304", "305", "306", "307", "308", "309", "310", "311", "312", "313", "314", "315", "316", "317", "318", "319", "320", "321", "322", "323", "324", "325", "326", "327", "328", "329", "330", "331", "332", "333", "334", "335", "336", "337", "338", "339", "340", "341", "342", "343", "344", "345", "346", "347", "348", "349", "350", "351", "352", "353", "354", "355", "356", "357", "358", "359", "360", "361", "362", "363", "364", "365", "366", "367", "368", "369", "370", "371", "372", "373", "374", "375", "376", "377", "378", "379", "380", "381", "382", "383", "384", "385", "386", "387", "388", "389", "390", "391", "392", "393", "394", "395", "396", "397", "398", "399", "400", "401", "402", "403", "404", "405", "406", "407", "408", "409", "410", "411", "412", "413", "414", "415", "416", "417", "418", "419", "420", "421", "422", "423", "424", "425", "426", "427", "428", "429", "430", "431"],
		"CDFG" : "kernel3_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4232565", "EstimateLatencyMax" : "4232565",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "8", "Name" : "kernel3_x0_entry38_U0"},
			{"ID" : "9", "Name" : "A_IO_L3_in_x0_U0"},
			{"ID" : "36", "Name" : "B_IO_L3_in_x0_U0"}],
		"OutputProcess" : [
			{"ID" : "197", "Name" : "A_PE_dummy_0_x0_U0"},
			{"ID" : "198", "Name" : "A_PE_dummy_1_x0_U0"},
			{"ID" : "199", "Name" : "A_PE_dummy_2_x0_U0"},
			{"ID" : "200", "Name" : "A_PE_dummy_3_x0_U0"},
			{"ID" : "201", "Name" : "A_PE_dummy_4_x0_U0"},
			{"ID" : "202", "Name" : "A_PE_dummy_5_x0_U0"},
			{"ID" : "203", "Name" : "A_PE_dummy_6_x0_U0"},
			{"ID" : "204", "Name" : "A_PE_dummy_7_x0_U0"},
			{"ID" : "205", "Name" : "A_PE_dummy_8_x0_U0"},
			{"ID" : "206", "Name" : "A_PE_dummy_9_x0_U0"},
			{"ID" : "207", "Name" : "A_PE_dummy_10_x0_U0"},
			{"ID" : "208", "Name" : "A_PE_dummy_11_x0_U0"},
			{"ID" : "209", "Name" : "A_PE_dummy_12_x0_U0"},
			{"ID" : "210", "Name" : "B_PE_dummy_0_x0_U0"},
			{"ID" : "211", "Name" : "B_PE_dummy_1_x0_U0"},
			{"ID" : "292", "Name" : "C_drain_IO_L3_out_x0_U0"}],
		"Port" : [
			{"Name" : "gmem_A", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "A_IO_L3_in_x0_U0", "Port" : "gmem_A"}]},
			{"Name" : "gmem_B", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "B_IO_L3_in_x0_U0", "Port" : "gmem_B"}]},
			{"Name" : "A", "Type" : "None", "Direction" : "I"},
			{"Name" : "B", "Type" : "None", "Direction" : "I"},
			{"Name" : "C", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "292", "SubInstance" : "C_drain_IO_L3_out_x0_U0", "Port" : "C"}]}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.kernel3_x0_entry38_U0", "Parent" : "7",
		"CDFG" : "kernel3_x0_entry38",
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
			{"Name" : "A_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "294", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "A_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "36", "DependentChan" : "295", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L3_in_x0_U0", "Parent" : "7",
		"CDFG" : "A_IO_L3_in_x0",
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
			{"Name" : "gmem_A", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_A_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_A_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_local_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "296", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_local_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "294", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "A_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_0_x0_U0", "Parent" : "7", "Child" : ["11"],
		"CDFG" : "A_IO_L2_in_0_x0",
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
			{"Name" : "fifo_A_A_IO_L2_in_0_x01", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "296", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_0_x01_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_1_x02", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "12", "DependentChan" : "297", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x02_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_0_x016", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "41", "DependentChan" : "298", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x016_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_0_x0_U0.local_A_pong_V_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_1_x0_U0", "Parent" : "7", "Child" : ["13"],
		"CDFG" : "A_IO_L2_in_1_x0",
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
			{"Name" : "fifo_A_A_IO_L2_in_1_x02", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "297", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x02_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_2_x03", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "299", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x03_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_0_x019", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "53", "DependentChan" : "300", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x019_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_1_x0_U0.local_A_pong_V_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_2_x0_U0", "Parent" : "7", "Child" : ["15"],
		"CDFG" : "A_IO_L2_in_2_x0",
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
			{"Name" : "fifo_A_A_IO_L2_in_2_x03", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "299", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x03_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_3_x04", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "16", "DependentChan" : "301", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x04_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_0_x022", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "65", "DependentChan" : "302", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x022_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_2_x0_U0.local_A_pong_V_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_3_x0_U0", "Parent" : "7", "Child" : ["17"],
		"CDFG" : "A_IO_L2_in_3_x0",
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
			{"Name" : "fifo_A_A_IO_L2_in_3_x04", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "301", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x04_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_4_x05", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "303", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_4_x05_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_0_x025", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "77", "DependentChan" : "304", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x025_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_3_x0_U0.local_A_pong_V_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_4_x0_U0", "Parent" : "7", "Child" : ["19"],
		"CDFG" : "A_IO_L2_in_4_x0",
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
			{"Name" : "fifo_A_A_IO_L2_in_4_x05", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "303", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_4_x05_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_5_x06", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "305", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_5_x06_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_0_x028", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "89", "DependentChan" : "306", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_0_x028_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_4_x0_U0.local_A_pong_V_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_5_x0_U0", "Parent" : "7", "Child" : ["21"],
		"CDFG" : "A_IO_L2_in_5_x0",
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
			{"Name" : "fifo_A_A_IO_L2_in_5_x06", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "305", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_5_x06_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_6_x07", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "307", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_6_x07_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_0_x031", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "101", "DependentChan" : "308", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_0_x031_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_5_x0_U0.local_A_pong_V_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_6_x0_U0", "Parent" : "7", "Child" : ["23"],
		"CDFG" : "A_IO_L2_in_6_x0",
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
			{"Name" : "fifo_A_A_IO_L2_in_6_x07", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "307", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_6_x07_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_7_x08", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "309", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_7_x08_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_0_x034", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "113", "DependentChan" : "310", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_0_x034_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_6_x0_U0.local_A_pong_V_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_7_x0_U0", "Parent" : "7", "Child" : ["25"],
		"CDFG" : "A_IO_L2_in_7_x0",
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
			{"Name" : "fifo_A_A_IO_L2_in_7_x08", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "309", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_7_x08_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_8_x09", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "26", "DependentChan" : "311", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_8_x09_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_0_x037", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "125", "DependentChan" : "312", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_0_x037_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_7_x0_U0.local_A_pong_V_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_8_x0_U0", "Parent" : "7", "Child" : ["27"],
		"CDFG" : "A_IO_L2_in_8_x0",
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
			{"Name" : "fifo_A_A_IO_L2_in_8_x09", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "311", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_8_x09_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_9_x010", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "28", "DependentChan" : "313", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_9_x010_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_8_0_x040", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "137", "DependentChan" : "314", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_0_x040_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_8_x0_U0.local_A_pong_V_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_9_x0_U0", "Parent" : "7", "Child" : ["29"],
		"CDFG" : "A_IO_L2_in_9_x0",
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
			{"Name" : "fifo_A_A_IO_L2_in_9_x010", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "26", "DependentChan" : "313", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_9_x010_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_10_x011", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "30", "DependentChan" : "315", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_10_x011_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_9_0_x043", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "149", "DependentChan" : "316", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_0_x043_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_9_x0_U0.local_A_pong_V_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_10_x0_U0", "Parent" : "7", "Child" : ["31"],
		"CDFG" : "A_IO_L2_in_10_x0",
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
			{"Name" : "fifo_A_A_IO_L2_in_10_x011", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "28", "DependentChan" : "315", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_10_x011_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_11_x012", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "32", "DependentChan" : "317", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_11_x012_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_10_0_x046", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "161", "DependentChan" : "318", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_0_x046_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_10_x0_U0.local_A_pong_V_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_11_x0_U0", "Parent" : "7", "Child" : ["33"],
		"CDFG" : "A_IO_L2_in_11_x0",
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
			{"Name" : "fifo_A_A_IO_L2_in_11_x012", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "30", "DependentChan" : "317", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_11_x012_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_12_x013", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "319", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_12_x013_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_11_0_x049", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "173", "DependentChan" : "320", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_0_x049_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_11_x0_U0.local_A_pong_V_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_boundary_x0_U0", "Parent" : "7", "Child" : ["35"],
		"CDFG" : "A_IO_L2_in_boundary_x0",
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
			{"Name" : "fifo_A_A_IO_L2_in_12_x013", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "319", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_12_x013_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_12_0_x052", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "185", "DependentChan" : "321", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_0_x052_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_boundary_x0_U0.local_A_pong_V_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.B_IO_L3_in_x0_U0", "Parent" : "7",
		"CDFG" : "B_IO_L3_in_x0",
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
			{"Name" : "fifo_B_local_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "322", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_local_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "295", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.B_IO_L2_in_x0_U0", "Parent" : "7", "Child" : ["38"],
		"CDFG" : "B_IO_L2_in_x0",
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
			{"Name" : "fifo_B_B_IO_L2_in_0_x014", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "36", "DependentChan" : "322", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_0_x014_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_1_x015", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "39", "DependentChan" : "323", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x015_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x055", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "41", "DependentChan" : "324", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x055_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.B_IO_L2_in_x0_U0.local_B_pong_V_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.B_IO_L2_in_boundary_x0_U0", "Parent" : "7", "Child" : ["40"],
		"CDFG" : "B_IO_L2_in_boundary_x0",
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
			{"Name" : "fifo_B_B_IO_L2_in_1_x015", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "37", "DependentChan" : "323", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x015_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x069", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "47", "DependentChan" : "325", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x069_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.B_IO_L2_in_boundary_x0_U0.local_B_pong_V_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_0_0_x0_U0", "Parent" : "7", "Child" : ["42", "43", "44", "45", "46"],
		"CDFG" : "PE_wrapper_0_0_x0",
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
			{"Name" : "fifo_A_PE_0_0_x016", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "298", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x016_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_1_x017", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "47", "DependentChan" : "326", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x017_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x055", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "37", "DependentChan" : "324", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x055_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x056", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "53", "DependentChan" : "327", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x056_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_0_x083", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "248", "DependentChan" : "328", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_0_x083_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_0_0_x0_U0.local_A_0_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_0_0_x0_U0.local_B_0_U", "Parent" : "41"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_0_0_x0_U0.local_C_U", "Parent" : "41"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_0_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U56", "Parent" : "41"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_0_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U57", "Parent" : "41"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_0_1_x0_U0", "Parent" : "7", "Child" : ["48", "49", "50", "51", "52"],
		"CDFG" : "PE_wrapper_0_1_x0",
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
			{"Name" : "fifo_A_PE_0_1_x017", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "41", "DependentChan" : "326", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x017_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_2_x018", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "197", "DependentChan" : "329", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x018_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x069", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "39", "DependentChan" : "325", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x069_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x070", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "59", "DependentChan" : "330", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x070_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_1_x096", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "287", "DependentChan" : "331", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_1_x096_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_0_1_x0_U0.local_A_0_U", "Parent" : "47"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_0_1_x0_U0.local_B_0_U", "Parent" : "47"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_0_1_x0_U0.local_C_U", "Parent" : "47"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_0_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U67", "Parent" : "47"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_0_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U68", "Parent" : "47"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_1_0_x0_U0", "Parent" : "7", "Child" : ["54", "55", "56", "57", "58"],
		"CDFG" : "PE_wrapper_1_0_x0",
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
			{"Name" : "fifo_A_PE_1_0_x019", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "300", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x019_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_1_x020", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "59", "DependentChan" : "332", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x020_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x056", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "41", "DependentChan" : "327", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x056_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x057", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "65", "DependentChan" : "333", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x057_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_0_x084", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "245", "DependentChan" : "334", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_0_x084_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_1_0_x0_U0.local_A_0_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_1_0_x0_U0.local_B_0_U", "Parent" : "53"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_1_0_x0_U0.local_C_U", "Parent" : "53"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_1_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U74", "Parent" : "53"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_1_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U75", "Parent" : "53"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_1_1_x0_U0", "Parent" : "7", "Child" : ["60", "61", "62", "63", "64"],
		"CDFG" : "PE_wrapper_1_1_x0",
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
			{"Name" : "fifo_A_PE_1_1_x020", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "53", "DependentChan" : "332", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x020_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_2_x021", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "198", "DependentChan" : "335", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x021_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x070", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "330", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x070_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x071", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "71", "DependentChan" : "336", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x071_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_1_x097", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "284", "DependentChan" : "337", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_1_x097_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_1_1_x0_U0.local_A_0_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_1_1_x0_U0.local_B_0_U", "Parent" : "59"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_1_1_x0_U0.local_C_U", "Parent" : "59"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_1_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U81", "Parent" : "59"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_1_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U82", "Parent" : "59"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_2_0_x0_U0", "Parent" : "7", "Child" : ["66", "67", "68", "69", "70"],
		"CDFG" : "PE_wrapper_2_0_x0",
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
			{"Name" : "fifo_A_PE_2_0_x022", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "302", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x022_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_1_x023", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "71", "DependentChan" : "338", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x023_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x057", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "53", "DependentChan" : "333", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x057_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x058", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "77", "DependentChan" : "339", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x058_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_0_x085", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "242", "DependentChan" : "340", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_0_x085_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_2_0_x0_U0.local_A_0_U", "Parent" : "65"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_2_0_x0_U0.local_B_0_U", "Parent" : "65"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_2_0_x0_U0.local_C_U", "Parent" : "65"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_2_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U88", "Parent" : "65"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_2_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U89", "Parent" : "65"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_2_1_x0_U0", "Parent" : "7", "Child" : ["72", "73", "74", "75", "76"],
		"CDFG" : "PE_wrapper_2_1_x0",
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
			{"Name" : "fifo_A_PE_2_1_x023", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "338", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x023_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_2_x024", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "199", "DependentChan" : "341", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x024_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x071", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "59", "DependentChan" : "336", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x071_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x072", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "83", "DependentChan" : "342", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x072_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_1_x098", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "281", "DependentChan" : "343", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_1_x098_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_2_1_x0_U0.local_A_0_U", "Parent" : "71"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_2_1_x0_U0.local_B_0_U", "Parent" : "71"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_2_1_x0_U0.local_C_U", "Parent" : "71"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_2_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U95", "Parent" : "71"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_2_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U96", "Parent" : "71"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_3_0_x0_U0", "Parent" : "7", "Child" : ["78", "79", "80", "81", "82"],
		"CDFG" : "PE_wrapper_3_0_x0",
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
			{"Name" : "fifo_A_PE_3_0_x025", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "304", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x025_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_1_x026", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "83", "DependentChan" : "344", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x026_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x058", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "339", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x058_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x059", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "89", "DependentChan" : "345", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x059_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_0_x086", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "239", "DependentChan" : "346", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_0_x086_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_3_0_x0_U0.local_A_0_U", "Parent" : "77"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_3_0_x0_U0.local_B_0_U", "Parent" : "77"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_3_0_x0_U0.local_C_U", "Parent" : "77"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_3_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U102", "Parent" : "77"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_3_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U103", "Parent" : "77"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_3_1_x0_U0", "Parent" : "7", "Child" : ["84", "85", "86", "87", "88"],
		"CDFG" : "PE_wrapper_3_1_x0",
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
			{"Name" : "fifo_A_PE_3_1_x026", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "77", "DependentChan" : "344", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x026_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_2_x027", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "200", "DependentChan" : "347", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x027_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x072", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "71", "DependentChan" : "342", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x072_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x073", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "95", "DependentChan" : "348", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x073_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_1_x099", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "278", "DependentChan" : "349", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_1_x099_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_3_1_x0_U0.local_A_0_U", "Parent" : "83"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_3_1_x0_U0.local_B_0_U", "Parent" : "83"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_3_1_x0_U0.local_C_U", "Parent" : "83"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_3_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U109", "Parent" : "83"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_3_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U110", "Parent" : "83"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_4_0_x0_U0", "Parent" : "7", "Child" : ["90", "91", "92", "93", "94"],
		"CDFG" : "PE_wrapper_4_0_x0",
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
			{"Name" : "fifo_A_PE_4_0_x028", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "306", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_0_x028_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_1_x029", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "95", "DependentChan" : "350", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x029_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x059", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "77", "DependentChan" : "345", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x059_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x060", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "101", "DependentChan" : "351", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x060_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_0_x087", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "236", "DependentChan" : "352", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_0_x087_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_4_0_x0_U0.local_A_0_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_4_0_x0_U0.local_B_0_U", "Parent" : "89"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_4_0_x0_U0.local_C_U", "Parent" : "89"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_4_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U116", "Parent" : "89"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_4_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U117", "Parent" : "89"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_4_1_x0_U0", "Parent" : "7", "Child" : ["96", "97", "98", "99", "100"],
		"CDFG" : "PE_wrapper_4_1_x0",
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
			{"Name" : "fifo_A_PE_4_1_x029", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "89", "DependentChan" : "350", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x029_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_2_x030", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "201", "DependentChan" : "353", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_2_x030_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x073", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "83", "DependentChan" : "348", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x073_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_1_x074", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "107", "DependentChan" : "354", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_1_x074_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_1_x0100", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "275", "DependentChan" : "355", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_1_x0100_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_4_1_x0_U0.local_A_0_U", "Parent" : "95"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_4_1_x0_U0.local_B_0_U", "Parent" : "95"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_4_1_x0_U0.local_C_U", "Parent" : "95"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_4_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U123", "Parent" : "95"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_4_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U124", "Parent" : "95"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_5_0_x0_U0", "Parent" : "7", "Child" : ["102", "103", "104", "105", "106"],
		"CDFG" : "PE_wrapper_5_0_x0",
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
			{"Name" : "fifo_A_PE_5_0_x031", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "308", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_0_x031_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_1_x032", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "107", "DependentChan" : "356", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_1_x032_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x060", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "89", "DependentChan" : "351", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x060_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_0_x061", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "113", "DependentChan" : "357", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_0_x061_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_0_x088", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "233", "DependentChan" : "358", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_0_x088_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_5_0_x0_U0.local_A_0_U", "Parent" : "101"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_5_0_x0_U0.local_B_0_U", "Parent" : "101"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_5_0_x0_U0.local_C_U", "Parent" : "101"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_5_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U130", "Parent" : "101"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_5_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U131", "Parent" : "101"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_5_1_x0_U0", "Parent" : "7", "Child" : ["108", "109", "110", "111", "112"],
		"CDFG" : "PE_wrapper_5_1_x0",
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
			{"Name" : "fifo_A_PE_5_1_x032", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "101", "DependentChan" : "356", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_1_x032_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_2_x033", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "202", "DependentChan" : "359", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_2_x033_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_1_x074", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "95", "DependentChan" : "354", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_1_x074_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x075", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "119", "DependentChan" : "360", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x075_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_1_x0101", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "272", "DependentChan" : "361", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_1_x0101_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_5_1_x0_U0.local_A_0_U", "Parent" : "107"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_5_1_x0_U0.local_B_0_U", "Parent" : "107"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_5_1_x0_U0.local_C_U", "Parent" : "107"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_5_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U137", "Parent" : "107"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_5_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U138", "Parent" : "107"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_6_0_x0_U0", "Parent" : "7", "Child" : ["114", "115", "116", "117", "118"],
		"CDFG" : "PE_wrapper_6_0_x0",
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
			{"Name" : "fifo_A_PE_6_0_x034", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "310", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_0_x034_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_1_x035", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "119", "DependentChan" : "362", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_1_x035_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_0_x061", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "101", "DependentChan" : "357", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_0_x061_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_0_x062", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "125", "DependentChan" : "363", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_0_x062_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_0_x089", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "230", "DependentChan" : "364", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_0_x089_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_6_0_x0_U0.local_A_0_U", "Parent" : "113"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_6_0_x0_U0.local_B_0_U", "Parent" : "113"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_6_0_x0_U0.local_C_U", "Parent" : "113"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_6_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U144", "Parent" : "113"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_6_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U145", "Parent" : "113"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_6_1_x0_U0", "Parent" : "7", "Child" : ["120", "121", "122", "123", "124"],
		"CDFG" : "PE_wrapper_6_1_x0",
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
			{"Name" : "fifo_A_PE_6_1_x035", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "113", "DependentChan" : "362", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_1_x035_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_2_x036", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "203", "DependentChan" : "365", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x036_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x075", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "107", "DependentChan" : "360", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x075_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_1_x076", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "131", "DependentChan" : "366", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_1_x076_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x0102", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "269", "DependentChan" : "367", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x0102_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_6_1_x0_U0.local_A_0_U", "Parent" : "119"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_6_1_x0_U0.local_B_0_U", "Parent" : "119"},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_6_1_x0_U0.local_C_U", "Parent" : "119"},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_6_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U151", "Parent" : "119"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_6_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U152", "Parent" : "119"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_7_0_x0_U0", "Parent" : "7", "Child" : ["126", "127", "128", "129", "130"],
		"CDFG" : "PE_wrapper_7_0_x0",
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
			{"Name" : "fifo_A_PE_7_0_x037", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "312", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_0_x037_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_1_x038", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "131", "DependentChan" : "368", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_1_x038_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_0_x062", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "113", "DependentChan" : "363", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_0_x062_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_0_x063", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "137", "DependentChan" : "369", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_0_x063_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_0_x090", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "227", "DependentChan" : "370", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_0_x090_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_7_0_x0_U0.local_A_0_U", "Parent" : "125"},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_7_0_x0_U0.local_B_0_U", "Parent" : "125"},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_7_0_x0_U0.local_C_U", "Parent" : "125"},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_7_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U158", "Parent" : "125"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_7_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U159", "Parent" : "125"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_7_1_x0_U0", "Parent" : "7", "Child" : ["132", "133", "134", "135", "136"],
		"CDFG" : "PE_wrapper_7_1_x0",
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
			{"Name" : "fifo_A_PE_7_1_x038", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "125", "DependentChan" : "368", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_1_x038_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_2_x039", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "204", "DependentChan" : "371", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_2_x039_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_1_x076", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "119", "DependentChan" : "366", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_1_x076_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_1_x077", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "143", "DependentChan" : "372", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_1_x077_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_1_x0103", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "266", "DependentChan" : "373", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_1_x0103_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_7_1_x0_U0.local_A_0_U", "Parent" : "131"},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_7_1_x0_U0.local_B_0_U", "Parent" : "131"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_7_1_x0_U0.local_C_U", "Parent" : "131"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_7_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U165", "Parent" : "131"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_7_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U166", "Parent" : "131"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_8_0_x0_U0", "Parent" : "7", "Child" : ["138", "139", "140", "141", "142"],
		"CDFG" : "PE_wrapper_8_0_x0",
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
			{"Name" : "fifo_A_PE_8_0_x040", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "26", "DependentChan" : "314", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_0_x040_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_8_1_x041", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "143", "DependentChan" : "374", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_1_x041_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_0_x063", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "125", "DependentChan" : "369", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_0_x063_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_0_x064", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "149", "DependentChan" : "375", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_0_x064_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_0_x091", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "224", "DependentChan" : "376", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_0_x091_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_8_0_x0_U0.local_A_0_U", "Parent" : "137"},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_8_0_x0_U0.local_B_0_U", "Parent" : "137"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_8_0_x0_U0.local_C_U", "Parent" : "137"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_8_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U172", "Parent" : "137"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_8_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U173", "Parent" : "137"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_8_1_x0_U0", "Parent" : "7", "Child" : ["144", "145", "146", "147", "148"],
		"CDFG" : "PE_wrapper_8_1_x0",
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
			{"Name" : "fifo_A_PE_8_1_x041", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "137", "DependentChan" : "374", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_1_x041_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_8_2_x042", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "205", "DependentChan" : "377", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_2_x042_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_1_x077", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "131", "DependentChan" : "372", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_1_x077_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_1_x078", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "155", "DependentChan" : "378", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_1_x078_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_1_x0104", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "263", "DependentChan" : "379", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_1_x0104_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_8_1_x0_U0.local_A_0_U", "Parent" : "143"},
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_8_1_x0_U0.local_B_0_U", "Parent" : "143"},
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_8_1_x0_U0.local_C_U", "Parent" : "143"},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_8_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U179", "Parent" : "143"},
	{"ID" : "148", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_8_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U180", "Parent" : "143"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_9_0_x0_U0", "Parent" : "7", "Child" : ["150", "151", "152", "153", "154"],
		"CDFG" : "PE_wrapper_9_0_x0",
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
			{"Name" : "fifo_A_PE_9_0_x043", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "28", "DependentChan" : "316", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_0_x043_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_9_1_x044", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "155", "DependentChan" : "380", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_1_x044_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_0_x064", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "137", "DependentChan" : "375", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_0_x064_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_0_x065", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "161", "DependentChan" : "381", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_0_x065_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_0_x092", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "221", "DependentChan" : "382", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_0_x092_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_9_0_x0_U0.local_A_0_U", "Parent" : "149"},
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_9_0_x0_U0.local_B_0_U", "Parent" : "149"},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_9_0_x0_U0.local_C_U", "Parent" : "149"},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_9_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U186", "Parent" : "149"},
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_9_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U187", "Parent" : "149"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_9_1_x0_U0", "Parent" : "7", "Child" : ["156", "157", "158", "159", "160"],
		"CDFG" : "PE_wrapper_9_1_x0",
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
			{"Name" : "fifo_A_PE_9_1_x044", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "149", "DependentChan" : "380", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_1_x044_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_9_2_x045", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "206", "DependentChan" : "383", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_2_x045_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_1_x078", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "143", "DependentChan" : "378", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_1_x078_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_1_x079", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "167", "DependentChan" : "384", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_1_x079_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_1_x0105", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "260", "DependentChan" : "385", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_1_x0105_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "156", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_9_1_x0_U0.local_A_0_U", "Parent" : "155"},
	{"ID" : "157", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_9_1_x0_U0.local_B_0_U", "Parent" : "155"},
	{"ID" : "158", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_9_1_x0_U0.local_C_U", "Parent" : "155"},
	{"ID" : "159", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_9_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U193", "Parent" : "155"},
	{"ID" : "160", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_9_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U194", "Parent" : "155"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_10_0_x0_U0", "Parent" : "7", "Child" : ["162", "163", "164", "165", "166"],
		"CDFG" : "PE_wrapper_10_0_x0",
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
			{"Name" : "fifo_A_PE_10_0_x046", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "30", "DependentChan" : "318", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_0_x046_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_10_1_x047", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "167", "DependentChan" : "386", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_1_x047_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_0_x065", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "149", "DependentChan" : "381", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_0_x065_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_0_x066", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "173", "DependentChan" : "387", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_0_x066_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_0_x093", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "218", "DependentChan" : "388", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_0_x093_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "162", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_10_0_x0_U0.local_A_0_U", "Parent" : "161"},
	{"ID" : "163", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_10_0_x0_U0.local_B_0_U", "Parent" : "161"},
	{"ID" : "164", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_10_0_x0_U0.local_C_U", "Parent" : "161"},
	{"ID" : "165", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_10_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U200", "Parent" : "161"},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_10_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U201", "Parent" : "161"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_10_1_x0_U0", "Parent" : "7", "Child" : ["168", "169", "170", "171", "172"],
		"CDFG" : "PE_wrapper_10_1_x0",
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
			{"Name" : "fifo_A_PE_10_1_x047", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "161", "DependentChan" : "386", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_1_x047_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_10_2_x048", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "207", "DependentChan" : "389", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_2_x048_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_1_x079", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "155", "DependentChan" : "384", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_1_x079_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_1_x080", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "179", "DependentChan" : "390", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_1_x080_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_1_x0106", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "257", "DependentChan" : "391", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_1_x0106_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_10_1_x0_U0.local_A_0_U", "Parent" : "167"},
	{"ID" : "169", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_10_1_x0_U0.local_B_0_U", "Parent" : "167"},
	{"ID" : "170", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_10_1_x0_U0.local_C_U", "Parent" : "167"},
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_10_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U207", "Parent" : "167"},
	{"ID" : "172", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_10_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U208", "Parent" : "167"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_11_0_x0_U0", "Parent" : "7", "Child" : ["174", "175", "176", "177", "178"],
		"CDFG" : "PE_wrapper_11_0_x0",
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
			{"Name" : "fifo_A_PE_11_0_x049", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "320", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_0_x049_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_11_1_x050", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "179", "DependentChan" : "392", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_1_x050_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_0_x066", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "161", "DependentChan" : "387", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_0_x066_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_0_x067", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "185", "DependentChan" : "393", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_0_x067_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_0_x094", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "215", "DependentChan" : "394", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_0_x094_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_11_0_x0_U0.local_A_0_U", "Parent" : "173"},
	{"ID" : "175", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_11_0_x0_U0.local_B_0_U", "Parent" : "173"},
	{"ID" : "176", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_11_0_x0_U0.local_C_U", "Parent" : "173"},
	{"ID" : "177", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_11_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U214", "Parent" : "173"},
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_11_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U215", "Parent" : "173"},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_11_1_x0_U0", "Parent" : "7", "Child" : ["180", "181", "182", "183", "184"],
		"CDFG" : "PE_wrapper_11_1_x0",
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
			{"Name" : "fifo_A_PE_11_1_x050", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "173", "DependentChan" : "392", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_1_x050_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_11_2_x051", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "208", "DependentChan" : "395", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_2_x051_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_1_x080", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "167", "DependentChan" : "390", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_1_x080_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_1_x081", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "191", "DependentChan" : "396", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_1_x081_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_1_x0107", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "254", "DependentChan" : "397", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_1_x0107_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "180", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_11_1_x0_U0.local_A_0_U", "Parent" : "179"},
	{"ID" : "181", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_11_1_x0_U0.local_B_0_U", "Parent" : "179"},
	{"ID" : "182", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_11_1_x0_U0.local_C_U", "Parent" : "179"},
	{"ID" : "183", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_11_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U221", "Parent" : "179"},
	{"ID" : "184", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_11_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U222", "Parent" : "179"},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_12_0_x0_U0", "Parent" : "7", "Child" : ["186", "187", "188", "189", "190"],
		"CDFG" : "PE_wrapper_12_0_x0",
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
			{"Name" : "fifo_A_PE_12_0_x052", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "321", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_0_x052_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_12_1_x053", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "191", "DependentChan" : "398", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_1_x053_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_0_x067", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "173", "DependentChan" : "393", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_0_x067_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_13_0_x068", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "210", "DependentChan" : "399", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_0_x068_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_0_x095", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "212", "DependentChan" : "400", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_0_x095_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "186", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_12_0_x0_U0.local_A_0_U", "Parent" : "185"},
	{"ID" : "187", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_12_0_x0_U0.local_B_0_U", "Parent" : "185"},
	{"ID" : "188", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_12_0_x0_U0.local_C_U", "Parent" : "185"},
	{"ID" : "189", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_12_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U228", "Parent" : "185"},
	{"ID" : "190", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_12_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U229", "Parent" : "185"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_12_1_x0_U0", "Parent" : "7", "Child" : ["192", "193", "194", "195", "196"],
		"CDFG" : "PE_wrapper_12_1_x0",
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
			{"Name" : "fifo_A_PE_12_1_x053", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "185", "DependentChan" : "398", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_1_x053_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_12_2_x054", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "209", "DependentChan" : "401", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_2_x054_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_1_x081", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "179", "DependentChan" : "396", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_1_x081_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_13_1_x082", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "211", "DependentChan" : "402", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_1_x082_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_1_x0108", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "251", "DependentChan" : "403", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_1_x0108_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "192", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_12_1_x0_U0.local_A_0_U", "Parent" : "191"},
	{"ID" : "193", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_12_1_x0_U0.local_B_0_U", "Parent" : "191"},
	{"ID" : "194", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_12_1_x0_U0.local_C_U", "Parent" : "191"},
	{"ID" : "195", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_12_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U235", "Parent" : "191"},
	{"ID" : "196", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_12_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U236", "Parent" : "191"},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_PE_dummy_0_x0_U0", "Parent" : "7",
		"CDFG" : "A_PE_dummy_0_x0",
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
			{"Name" : "fifo_A_PE_0_2_x018", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "329", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x018_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_PE_dummy_1_x0_U0", "Parent" : "7",
		"CDFG" : "A_PE_dummy_1_x0",
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
			{"Name" : "fifo_A_PE_1_2_x021", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "59", "DependentChan" : "335", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x021_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_PE_dummy_2_x0_U0", "Parent" : "7",
		"CDFG" : "A_PE_dummy_2_x0",
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
			{"Name" : "fifo_A_PE_2_2_x024", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "71", "DependentChan" : "341", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x024_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_PE_dummy_3_x0_U0", "Parent" : "7",
		"CDFG" : "A_PE_dummy_3_x0",
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
			{"Name" : "fifo_A_PE_3_2_x027", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "83", "DependentChan" : "347", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x027_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_PE_dummy_4_x0_U0", "Parent" : "7",
		"CDFG" : "A_PE_dummy_4_x0",
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
			{"Name" : "fifo_A_PE_4_2_x030", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "95", "DependentChan" : "353", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_2_x030_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_PE_dummy_5_x0_U0", "Parent" : "7",
		"CDFG" : "A_PE_dummy_5_x0",
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
			{"Name" : "fifo_A_PE_5_2_x033", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "107", "DependentChan" : "359", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_2_x033_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_PE_dummy_6_x0_U0", "Parent" : "7",
		"CDFG" : "A_PE_dummy_6_x0",
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
			{"Name" : "fifo_A_PE_6_2_x036", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "119", "DependentChan" : "365", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x036_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_PE_dummy_7_x0_U0", "Parent" : "7",
		"CDFG" : "A_PE_dummy_7_x0",
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
			{"Name" : "fifo_A_PE_7_2_x039", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "131", "DependentChan" : "371", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_2_x039_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_PE_dummy_8_x0_U0", "Parent" : "7",
		"CDFG" : "A_PE_dummy_8_x0",
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
			{"Name" : "fifo_A_PE_8_2_x042", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "143", "DependentChan" : "377", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_2_x042_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_PE_dummy_9_x0_U0", "Parent" : "7",
		"CDFG" : "A_PE_dummy_9_x0",
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
			{"Name" : "fifo_A_PE_9_2_x045", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "155", "DependentChan" : "383", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_2_x045_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_PE_dummy_10_x0_U0", "Parent" : "7",
		"CDFG" : "A_PE_dummy_10_x0",
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
			{"Name" : "fifo_A_PE_10_2_x048", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "167", "DependentChan" : "389", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_2_x048_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "208", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_PE_dummy_11_x0_U0", "Parent" : "7",
		"CDFG" : "A_PE_dummy_11_x0",
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
			{"Name" : "fifo_A_PE_11_2_x051", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "179", "DependentChan" : "395", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_2_x051_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_PE_dummy_12_x0_U0", "Parent" : "7",
		"CDFG" : "A_PE_dummy_12_x0",
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
			{"Name" : "fifo_A_PE_12_2_x054", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "191", "DependentChan" : "401", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_2_x054_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.B_PE_dummy_0_x0_U0", "Parent" : "7",
		"CDFG" : "B_PE_dummy_0_x0",
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
			{"Name" : "fifo_B_PE_13_0_x068", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "185", "DependentChan" : "399", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_0_x068_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.B_PE_dummy_1_x0_U0", "Parent" : "7",
		"CDFG" : "B_PE_dummy_1_x0",
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
			{"Name" : "fifo_B_PE_13_1_x082", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "191", "DependentChan" : "402", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_1_x082_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_boundary_0_x0_U0", "Parent" : "7", "Child" : ["213", "214"],
		"CDFG" : "C_drain_IO_L1_out_boundary_0_x0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x0121", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "215", "DependentChan" : "404", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x0121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_0_x095", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "185", "DependentChan" : "400", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_0_x095_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "213", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_boundary_0_x0_U0.local_C_V_U", "Parent" : "212"},
	{"ID" : "214", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_boundary_0_x0_U0.buf_data_split_V_U", "Parent" : "212"},
	{"ID" : "215", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_0_x0_U0", "Parent" : "7", "Child" : ["216", "217"],
		"CDFG" : "C_drain_IO_L1_out_0_x0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x0121", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "212", "DependentChan" : "404", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x0121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x0120", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "218", "DependentChan" : "405", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x0120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_0_x094", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "173", "DependentChan" : "394", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_0_x094_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "216", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_0_x0_U0.local_C_V_U", "Parent" : "215"},
	{"ID" : "217", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_0_x0_U0.buf_data_split_V_U", "Parent" : "215"},
	{"ID" : "218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_1_x0_U0", "Parent" : "7", "Child" : ["219", "220"],
		"CDFG" : "C_drain_IO_L1_out_1_x0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x0120", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "215", "DependentChan" : "405", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x0120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x0119", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "221", "DependentChan" : "406", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x0119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_0_x093", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "161", "DependentChan" : "388", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_0_x093_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "219", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_1_x0_U0.local_C_V_U", "Parent" : "218"},
	{"ID" : "220", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_1_x0_U0.buf_data_split_V_U", "Parent" : "218"},
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_2_x0_U0", "Parent" : "7", "Child" : ["222", "223"],
		"CDFG" : "C_drain_IO_L1_out_2_x0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x0119", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "218", "DependentChan" : "406", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x0119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x0118", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "224", "DependentChan" : "407", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x0118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_0_x092", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "149", "DependentChan" : "382", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_0_x092_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "222", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_2_x0_U0.local_C_V_U", "Parent" : "221"},
	{"ID" : "223", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_2_x0_U0.buf_data_split_V_U", "Parent" : "221"},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_3_x0_U0", "Parent" : "7", "Child" : ["225", "226"],
		"CDFG" : "C_drain_IO_L1_out_3_x0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x0118", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "221", "DependentChan" : "407", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x0118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x0117", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "227", "DependentChan" : "408", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x0117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_0_x091", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "137", "DependentChan" : "376", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_0_x091_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "225", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_3_x0_U0.local_C_V_U", "Parent" : "224"},
	{"ID" : "226", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_3_x0_U0.buf_data_split_V_U", "Parent" : "224"},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_4_x0_U0", "Parent" : "7", "Child" : ["228", "229"],
		"CDFG" : "C_drain_IO_L1_out_4_x0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x0117", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "224", "DependentChan" : "408", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x0117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x0116", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "230", "DependentChan" : "409", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x0116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_0_x090", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "125", "DependentChan" : "370", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_0_x090_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "228", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_4_x0_U0.local_C_V_U", "Parent" : "227"},
	{"ID" : "229", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_4_x0_U0.buf_data_split_V_U", "Parent" : "227"},
	{"ID" : "230", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_5_x0_U0", "Parent" : "7", "Child" : ["231", "232"],
		"CDFG" : "C_drain_IO_L1_out_5_x0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x0116", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "227", "DependentChan" : "409", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x0116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x0115", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "233", "DependentChan" : "410", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x0115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_0_x089", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "113", "DependentChan" : "364", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_0_x089_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "231", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_5_x0_U0.local_C_V_U", "Parent" : "230"},
	{"ID" : "232", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_5_x0_U0.buf_data_split_V_U", "Parent" : "230"},
	{"ID" : "233", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_6_x0_U0", "Parent" : "7", "Child" : ["234", "235"],
		"CDFG" : "C_drain_IO_L1_out_6_x0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x0115", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "230", "DependentChan" : "410", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x0115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x0114", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "236", "DependentChan" : "411", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x0114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_0_x088", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "101", "DependentChan" : "358", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_0_x088_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "234", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_6_x0_U0.local_C_V_U", "Parent" : "233"},
	{"ID" : "235", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_6_x0_U0.buf_data_split_V_U", "Parent" : "233"},
	{"ID" : "236", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_7_x0_U0", "Parent" : "7", "Child" : ["237", "238"],
		"CDFG" : "C_drain_IO_L1_out_7_x0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x0114", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "233", "DependentChan" : "411", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x0114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x0113", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "239", "DependentChan" : "412", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x0113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_0_x087", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "89", "DependentChan" : "352", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_0_x087_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "237", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_7_x0_U0.local_C_V_U", "Parent" : "236"},
	{"ID" : "238", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_7_x0_U0.buf_data_split_V_U", "Parent" : "236"},
	{"ID" : "239", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_8_x0_U0", "Parent" : "7", "Child" : ["240", "241"],
		"CDFG" : "C_drain_IO_L1_out_8_x0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x0113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "236", "DependentChan" : "412", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x0113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x0112", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "242", "DependentChan" : "413", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x0112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_0_x086", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "77", "DependentChan" : "346", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_0_x086_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "240", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_8_x0_U0.local_C_V_U", "Parent" : "239"},
	{"ID" : "241", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_8_x0_U0.buf_data_split_V_U", "Parent" : "239"},
	{"ID" : "242", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_9_x0_U0", "Parent" : "7", "Child" : ["243", "244"],
		"CDFG" : "C_drain_IO_L1_out_9_x0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x0112", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "239", "DependentChan" : "413", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x0112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x0111", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "245", "DependentChan" : "414", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x0111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_0_x085", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "340", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_0_x085_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "243", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_9_x0_U0.local_C_V_U", "Parent" : "242"},
	{"ID" : "244", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_9_x0_U0.buf_data_split_V_U", "Parent" : "242"},
	{"ID" : "245", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_10_x0_U0", "Parent" : "7", "Child" : ["246", "247"],
		"CDFG" : "C_drain_IO_L1_out_10_x0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x0111", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "242", "DependentChan" : "414", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x0111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x0110", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "248", "DependentChan" : "415", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x0110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_0_x084", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "53", "DependentChan" : "334", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_0_x084_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "246", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_10_x0_U0.local_C_V_U", "Parent" : "245"},
	{"ID" : "247", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_10_x0_U0.buf_data_split_V_U", "Parent" : "245"},
	{"ID" : "248", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_11_x0_U0", "Parent" : "7", "Child" : ["249", "250"],
		"CDFG" : "C_drain_IO_L1_out_11_x0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x0110", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "245", "DependentChan" : "415", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x0110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x0109", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "291", "DependentChan" : "416", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x0109_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_0_x083", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "41", "DependentChan" : "328", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_0_x083_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "249", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_11_x0_U0.local_C_V_U", "Parent" : "248"},
	{"ID" : "250", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_11_x0_U0.buf_data_split_V_U", "Parent" : "248"},
	{"ID" : "251", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_boundary_1_x0_U0", "Parent" : "7", "Child" : ["252", "253"],
		"CDFG" : "C_drain_IO_L1_out_boundary_1_x0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x0134", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "254", "DependentChan" : "417", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x0134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_1_x0108", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "191", "DependentChan" : "403", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_1_x0108_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "252", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_boundary_1_x0_U0.local_C_V_U", "Parent" : "251"},
	{"ID" : "253", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_boundary_1_x0_U0.buf_data_split_V_U", "Parent" : "251"},
	{"ID" : "254", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_12_x0_U0", "Parent" : "7", "Child" : ["255", "256"],
		"CDFG" : "C_drain_IO_L1_out_12_x0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x0134", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "251", "DependentChan" : "417", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x0134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x0133", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "257", "DependentChan" : "418", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x0133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_1_x0107", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "179", "DependentChan" : "397", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_1_x0107_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "255", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_12_x0_U0.local_C_V_U", "Parent" : "254"},
	{"ID" : "256", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_12_x0_U0.buf_data_split_V_U", "Parent" : "254"},
	{"ID" : "257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_13_x0_U0", "Parent" : "7", "Child" : ["258", "259"],
		"CDFG" : "C_drain_IO_L1_out_13_x0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x0133", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "254", "DependentChan" : "418", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x0133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x0132", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "260", "DependentChan" : "419", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x0132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_1_x0106", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "167", "DependentChan" : "391", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_1_x0106_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "258", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_13_x0_U0.local_C_V_U", "Parent" : "257"},
	{"ID" : "259", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_13_x0_U0.buf_data_split_V_U", "Parent" : "257"},
	{"ID" : "260", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_14_x0_U0", "Parent" : "7", "Child" : ["261", "262"],
		"CDFG" : "C_drain_IO_L1_out_14_x0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x0132", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "257", "DependentChan" : "419", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x0132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x0131", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "263", "DependentChan" : "420", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x0131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_1_x0105", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "155", "DependentChan" : "385", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_1_x0105_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "261", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_14_x0_U0.local_C_V_U", "Parent" : "260"},
	{"ID" : "262", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_14_x0_U0.buf_data_split_V_U", "Parent" : "260"},
	{"ID" : "263", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_15_x0_U0", "Parent" : "7", "Child" : ["264", "265"],
		"CDFG" : "C_drain_IO_L1_out_15_x0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x0131", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "260", "DependentChan" : "420", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x0131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x0130", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "266", "DependentChan" : "421", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x0130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_1_x0104", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "143", "DependentChan" : "379", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_1_x0104_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "264", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_15_x0_U0.local_C_V_U", "Parent" : "263"},
	{"ID" : "265", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_15_x0_U0.buf_data_split_V_U", "Parent" : "263"},
	{"ID" : "266", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_16_x0_U0", "Parent" : "7", "Child" : ["267", "268"],
		"CDFG" : "C_drain_IO_L1_out_16_x0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x0130", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "263", "DependentChan" : "421", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x0130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x0129", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "269", "DependentChan" : "422", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x0129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_1_x0103", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "131", "DependentChan" : "373", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_1_x0103_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "267", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_16_x0_U0.local_C_V_U", "Parent" : "266"},
	{"ID" : "268", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_16_x0_U0.buf_data_split_V_U", "Parent" : "266"},
	{"ID" : "269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_17_x0_U0", "Parent" : "7", "Child" : ["270", "271"],
		"CDFG" : "C_drain_IO_L1_out_17_x0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x0129", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "266", "DependentChan" : "422", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x0129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x0128", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "272", "DependentChan" : "423", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x0128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x0102", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "119", "DependentChan" : "367", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x0102_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "270", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_17_x0_U0.local_C_V_U", "Parent" : "269"},
	{"ID" : "271", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_17_x0_U0.buf_data_split_V_U", "Parent" : "269"},
	{"ID" : "272", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_18_x0_U0", "Parent" : "7", "Child" : ["273", "274"],
		"CDFG" : "C_drain_IO_L1_out_18_x0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x0128", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "269", "DependentChan" : "423", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x0128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x0127", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "275", "DependentChan" : "424", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x0127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_1_x0101", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "107", "DependentChan" : "361", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_1_x0101_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "273", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_18_x0_U0.local_C_V_U", "Parent" : "272"},
	{"ID" : "274", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_18_x0_U0.buf_data_split_V_U", "Parent" : "272"},
	{"ID" : "275", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_19_x0_U0", "Parent" : "7", "Child" : ["276", "277"],
		"CDFG" : "C_drain_IO_L1_out_19_x0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x0127", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "272", "DependentChan" : "424", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x0127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x0126", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "278", "DependentChan" : "425", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x0126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_1_x0100", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "95", "DependentChan" : "355", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_1_x0100_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "276", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_19_x0_U0.local_C_V_U", "Parent" : "275"},
	{"ID" : "277", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_19_x0_U0.buf_data_split_V_U", "Parent" : "275"},
	{"ID" : "278", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_20_x0_U0", "Parent" : "7", "Child" : ["279", "280"],
		"CDFG" : "C_drain_IO_L1_out_20_x0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x0126", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "275", "DependentChan" : "425", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x0126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x0125", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "281", "DependentChan" : "426", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x0125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_1_x099", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "83", "DependentChan" : "349", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_1_x099_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "279", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_20_x0_U0.local_C_V_U", "Parent" : "278"},
	{"ID" : "280", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_20_x0_U0.buf_data_split_V_U", "Parent" : "278"},
	{"ID" : "281", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_21_x0_U0", "Parent" : "7", "Child" : ["282", "283"],
		"CDFG" : "C_drain_IO_L1_out_21_x0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x0125", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "278", "DependentChan" : "426", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x0125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x0124", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "284", "DependentChan" : "427", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x0124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_1_x098", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "71", "DependentChan" : "343", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_1_x098_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "282", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_21_x0_U0.local_C_V_U", "Parent" : "281"},
	{"ID" : "283", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_21_x0_U0.buf_data_split_V_U", "Parent" : "281"},
	{"ID" : "284", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_22_x0_U0", "Parent" : "7", "Child" : ["285", "286"],
		"CDFG" : "C_drain_IO_L1_out_22_x0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x0124", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "281", "DependentChan" : "427", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x0124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x0123", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "287", "DependentChan" : "428", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x0123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_1_x097", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "59", "DependentChan" : "337", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_1_x097_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "285", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_22_x0_U0.local_C_V_U", "Parent" : "284"},
	{"ID" : "286", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_22_x0_U0.buf_data_split_V_U", "Parent" : "284"},
	{"ID" : "287", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_23_x0_U0", "Parent" : "7", "Child" : ["288", "289"],
		"CDFG" : "C_drain_IO_L1_out_23_x0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x0123", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "284", "DependentChan" : "428", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x0123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x0122", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "290", "DependentChan" : "429", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x0122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_1_x096", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "331", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_1_x096_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "288", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_23_x0_U0.local_C_V_U", "Parent" : "287"},
	{"ID" : "289", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_23_x0_U0.buf_data_split_V_U", "Parent" : "287"},
	{"ID" : "290", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L2_out_boundary_x0_U0", "Parent" : "7",
		"CDFG" : "C_drain_IO_L2_out_boundary_x0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x0136", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "291", "DependentChan" : "430", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x0136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x0122", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "287", "DependentChan" : "429", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x0122_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "291", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L2_out_x0_U0", "Parent" : "7",
		"CDFG" : "C_drain_IO_L2_out_x0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x0136", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "290", "DependentChan" : "430", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x0136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x0135", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "292", "DependentChan" : "431", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x0135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x0109", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "248", "DependentChan" : "416", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x0109_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "292", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L3_out_x0_U0", "Parent" : "7", "Child" : ["293"],
		"CDFG" : "C_drain_IO_L3_out_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22529", "EstimateLatencyMax" : "22529",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x0135", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "291", "DependentChan" : "431", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x0135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "C", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "293", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L3_out_x0_U0.mem_data_split_V_U", "Parent" : "292"},
	{"ID" : "294", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_c_U", "Parent" : "7"},
	{"ID" : "295", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.B_c_U", "Parent" : "7"},
	{"ID" : "296", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_A_IO_L2_in_0_x0_U", "Parent" : "7"},
	{"ID" : "297", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_A_IO_L2_in_1_x0_U", "Parent" : "7"},
	{"ID" : "298", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_0_0_x0_U", "Parent" : "7"},
	{"ID" : "299", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_A_IO_L2_in_2_x0_U", "Parent" : "7"},
	{"ID" : "300", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_1_0_x0_U", "Parent" : "7"},
	{"ID" : "301", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_A_IO_L2_in_3_x0_U", "Parent" : "7"},
	{"ID" : "302", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_2_0_x0_U", "Parent" : "7"},
	{"ID" : "303", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_A_IO_L2_in_4_x0_U", "Parent" : "7"},
	{"ID" : "304", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_3_0_x0_U", "Parent" : "7"},
	{"ID" : "305", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_A_IO_L2_in_5_x0_U", "Parent" : "7"},
	{"ID" : "306", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_4_0_x0_U", "Parent" : "7"},
	{"ID" : "307", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_A_IO_L2_in_6_x0_U", "Parent" : "7"},
	{"ID" : "308", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_5_0_x0_U", "Parent" : "7"},
	{"ID" : "309", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_A_IO_L2_in_7_x0_U", "Parent" : "7"},
	{"ID" : "310", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_6_0_x0_U", "Parent" : "7"},
	{"ID" : "311", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_A_IO_L2_in_8_x0_U", "Parent" : "7"},
	{"ID" : "312", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_7_0_x0_U", "Parent" : "7"},
	{"ID" : "313", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_A_IO_L2_in_9_x0_U", "Parent" : "7"},
	{"ID" : "314", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_8_0_x0_U", "Parent" : "7"},
	{"ID" : "315", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_A_IO_L2_in_10_x0_U", "Parent" : "7"},
	{"ID" : "316", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_9_0_x0_U", "Parent" : "7"},
	{"ID" : "317", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_A_IO_L2_in_11_x0_U", "Parent" : "7"},
	{"ID" : "318", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_10_0_x0_U", "Parent" : "7"},
	{"ID" : "319", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_A_IO_L2_in_12_x0_U", "Parent" : "7"},
	{"ID" : "320", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_11_0_x0_U", "Parent" : "7"},
	{"ID" : "321", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_12_0_x0_U", "Parent" : "7"},
	{"ID" : "322", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_B_IO_L2_in_0_x0_U", "Parent" : "7"},
	{"ID" : "323", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_B_IO_L2_in_1_x0_U", "Parent" : "7"},
	{"ID" : "324", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_0_0_x0_U", "Parent" : "7"},
	{"ID" : "325", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_0_1_x0_U", "Parent" : "7"},
	{"ID" : "326", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_0_1_x0_U", "Parent" : "7"},
	{"ID" : "327", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_1_0_x0_U", "Parent" : "7"},
	{"ID" : "328", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_0_0_x0_U", "Parent" : "7"},
	{"ID" : "329", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_0_2_x0_U", "Parent" : "7"},
	{"ID" : "330", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_1_1_x0_U", "Parent" : "7"},
	{"ID" : "331", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_0_1_x0_U", "Parent" : "7"},
	{"ID" : "332", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_1_1_x0_U", "Parent" : "7"},
	{"ID" : "333", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_2_0_x0_U", "Parent" : "7"},
	{"ID" : "334", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_1_0_x0_U", "Parent" : "7"},
	{"ID" : "335", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_1_2_x0_U", "Parent" : "7"},
	{"ID" : "336", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_2_1_x0_U", "Parent" : "7"},
	{"ID" : "337", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_1_1_x0_U", "Parent" : "7"},
	{"ID" : "338", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_2_1_x0_U", "Parent" : "7"},
	{"ID" : "339", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_3_0_x0_U", "Parent" : "7"},
	{"ID" : "340", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_2_0_x0_U", "Parent" : "7"},
	{"ID" : "341", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_2_2_x0_U", "Parent" : "7"},
	{"ID" : "342", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_3_1_x0_U", "Parent" : "7"},
	{"ID" : "343", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_2_1_x0_U", "Parent" : "7"},
	{"ID" : "344", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_3_1_x0_U", "Parent" : "7"},
	{"ID" : "345", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_4_0_x0_U", "Parent" : "7"},
	{"ID" : "346", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_3_0_x0_U", "Parent" : "7"},
	{"ID" : "347", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_3_2_x0_U", "Parent" : "7"},
	{"ID" : "348", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_4_1_x0_U", "Parent" : "7"},
	{"ID" : "349", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_3_1_x0_U", "Parent" : "7"},
	{"ID" : "350", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_4_1_x0_U", "Parent" : "7"},
	{"ID" : "351", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_5_0_x0_U", "Parent" : "7"},
	{"ID" : "352", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_4_0_x0_U", "Parent" : "7"},
	{"ID" : "353", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_4_2_x0_U", "Parent" : "7"},
	{"ID" : "354", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_5_1_x0_U", "Parent" : "7"},
	{"ID" : "355", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_4_1_x0_U", "Parent" : "7"},
	{"ID" : "356", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_5_1_x0_U", "Parent" : "7"},
	{"ID" : "357", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_6_0_x0_U", "Parent" : "7"},
	{"ID" : "358", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_5_0_x0_U", "Parent" : "7"},
	{"ID" : "359", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_5_2_x0_U", "Parent" : "7"},
	{"ID" : "360", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_6_1_x0_U", "Parent" : "7"},
	{"ID" : "361", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_5_1_x0_U", "Parent" : "7"},
	{"ID" : "362", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_6_1_x0_U", "Parent" : "7"},
	{"ID" : "363", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_7_0_x0_U", "Parent" : "7"},
	{"ID" : "364", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_6_0_x0_U", "Parent" : "7"},
	{"ID" : "365", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_6_2_x0_U", "Parent" : "7"},
	{"ID" : "366", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_7_1_x0_U", "Parent" : "7"},
	{"ID" : "367", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_6_1_x0_U", "Parent" : "7"},
	{"ID" : "368", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_7_1_x0_U", "Parent" : "7"},
	{"ID" : "369", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_8_0_x0_U", "Parent" : "7"},
	{"ID" : "370", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_7_0_x0_U", "Parent" : "7"},
	{"ID" : "371", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_7_2_x0_U", "Parent" : "7"},
	{"ID" : "372", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_8_1_x0_U", "Parent" : "7"},
	{"ID" : "373", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_7_1_x0_U", "Parent" : "7"},
	{"ID" : "374", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_8_1_x0_U", "Parent" : "7"},
	{"ID" : "375", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_9_0_x0_U", "Parent" : "7"},
	{"ID" : "376", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_8_0_x0_U", "Parent" : "7"},
	{"ID" : "377", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_8_2_x0_U", "Parent" : "7"},
	{"ID" : "378", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_9_1_x0_U", "Parent" : "7"},
	{"ID" : "379", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_8_1_x0_U", "Parent" : "7"},
	{"ID" : "380", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_9_1_x0_U", "Parent" : "7"},
	{"ID" : "381", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_10_0_x0_U", "Parent" : "7"},
	{"ID" : "382", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_9_0_x0_U", "Parent" : "7"},
	{"ID" : "383", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_9_2_x0_U", "Parent" : "7"},
	{"ID" : "384", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_10_1_x0_U", "Parent" : "7"},
	{"ID" : "385", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_9_1_x0_U", "Parent" : "7"},
	{"ID" : "386", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_10_1_x0_U", "Parent" : "7"},
	{"ID" : "387", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_11_0_x0_U", "Parent" : "7"},
	{"ID" : "388", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_10_0_x0_U", "Parent" : "7"},
	{"ID" : "389", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_10_2_x0_U", "Parent" : "7"},
	{"ID" : "390", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_11_1_x0_U", "Parent" : "7"},
	{"ID" : "391", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_10_1_x0_U", "Parent" : "7"},
	{"ID" : "392", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_11_1_x0_U", "Parent" : "7"},
	{"ID" : "393", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_12_0_x0_U", "Parent" : "7"},
	{"ID" : "394", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_11_0_x0_U", "Parent" : "7"},
	{"ID" : "395", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_11_2_x0_U", "Parent" : "7"},
	{"ID" : "396", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_12_1_x0_U", "Parent" : "7"},
	{"ID" : "397", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_11_1_x0_U", "Parent" : "7"},
	{"ID" : "398", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_12_1_x0_U", "Parent" : "7"},
	{"ID" : "399", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_13_0_x0_U", "Parent" : "7"},
	{"ID" : "400", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_12_0_x0_U", "Parent" : "7"},
	{"ID" : "401", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_12_2_x0_U", "Parent" : "7"},
	{"ID" : "402", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_13_1_x0_U", "Parent" : "7"},
	{"ID" : "403", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_12_1_x0_U", "Parent" : "7"},
	{"ID" : "404", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_0_12_x0_U", "Parent" : "7"},
	{"ID" : "405", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_0_11_x0_U", "Parent" : "7"},
	{"ID" : "406", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_0_10_x0_U", "Parent" : "7"},
	{"ID" : "407", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_0_9_x0_U", "Parent" : "7"},
	{"ID" : "408", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_0_8_x0_U", "Parent" : "7"},
	{"ID" : "409", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_0_7_x0_U", "Parent" : "7"},
	{"ID" : "410", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_0_6_x0_U", "Parent" : "7"},
	{"ID" : "411", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_0_5_x0_U", "Parent" : "7"},
	{"ID" : "412", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_0_4_x0_U", "Parent" : "7"},
	{"ID" : "413", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_0_3_x0_U", "Parent" : "7"},
	{"ID" : "414", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_0_2_x0_U", "Parent" : "7"},
	{"ID" : "415", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_0_1_x0_U", "Parent" : "7"},
	{"ID" : "416", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_0_0_x0_U", "Parent" : "7"},
	{"ID" : "417", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_1_12_x0_U", "Parent" : "7"},
	{"ID" : "418", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_1_11_x0_U", "Parent" : "7"},
	{"ID" : "419", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_1_10_x0_U", "Parent" : "7"},
	{"ID" : "420", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_1_9_x0_U", "Parent" : "7"},
	{"ID" : "421", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_1_8_x0_U", "Parent" : "7"},
	{"ID" : "422", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_1_7_x0_U", "Parent" : "7"},
	{"ID" : "423", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_1_6_x0_U", "Parent" : "7"},
	{"ID" : "424", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_1_5_x0_U", "Parent" : "7"},
	{"ID" : "425", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_1_4_x0_U", "Parent" : "7"},
	{"ID" : "426", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_1_3_x0_U", "Parent" : "7"},
	{"ID" : "427", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_1_2_x0_U", "Parent" : "7"},
	{"ID" : "428", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_1_1_x0_U", "Parent" : "7"},
	{"ID" : "429", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_1_0_x0_U", "Parent" : "7"},
	{"ID" : "430", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L2_out_1_x0_U", "Parent" : "7"},
	{"ID" : "431", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L2_out_0_x0_U", "Parent" : "7"},
	{"ID" : "432", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106", "Parent" : "0", "Child" : ["433", "434", "435", "438", "440", "442", "444", "446", "448", "450", "452", "454", "456", "458", "460", "462", "464", "465", "467", "469", "475", "481", "487", "493", "499", "505", "511", "517", "523", "529", "535", "541", "547", "553", "559", "565", "571", "577", "583", "589", "595", "601", "607", "613", "619", "625", "626", "627", "628", "629", "630", "631", "632", "633", "634", "635", "636", "637", "638", "639", "640", "643", "646", "649", "652", "655", "658", "661", "664", "667", "670", "673", "676", "679", "682", "685", "688", "691", "694", "697", "700", "703", "706", "709", "712", "715", "718", "719", "720", "722", "723", "724", "725", "726", "727", "728", "729", "730", "731", "732", "733", "734", "735", "736", "737", "738", "739", "740", "741", "742", "743", "744", "745", "746", "747", "748", "749", "750", "751", "752", "753", "754", "755", "756", "757", "758", "759", "760", "761", "762", "763", "764", "765", "766", "767", "768", "769", "770", "771", "772", "773", "774", "775", "776", "777", "778", "779", "780", "781", "782", "783", "784", "785", "786", "787", "788", "789", "790", "791", "792", "793", "794", "795", "796", "797", "798", "799", "800", "801", "802", "803", "804", "805", "806", "807", "808", "809", "810", "811", "812", "813", "814", "815", "816", "817", "818", "819", "820", "821", "822", "823", "824", "825", "826", "827", "828", "829", "830", "831", "832", "833", "834", "835", "836", "837", "838", "839", "840", "841", "842", "843", "844", "845", "846", "847", "848", "849", "850", "851", "852", "853", "854", "855", "856", "857", "858", "859"],
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
			{"ID" : "433", "Name" : "kernel3_x1_entry31_U0"},
			{"ID" : "435", "Name" : "A_IO_L3_in_x1_U0"},
			{"ID" : "464", "Name" : "B_IO_L3_in_x1_U0"}],
		"OutputProcess" : [
			{"ID" : "625", "Name" : "A_PE_dummy_0_x1_U0"},
			{"ID" : "626", "Name" : "A_PE_dummy_1_x1_U0"},
			{"ID" : "627", "Name" : "A_PE_dummy_2_x1_U0"},
			{"ID" : "628", "Name" : "A_PE_dummy_3_x1_U0"},
			{"ID" : "629", "Name" : "A_PE_dummy_4_x1_U0"},
			{"ID" : "630", "Name" : "A_PE_dummy_5_x1_U0"},
			{"ID" : "631", "Name" : "A_PE_dummy_6_x1_U0"},
			{"ID" : "632", "Name" : "A_PE_dummy_7_x1_U0"},
			{"ID" : "633", "Name" : "A_PE_dummy_8_x1_U0"},
			{"ID" : "634", "Name" : "A_PE_dummy_9_x1_U0"},
			{"ID" : "635", "Name" : "A_PE_dummy_10_x1_U0"},
			{"ID" : "636", "Name" : "A_PE_dummy_11_x1_U0"},
			{"ID" : "637", "Name" : "A_PE_dummy_12_x1_U0"},
			{"ID" : "638", "Name" : "B_PE_dummy_0_x1_U0"},
			{"ID" : "639", "Name" : "B_PE_dummy_1_x1_U0"},
			{"ID" : "720", "Name" : "C_drain_IO_L3_out_x1_U0"}],
		"Port" : [
			{"Name" : "gmem_C", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "720", "SubInstance" : "C_drain_IO_L3_out_x1_U0", "Port" : "gmem_C"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "464", "SubInstance" : "B_IO_L3_in_x1_U0", "Port" : "B"},
					{"ID" : "435", "SubInstance" : "A_IO_L3_in_x1_U0", "Port" : "A"}]},
			{"Name" : "C", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "433", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.kernel3_x1_entry31_U0", "Parent" : "432",
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
			{"Name" : "C_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "434", "DependentChan" : "722", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "434", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.kernel3_x1_entry42_U0", "Parent" : "432",
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
			{"Name" : "C", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "433", "DependentChan" : "722", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "C_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "720", "DependentChan" : "723", "DependentChanDepth" : "33", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "435", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L3_in_x1_U0", "Parent" : "432", "Child" : ["436", "437"],
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
			{"Name" : "fifo_A_A_IO_L2_in_0_x11", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "438", "DependentChan" : "724", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_0_x11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "436", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L3_in_x1_U0.add_11ns_11ns_11_1_1_U500", "Parent" : "435"},
	{"ID" : "437", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L3_in_x1_U0.add_2ns_2ns_2_1_1_U501", "Parent" : "435"},
	{"ID" : "438", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_0_x1_U0", "Parent" : "432", "Child" : ["439"],
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
			{"Name" : "fifo_A_A_IO_L2_in_0_x11", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "435", "DependentChan" : "724", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_0_x11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_1_x12", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "440", "DependentChan" : "725", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_0_x116", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "469", "DependentChan" : "726", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x116_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "439", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_0_x1_U0.local_A_pong_V_U", "Parent" : "438"},
	{"ID" : "440", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_1_x1_U0", "Parent" : "432", "Child" : ["441"],
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
			{"Name" : "fifo_A_A_IO_L2_in_1_x12", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "438", "DependentChan" : "725", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_2_x13", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "442", "DependentChan" : "727", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_0_x119", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "481", "DependentChan" : "728", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x119_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "441", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_1_x1_U0.local_A_pong_V_U", "Parent" : "440"},
	{"ID" : "442", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_2_x1_U0", "Parent" : "432", "Child" : ["443"],
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
			{"Name" : "fifo_A_A_IO_L2_in_2_x13", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "440", "DependentChan" : "727", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_3_x14", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "444", "DependentChan" : "729", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_0_x122", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "493", "DependentChan" : "730", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x122_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "443", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_2_x1_U0.local_A_pong_V_U", "Parent" : "442"},
	{"ID" : "444", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_3_x1_U0", "Parent" : "432", "Child" : ["445"],
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
			{"Name" : "fifo_A_A_IO_L2_in_3_x14", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "442", "DependentChan" : "729", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_4_x15", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "446", "DependentChan" : "731", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_4_x15_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_0_x125", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "505", "DependentChan" : "732", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x125_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "445", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_3_x1_U0.local_A_pong_V_U", "Parent" : "444"},
	{"ID" : "446", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_4_x1_U0", "Parent" : "432", "Child" : ["447"],
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
			{"Name" : "fifo_A_A_IO_L2_in_4_x15", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "444", "DependentChan" : "731", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_4_x15_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_5_x16", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "448", "DependentChan" : "733", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_5_x16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_0_x128", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "517", "DependentChan" : "734", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_0_x128_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "447", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_4_x1_U0.local_A_pong_V_U", "Parent" : "446"},
	{"ID" : "448", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_5_x1_U0", "Parent" : "432", "Child" : ["449"],
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
			{"Name" : "fifo_A_A_IO_L2_in_5_x16", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "446", "DependentChan" : "733", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_5_x16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_6_x17", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "450", "DependentChan" : "735", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_6_x17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_0_x131", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "529", "DependentChan" : "736", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_0_x131_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "449", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_5_x1_U0.local_A_pong_V_U", "Parent" : "448"},
	{"ID" : "450", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_6_x1_U0", "Parent" : "432", "Child" : ["451"],
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
			{"Name" : "fifo_A_A_IO_L2_in_6_x17", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "448", "DependentChan" : "735", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_6_x17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_7_x18", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "452", "DependentChan" : "737", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_7_x18_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_0_x134", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "541", "DependentChan" : "738", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_0_x134_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "451", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_6_x1_U0.local_A_pong_V_U", "Parent" : "450"},
	{"ID" : "452", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_7_x1_U0", "Parent" : "432", "Child" : ["453"],
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
			{"Name" : "fifo_A_A_IO_L2_in_7_x18", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "450", "DependentChan" : "737", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_7_x18_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_8_x19", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "454", "DependentChan" : "739", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_8_x19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_0_x137", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "553", "DependentChan" : "740", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_0_x137_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "453", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_7_x1_U0.local_A_pong_V_U", "Parent" : "452"},
	{"ID" : "454", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_8_x1_U0", "Parent" : "432", "Child" : ["455"],
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
			{"Name" : "fifo_A_A_IO_L2_in_8_x19", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "452", "DependentChan" : "739", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_8_x19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_9_x110", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "456", "DependentChan" : "741", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_9_x110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_8_0_x140", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "565", "DependentChan" : "742", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_0_x140_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "455", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_8_x1_U0.local_A_pong_V_U", "Parent" : "454"},
	{"ID" : "456", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_9_x1_U0", "Parent" : "432", "Child" : ["457"],
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
			{"Name" : "fifo_A_A_IO_L2_in_9_x110", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "454", "DependentChan" : "741", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_9_x110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_10_x111", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "458", "DependentChan" : "743", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_10_x111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_9_0_x143", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "577", "DependentChan" : "744", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_0_x143_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "457", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_9_x1_U0.local_A_pong_V_U", "Parent" : "456"},
	{"ID" : "458", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_10_x1_U0", "Parent" : "432", "Child" : ["459"],
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
			{"Name" : "fifo_A_A_IO_L2_in_10_x111", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "456", "DependentChan" : "743", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_10_x111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_11_x112", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "460", "DependentChan" : "745", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_11_x112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_10_0_x146", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "589", "DependentChan" : "746", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_0_x146_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "459", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_10_x1_U0.local_A_pong_V_U", "Parent" : "458"},
	{"ID" : "460", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_11_x1_U0", "Parent" : "432", "Child" : ["461"],
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
			{"Name" : "fifo_A_A_IO_L2_in_11_x112", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "458", "DependentChan" : "745", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_11_x112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_12_x113", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "462", "DependentChan" : "747", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_12_x113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_11_0_x149", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "601", "DependentChan" : "748", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_0_x149_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "461", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_11_x1_U0.local_A_pong_V_U", "Parent" : "460"},
	{"ID" : "462", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_boundary_x1_U0", "Parent" : "432", "Child" : ["463"],
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
			{"Name" : "fifo_A_A_IO_L2_in_12_x113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "460", "DependentChan" : "747", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_12_x113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_12_0_x152", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "613", "DependentChan" : "749", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_0_x152_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "463", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_boundary_x1_U0.local_A_pong_V_U", "Parent" : "462"},
	{"ID" : "464", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.B_IO_L3_in_x1_U0", "Parent" : "432",
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
			{"Name" : "fifo_B_B_IO_L2_in_0_x114", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "465", "DependentChan" : "750", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_0_x114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "465", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.B_IO_L2_in_x1_U0", "Parent" : "432", "Child" : ["466"],
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
			{"Name" : "fifo_B_B_IO_L2_in_0_x114", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "464", "DependentChan" : "750", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_0_x114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_1_x115", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "467", "DependentChan" : "751", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x155", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "469", "DependentChan" : "752", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x155_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "466", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.B_IO_L2_in_x1_U0.local_B_pong_V_U", "Parent" : "465"},
	{"ID" : "467", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.B_IO_L2_in_boundary_x1_U0", "Parent" : "432", "Child" : ["468"],
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
			{"Name" : "fifo_B_B_IO_L2_in_1_x115", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "465", "DependentChan" : "751", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x169", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "475", "DependentChan" : "753", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x169_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "468", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.B_IO_L2_in_boundary_x1_U0.local_B_pong_V_U", "Parent" : "467"},
	{"ID" : "469", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_0_0_x1_U0", "Parent" : "432", "Child" : ["470", "471", "472", "473", "474"],
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
			{"Name" : "fifo_A_PE_0_0_x116", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "438", "DependentChan" : "726", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_1_x117", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "475", "DependentChan" : "754", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x155", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "465", "DependentChan" : "752", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x155_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x156", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "481", "DependentChan" : "755", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x156_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_0_x183", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "676", "DependentChan" : "756", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_0_x183_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "470", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_0_0_x1_U0.local_A_0_U", "Parent" : "469"},
	{"ID" : "471", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_0_0_x1_U0.local_B_0_U", "Parent" : "469"},
	{"ID" : "472", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_0_0_x1_U0.local_C_U", "Parent" : "469"},
	{"ID" : "473", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_0_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U551", "Parent" : "469"},
	{"ID" : "474", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_0_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U552", "Parent" : "469"},
	{"ID" : "475", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_0_1_x1_U0", "Parent" : "432", "Child" : ["476", "477", "478", "479", "480"],
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
			{"Name" : "fifo_A_PE_0_1_x117", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "469", "DependentChan" : "754", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_2_x118", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "625", "DependentChan" : "757", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x169", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "467", "DependentChan" : "753", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x169_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x170", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "487", "DependentChan" : "758", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x170_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_1_x196", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "715", "DependentChan" : "759", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_1_x196_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "476", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_0_1_x1_U0.local_A_0_U", "Parent" : "475"},
	{"ID" : "477", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_0_1_x1_U0.local_B_0_U", "Parent" : "475"},
	{"ID" : "478", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_0_1_x1_U0.local_C_U", "Parent" : "475"},
	{"ID" : "479", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_0_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U558", "Parent" : "475"},
	{"ID" : "480", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_0_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U559", "Parent" : "475"},
	{"ID" : "481", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_1_0_x1_U0", "Parent" : "432", "Child" : ["482", "483", "484", "485", "486"],
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
			{"Name" : "fifo_A_PE_1_0_x119", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "440", "DependentChan" : "728", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_1_x120", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "487", "DependentChan" : "760", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x156", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "469", "DependentChan" : "755", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x156_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x157", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "493", "DependentChan" : "761", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x157_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_0_x184", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "673", "DependentChan" : "762", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_0_x184_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "482", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_1_0_x1_U0.local_A_0_U", "Parent" : "481"},
	{"ID" : "483", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_1_0_x1_U0.local_B_0_U", "Parent" : "481"},
	{"ID" : "484", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_1_0_x1_U0.local_C_U", "Parent" : "481"},
	{"ID" : "485", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_1_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U565", "Parent" : "481"},
	{"ID" : "486", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_1_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U566", "Parent" : "481"},
	{"ID" : "487", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_1_1_x1_U0", "Parent" : "432", "Child" : ["488", "489", "490", "491", "492"],
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
			{"Name" : "fifo_A_PE_1_1_x120", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "481", "DependentChan" : "760", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_2_x121", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "626", "DependentChan" : "763", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x170", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "475", "DependentChan" : "758", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x170_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x171", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "499", "DependentChan" : "764", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x171_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_1_x197", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "712", "DependentChan" : "765", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_1_x197_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "488", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_1_1_x1_U0.local_A_0_U", "Parent" : "487"},
	{"ID" : "489", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_1_1_x1_U0.local_B_0_U", "Parent" : "487"},
	{"ID" : "490", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_1_1_x1_U0.local_C_U", "Parent" : "487"},
	{"ID" : "491", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_1_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U572", "Parent" : "487"},
	{"ID" : "492", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_1_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U573", "Parent" : "487"},
	{"ID" : "493", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_2_0_x1_U0", "Parent" : "432", "Child" : ["494", "495", "496", "497", "498"],
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
			{"Name" : "fifo_A_PE_2_0_x122", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "442", "DependentChan" : "730", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_1_x123", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "499", "DependentChan" : "766", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x157", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "481", "DependentChan" : "761", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x157_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x158", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "505", "DependentChan" : "767", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x158_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_0_x185", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "670", "DependentChan" : "768", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_0_x185_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "494", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_2_0_x1_U0.local_A_0_U", "Parent" : "493"},
	{"ID" : "495", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_2_0_x1_U0.local_B_0_U", "Parent" : "493"},
	{"ID" : "496", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_2_0_x1_U0.local_C_U", "Parent" : "493"},
	{"ID" : "497", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_2_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U579", "Parent" : "493"},
	{"ID" : "498", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_2_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U580", "Parent" : "493"},
	{"ID" : "499", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_2_1_x1_U0", "Parent" : "432", "Child" : ["500", "501", "502", "503", "504"],
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
			{"Name" : "fifo_A_PE_2_1_x123", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "493", "DependentChan" : "766", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_2_x124", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "627", "DependentChan" : "769", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x171", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "487", "DependentChan" : "764", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x171_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x172", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "511", "DependentChan" : "770", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x172_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_1_x198", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "709", "DependentChan" : "771", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_1_x198_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "500", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_2_1_x1_U0.local_A_0_U", "Parent" : "499"},
	{"ID" : "501", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_2_1_x1_U0.local_B_0_U", "Parent" : "499"},
	{"ID" : "502", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_2_1_x1_U0.local_C_U", "Parent" : "499"},
	{"ID" : "503", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_2_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U586", "Parent" : "499"},
	{"ID" : "504", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_2_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U587", "Parent" : "499"},
	{"ID" : "505", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_3_0_x1_U0", "Parent" : "432", "Child" : ["506", "507", "508", "509", "510"],
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
			{"Name" : "fifo_A_PE_3_0_x125", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "444", "DependentChan" : "732", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_1_x126", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "511", "DependentChan" : "772", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x158", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "493", "DependentChan" : "767", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x158_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x159", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "517", "DependentChan" : "773", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x159_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_0_x186", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "667", "DependentChan" : "774", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_0_x186_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "506", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_3_0_x1_U0.local_A_0_U", "Parent" : "505"},
	{"ID" : "507", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_3_0_x1_U0.local_B_0_U", "Parent" : "505"},
	{"ID" : "508", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_3_0_x1_U0.local_C_U", "Parent" : "505"},
	{"ID" : "509", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_3_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U593", "Parent" : "505"},
	{"ID" : "510", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_3_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U594", "Parent" : "505"},
	{"ID" : "511", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_3_1_x1_U0", "Parent" : "432", "Child" : ["512", "513", "514", "515", "516"],
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
			{"Name" : "fifo_A_PE_3_1_x126", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "505", "DependentChan" : "772", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_2_x127", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "628", "DependentChan" : "775", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x172", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "499", "DependentChan" : "770", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x172_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x173", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "523", "DependentChan" : "776", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x173_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_1_x199", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "706", "DependentChan" : "777", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_1_x199_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "512", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_3_1_x1_U0.local_A_0_U", "Parent" : "511"},
	{"ID" : "513", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_3_1_x1_U0.local_B_0_U", "Parent" : "511"},
	{"ID" : "514", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_3_1_x1_U0.local_C_U", "Parent" : "511"},
	{"ID" : "515", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_3_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U600", "Parent" : "511"},
	{"ID" : "516", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_3_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U601", "Parent" : "511"},
	{"ID" : "517", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_4_0_x1_U0", "Parent" : "432", "Child" : ["518", "519", "520", "521", "522"],
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
			{"Name" : "fifo_A_PE_4_0_x128", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "446", "DependentChan" : "734", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_0_x128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_1_x129", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "523", "DependentChan" : "778", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x159", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "505", "DependentChan" : "773", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x159_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x160", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "529", "DependentChan" : "779", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x160_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_0_x187", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "664", "DependentChan" : "780", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_0_x187_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "518", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_4_0_x1_U0.local_A_0_U", "Parent" : "517"},
	{"ID" : "519", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_4_0_x1_U0.local_B_0_U", "Parent" : "517"},
	{"ID" : "520", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_4_0_x1_U0.local_C_U", "Parent" : "517"},
	{"ID" : "521", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_4_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U607", "Parent" : "517"},
	{"ID" : "522", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_4_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U608", "Parent" : "517"},
	{"ID" : "523", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_4_1_x1_U0", "Parent" : "432", "Child" : ["524", "525", "526", "527", "528"],
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
			{"Name" : "fifo_A_PE_4_1_x129", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "517", "DependentChan" : "778", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_2_x130", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "629", "DependentChan" : "781", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_2_x130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x173", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "511", "DependentChan" : "776", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x173_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_1_x174", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "535", "DependentChan" : "782", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_1_x174_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_1_x1100", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "703", "DependentChan" : "783", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_1_x1100_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "524", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_4_1_x1_U0.local_A_0_U", "Parent" : "523"},
	{"ID" : "525", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_4_1_x1_U0.local_B_0_U", "Parent" : "523"},
	{"ID" : "526", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_4_1_x1_U0.local_C_U", "Parent" : "523"},
	{"ID" : "527", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_4_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U614", "Parent" : "523"},
	{"ID" : "528", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_4_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U615", "Parent" : "523"},
	{"ID" : "529", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_5_0_x1_U0", "Parent" : "432", "Child" : ["530", "531", "532", "533", "534"],
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
			{"Name" : "fifo_A_PE_5_0_x131", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "448", "DependentChan" : "736", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_0_x131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_1_x132", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "535", "DependentChan" : "784", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_1_x132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x160", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "517", "DependentChan" : "779", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x160_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_0_x161", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "541", "DependentChan" : "785", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_0_x161_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_0_x188", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "661", "DependentChan" : "786", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_0_x188_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "530", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_5_0_x1_U0.local_A_0_U", "Parent" : "529"},
	{"ID" : "531", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_5_0_x1_U0.local_B_0_U", "Parent" : "529"},
	{"ID" : "532", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_5_0_x1_U0.local_C_U", "Parent" : "529"},
	{"ID" : "533", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_5_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U621", "Parent" : "529"},
	{"ID" : "534", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_5_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U622", "Parent" : "529"},
	{"ID" : "535", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_5_1_x1_U0", "Parent" : "432", "Child" : ["536", "537", "538", "539", "540"],
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
			{"Name" : "fifo_A_PE_5_1_x132", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "529", "DependentChan" : "784", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_1_x132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_2_x133", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "630", "DependentChan" : "787", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_2_x133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_1_x174", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "523", "DependentChan" : "782", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_1_x174_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x175", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "547", "DependentChan" : "788", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x175_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_1_x1101", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "700", "DependentChan" : "789", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_1_x1101_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "536", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_5_1_x1_U0.local_A_0_U", "Parent" : "535"},
	{"ID" : "537", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_5_1_x1_U0.local_B_0_U", "Parent" : "535"},
	{"ID" : "538", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_5_1_x1_U0.local_C_U", "Parent" : "535"},
	{"ID" : "539", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_5_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U628", "Parent" : "535"},
	{"ID" : "540", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_5_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U629", "Parent" : "535"},
	{"ID" : "541", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_6_0_x1_U0", "Parent" : "432", "Child" : ["542", "543", "544", "545", "546"],
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
			{"Name" : "fifo_A_PE_6_0_x134", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "450", "DependentChan" : "738", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_0_x134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_1_x135", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "547", "DependentChan" : "790", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_1_x135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_0_x161", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "529", "DependentChan" : "785", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_0_x161_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_0_x162", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "553", "DependentChan" : "791", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_0_x162_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_0_x189", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "658", "DependentChan" : "792", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_0_x189_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "542", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_6_0_x1_U0.local_A_0_U", "Parent" : "541"},
	{"ID" : "543", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_6_0_x1_U0.local_B_0_U", "Parent" : "541"},
	{"ID" : "544", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_6_0_x1_U0.local_C_U", "Parent" : "541"},
	{"ID" : "545", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_6_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U635", "Parent" : "541"},
	{"ID" : "546", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_6_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U636", "Parent" : "541"},
	{"ID" : "547", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_6_1_x1_U0", "Parent" : "432", "Child" : ["548", "549", "550", "551", "552"],
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
			{"Name" : "fifo_A_PE_6_1_x135", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "541", "DependentChan" : "790", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_1_x135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_2_x136", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "631", "DependentChan" : "793", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x175", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "535", "DependentChan" : "788", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x175_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_1_x176", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "559", "DependentChan" : "794", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_1_x176_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x1102", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "697", "DependentChan" : "795", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x1102_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "548", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_6_1_x1_U0.local_A_0_U", "Parent" : "547"},
	{"ID" : "549", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_6_1_x1_U0.local_B_0_U", "Parent" : "547"},
	{"ID" : "550", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_6_1_x1_U0.local_C_U", "Parent" : "547"},
	{"ID" : "551", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_6_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U642", "Parent" : "547"},
	{"ID" : "552", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_6_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U643", "Parent" : "547"},
	{"ID" : "553", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_7_0_x1_U0", "Parent" : "432", "Child" : ["554", "555", "556", "557", "558"],
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
			{"Name" : "fifo_A_PE_7_0_x137", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "452", "DependentChan" : "740", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_0_x137_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_1_x138", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "559", "DependentChan" : "796", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_1_x138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_0_x162", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "541", "DependentChan" : "791", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_0_x162_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_0_x163", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "565", "DependentChan" : "797", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_0_x163_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_0_x190", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "655", "DependentChan" : "798", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_0_x190_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "554", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_7_0_x1_U0.local_A_0_U", "Parent" : "553"},
	{"ID" : "555", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_7_0_x1_U0.local_B_0_U", "Parent" : "553"},
	{"ID" : "556", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_7_0_x1_U0.local_C_U", "Parent" : "553"},
	{"ID" : "557", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_7_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U649", "Parent" : "553"},
	{"ID" : "558", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_7_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U650", "Parent" : "553"},
	{"ID" : "559", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_7_1_x1_U0", "Parent" : "432", "Child" : ["560", "561", "562", "563", "564"],
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
			{"Name" : "fifo_A_PE_7_1_x138", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "553", "DependentChan" : "796", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_1_x138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_2_x139", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "632", "DependentChan" : "799", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_2_x139_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_1_x176", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "547", "DependentChan" : "794", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_1_x176_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_1_x177", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "571", "DependentChan" : "800", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_1_x177_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_1_x1103", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "694", "DependentChan" : "801", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_1_x1103_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "560", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_7_1_x1_U0.local_A_0_U", "Parent" : "559"},
	{"ID" : "561", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_7_1_x1_U0.local_B_0_U", "Parent" : "559"},
	{"ID" : "562", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_7_1_x1_U0.local_C_U", "Parent" : "559"},
	{"ID" : "563", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_7_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U656", "Parent" : "559"},
	{"ID" : "564", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_7_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U657", "Parent" : "559"},
	{"ID" : "565", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_8_0_x1_U0", "Parent" : "432", "Child" : ["566", "567", "568", "569", "570"],
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
			{"Name" : "fifo_A_PE_8_0_x140", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "454", "DependentChan" : "742", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_0_x140_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_8_1_x141", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "571", "DependentChan" : "802", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_1_x141_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_0_x163", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "553", "DependentChan" : "797", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_0_x163_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_0_x164", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "577", "DependentChan" : "803", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_0_x164_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_0_x191", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "652", "DependentChan" : "804", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_0_x191_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "566", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_8_0_x1_U0.local_A_0_U", "Parent" : "565"},
	{"ID" : "567", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_8_0_x1_U0.local_B_0_U", "Parent" : "565"},
	{"ID" : "568", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_8_0_x1_U0.local_C_U", "Parent" : "565"},
	{"ID" : "569", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_8_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U663", "Parent" : "565"},
	{"ID" : "570", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_8_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U664", "Parent" : "565"},
	{"ID" : "571", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_8_1_x1_U0", "Parent" : "432", "Child" : ["572", "573", "574", "575", "576"],
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
			{"Name" : "fifo_A_PE_8_1_x141", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "565", "DependentChan" : "802", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_1_x141_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_8_2_x142", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "633", "DependentChan" : "805", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_2_x142_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_1_x177", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "559", "DependentChan" : "800", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_1_x177_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_1_x178", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "583", "DependentChan" : "806", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_1_x178_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_1_x1104", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "691", "DependentChan" : "807", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_1_x1104_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "572", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_8_1_x1_U0.local_A_0_U", "Parent" : "571"},
	{"ID" : "573", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_8_1_x1_U0.local_B_0_U", "Parent" : "571"},
	{"ID" : "574", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_8_1_x1_U0.local_C_U", "Parent" : "571"},
	{"ID" : "575", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_8_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U670", "Parent" : "571"},
	{"ID" : "576", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_8_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U671", "Parent" : "571"},
	{"ID" : "577", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_9_0_x1_U0", "Parent" : "432", "Child" : ["578", "579", "580", "581", "582"],
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
			{"Name" : "fifo_A_PE_9_0_x143", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "456", "DependentChan" : "744", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_0_x143_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_9_1_x144", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "583", "DependentChan" : "808", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_1_x144_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_0_x164", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "565", "DependentChan" : "803", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_0_x164_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_0_x165", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "589", "DependentChan" : "809", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_0_x165_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_0_x192", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "649", "DependentChan" : "810", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_0_x192_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "578", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_9_0_x1_U0.local_A_0_U", "Parent" : "577"},
	{"ID" : "579", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_9_0_x1_U0.local_B_0_U", "Parent" : "577"},
	{"ID" : "580", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_9_0_x1_U0.local_C_U", "Parent" : "577"},
	{"ID" : "581", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_9_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U677", "Parent" : "577"},
	{"ID" : "582", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_9_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U678", "Parent" : "577"},
	{"ID" : "583", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_9_1_x1_U0", "Parent" : "432", "Child" : ["584", "585", "586", "587", "588"],
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
			{"Name" : "fifo_A_PE_9_1_x144", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "577", "DependentChan" : "808", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_1_x144_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_9_2_x145", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "634", "DependentChan" : "811", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_2_x145_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_1_x178", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "571", "DependentChan" : "806", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_1_x178_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_1_x179", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "595", "DependentChan" : "812", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_1_x179_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_1_x1105", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "688", "DependentChan" : "813", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_1_x1105_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "584", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_9_1_x1_U0.local_A_0_U", "Parent" : "583"},
	{"ID" : "585", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_9_1_x1_U0.local_B_0_U", "Parent" : "583"},
	{"ID" : "586", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_9_1_x1_U0.local_C_U", "Parent" : "583"},
	{"ID" : "587", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_9_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U684", "Parent" : "583"},
	{"ID" : "588", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_9_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U685", "Parent" : "583"},
	{"ID" : "589", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_10_0_x1_U0", "Parent" : "432", "Child" : ["590", "591", "592", "593", "594"],
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
			{"Name" : "fifo_A_PE_10_0_x146", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "458", "DependentChan" : "746", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_0_x146_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_10_1_x147", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "595", "DependentChan" : "814", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_1_x147_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_0_x165", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "577", "DependentChan" : "809", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_0_x165_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_0_x166", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "601", "DependentChan" : "815", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_0_x166_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_0_x193", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "646", "DependentChan" : "816", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_0_x193_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "590", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_10_0_x1_U0.local_A_0_U", "Parent" : "589"},
	{"ID" : "591", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_10_0_x1_U0.local_B_0_U", "Parent" : "589"},
	{"ID" : "592", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_10_0_x1_U0.local_C_U", "Parent" : "589"},
	{"ID" : "593", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_10_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U691", "Parent" : "589"},
	{"ID" : "594", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_10_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U692", "Parent" : "589"},
	{"ID" : "595", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_10_1_x1_U0", "Parent" : "432", "Child" : ["596", "597", "598", "599", "600"],
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
			{"Name" : "fifo_A_PE_10_1_x147", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "589", "DependentChan" : "814", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_1_x147_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_10_2_x148", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "635", "DependentChan" : "817", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_2_x148_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_1_x179", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "583", "DependentChan" : "812", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_1_x179_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_1_x180", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "607", "DependentChan" : "818", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_1_x180_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_1_x1106", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "685", "DependentChan" : "819", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_1_x1106_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "596", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_10_1_x1_U0.local_A_0_U", "Parent" : "595"},
	{"ID" : "597", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_10_1_x1_U0.local_B_0_U", "Parent" : "595"},
	{"ID" : "598", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_10_1_x1_U0.local_C_U", "Parent" : "595"},
	{"ID" : "599", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_10_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U698", "Parent" : "595"},
	{"ID" : "600", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_10_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U699", "Parent" : "595"},
	{"ID" : "601", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_11_0_x1_U0", "Parent" : "432", "Child" : ["602", "603", "604", "605", "606"],
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
			{"Name" : "fifo_A_PE_11_0_x149", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "460", "DependentChan" : "748", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_0_x149_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_11_1_x150", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "607", "DependentChan" : "820", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_1_x150_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_0_x166", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "589", "DependentChan" : "815", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_0_x166_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_0_x167", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "613", "DependentChan" : "821", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_0_x167_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_0_x194", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "643", "DependentChan" : "822", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_0_x194_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "602", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_11_0_x1_U0.local_A_0_U", "Parent" : "601"},
	{"ID" : "603", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_11_0_x1_U0.local_B_0_U", "Parent" : "601"},
	{"ID" : "604", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_11_0_x1_U0.local_C_U", "Parent" : "601"},
	{"ID" : "605", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_11_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U705", "Parent" : "601"},
	{"ID" : "606", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_11_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U706", "Parent" : "601"},
	{"ID" : "607", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_11_1_x1_U0", "Parent" : "432", "Child" : ["608", "609", "610", "611", "612"],
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
			{"Name" : "fifo_A_PE_11_1_x150", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "601", "DependentChan" : "820", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_1_x150_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_11_2_x151", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "636", "DependentChan" : "823", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_2_x151_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_1_x180", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "595", "DependentChan" : "818", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_1_x180_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_1_x181", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "619", "DependentChan" : "824", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_1_x181_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_1_x1107", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "682", "DependentChan" : "825", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_1_x1107_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "608", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_11_1_x1_U0.local_A_0_U", "Parent" : "607"},
	{"ID" : "609", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_11_1_x1_U0.local_B_0_U", "Parent" : "607"},
	{"ID" : "610", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_11_1_x1_U0.local_C_U", "Parent" : "607"},
	{"ID" : "611", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_11_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U712", "Parent" : "607"},
	{"ID" : "612", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_11_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U713", "Parent" : "607"},
	{"ID" : "613", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_12_0_x1_U0", "Parent" : "432", "Child" : ["614", "615", "616", "617", "618"],
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
			{"Name" : "fifo_A_PE_12_0_x152", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "462", "DependentChan" : "749", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_0_x152_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_12_1_x153", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "619", "DependentChan" : "826", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_1_x153_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_0_x167", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "601", "DependentChan" : "821", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_0_x167_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_13_0_x168", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "638", "DependentChan" : "827", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_0_x168_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_0_x195", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "640", "DependentChan" : "828", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_0_x195_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "614", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_12_0_x1_U0.local_A_0_U", "Parent" : "613"},
	{"ID" : "615", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_12_0_x1_U0.local_B_0_U", "Parent" : "613"},
	{"ID" : "616", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_12_0_x1_U0.local_C_U", "Parent" : "613"},
	{"ID" : "617", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_12_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U719", "Parent" : "613"},
	{"ID" : "618", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_12_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U720", "Parent" : "613"},
	{"ID" : "619", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_12_1_x1_U0", "Parent" : "432", "Child" : ["620", "621", "622", "623", "624"],
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
			{"Name" : "fifo_A_PE_12_1_x153", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "613", "DependentChan" : "826", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_1_x153_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_12_2_x154", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "637", "DependentChan" : "829", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_2_x154_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_1_x181", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "607", "DependentChan" : "824", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_1_x181_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_13_1_x182", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "639", "DependentChan" : "830", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_1_x182_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_1_x1108", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "679", "DependentChan" : "831", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_1_x1108_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "620", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_12_1_x1_U0.local_A_0_U", "Parent" : "619"},
	{"ID" : "621", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_12_1_x1_U0.local_B_0_U", "Parent" : "619"},
	{"ID" : "622", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_12_1_x1_U0.local_C_U", "Parent" : "619"},
	{"ID" : "623", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_12_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U726", "Parent" : "619"},
	{"ID" : "624", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_12_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U727", "Parent" : "619"},
	{"ID" : "625", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_PE_dummy_0_x1_U0", "Parent" : "432",
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
			{"Name" : "fifo_A_PE_0_2_x118", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "475", "DependentChan" : "757", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x118_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "626", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_PE_dummy_1_x1_U0", "Parent" : "432",
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
			{"Name" : "fifo_A_PE_1_2_x121", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "487", "DependentChan" : "763", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x121_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "627", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_PE_dummy_2_x1_U0", "Parent" : "432",
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
			{"Name" : "fifo_A_PE_2_2_x124", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "499", "DependentChan" : "769", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x124_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "628", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_PE_dummy_3_x1_U0", "Parent" : "432",
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
			{"Name" : "fifo_A_PE_3_2_x127", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "511", "DependentChan" : "775", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x127_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "629", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_PE_dummy_4_x1_U0", "Parent" : "432",
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
			{"Name" : "fifo_A_PE_4_2_x130", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "523", "DependentChan" : "781", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_2_x130_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "630", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_PE_dummy_5_x1_U0", "Parent" : "432",
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
			{"Name" : "fifo_A_PE_5_2_x133", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "535", "DependentChan" : "787", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_2_x133_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "631", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_PE_dummy_6_x1_U0", "Parent" : "432",
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
			{"Name" : "fifo_A_PE_6_2_x136", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "547", "DependentChan" : "793", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x136_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "632", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_PE_dummy_7_x1_U0", "Parent" : "432",
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
			{"Name" : "fifo_A_PE_7_2_x139", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "559", "DependentChan" : "799", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_2_x139_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "633", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_PE_dummy_8_x1_U0", "Parent" : "432",
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
			{"Name" : "fifo_A_PE_8_2_x142", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "571", "DependentChan" : "805", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_2_x142_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "634", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_PE_dummy_9_x1_U0", "Parent" : "432",
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
			{"Name" : "fifo_A_PE_9_2_x145", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "583", "DependentChan" : "811", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_2_x145_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "635", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_PE_dummy_10_x1_U0", "Parent" : "432",
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
			{"Name" : "fifo_A_PE_10_2_x148", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "595", "DependentChan" : "817", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_2_x148_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "636", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_PE_dummy_11_x1_U0", "Parent" : "432",
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
			{"Name" : "fifo_A_PE_11_2_x151", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "607", "DependentChan" : "823", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_2_x151_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "637", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_PE_dummy_12_x1_U0", "Parent" : "432",
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
			{"Name" : "fifo_A_PE_12_2_x154", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "619", "DependentChan" : "829", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_2_x154_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "638", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.B_PE_dummy_0_x1_U0", "Parent" : "432",
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
			{"Name" : "fifo_B_PE_13_0_x168", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "613", "DependentChan" : "827", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_0_x168_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "639", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.B_PE_dummy_1_x1_U0", "Parent" : "432",
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
			{"Name" : "fifo_B_PE_13_1_x182", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "619", "DependentChan" : "830", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_1_x182_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "640", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_boundary_0_x1_U0", "Parent" : "432", "Child" : ["641", "642"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x1121", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "643", "DependentChan" : "832", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x1121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_0_x195", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "613", "DependentChan" : "828", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_0_x195_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "641", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_boundary_0_x1_U0.local_C_V_U", "Parent" : "640"},
	{"ID" : "642", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_boundary_0_x1_U0.buf_data_split_V_U", "Parent" : "640"},
	{"ID" : "643", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_0_x1_U0", "Parent" : "432", "Child" : ["644", "645"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x1121", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "640", "DependentChan" : "832", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x1121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x1120", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "646", "DependentChan" : "833", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x1120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_0_x194", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "601", "DependentChan" : "822", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_0_x194_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "644", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_0_x1_U0.local_C_V_U", "Parent" : "643"},
	{"ID" : "645", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_0_x1_U0.buf_data_split_V_U", "Parent" : "643"},
	{"ID" : "646", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_1_x1_U0", "Parent" : "432", "Child" : ["647", "648"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x1120", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "643", "DependentChan" : "833", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x1120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x1119", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "649", "DependentChan" : "834", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x1119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_0_x193", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "589", "DependentChan" : "816", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_0_x193_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "647", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_1_x1_U0.local_C_V_U", "Parent" : "646"},
	{"ID" : "648", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_1_x1_U0.buf_data_split_V_U", "Parent" : "646"},
	{"ID" : "649", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_2_x1_U0", "Parent" : "432", "Child" : ["650", "651"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x1119", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "646", "DependentChan" : "834", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x1119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x1118", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "652", "DependentChan" : "835", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x1118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_0_x192", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "577", "DependentChan" : "810", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_0_x192_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "650", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_2_x1_U0.local_C_V_U", "Parent" : "649"},
	{"ID" : "651", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_2_x1_U0.buf_data_split_V_U", "Parent" : "649"},
	{"ID" : "652", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_3_x1_U0", "Parent" : "432", "Child" : ["653", "654"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x1118", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "649", "DependentChan" : "835", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x1118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x1117", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "655", "DependentChan" : "836", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x1117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_0_x191", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "565", "DependentChan" : "804", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_0_x191_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "653", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_3_x1_U0.local_C_V_U", "Parent" : "652"},
	{"ID" : "654", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_3_x1_U0.buf_data_split_V_U", "Parent" : "652"},
	{"ID" : "655", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_4_x1_U0", "Parent" : "432", "Child" : ["656", "657"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x1117", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "652", "DependentChan" : "836", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x1117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x1116", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "658", "DependentChan" : "837", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x1116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_0_x190", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "553", "DependentChan" : "798", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_0_x190_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "656", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_4_x1_U0.local_C_V_U", "Parent" : "655"},
	{"ID" : "657", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_4_x1_U0.buf_data_split_V_U", "Parent" : "655"},
	{"ID" : "658", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_5_x1_U0", "Parent" : "432", "Child" : ["659", "660"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x1116", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "655", "DependentChan" : "837", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x1116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x1115", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "661", "DependentChan" : "838", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x1115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_0_x189", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "541", "DependentChan" : "792", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_0_x189_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "659", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_5_x1_U0.local_C_V_U", "Parent" : "658"},
	{"ID" : "660", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_5_x1_U0.buf_data_split_V_U", "Parent" : "658"},
	{"ID" : "661", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_6_x1_U0", "Parent" : "432", "Child" : ["662", "663"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x1115", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "658", "DependentChan" : "838", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x1115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x1114", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "664", "DependentChan" : "839", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x1114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_0_x188", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "529", "DependentChan" : "786", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_0_x188_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "662", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_6_x1_U0.local_C_V_U", "Parent" : "661"},
	{"ID" : "663", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_6_x1_U0.buf_data_split_V_U", "Parent" : "661"},
	{"ID" : "664", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_7_x1_U0", "Parent" : "432", "Child" : ["665", "666"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x1114", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "661", "DependentChan" : "839", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x1114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x1113", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "667", "DependentChan" : "840", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x1113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_0_x187", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "517", "DependentChan" : "780", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_0_x187_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "665", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_7_x1_U0.local_C_V_U", "Parent" : "664"},
	{"ID" : "666", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_7_x1_U0.buf_data_split_V_U", "Parent" : "664"},
	{"ID" : "667", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_8_x1_U0", "Parent" : "432", "Child" : ["668", "669"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x1113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "664", "DependentChan" : "840", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x1113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x1112", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "670", "DependentChan" : "841", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x1112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_0_x186", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "505", "DependentChan" : "774", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_0_x186_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "668", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_8_x1_U0.local_C_V_U", "Parent" : "667"},
	{"ID" : "669", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_8_x1_U0.buf_data_split_V_U", "Parent" : "667"},
	{"ID" : "670", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_9_x1_U0", "Parent" : "432", "Child" : ["671", "672"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x1112", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "667", "DependentChan" : "841", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x1112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x1111", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "673", "DependentChan" : "842", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x1111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_0_x185", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "493", "DependentChan" : "768", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_0_x185_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "671", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_9_x1_U0.local_C_V_U", "Parent" : "670"},
	{"ID" : "672", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_9_x1_U0.buf_data_split_V_U", "Parent" : "670"},
	{"ID" : "673", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_10_x1_U0", "Parent" : "432", "Child" : ["674", "675"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x1111", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "670", "DependentChan" : "842", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x1111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x1110", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "676", "DependentChan" : "843", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x1110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_0_x184", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "481", "DependentChan" : "762", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_0_x184_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "674", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_10_x1_U0.local_C_V_U", "Parent" : "673"},
	{"ID" : "675", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_10_x1_U0.buf_data_split_V_U", "Parent" : "673"},
	{"ID" : "676", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_11_x1_U0", "Parent" : "432", "Child" : ["677", "678"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x1110", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "673", "DependentChan" : "843", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x1110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x1109", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "719", "DependentChan" : "844", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_0_x183", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "469", "DependentChan" : "756", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_0_x183_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "677", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_11_x1_U0.local_C_V_U", "Parent" : "676"},
	{"ID" : "678", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_11_x1_U0.buf_data_split_V_U", "Parent" : "676"},
	{"ID" : "679", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_boundary_1_x1_U0", "Parent" : "432", "Child" : ["680", "681"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x1134", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "682", "DependentChan" : "845", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x1134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_1_x1108", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "619", "DependentChan" : "831", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_1_x1108_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "680", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_boundary_1_x1_U0.local_C_V_U", "Parent" : "679"},
	{"ID" : "681", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_boundary_1_x1_U0.buf_data_split_V_U", "Parent" : "679"},
	{"ID" : "682", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_12_x1_U0", "Parent" : "432", "Child" : ["683", "684"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x1134", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "679", "DependentChan" : "845", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x1134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x1133", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "685", "DependentChan" : "846", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x1133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_1_x1107", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "607", "DependentChan" : "825", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_1_x1107_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "683", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_12_x1_U0.local_C_V_U", "Parent" : "682"},
	{"ID" : "684", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_12_x1_U0.buf_data_split_V_U", "Parent" : "682"},
	{"ID" : "685", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_13_x1_U0", "Parent" : "432", "Child" : ["686", "687"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x1133", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "682", "DependentChan" : "846", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x1133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x1132", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "688", "DependentChan" : "847", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x1132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_1_x1106", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "595", "DependentChan" : "819", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_1_x1106_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "686", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_13_x1_U0.local_C_V_U", "Parent" : "685"},
	{"ID" : "687", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_13_x1_U0.buf_data_split_V_U", "Parent" : "685"},
	{"ID" : "688", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_14_x1_U0", "Parent" : "432", "Child" : ["689", "690"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x1132", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "685", "DependentChan" : "847", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x1132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x1131", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "691", "DependentChan" : "848", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x1131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_1_x1105", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "583", "DependentChan" : "813", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_1_x1105_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "689", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_14_x1_U0.local_C_V_U", "Parent" : "688"},
	{"ID" : "690", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_14_x1_U0.buf_data_split_V_U", "Parent" : "688"},
	{"ID" : "691", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_15_x1_U0", "Parent" : "432", "Child" : ["692", "693"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x1131", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "688", "DependentChan" : "848", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x1131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x1130", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "694", "DependentChan" : "849", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x1130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_1_x1104", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "571", "DependentChan" : "807", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_1_x1104_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "692", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_15_x1_U0.local_C_V_U", "Parent" : "691"},
	{"ID" : "693", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_15_x1_U0.buf_data_split_V_U", "Parent" : "691"},
	{"ID" : "694", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_16_x1_U0", "Parent" : "432", "Child" : ["695", "696"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x1130", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "691", "DependentChan" : "849", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x1130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "697", "DependentChan" : "850", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_1_x1103", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "559", "DependentChan" : "801", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_1_x1103_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "695", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_16_x1_U0.local_C_V_U", "Parent" : "694"},
	{"ID" : "696", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_16_x1_U0.buf_data_split_V_U", "Parent" : "694"},
	{"ID" : "697", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_17_x1_U0", "Parent" : "432", "Child" : ["698", "699"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "694", "DependentChan" : "850", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "700", "DependentChan" : "851", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x1102", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "547", "DependentChan" : "795", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x1102_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "698", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_17_x1_U0.local_C_V_U", "Parent" : "697"},
	{"ID" : "699", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_17_x1_U0.buf_data_split_V_U", "Parent" : "697"},
	{"ID" : "700", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_18_x1_U0", "Parent" : "432", "Child" : ["701", "702"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "697", "DependentChan" : "851", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x1127", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "703", "DependentChan" : "852", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x1127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_1_x1101", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "535", "DependentChan" : "789", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_1_x1101_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "701", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_18_x1_U0.local_C_V_U", "Parent" : "700"},
	{"ID" : "702", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_18_x1_U0.buf_data_split_V_U", "Parent" : "700"},
	{"ID" : "703", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_19_x1_U0", "Parent" : "432", "Child" : ["704", "705"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x1127", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "700", "DependentChan" : "852", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x1127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x1126", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "706", "DependentChan" : "853", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x1126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_1_x1100", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "523", "DependentChan" : "783", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_1_x1100_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "704", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_19_x1_U0.local_C_V_U", "Parent" : "703"},
	{"ID" : "705", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_19_x1_U0.buf_data_split_V_U", "Parent" : "703"},
	{"ID" : "706", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_20_x1_U0", "Parent" : "432", "Child" : ["707", "708"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x1126", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "703", "DependentChan" : "853", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x1126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x1125", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "709", "DependentChan" : "854", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x1125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_1_x199", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "511", "DependentChan" : "777", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_1_x199_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "707", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_20_x1_U0.local_C_V_U", "Parent" : "706"},
	{"ID" : "708", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_20_x1_U0.buf_data_split_V_U", "Parent" : "706"},
	{"ID" : "709", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_21_x1_U0", "Parent" : "432", "Child" : ["710", "711"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x1125", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "706", "DependentChan" : "854", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x1125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x1124", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "712", "DependentChan" : "855", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x1124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_1_x198", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "499", "DependentChan" : "771", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_1_x198_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "710", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_21_x1_U0.local_C_V_U", "Parent" : "709"},
	{"ID" : "711", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_21_x1_U0.buf_data_split_V_U", "Parent" : "709"},
	{"ID" : "712", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_22_x1_U0", "Parent" : "432", "Child" : ["713", "714"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x1124", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "709", "DependentChan" : "855", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x1124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x1123", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "715", "DependentChan" : "856", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x1123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_1_x197", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "487", "DependentChan" : "765", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_1_x197_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "713", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_22_x1_U0.local_C_V_U", "Parent" : "712"},
	{"ID" : "714", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_22_x1_U0.buf_data_split_V_U", "Parent" : "712"},
	{"ID" : "715", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_23_x1_U0", "Parent" : "432", "Child" : ["716", "717"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x1123", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "712", "DependentChan" : "856", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x1123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x1122", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "718", "DependentChan" : "857", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x1122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_1_x196", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "475", "DependentChan" : "759", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_1_x196_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "716", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_23_x1_U0.local_C_V_U", "Parent" : "715"},
	{"ID" : "717", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_23_x1_U0.buf_data_split_V_U", "Parent" : "715"},
	{"ID" : "718", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L2_out_boundary_x1_U0", "Parent" : "432",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x1136", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "719", "DependentChan" : "858", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x1136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x1122", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "715", "DependentChan" : "857", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x1122_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "719", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L2_out_x1_U0", "Parent" : "432",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x1136", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "718", "DependentChan" : "858", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x1136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x1135", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "720", "DependentChan" : "859", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x1135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x1109", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "676", "DependentChan" : "844", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "720", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L3_out_x1_U0", "Parent" : "432", "Child" : ["721"],
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
			{"Name" : "fifo_C_drain_local_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "719", "DependentChan" : "859", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_local_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "C", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "434", "DependentChan" : "723", "DependentChanDepth" : "33", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "721", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L3_out_x1_U0.mem_data_split_V_U", "Parent" : "720"},
	{"ID" : "722", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_c1_U", "Parent" : "432"},
	{"ID" : "723", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_c_U", "Parent" : "432"},
	{"ID" : "724", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_A_IO_L2_in_0_x1_U", "Parent" : "432"},
	{"ID" : "725", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_A_IO_L2_in_1_x1_U", "Parent" : "432"},
	{"ID" : "726", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_0_0_x1_U", "Parent" : "432"},
	{"ID" : "727", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_A_IO_L2_in_2_x1_U", "Parent" : "432"},
	{"ID" : "728", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_1_0_x1_U", "Parent" : "432"},
	{"ID" : "729", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_A_IO_L2_in_3_x1_U", "Parent" : "432"},
	{"ID" : "730", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_2_0_x1_U", "Parent" : "432"},
	{"ID" : "731", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_A_IO_L2_in_4_x1_U", "Parent" : "432"},
	{"ID" : "732", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_3_0_x1_U", "Parent" : "432"},
	{"ID" : "733", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_A_IO_L2_in_5_x1_U", "Parent" : "432"},
	{"ID" : "734", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_4_0_x1_U", "Parent" : "432"},
	{"ID" : "735", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_A_IO_L2_in_6_x1_U", "Parent" : "432"},
	{"ID" : "736", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_5_0_x1_U", "Parent" : "432"},
	{"ID" : "737", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_A_IO_L2_in_7_x1_U", "Parent" : "432"},
	{"ID" : "738", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_6_0_x1_U", "Parent" : "432"},
	{"ID" : "739", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_A_IO_L2_in_8_x1_U", "Parent" : "432"},
	{"ID" : "740", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_7_0_x1_U", "Parent" : "432"},
	{"ID" : "741", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_A_IO_L2_in_9_x1_U", "Parent" : "432"},
	{"ID" : "742", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_8_0_x1_U", "Parent" : "432"},
	{"ID" : "743", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_A_IO_L2_in_10_x1_U", "Parent" : "432"},
	{"ID" : "744", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_9_0_x1_U", "Parent" : "432"},
	{"ID" : "745", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_A_IO_L2_in_11_x1_U", "Parent" : "432"},
	{"ID" : "746", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_10_0_x1_U", "Parent" : "432"},
	{"ID" : "747", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_A_IO_L2_in_12_x1_U", "Parent" : "432"},
	{"ID" : "748", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_11_0_x1_U", "Parent" : "432"},
	{"ID" : "749", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_12_0_x1_U", "Parent" : "432"},
	{"ID" : "750", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_B_IO_L2_in_0_x1_U", "Parent" : "432"},
	{"ID" : "751", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_B_IO_L2_in_1_x1_U", "Parent" : "432"},
	{"ID" : "752", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_0_0_x1_U", "Parent" : "432"},
	{"ID" : "753", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_0_1_x1_U", "Parent" : "432"},
	{"ID" : "754", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_0_1_x1_U", "Parent" : "432"},
	{"ID" : "755", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_1_0_x1_U", "Parent" : "432"},
	{"ID" : "756", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_0_0_x1_U", "Parent" : "432"},
	{"ID" : "757", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_0_2_x1_U", "Parent" : "432"},
	{"ID" : "758", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_1_1_x1_U", "Parent" : "432"},
	{"ID" : "759", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_0_1_x1_U", "Parent" : "432"},
	{"ID" : "760", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_1_1_x1_U", "Parent" : "432"},
	{"ID" : "761", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_2_0_x1_U", "Parent" : "432"},
	{"ID" : "762", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_1_0_x1_U", "Parent" : "432"},
	{"ID" : "763", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_1_2_x1_U", "Parent" : "432"},
	{"ID" : "764", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_2_1_x1_U", "Parent" : "432"},
	{"ID" : "765", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_1_1_x1_U", "Parent" : "432"},
	{"ID" : "766", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_2_1_x1_U", "Parent" : "432"},
	{"ID" : "767", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_3_0_x1_U", "Parent" : "432"},
	{"ID" : "768", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_2_0_x1_U", "Parent" : "432"},
	{"ID" : "769", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_2_2_x1_U", "Parent" : "432"},
	{"ID" : "770", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_3_1_x1_U", "Parent" : "432"},
	{"ID" : "771", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_2_1_x1_U", "Parent" : "432"},
	{"ID" : "772", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_3_1_x1_U", "Parent" : "432"},
	{"ID" : "773", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_4_0_x1_U", "Parent" : "432"},
	{"ID" : "774", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_3_0_x1_U", "Parent" : "432"},
	{"ID" : "775", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_3_2_x1_U", "Parent" : "432"},
	{"ID" : "776", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_4_1_x1_U", "Parent" : "432"},
	{"ID" : "777", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_3_1_x1_U", "Parent" : "432"},
	{"ID" : "778", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_4_1_x1_U", "Parent" : "432"},
	{"ID" : "779", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_5_0_x1_U", "Parent" : "432"},
	{"ID" : "780", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_4_0_x1_U", "Parent" : "432"},
	{"ID" : "781", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_4_2_x1_U", "Parent" : "432"},
	{"ID" : "782", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_5_1_x1_U", "Parent" : "432"},
	{"ID" : "783", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_4_1_x1_U", "Parent" : "432"},
	{"ID" : "784", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_5_1_x1_U", "Parent" : "432"},
	{"ID" : "785", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_6_0_x1_U", "Parent" : "432"},
	{"ID" : "786", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_5_0_x1_U", "Parent" : "432"},
	{"ID" : "787", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_5_2_x1_U", "Parent" : "432"},
	{"ID" : "788", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_6_1_x1_U", "Parent" : "432"},
	{"ID" : "789", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_5_1_x1_U", "Parent" : "432"},
	{"ID" : "790", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_6_1_x1_U", "Parent" : "432"},
	{"ID" : "791", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_7_0_x1_U", "Parent" : "432"},
	{"ID" : "792", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_6_0_x1_U", "Parent" : "432"},
	{"ID" : "793", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_6_2_x1_U", "Parent" : "432"},
	{"ID" : "794", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_7_1_x1_U", "Parent" : "432"},
	{"ID" : "795", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_6_1_x1_U", "Parent" : "432"},
	{"ID" : "796", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_7_1_x1_U", "Parent" : "432"},
	{"ID" : "797", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_8_0_x1_U", "Parent" : "432"},
	{"ID" : "798", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_7_0_x1_U", "Parent" : "432"},
	{"ID" : "799", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_7_2_x1_U", "Parent" : "432"},
	{"ID" : "800", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_8_1_x1_U", "Parent" : "432"},
	{"ID" : "801", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_7_1_x1_U", "Parent" : "432"},
	{"ID" : "802", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_8_1_x1_U", "Parent" : "432"},
	{"ID" : "803", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_9_0_x1_U", "Parent" : "432"},
	{"ID" : "804", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_8_0_x1_U", "Parent" : "432"},
	{"ID" : "805", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_8_2_x1_U", "Parent" : "432"},
	{"ID" : "806", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_9_1_x1_U", "Parent" : "432"},
	{"ID" : "807", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_8_1_x1_U", "Parent" : "432"},
	{"ID" : "808", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_9_1_x1_U", "Parent" : "432"},
	{"ID" : "809", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_10_0_x1_U", "Parent" : "432"},
	{"ID" : "810", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_9_0_x1_U", "Parent" : "432"},
	{"ID" : "811", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_9_2_x1_U", "Parent" : "432"},
	{"ID" : "812", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_10_1_x1_U", "Parent" : "432"},
	{"ID" : "813", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_9_1_x1_U", "Parent" : "432"},
	{"ID" : "814", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_10_1_x1_U", "Parent" : "432"},
	{"ID" : "815", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_11_0_x1_U", "Parent" : "432"},
	{"ID" : "816", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_10_0_x1_U", "Parent" : "432"},
	{"ID" : "817", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_10_2_x1_U", "Parent" : "432"},
	{"ID" : "818", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_11_1_x1_U", "Parent" : "432"},
	{"ID" : "819", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_10_1_x1_U", "Parent" : "432"},
	{"ID" : "820", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_11_1_x1_U", "Parent" : "432"},
	{"ID" : "821", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_12_0_x1_U", "Parent" : "432"},
	{"ID" : "822", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_11_0_x1_U", "Parent" : "432"},
	{"ID" : "823", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_11_2_x1_U", "Parent" : "432"},
	{"ID" : "824", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_12_1_x1_U", "Parent" : "432"},
	{"ID" : "825", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_11_1_x1_U", "Parent" : "432"},
	{"ID" : "826", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_12_1_x1_U", "Parent" : "432"},
	{"ID" : "827", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_13_0_x1_U", "Parent" : "432"},
	{"ID" : "828", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_12_0_x1_U", "Parent" : "432"},
	{"ID" : "829", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_12_2_x1_U", "Parent" : "432"},
	{"ID" : "830", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_13_1_x1_U", "Parent" : "432"},
	{"ID" : "831", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_12_1_x1_U", "Parent" : "432"},
	{"ID" : "832", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_0_12_x1_U", "Parent" : "432"},
	{"ID" : "833", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_0_11_x1_U", "Parent" : "432"},
	{"ID" : "834", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_0_10_x1_U", "Parent" : "432"},
	{"ID" : "835", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_0_9_x1_U", "Parent" : "432"},
	{"ID" : "836", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_0_8_x1_U", "Parent" : "432"},
	{"ID" : "837", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_0_7_x1_U", "Parent" : "432"},
	{"ID" : "838", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_0_6_x1_U", "Parent" : "432"},
	{"ID" : "839", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_0_5_x1_U", "Parent" : "432"},
	{"ID" : "840", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_0_4_x1_U", "Parent" : "432"},
	{"ID" : "841", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_0_3_x1_U", "Parent" : "432"},
	{"ID" : "842", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_0_2_x1_U", "Parent" : "432"},
	{"ID" : "843", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_0_1_x1_U", "Parent" : "432"},
	{"ID" : "844", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_0_0_x1_U", "Parent" : "432"},
	{"ID" : "845", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_1_12_x1_U", "Parent" : "432"},
	{"ID" : "846", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_1_11_x1_U", "Parent" : "432"},
	{"ID" : "847", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_1_10_x1_U", "Parent" : "432"},
	{"ID" : "848", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_1_9_x1_U", "Parent" : "432"},
	{"ID" : "849", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_1_8_x1_U", "Parent" : "432"},
	{"ID" : "850", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_1_7_x1_U", "Parent" : "432"},
	{"ID" : "851", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_1_6_x1_U", "Parent" : "432"},
	{"ID" : "852", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_1_5_x1_U", "Parent" : "432"},
	{"ID" : "853", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_1_4_x1_U", "Parent" : "432"},
	{"ID" : "854", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_1_3_x1_U", "Parent" : "432"},
	{"ID" : "855", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_1_2_x1_U", "Parent" : "432"},
	{"ID" : "856", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_1_1_x1_U", "Parent" : "432"},
	{"ID" : "857", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_1_0_x1_U", "Parent" : "432"},
	{"ID" : "858", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L2_out_1_x1_U", "Parent" : "432"},
	{"ID" : "859", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L2_out_0_x1_U", "Parent" : "432"},
	{"ID" : "860", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_2mm_fu_114", "Parent" : "0", "Child" : ["861", "862", "863", "864", "865", "866", "867", "868", "869"],
		"CDFG" : "nondf_kernel_2mm",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "468228", "EstimateLatencyMax" : "468228",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "xout", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "xin", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "861", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_2mm_fu_114.tmp_V_U", "Parent" : "860"},
	{"ID" : "862", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_2mm_fu_114.A_V_U", "Parent" : "860"},
	{"ID" : "863", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_2mm_fu_114.B_V_U", "Parent" : "860"},
	{"ID" : "864", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_2mm_fu_114.C_V_U", "Parent" : "860"},
	{"ID" : "865", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_2mm_fu_114.D_input_V_U", "Parent" : "860"},
	{"ID" : "866", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_2mm_fu_114.D_output_V_U", "Parent" : "860"},
	{"ID" : "867", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_2mm_fu_114.mul_512s_512s_512_5_1_U486", "Parent" : "860"},
	{"ID" : "868", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_2mm_fu_114.add_512ns_512ns_512_2_1_U487", "Parent" : "860"},
	{"ID" : "869", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_2mm_fu_114.mul_32s_32s_32_2_1_U488", "Parent" : "860"}]}


set ArgLastReadFirstWriteLatency {
	top {
		gmem_A {Type I LastRead 72 FirstWrite -1}
		gmem_B {Type I LastRead 72 FirstWrite -1}
		gmem_C {Type O LastRead 3 FirstWrite 8}
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}
		C {Type I LastRead 0 FirstWrite -1}}
	kernel3_x0 {
		gmem_A {Type I LastRead 72 FirstWrite -1}
		gmem_B {Type I LastRead 72 FirstWrite -1}
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 6}}
	kernel3_x0_entry38 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}
		A_out {Type O LastRead -1 FirstWrite 0}
		B_out {Type O LastRead -1 FirstWrite 0}}
	A_IO_L3_in_x0 {
		gmem_A {Type I LastRead 72 FirstWrite -1}
		fifo_A_local_out {Type O LastRead -1 FirstWrite 74}
		A {Type I LastRead 0 FirstWrite -1}}
	A_IO_L2_in_0_x0 {
		fifo_A_A_IO_L2_in_0_x01 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_1_x02 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_0_0_x016 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_1_x0 {
		fifo_A_A_IO_L2_in_1_x02 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_2_x03 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_1_0_x019 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_2_x0 {
		fifo_A_A_IO_L2_in_2_x03 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_3_x04 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_2_0_x022 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_3_x0 {
		fifo_A_A_IO_L2_in_3_x04 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_4_x05 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_3_0_x025 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_4_x0 {
		fifo_A_A_IO_L2_in_4_x05 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_5_x06 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_4_0_x028 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_5_x0 {
		fifo_A_A_IO_L2_in_5_x06 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_6_x07 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_5_0_x031 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_6_x0 {
		fifo_A_A_IO_L2_in_6_x07 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_7_x08 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_6_0_x034 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_7_x0 {
		fifo_A_A_IO_L2_in_7_x08 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_8_x09 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_7_0_x037 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_8_x0 {
		fifo_A_A_IO_L2_in_8_x09 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_9_x010 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_8_0_x040 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_9_x0 {
		fifo_A_A_IO_L2_in_9_x010 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_10_x011 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_9_0_x043 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_10_x0 {
		fifo_A_A_IO_L2_in_10_x011 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_11_x012 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_10_0_x046 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_11_x0 {
		fifo_A_A_IO_L2_in_11_x012 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_12_x013 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_11_0_x049 {Type O LastRead -1 FirstWrite 5}}
	A_IO_L2_in_boundary_x0 {
		fifo_A_A_IO_L2_in_12_x013 {Type I LastRead 3 FirstWrite -1}
		fifo_A_PE_12_0_x052 {Type O LastRead -1 FirstWrite 5}}
	B_IO_L3_in_x0 {
		gmem_B {Type I LastRead 72 FirstWrite -1}
		fifo_B_local_out {Type O LastRead -1 FirstWrite 74}
		B {Type I LastRead 0 FirstWrite -1}}
	B_IO_L2_in_x0 {
		fifo_B_B_IO_L2_in_0_x014 {Type I LastRead 4 FirstWrite -1}
		fifo_B_B_IO_L2_in_1_x015 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_0_0_x055 {Type O LastRead -1 FirstWrite 5}}
	B_IO_L2_in_boundary_x0 {
		fifo_B_B_IO_L2_in_1_x015 {Type I LastRead 3 FirstWrite -1}
		fifo_B_PE_0_1_x069 {Type O LastRead -1 FirstWrite 5}}
	PE_wrapper_0_0_x0 {
		fifo_A_PE_0_0_x016 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_0_1_x017 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_0_0_x055 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_1_0_x056 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_0_0_x083 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_0_1_x0 {
		fifo_A_PE_0_1_x017 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_0_2_x018 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_0_1_x069 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_1_1_x070 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_0_1_x096 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_1_0_x0 {
		fifo_A_PE_1_0_x019 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_1_1_x020 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_1_0_x056 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_2_0_x057 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_1_0_x084 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_1_1_x0 {
		fifo_A_PE_1_1_x020 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_1_2_x021 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_1_1_x070 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_2_1_x071 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_1_1_x097 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_2_0_x0 {
		fifo_A_PE_2_0_x022 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_2_1_x023 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_2_0_x057 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_3_0_x058 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_2_0_x085 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_2_1_x0 {
		fifo_A_PE_2_1_x023 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_2_2_x024 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_2_1_x071 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_3_1_x072 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_2_1_x098 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_3_0_x0 {
		fifo_A_PE_3_0_x025 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_3_1_x026 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_3_0_x058 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_4_0_x059 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_3_0_x086 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_3_1_x0 {
		fifo_A_PE_3_1_x026 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_3_2_x027 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_3_1_x072 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_4_1_x073 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_3_1_x099 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_4_0_x0 {
		fifo_A_PE_4_0_x028 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_4_1_x029 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_4_0_x059 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_5_0_x060 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_4_0_x087 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_4_1_x0 {
		fifo_A_PE_4_1_x029 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_4_2_x030 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_4_1_x073 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_5_1_x074 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_4_1_x0100 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_5_0_x0 {
		fifo_A_PE_5_0_x031 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_5_1_x032 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_5_0_x060 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_6_0_x061 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_5_0_x088 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_5_1_x0 {
		fifo_A_PE_5_1_x032 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_5_2_x033 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_5_1_x074 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_6_1_x075 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_5_1_x0101 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_6_0_x0 {
		fifo_A_PE_6_0_x034 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_6_1_x035 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_6_0_x061 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_7_0_x062 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_6_0_x089 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_6_1_x0 {
		fifo_A_PE_6_1_x035 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_6_2_x036 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_6_1_x075 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_7_1_x076 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_6_1_x0102 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_7_0_x0 {
		fifo_A_PE_7_0_x037 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_7_1_x038 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_7_0_x062 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_8_0_x063 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_7_0_x090 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_7_1_x0 {
		fifo_A_PE_7_1_x038 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_7_2_x039 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_7_1_x076 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_8_1_x077 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_7_1_x0103 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_8_0_x0 {
		fifo_A_PE_8_0_x040 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_8_1_x041 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_8_0_x063 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_9_0_x064 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_8_0_x091 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_8_1_x0 {
		fifo_A_PE_8_1_x041 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_8_2_x042 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_8_1_x077 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_9_1_x078 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_8_1_x0104 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_9_0_x0 {
		fifo_A_PE_9_0_x043 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_9_1_x044 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_9_0_x064 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_10_0_x065 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_9_0_x092 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_9_1_x0 {
		fifo_A_PE_9_1_x044 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_9_2_x045 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_9_1_x078 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_10_1_x079 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_9_1_x0105 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_10_0_x0 {
		fifo_A_PE_10_0_x046 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_10_1_x047 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_10_0_x065 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_11_0_x066 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_10_0_x093 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_10_1_x0 {
		fifo_A_PE_10_1_x047 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_10_2_x048 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_10_1_x079 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_11_1_x080 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_10_1_x0106 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_11_0_x0 {
		fifo_A_PE_11_0_x049 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_11_1_x050 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_11_0_x066 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_12_0_x067 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_11_0_x094 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_11_1_x0 {
		fifo_A_PE_11_1_x050 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_11_2_x051 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_11_1_x080 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_12_1_x081 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_11_1_x0107 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_12_0_x0 {
		fifo_A_PE_12_0_x052 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_12_1_x053 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_12_0_x067 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_13_0_x068 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_12_0_x095 {Type O LastRead -1 FirstWrite 8}}
	PE_wrapper_12_1_x0 {
		fifo_A_PE_12_1_x053 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_12_2_x054 {Type O LastRead -1 FirstWrite 12}
		fifo_B_PE_12_1_x081 {Type I LastRead 5 FirstWrite -1}
		fifo_B_PE_13_1_x082 {Type O LastRead -1 FirstWrite 12}
		fifo_C_drain_PE_12_1_x0108 {Type O LastRead -1 FirstWrite 8}}
	A_PE_dummy_0_x0 {
		fifo_A_PE_0_2_x018 {Type I LastRead 3 FirstWrite -1}}
	A_PE_dummy_1_x0 {
		fifo_A_PE_1_2_x021 {Type I LastRead 3 FirstWrite -1}}
	A_PE_dummy_2_x0 {
		fifo_A_PE_2_2_x024 {Type I LastRead 3 FirstWrite -1}}
	A_PE_dummy_3_x0 {
		fifo_A_PE_3_2_x027 {Type I LastRead 3 FirstWrite -1}}
	A_PE_dummy_4_x0 {
		fifo_A_PE_4_2_x030 {Type I LastRead 3 FirstWrite -1}}
	A_PE_dummy_5_x0 {
		fifo_A_PE_5_2_x033 {Type I LastRead 3 FirstWrite -1}}
	A_PE_dummy_6_x0 {
		fifo_A_PE_6_2_x036 {Type I LastRead 3 FirstWrite -1}}
	A_PE_dummy_7_x0 {
		fifo_A_PE_7_2_x039 {Type I LastRead 3 FirstWrite -1}}
	A_PE_dummy_8_x0 {
		fifo_A_PE_8_2_x042 {Type I LastRead 3 FirstWrite -1}}
	A_PE_dummy_9_x0 {
		fifo_A_PE_9_2_x045 {Type I LastRead 3 FirstWrite -1}}
	A_PE_dummy_10_x0 {
		fifo_A_PE_10_2_x048 {Type I LastRead 3 FirstWrite -1}}
	A_PE_dummy_11_x0 {
		fifo_A_PE_11_2_x051 {Type I LastRead 3 FirstWrite -1}}
	A_PE_dummy_12_x0 {
		fifo_A_PE_12_2_x054 {Type I LastRead 3 FirstWrite -1}}
	B_PE_dummy_0_x0 {
		fifo_B_PE_13_0_x068 {Type I LastRead 3 FirstWrite -1}}
	B_PE_dummy_1_x0 {
		fifo_B_PE_13_1_x082 {Type I LastRead 3 FirstWrite -1}}
	C_drain_IO_L1_out_boundary_0_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_12_x0121 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_12_0_x095 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_0_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_12_x0121 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_11_x0120 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_11_0_x094 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_1_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_11_x0120 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_10_x0119 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_10_0_x093 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_2_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_10_x0119 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_9_x0118 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_9_0_x092 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_3_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_9_x0118 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_8_x0117 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_8_0_x091 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_4_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_8_x0117 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_7_x0116 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_7_0_x090 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_5_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_7_x0116 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_6_x0115 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_6_0_x089 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_6_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_6_x0115 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_5_x0114 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_5_0_x088 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_7_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_5_x0114 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_4_x0113 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_4_0_x087 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_8_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_4_x0113 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_3_x0112 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_3_0_x086 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_9_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_3_x0112 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_2_x0111 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_2_0_x085 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_10_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_2_x0111 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_1_x0110 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_1_0_x084 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_11_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_1_x0110 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_0_x0109 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_0_0_x083 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_boundary_1_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_12_x0134 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_12_1_x0108 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_12_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_12_x0134 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_11_x0133 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_11_1_x0107 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_13_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_11_x0133 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_10_x0132 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_10_1_x0106 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_14_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_10_x0132 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_9_x0131 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_9_1_x0105 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_15_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_9_x0131 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_8_x0130 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_8_1_x0104 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_16_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_8_x0130 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_7_x0129 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_7_1_x0103 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_17_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_7_x0129 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_6_x0128 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_6_1_x0102 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_18_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_6_x0128 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_5_x0127 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_5_1_x0101 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_19_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_5_x0127 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_4_x0126 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_4_1_x0100 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_20_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_4_x0126 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_3_x0125 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_3_1_x099 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_21_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_3_x0125 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_2_x0124 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_2_1_x098 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_22_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_2_x0124 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_1_x0123 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_1_1_x097 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_23_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_1_x0123 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_0_x0122 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_0_1_x096 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L2_out_boundary_x0 {
		fifo_C_drain_C_drain_IO_L2_out_1_x0136 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_C_drain_IO_L1_out_1_0_x0122 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L2_out_x0 {
		fifo_C_drain_C_drain_IO_L2_out_1_x0136 {Type I LastRead 4 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L2_out_0_x0135 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_C_drain_IO_L1_out_0_0_x0109 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L3_out_x0 {
		fifo_C_drain_C_drain_IO_L2_out_0_x0135 {Type I LastRead 3 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 6}}
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
		C {Type I LastRead 0 FirstWrite -1}}
	nondf_kernel_2mm {
		xout {Type I LastRead 2 FirstWrite -1}
		xin {Type O LastRead -1 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8933291", "Max" : "8933291"}
	, {"Name" : "Interval", "Min" : "8933292", "Max" : "8933292"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem_A { m_axi {  { m_axi_gmem_A_AWVALID VALID 1 1 }  { m_axi_gmem_A_AWREADY READY 0 1 }  { m_axi_gmem_A_AWADDR ADDR 1 64 }  { m_axi_gmem_A_AWID ID 1 1 }  { m_axi_gmem_A_AWLEN LEN 1 8 }  { m_axi_gmem_A_AWSIZE SIZE 1 3 }  { m_axi_gmem_A_AWBURST BURST 1 2 }  { m_axi_gmem_A_AWLOCK LOCK 1 2 }  { m_axi_gmem_A_AWCACHE CACHE 1 4 }  { m_axi_gmem_A_AWPROT PROT 1 3 }  { m_axi_gmem_A_AWQOS QOS 1 4 }  { m_axi_gmem_A_AWREGION REGION 1 4 }  { m_axi_gmem_A_AWUSER USER 1 1 }  { m_axi_gmem_A_WVALID VALID 1 1 }  { m_axi_gmem_A_WREADY READY 0 1 }  { m_axi_gmem_A_WDATA DATA 1 512 }  { m_axi_gmem_A_WSTRB STRB 1 64 }  { m_axi_gmem_A_WLAST LAST 1 1 }  { m_axi_gmem_A_WID ID 1 1 }  { m_axi_gmem_A_WUSER USER 1 1 }  { m_axi_gmem_A_ARVALID VALID 1 1 }  { m_axi_gmem_A_ARREADY READY 0 1 }  { m_axi_gmem_A_ARADDR ADDR 1 64 }  { m_axi_gmem_A_ARID ID 1 1 }  { m_axi_gmem_A_ARLEN LEN 1 8 }  { m_axi_gmem_A_ARSIZE SIZE 1 3 }  { m_axi_gmem_A_ARBURST BURST 1 2 }  { m_axi_gmem_A_ARLOCK LOCK 1 2 }  { m_axi_gmem_A_ARCACHE CACHE 1 4 }  { m_axi_gmem_A_ARPROT PROT 1 3 }  { m_axi_gmem_A_ARQOS QOS 1 4 }  { m_axi_gmem_A_ARREGION REGION 1 4 }  { m_axi_gmem_A_ARUSER USER 1 1 }  { m_axi_gmem_A_RVALID VALID 0 1 }  { m_axi_gmem_A_RREADY READY 1 1 }  { m_axi_gmem_A_RDATA DATA 0 512 }  { m_axi_gmem_A_RLAST LAST 0 1 }  { m_axi_gmem_A_RID ID 0 1 }  { m_axi_gmem_A_RUSER USER 0 1 }  { m_axi_gmem_A_RRESP RESP 0 2 }  { m_axi_gmem_A_BVALID VALID 0 1 }  { m_axi_gmem_A_BREADY READY 1 1 }  { m_axi_gmem_A_BRESP RESP 0 2 }  { m_axi_gmem_A_BID ID 0 1 }  { m_axi_gmem_A_BUSER USER 0 1 } } }
	gmem_B { m_axi {  { m_axi_gmem_B_AWVALID VALID 1 1 }  { m_axi_gmem_B_AWREADY READY 0 1 }  { m_axi_gmem_B_AWADDR ADDR 1 64 }  { m_axi_gmem_B_AWID ID 1 1 }  { m_axi_gmem_B_AWLEN LEN 1 8 }  { m_axi_gmem_B_AWSIZE SIZE 1 3 }  { m_axi_gmem_B_AWBURST BURST 1 2 }  { m_axi_gmem_B_AWLOCK LOCK 1 2 }  { m_axi_gmem_B_AWCACHE CACHE 1 4 }  { m_axi_gmem_B_AWPROT PROT 1 3 }  { m_axi_gmem_B_AWQOS QOS 1 4 }  { m_axi_gmem_B_AWREGION REGION 1 4 }  { m_axi_gmem_B_AWUSER USER 1 1 }  { m_axi_gmem_B_WVALID VALID 1 1 }  { m_axi_gmem_B_WREADY READY 0 1 }  { m_axi_gmem_B_WDATA DATA 1 512 }  { m_axi_gmem_B_WSTRB STRB 1 64 }  { m_axi_gmem_B_WLAST LAST 1 1 }  { m_axi_gmem_B_WID ID 1 1 }  { m_axi_gmem_B_WUSER USER 1 1 }  { m_axi_gmem_B_ARVALID VALID 1 1 }  { m_axi_gmem_B_ARREADY READY 0 1 }  { m_axi_gmem_B_ARADDR ADDR 1 64 }  { m_axi_gmem_B_ARID ID 1 1 }  { m_axi_gmem_B_ARLEN LEN 1 8 }  { m_axi_gmem_B_ARSIZE SIZE 1 3 }  { m_axi_gmem_B_ARBURST BURST 1 2 }  { m_axi_gmem_B_ARLOCK LOCK 1 2 }  { m_axi_gmem_B_ARCACHE CACHE 1 4 }  { m_axi_gmem_B_ARPROT PROT 1 3 }  { m_axi_gmem_B_ARQOS QOS 1 4 }  { m_axi_gmem_B_ARREGION REGION 1 4 }  { m_axi_gmem_B_ARUSER USER 1 1 }  { m_axi_gmem_B_RVALID VALID 0 1 }  { m_axi_gmem_B_RREADY READY 1 1 }  { m_axi_gmem_B_RDATA DATA 0 512 }  { m_axi_gmem_B_RLAST LAST 0 1 }  { m_axi_gmem_B_RID ID 0 1 }  { m_axi_gmem_B_RUSER USER 0 1 }  { m_axi_gmem_B_RRESP RESP 0 2 }  { m_axi_gmem_B_BVALID VALID 0 1 }  { m_axi_gmem_B_BREADY READY 1 1 }  { m_axi_gmem_B_BRESP RESP 0 2 }  { m_axi_gmem_B_BID ID 0 1 }  { m_axi_gmem_B_BUSER USER 0 1 } } }
	gmem_C { m_axi {  { m_axi_gmem_C_AWVALID VALID 1 1 }  { m_axi_gmem_C_AWREADY READY 0 1 }  { m_axi_gmem_C_AWADDR ADDR 1 64 }  { m_axi_gmem_C_AWID ID 1 1 }  { m_axi_gmem_C_AWLEN LEN 1 8 }  { m_axi_gmem_C_AWSIZE SIZE 1 3 }  { m_axi_gmem_C_AWBURST BURST 1 2 }  { m_axi_gmem_C_AWLOCK LOCK 1 2 }  { m_axi_gmem_C_AWCACHE CACHE 1 4 }  { m_axi_gmem_C_AWPROT PROT 1 3 }  { m_axi_gmem_C_AWQOS QOS 1 4 }  { m_axi_gmem_C_AWREGION REGION 1 4 }  { m_axi_gmem_C_AWUSER USER 1 1 }  { m_axi_gmem_C_WVALID VALID 1 1 }  { m_axi_gmem_C_WREADY READY 0 1 }  { m_axi_gmem_C_WDATA DATA 1 512 }  { m_axi_gmem_C_WSTRB STRB 1 64 }  { m_axi_gmem_C_WLAST LAST 1 1 }  { m_axi_gmem_C_WID ID 1 1 }  { m_axi_gmem_C_WUSER USER 1 1 }  { m_axi_gmem_C_ARVALID VALID 1 1 }  { m_axi_gmem_C_ARREADY READY 0 1 }  { m_axi_gmem_C_ARADDR ADDR 1 64 }  { m_axi_gmem_C_ARID ID 1 1 }  { m_axi_gmem_C_ARLEN LEN 1 8 }  { m_axi_gmem_C_ARSIZE SIZE 1 3 }  { m_axi_gmem_C_ARBURST BURST 1 2 }  { m_axi_gmem_C_ARLOCK LOCK 1 2 }  { m_axi_gmem_C_ARCACHE CACHE 1 4 }  { m_axi_gmem_C_ARPROT PROT 1 3 }  { m_axi_gmem_C_ARQOS QOS 1 4 }  { m_axi_gmem_C_ARREGION REGION 1 4 }  { m_axi_gmem_C_ARUSER USER 1 1 }  { m_axi_gmem_C_RVALID VALID 0 1 }  { m_axi_gmem_C_RREADY READY 1 1 }  { m_axi_gmem_C_RDATA DATA 0 512 }  { m_axi_gmem_C_RLAST LAST 0 1 }  { m_axi_gmem_C_RID ID 0 1 }  { m_axi_gmem_C_RUSER USER 0 1 }  { m_axi_gmem_C_RRESP RESP 0 2 }  { m_axi_gmem_C_BVALID VALID 0 1 }  { m_axi_gmem_C_BREADY READY 1 1 }  { m_axi_gmem_C_BRESP RESP 0 2 }  { m_axi_gmem_C_BID ID 0 1 }  { m_axi_gmem_C_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ gmem_A { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ gmem_B { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ gmem_C { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem_A 64 }
	{ gmem_B 64 }
	{ gmem_C 64 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem_A 64 }
	{ gmem_B 64 }
	{ gmem_C 64 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
set moduleName top
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_chain
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {top}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem_A int 512 regular {axi_master 0}  }
	{ gmem_B int 512 regular {axi_master 0}  }
	{ gmem_C int 512 regular {axi_master 1}  }
	{ A int 64 regular {axi_slave 0}  }
	{ B int 64 regular {axi_slave 0}  }
	{ C int 64 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem_A", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "A","cData": "int512","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "A","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "gmem_B", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "B","cData": "int512","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "B","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "gmem_C", "interface" : "axi_master", "bitwidth" : 512, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "C","cData": "int512","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "C","bundle": "control"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "A", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "B", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "C", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} ]}
# RTL Port declarations: 
set portNum 155
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_gmem_A_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_A_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_A_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_A_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_A_AWLEN sc_out sc_lv 8 signal 0 } 
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
	{ m_axi_gmem_A_ARLEN sc_out sc_lv 8 signal 0 } 
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
	{ m_axi_gmem_B_AWLEN sc_out sc_lv 8 signal 1 } 
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
	{ m_axi_gmem_B_ARLEN sc_out sc_lv 8 signal 1 } 
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
	{ m_axi_gmem_C_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_C_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_C_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem_C_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_C_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem_C_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_C_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_C_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_C_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_C_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_C_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_C_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_C_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_C_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_C_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_C_WDATA sc_out sc_lv 512 signal 2 } 
	{ m_axi_gmem_C_WSTRB sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem_C_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_C_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_C_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_C_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_C_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_C_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem_C_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_C_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem_C_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_C_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_C_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_C_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_C_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_C_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_C_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_C_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_C_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_C_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_C_RDATA sc_in sc_lv 512 signal 2 } 
	{ m_axi_gmem_C_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_C_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_C_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_C_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem_C_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_C_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_C_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem_C_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_C_BUSER sc_in sc_lv 1 signal 2 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"top","role":"start","value":"0","valid_bit":"0"},{"name":"top","role":"continue","value":"0","valid_bit":"4"},{"name":"top","role":"auto_start","value":"0","valid_bit":"7"},{"name":"A","role":"data","value":"16"},{"name":"B","role":"data","value":"28"},{"name":"C","role":"data","value":"40"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"top","role":"start","value":"0","valid_bit":"0"},{"name":"top","role":"done","value":"0","valid_bit":"1"},{"name":"top","role":"idle","value":"0","valid_bit":"2"},{"name":"top","role":"ready","value":"0","valid_bit":"3"},{"name":"top","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmem_A_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_A_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_A_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_A", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_A_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_A", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_A_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_A", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_gmem_A_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_A", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_gmem_B_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_B", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_gmem_B_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_B", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_gmem_C_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_C_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_C_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_C", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_C_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_C_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_C", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_gmem_C_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_C", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_gmem_C_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_C", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "431", "857"],
		"CDFG" : "top",
		"Protocol" : "ap_ctrl_chain",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "745245", "EstimateLatencyMax" : "745245",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "gmem_A", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_kernel3_x0_fu_92", "Port" : "gmem_A"}]},
			{"Name" : "gmem_B", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_kernel3_x0_fu_92", "Port" : "gmem_B"}]},
			{"Name" : "gmem_C", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "431", "SubInstance" : "grp_kernel3_x1_fu_106", "Port" : "gmem_C"}]},
			{"Name" : "A", "Type" : "None", "Direction" : "I"},
			{"Name" : "B", "Type" : "None", "Direction" : "I"},
			{"Name" : "C", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_A_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_B_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_C_m_axi_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_xout0_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_xin1_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92", "Parent" : "0", "Child" : ["8", "9", "10", "12", "14", "16", "18", "20", "22", "24", "26", "28", "30", "32", "34", "36", "37", "39", "41", "47", "53", "59", "65", "71", "77", "83", "89", "95", "101", "107", "113", "119", "125", "131", "137", "143", "149", "155", "161", "167", "173", "179", "185", "191", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "215", "218", "221", "224", "227", "230", "233", "236", "239", "242", "245", "248", "251", "254", "257", "260", "263", "266", "269", "272", "275", "278", "281", "284", "287", "290", "291", "292", "293", "294", "295", "296", "297", "298", "299", "300", "301", "302", "303", "304", "305", "306", "307", "308", "309", "310", "311", "312", "313", "314", "315", "316", "317", "318", "319", "320", "321", "322", "323", "324", "325", "326", "327", "328", "329", "330", "331", "332", "333", "334", "335", "336", "337", "338", "339", "340", "341", "342", "343", "344", "345", "346", "347", "348", "349", "350", "351", "352", "353", "354", "355", "356", "357", "358", "359", "360", "361", "362", "363", "364", "365", "366", "367", "368", "369", "370", "371", "372", "373", "374", "375", "376", "377", "378", "379", "380", "381", "382", "383", "384", "385", "386", "387", "388", "389", "390", "391", "392", "393", "394", "395", "396", "397", "398", "399", "400", "401", "402", "403", "404", "405", "406", "407", "408", "409", "410", "411", "412", "413", "414", "415", "416", "417", "418", "419", "420", "421", "422", "423", "424", "425", "426", "427", "428", "429", "430"],
		"CDFG" : "kernel3_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "137892", "EstimateLatencyMax" : "137892",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "8", "Name" : "kernel3_x0_entry38_U0"},
			{"ID" : "9", "Name" : "A_IO_L3_in_x0_U0"},
			{"ID" : "36", "Name" : "B_IO_L3_in_x0_U0"}],
		"OutputProcess" : [
			{"ID" : "197", "Name" : "A_PE_dummy_0_x0_U0"},
			{"ID" : "198", "Name" : "A_PE_dummy_1_x0_U0"},
			{"ID" : "199", "Name" : "A_PE_dummy_2_x0_U0"},
			{"ID" : "200", "Name" : "A_PE_dummy_3_x0_U0"},
			{"ID" : "201", "Name" : "A_PE_dummy_4_x0_U0"},
			{"ID" : "202", "Name" : "A_PE_dummy_5_x0_U0"},
			{"ID" : "203", "Name" : "A_PE_dummy_6_x0_U0"},
			{"ID" : "204", "Name" : "A_PE_dummy_7_x0_U0"},
			{"ID" : "205", "Name" : "A_PE_dummy_8_x0_U0"},
			{"ID" : "206", "Name" : "A_PE_dummy_9_x0_U0"},
			{"ID" : "207", "Name" : "A_PE_dummy_10_x0_U0"},
			{"ID" : "208", "Name" : "A_PE_dummy_11_x0_U0"},
			{"ID" : "209", "Name" : "A_PE_dummy_12_x0_U0"},
			{"ID" : "210", "Name" : "B_PE_dummy_0_x0_U0"},
			{"ID" : "211", "Name" : "B_PE_dummy_1_x0_U0"},
			{"ID" : "292", "Name" : "C_drain_IO_L3_out_x0_U0"}],
		"Port" : [
			{"Name" : "gmem_A", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "A_IO_L3_in_x0_U0", "Port" : "gmem_A"}]},
			{"Name" : "gmem_B", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "B_IO_L3_in_x0_U0", "Port" : "gmem_B"}]},
			{"Name" : "A", "Type" : "None", "Direction" : "I"},
			{"Name" : "B", "Type" : "None", "Direction" : "I"},
			{"Name" : "C", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "292", "SubInstance" : "C_drain_IO_L3_out_x0_U0", "Port" : "C"}]}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.kernel3_x0_entry38_U0", "Parent" : "7",
		"CDFG" : "kernel3_x0_entry38",
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
			{"Name" : "A_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "293", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "A_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "36", "DependentChan" : "294", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L3_in_x0_U0", "Parent" : "7",
		"CDFG" : "A_IO_L3_in_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2121", "EstimateLatencyMax" : "2121",
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
			{"Name" : "fifo_A_local_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "295", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_local_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "293", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "A_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_0_x0_U0", "Parent" : "7", "Child" : ["11"],
		"CDFG" : "A_IO_L2_in_0_x0",
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
			{"Name" : "fifo_A_A_IO_L2_in_0_x01", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "295", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_0_x01_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_1_x02", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "12", "DependentChan" : "296", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x02_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_0_x016", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "41", "DependentChan" : "297", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x016_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_0_x0_U0.local_A_pong_V_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_1_x0_U0", "Parent" : "7", "Child" : ["13"],
		"CDFG" : "A_IO_L2_in_1_x0",
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
			{"Name" : "fifo_A_A_IO_L2_in_1_x02", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "296", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x02_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_2_x03", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "298", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x03_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_0_x019", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "53", "DependentChan" : "299", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x019_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_1_x0_U0.local_A_pong_V_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_2_x0_U0", "Parent" : "7", "Child" : ["15"],
		"CDFG" : "A_IO_L2_in_2_x0",
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
			{"Name" : "fifo_A_A_IO_L2_in_2_x03", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "298", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x03_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_3_x04", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "16", "DependentChan" : "300", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x04_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_0_x022", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "65", "DependentChan" : "301", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x022_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_2_x0_U0.local_A_pong_V_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_3_x0_U0", "Parent" : "7", "Child" : ["17"],
		"CDFG" : "A_IO_L2_in_3_x0",
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
			{"Name" : "fifo_A_A_IO_L2_in_3_x04", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "300", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x04_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_4_x05", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "302", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_4_x05_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_0_x025", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "77", "DependentChan" : "303", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x025_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_3_x0_U0.local_A_pong_V_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_4_x0_U0", "Parent" : "7", "Child" : ["19"],
		"CDFG" : "A_IO_L2_in_4_x0",
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
			{"Name" : "fifo_A_A_IO_L2_in_4_x05", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "302", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_4_x05_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_5_x06", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "304", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_5_x06_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_0_x028", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "89", "DependentChan" : "305", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_0_x028_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_4_x0_U0.local_A_pong_V_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_5_x0_U0", "Parent" : "7", "Child" : ["21"],
		"CDFG" : "A_IO_L2_in_5_x0",
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
			{"Name" : "fifo_A_A_IO_L2_in_5_x06", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "304", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_5_x06_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_6_x07", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "306", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_6_x07_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_0_x031", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "101", "DependentChan" : "307", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_0_x031_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_5_x0_U0.local_A_pong_V_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_6_x0_U0", "Parent" : "7", "Child" : ["23"],
		"CDFG" : "A_IO_L2_in_6_x0",
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
			{"Name" : "fifo_A_A_IO_L2_in_6_x07", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "306", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_6_x07_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_7_x08", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "308", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_7_x08_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_0_x034", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "113", "DependentChan" : "309", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_0_x034_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_6_x0_U0.local_A_pong_V_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_7_x0_U0", "Parent" : "7", "Child" : ["25"],
		"CDFG" : "A_IO_L2_in_7_x0",
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
			{"Name" : "fifo_A_A_IO_L2_in_7_x08", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "308", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_7_x08_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_8_x09", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "26", "DependentChan" : "310", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_8_x09_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_0_x037", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "125", "DependentChan" : "311", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_0_x037_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_7_x0_U0.local_A_pong_V_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_8_x0_U0", "Parent" : "7", "Child" : ["27"],
		"CDFG" : "A_IO_L2_in_8_x0",
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
			{"Name" : "fifo_A_A_IO_L2_in_8_x09", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "310", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_8_x09_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_9_x010", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "28", "DependentChan" : "312", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_9_x010_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_8_0_x040", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "137", "DependentChan" : "313", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_0_x040_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_8_x0_U0.local_A_pong_V_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_9_x0_U0", "Parent" : "7", "Child" : ["29"],
		"CDFG" : "A_IO_L2_in_9_x0",
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
			{"Name" : "fifo_A_A_IO_L2_in_9_x010", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "26", "DependentChan" : "312", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_9_x010_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_10_x011", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "30", "DependentChan" : "314", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_10_x011_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_9_0_x043", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "149", "DependentChan" : "315", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_0_x043_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_9_x0_U0.local_A_pong_V_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_10_x0_U0", "Parent" : "7", "Child" : ["31"],
		"CDFG" : "A_IO_L2_in_10_x0",
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
			{"Name" : "fifo_A_A_IO_L2_in_10_x011", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "28", "DependentChan" : "314", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_10_x011_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_11_x012", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "32", "DependentChan" : "316", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_11_x012_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_10_0_x046", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "161", "DependentChan" : "317", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_0_x046_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_10_x0_U0.local_A_pong_V_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_11_x0_U0", "Parent" : "7", "Child" : ["33"],
		"CDFG" : "A_IO_L2_in_11_x0",
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
			{"Name" : "fifo_A_A_IO_L2_in_11_x012", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "30", "DependentChan" : "316", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_11_x012_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_12_x013", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "318", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_12_x013_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_11_0_x049", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "173", "DependentChan" : "319", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_0_x049_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_11_x0_U0.local_A_pong_V_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_boundary_x0_U0", "Parent" : "7", "Child" : ["35"],
		"CDFG" : "A_IO_L2_in_boundary_x0",
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
			{"Name" : "fifo_A_A_IO_L2_in_12_x013", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "318", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_12_x013_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_12_0_x052", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "185", "DependentChan" : "320", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_0_x052_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_IO_L2_in_boundary_x0_U0.local_A_pong_V_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.B_IO_L3_in_x0_U0", "Parent" : "7",
		"CDFG" : "B_IO_L3_in_x0",
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
			{"Name" : "fifo_B_local_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "321", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_local_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "294", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.B_IO_L2_in_x0_U0", "Parent" : "7", "Child" : ["38"],
		"CDFG" : "B_IO_L2_in_x0",
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
			{"Name" : "fifo_B_B_IO_L2_in_0_x014", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "36", "DependentChan" : "321", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_0_x014_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_1_x015", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "39", "DependentChan" : "322", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x015_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x055", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "41", "DependentChan" : "323", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x055_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.B_IO_L2_in_x0_U0.local_B_pong_V_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.B_IO_L2_in_boundary_x0_U0", "Parent" : "7", "Child" : ["40"],
		"CDFG" : "B_IO_L2_in_boundary_x0",
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
			{"Name" : "fifo_B_B_IO_L2_in_1_x015", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "37", "DependentChan" : "322", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x015_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x069", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "47", "DependentChan" : "324", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x069_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.B_IO_L2_in_boundary_x0_U0.local_B_pong_V_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_0_0_x0_U0", "Parent" : "7", "Child" : ["42", "43", "44", "45", "46"],
		"CDFG" : "PE_wrapper_0_0_x0",
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
			{"Name" : "fifo_A_PE_0_0_x016", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "297", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x016_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_1_x017", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "47", "DependentChan" : "325", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x017_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x055", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "37", "DependentChan" : "323", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x055_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x056", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "53", "DependentChan" : "326", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x056_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_0_x083", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "248", "DependentChan" : "327", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_0_x083_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_0_0_x0_U0.local_C_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_0_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U56", "Parent" : "41"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_0_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U57", "Parent" : "41"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_0_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U58", "Parent" : "41"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_0_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U59", "Parent" : "41"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_0_1_x0_U0", "Parent" : "7", "Child" : ["48", "49", "50", "51", "52"],
		"CDFG" : "PE_wrapper_0_1_x0",
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
			{"Name" : "fifo_A_PE_0_1_x017", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "41", "DependentChan" : "325", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x017_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_2_x018", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "197", "DependentChan" : "328", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x018_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x069", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "39", "DependentChan" : "324", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x069_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x070", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "59", "DependentChan" : "329", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x070_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_1_x096", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "287", "DependentChan" : "330", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_1_x096_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_0_1_x0_U0.local_C_U", "Parent" : "47"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_0_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U68", "Parent" : "47"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_0_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U69", "Parent" : "47"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_0_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U70", "Parent" : "47"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_0_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U71", "Parent" : "47"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_1_0_x0_U0", "Parent" : "7", "Child" : ["54", "55", "56", "57", "58"],
		"CDFG" : "PE_wrapper_1_0_x0",
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
			{"Name" : "fifo_A_PE_1_0_x019", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "299", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x019_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_1_x020", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "59", "DependentChan" : "331", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x020_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x056", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "41", "DependentChan" : "326", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x056_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x057", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "65", "DependentChan" : "332", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x057_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_0_x084", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "245", "DependentChan" : "333", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_0_x084_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_1_0_x0_U0.local_C_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_1_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U77", "Parent" : "53"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_1_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U78", "Parent" : "53"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_1_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U79", "Parent" : "53"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_1_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U80", "Parent" : "53"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_1_1_x0_U0", "Parent" : "7", "Child" : ["60", "61", "62", "63", "64"],
		"CDFG" : "PE_wrapper_1_1_x0",
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
			{"Name" : "fifo_A_PE_1_1_x020", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "53", "DependentChan" : "331", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x020_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_2_x021", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "198", "DependentChan" : "334", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x021_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x070", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "329", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x070_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x071", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "71", "DependentChan" : "335", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x071_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_1_x097", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "284", "DependentChan" : "336", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_1_x097_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_1_1_x0_U0.local_C_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_1_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U86", "Parent" : "59"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_1_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U87", "Parent" : "59"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_1_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U88", "Parent" : "59"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_1_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U89", "Parent" : "59"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_2_0_x0_U0", "Parent" : "7", "Child" : ["66", "67", "68", "69", "70"],
		"CDFG" : "PE_wrapper_2_0_x0",
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
			{"Name" : "fifo_A_PE_2_0_x022", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "301", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x022_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_1_x023", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "71", "DependentChan" : "337", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x023_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x057", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "53", "DependentChan" : "332", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x057_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x058", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "77", "DependentChan" : "338", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x058_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_0_x085", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "242", "DependentChan" : "339", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_0_x085_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_2_0_x0_U0.local_C_U", "Parent" : "65"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_2_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U95", "Parent" : "65"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_2_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U96", "Parent" : "65"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_2_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U97", "Parent" : "65"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_2_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U98", "Parent" : "65"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_2_1_x0_U0", "Parent" : "7", "Child" : ["72", "73", "74", "75", "76"],
		"CDFG" : "PE_wrapper_2_1_x0",
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
			{"Name" : "fifo_A_PE_2_1_x023", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "337", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x023_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_2_x024", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "199", "DependentChan" : "340", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x024_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x071", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "59", "DependentChan" : "335", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x071_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x072", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "83", "DependentChan" : "341", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x072_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_1_x098", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "281", "DependentChan" : "342", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_1_x098_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_2_1_x0_U0.local_C_U", "Parent" : "71"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_2_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U104", "Parent" : "71"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_2_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U105", "Parent" : "71"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_2_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U106", "Parent" : "71"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_2_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U107", "Parent" : "71"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_3_0_x0_U0", "Parent" : "7", "Child" : ["78", "79", "80", "81", "82"],
		"CDFG" : "PE_wrapper_3_0_x0",
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
			{"Name" : "fifo_A_PE_3_0_x025", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "303", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x025_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_1_x026", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "83", "DependentChan" : "343", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x026_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x058", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "338", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x058_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x059", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "89", "DependentChan" : "344", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x059_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_0_x086", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "239", "DependentChan" : "345", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_0_x086_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_3_0_x0_U0.local_C_U", "Parent" : "77"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_3_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U113", "Parent" : "77"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_3_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U114", "Parent" : "77"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_3_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U115", "Parent" : "77"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_3_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U116", "Parent" : "77"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_3_1_x0_U0", "Parent" : "7", "Child" : ["84", "85", "86", "87", "88"],
		"CDFG" : "PE_wrapper_3_1_x0",
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
			{"Name" : "fifo_A_PE_3_1_x026", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "77", "DependentChan" : "343", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x026_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_2_x027", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "200", "DependentChan" : "346", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x027_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x072", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "71", "DependentChan" : "341", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x072_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x073", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "95", "DependentChan" : "347", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x073_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_1_x099", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "278", "DependentChan" : "348", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_1_x099_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_3_1_x0_U0.local_C_U", "Parent" : "83"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_3_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U122", "Parent" : "83"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_3_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U123", "Parent" : "83"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_3_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U124", "Parent" : "83"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_3_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U125", "Parent" : "83"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_4_0_x0_U0", "Parent" : "7", "Child" : ["90", "91", "92", "93", "94"],
		"CDFG" : "PE_wrapper_4_0_x0",
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
			{"Name" : "fifo_A_PE_4_0_x028", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "305", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_0_x028_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_1_x029", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "95", "DependentChan" : "349", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x029_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x059", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "77", "DependentChan" : "344", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x059_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x060", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "101", "DependentChan" : "350", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x060_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_0_x087", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "236", "DependentChan" : "351", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_0_x087_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_4_0_x0_U0.local_C_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_4_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U131", "Parent" : "89"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_4_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U132", "Parent" : "89"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_4_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U133", "Parent" : "89"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_4_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U134", "Parent" : "89"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_4_1_x0_U0", "Parent" : "7", "Child" : ["96", "97", "98", "99", "100"],
		"CDFG" : "PE_wrapper_4_1_x0",
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
			{"Name" : "fifo_A_PE_4_1_x029", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "89", "DependentChan" : "349", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x029_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_2_x030", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "201", "DependentChan" : "352", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_2_x030_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x073", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "83", "DependentChan" : "347", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x073_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_1_x074", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "107", "DependentChan" : "353", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_1_x074_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_1_x0100", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "275", "DependentChan" : "354", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_1_x0100_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_4_1_x0_U0.local_C_U", "Parent" : "95"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_4_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U140", "Parent" : "95"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_4_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U141", "Parent" : "95"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_4_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U142", "Parent" : "95"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_4_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U143", "Parent" : "95"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_5_0_x0_U0", "Parent" : "7", "Child" : ["102", "103", "104", "105", "106"],
		"CDFG" : "PE_wrapper_5_0_x0",
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
			{"Name" : "fifo_A_PE_5_0_x031", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "307", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_0_x031_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_1_x032", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "107", "DependentChan" : "355", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_1_x032_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x060", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "89", "DependentChan" : "350", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x060_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_0_x061", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "113", "DependentChan" : "356", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_0_x061_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_0_x088", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "233", "DependentChan" : "357", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_0_x088_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_5_0_x0_U0.local_C_U", "Parent" : "101"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_5_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U149", "Parent" : "101"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_5_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U150", "Parent" : "101"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_5_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U151", "Parent" : "101"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_5_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U152", "Parent" : "101"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_5_1_x0_U0", "Parent" : "7", "Child" : ["108", "109", "110", "111", "112"],
		"CDFG" : "PE_wrapper_5_1_x0",
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
			{"Name" : "fifo_A_PE_5_1_x032", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "101", "DependentChan" : "355", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_1_x032_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_2_x033", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "202", "DependentChan" : "358", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_2_x033_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_1_x074", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "95", "DependentChan" : "353", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_1_x074_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x075", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "119", "DependentChan" : "359", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x075_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_1_x0101", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "272", "DependentChan" : "360", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_1_x0101_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_5_1_x0_U0.local_C_U", "Parent" : "107"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_5_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U158", "Parent" : "107"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_5_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U159", "Parent" : "107"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_5_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U160", "Parent" : "107"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_5_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U161", "Parent" : "107"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_6_0_x0_U0", "Parent" : "7", "Child" : ["114", "115", "116", "117", "118"],
		"CDFG" : "PE_wrapper_6_0_x0",
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
			{"Name" : "fifo_A_PE_6_0_x034", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "309", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_0_x034_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_1_x035", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "119", "DependentChan" : "361", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_1_x035_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_0_x061", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "101", "DependentChan" : "356", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_0_x061_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_0_x062", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "125", "DependentChan" : "362", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_0_x062_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_0_x089", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "230", "DependentChan" : "363", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_0_x089_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_6_0_x0_U0.local_C_U", "Parent" : "113"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_6_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U167", "Parent" : "113"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_6_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U168", "Parent" : "113"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_6_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U169", "Parent" : "113"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_6_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U170", "Parent" : "113"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_6_1_x0_U0", "Parent" : "7", "Child" : ["120", "121", "122", "123", "124"],
		"CDFG" : "PE_wrapper_6_1_x0",
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
			{"Name" : "fifo_A_PE_6_1_x035", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "113", "DependentChan" : "361", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_1_x035_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_2_x036", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "203", "DependentChan" : "364", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x036_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x075", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "107", "DependentChan" : "359", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x075_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_1_x076", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "131", "DependentChan" : "365", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_1_x076_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x0102", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "269", "DependentChan" : "366", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x0102_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_6_1_x0_U0.local_C_U", "Parent" : "119"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_6_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U176", "Parent" : "119"},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_6_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U177", "Parent" : "119"},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_6_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U178", "Parent" : "119"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_6_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U179", "Parent" : "119"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_7_0_x0_U0", "Parent" : "7", "Child" : ["126", "127", "128", "129", "130"],
		"CDFG" : "PE_wrapper_7_0_x0",
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
			{"Name" : "fifo_A_PE_7_0_x037", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "311", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_0_x037_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_1_x038", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "131", "DependentChan" : "367", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_1_x038_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_0_x062", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "113", "DependentChan" : "362", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_0_x062_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_0_x063", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "137", "DependentChan" : "368", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_0_x063_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_0_x090", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "227", "DependentChan" : "369", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_0_x090_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_7_0_x0_U0.local_C_U", "Parent" : "125"},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_7_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U185", "Parent" : "125"},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_7_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U186", "Parent" : "125"},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_7_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U187", "Parent" : "125"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_7_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U188", "Parent" : "125"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_7_1_x0_U0", "Parent" : "7", "Child" : ["132", "133", "134", "135", "136"],
		"CDFG" : "PE_wrapper_7_1_x0",
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
			{"Name" : "fifo_A_PE_7_1_x038", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "125", "DependentChan" : "367", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_1_x038_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_2_x039", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "204", "DependentChan" : "370", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_2_x039_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_1_x076", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "119", "DependentChan" : "365", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_1_x076_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_1_x077", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "143", "DependentChan" : "371", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_1_x077_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_1_x0103", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "266", "DependentChan" : "372", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_1_x0103_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_7_1_x0_U0.local_C_U", "Parent" : "131"},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_7_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U194", "Parent" : "131"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_7_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U195", "Parent" : "131"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_7_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U196", "Parent" : "131"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_7_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U197", "Parent" : "131"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_8_0_x0_U0", "Parent" : "7", "Child" : ["138", "139", "140", "141", "142"],
		"CDFG" : "PE_wrapper_8_0_x0",
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
			{"Name" : "fifo_A_PE_8_0_x040", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "26", "DependentChan" : "313", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_0_x040_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_8_1_x041", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "143", "DependentChan" : "373", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_1_x041_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_0_x063", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "125", "DependentChan" : "368", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_0_x063_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_0_x064", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "149", "DependentChan" : "374", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_0_x064_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_0_x091", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "224", "DependentChan" : "375", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_0_x091_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_8_0_x0_U0.local_C_U", "Parent" : "137"},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_8_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U203", "Parent" : "137"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_8_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U204", "Parent" : "137"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_8_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U205", "Parent" : "137"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_8_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U206", "Parent" : "137"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_8_1_x0_U0", "Parent" : "7", "Child" : ["144", "145", "146", "147", "148"],
		"CDFG" : "PE_wrapper_8_1_x0",
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
			{"Name" : "fifo_A_PE_8_1_x041", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "137", "DependentChan" : "373", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_1_x041_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_8_2_x042", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "205", "DependentChan" : "376", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_2_x042_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_1_x077", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "131", "DependentChan" : "371", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_1_x077_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_1_x078", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "155", "DependentChan" : "377", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_1_x078_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_1_x0104", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "263", "DependentChan" : "378", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_1_x0104_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_8_1_x0_U0.local_C_U", "Parent" : "143"},
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_8_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U212", "Parent" : "143"},
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_8_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U213", "Parent" : "143"},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_8_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U214", "Parent" : "143"},
	{"ID" : "148", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_8_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U215", "Parent" : "143"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_9_0_x0_U0", "Parent" : "7", "Child" : ["150", "151", "152", "153", "154"],
		"CDFG" : "PE_wrapper_9_0_x0",
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
			{"Name" : "fifo_A_PE_9_0_x043", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "28", "DependentChan" : "315", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_0_x043_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_9_1_x044", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "155", "DependentChan" : "379", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_1_x044_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_0_x064", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "137", "DependentChan" : "374", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_0_x064_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_0_x065", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "161", "DependentChan" : "380", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_0_x065_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_0_x092", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "221", "DependentChan" : "381", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_0_x092_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_9_0_x0_U0.local_C_U", "Parent" : "149"},
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_9_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U221", "Parent" : "149"},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_9_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U222", "Parent" : "149"},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_9_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U223", "Parent" : "149"},
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_9_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U224", "Parent" : "149"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_9_1_x0_U0", "Parent" : "7", "Child" : ["156", "157", "158", "159", "160"],
		"CDFG" : "PE_wrapper_9_1_x0",
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
			{"Name" : "fifo_A_PE_9_1_x044", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "149", "DependentChan" : "379", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_1_x044_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_9_2_x045", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "206", "DependentChan" : "382", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_2_x045_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_1_x078", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "143", "DependentChan" : "377", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_1_x078_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_1_x079", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "167", "DependentChan" : "383", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_1_x079_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_1_x0105", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "260", "DependentChan" : "384", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_1_x0105_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "156", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_9_1_x0_U0.local_C_U", "Parent" : "155"},
	{"ID" : "157", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_9_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U230", "Parent" : "155"},
	{"ID" : "158", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_9_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U231", "Parent" : "155"},
	{"ID" : "159", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_9_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U232", "Parent" : "155"},
	{"ID" : "160", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_9_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U233", "Parent" : "155"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_10_0_x0_U0", "Parent" : "7", "Child" : ["162", "163", "164", "165", "166"],
		"CDFG" : "PE_wrapper_10_0_x0",
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
			{"Name" : "fifo_A_PE_10_0_x046", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "30", "DependentChan" : "317", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_0_x046_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_10_1_x047", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "167", "DependentChan" : "385", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_1_x047_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_0_x065", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "149", "DependentChan" : "380", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_0_x065_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_0_x066", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "173", "DependentChan" : "386", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_0_x066_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_0_x093", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "218", "DependentChan" : "387", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_0_x093_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "162", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_10_0_x0_U0.local_C_U", "Parent" : "161"},
	{"ID" : "163", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_10_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U239", "Parent" : "161"},
	{"ID" : "164", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_10_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U240", "Parent" : "161"},
	{"ID" : "165", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_10_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U241", "Parent" : "161"},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_10_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U242", "Parent" : "161"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_10_1_x0_U0", "Parent" : "7", "Child" : ["168", "169", "170", "171", "172"],
		"CDFG" : "PE_wrapper_10_1_x0",
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
			{"Name" : "fifo_A_PE_10_1_x047", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "161", "DependentChan" : "385", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_1_x047_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_10_2_x048", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "207", "DependentChan" : "388", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_2_x048_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_1_x079", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "155", "DependentChan" : "383", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_1_x079_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_1_x080", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "179", "DependentChan" : "389", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_1_x080_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_1_x0106", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "257", "DependentChan" : "390", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_1_x0106_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_10_1_x0_U0.local_C_U", "Parent" : "167"},
	{"ID" : "169", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_10_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U248", "Parent" : "167"},
	{"ID" : "170", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_10_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U249", "Parent" : "167"},
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_10_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U250", "Parent" : "167"},
	{"ID" : "172", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_10_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U251", "Parent" : "167"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_11_0_x0_U0", "Parent" : "7", "Child" : ["174", "175", "176", "177", "178"],
		"CDFG" : "PE_wrapper_11_0_x0",
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
			{"Name" : "fifo_A_PE_11_0_x049", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "319", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_0_x049_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_11_1_x050", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "179", "DependentChan" : "391", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_1_x050_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_0_x066", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "161", "DependentChan" : "386", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_0_x066_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_0_x067", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "185", "DependentChan" : "392", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_0_x067_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_0_x094", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "215", "DependentChan" : "393", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_0_x094_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_11_0_x0_U0.local_C_U", "Parent" : "173"},
	{"ID" : "175", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_11_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U257", "Parent" : "173"},
	{"ID" : "176", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_11_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U258", "Parent" : "173"},
	{"ID" : "177", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_11_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U259", "Parent" : "173"},
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_11_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U260", "Parent" : "173"},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_11_1_x0_U0", "Parent" : "7", "Child" : ["180", "181", "182", "183", "184"],
		"CDFG" : "PE_wrapper_11_1_x0",
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
			{"Name" : "fifo_A_PE_11_1_x050", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "173", "DependentChan" : "391", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_1_x050_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_11_2_x051", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "208", "DependentChan" : "394", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_2_x051_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_1_x080", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "167", "DependentChan" : "389", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_1_x080_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_1_x081", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "191", "DependentChan" : "395", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_1_x081_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_1_x0107", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "254", "DependentChan" : "396", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_1_x0107_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "180", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_11_1_x0_U0.local_C_U", "Parent" : "179"},
	{"ID" : "181", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_11_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U266", "Parent" : "179"},
	{"ID" : "182", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_11_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U267", "Parent" : "179"},
	{"ID" : "183", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_11_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U268", "Parent" : "179"},
	{"ID" : "184", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_11_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U269", "Parent" : "179"},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_12_0_x0_U0", "Parent" : "7", "Child" : ["186", "187", "188", "189", "190"],
		"CDFG" : "PE_wrapper_12_0_x0",
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
			{"Name" : "fifo_A_PE_12_0_x052", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "320", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_0_x052_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_12_1_x053", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "191", "DependentChan" : "397", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_1_x053_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_0_x067", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "173", "DependentChan" : "392", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_0_x067_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_13_0_x068", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "210", "DependentChan" : "398", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_0_x068_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_0_x095", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "212", "DependentChan" : "399", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_0_x095_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "186", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_12_0_x0_U0.local_C_U", "Parent" : "185"},
	{"ID" : "187", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_12_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U275", "Parent" : "185"},
	{"ID" : "188", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_12_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U276", "Parent" : "185"},
	{"ID" : "189", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_12_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U277", "Parent" : "185"},
	{"ID" : "190", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_12_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U278", "Parent" : "185"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_12_1_x0_U0", "Parent" : "7", "Child" : ["192", "193", "194", "195", "196"],
		"CDFG" : "PE_wrapper_12_1_x0",
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
			{"Name" : "fifo_A_PE_12_1_x053", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "185", "DependentChan" : "397", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_1_x053_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_12_2_x054", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "209", "DependentChan" : "400", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_2_x054_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_1_x081", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "179", "DependentChan" : "395", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_1_x081_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_13_1_x082", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "211", "DependentChan" : "401", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_1_x082_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_1_x0108", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "251", "DependentChan" : "402", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_1_x0108_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "192", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_12_1_x0_U0.local_C_U", "Parent" : "191"},
	{"ID" : "193", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_12_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U284", "Parent" : "191"},
	{"ID" : "194", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_12_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U285", "Parent" : "191"},
	{"ID" : "195", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_12_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U286", "Parent" : "191"},
	{"ID" : "196", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.PE_wrapper_12_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U287", "Parent" : "191"},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_PE_dummy_0_x0_U0", "Parent" : "7",
		"CDFG" : "A_PE_dummy_0_x0",
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
			{"Name" : "fifo_A_PE_0_2_x018", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "328", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x018_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_PE_dummy_1_x0_U0", "Parent" : "7",
		"CDFG" : "A_PE_dummy_1_x0",
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
			{"Name" : "fifo_A_PE_1_2_x021", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "59", "DependentChan" : "334", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x021_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_PE_dummy_2_x0_U0", "Parent" : "7",
		"CDFG" : "A_PE_dummy_2_x0",
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
			{"Name" : "fifo_A_PE_2_2_x024", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "71", "DependentChan" : "340", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x024_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_PE_dummy_3_x0_U0", "Parent" : "7",
		"CDFG" : "A_PE_dummy_3_x0",
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
			{"Name" : "fifo_A_PE_3_2_x027", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "83", "DependentChan" : "346", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x027_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_PE_dummy_4_x0_U0", "Parent" : "7",
		"CDFG" : "A_PE_dummy_4_x0",
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
			{"Name" : "fifo_A_PE_4_2_x030", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "95", "DependentChan" : "352", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_2_x030_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_PE_dummy_5_x0_U0", "Parent" : "7",
		"CDFG" : "A_PE_dummy_5_x0",
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
			{"Name" : "fifo_A_PE_5_2_x033", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "107", "DependentChan" : "358", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_2_x033_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_PE_dummy_6_x0_U0", "Parent" : "7",
		"CDFG" : "A_PE_dummy_6_x0",
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
			{"Name" : "fifo_A_PE_6_2_x036", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "119", "DependentChan" : "364", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x036_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_PE_dummy_7_x0_U0", "Parent" : "7",
		"CDFG" : "A_PE_dummy_7_x0",
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
			{"Name" : "fifo_A_PE_7_2_x039", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "131", "DependentChan" : "370", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_2_x039_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_PE_dummy_8_x0_U0", "Parent" : "7",
		"CDFG" : "A_PE_dummy_8_x0",
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
			{"Name" : "fifo_A_PE_8_2_x042", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "143", "DependentChan" : "376", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_2_x042_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_PE_dummy_9_x0_U0", "Parent" : "7",
		"CDFG" : "A_PE_dummy_9_x0",
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
			{"Name" : "fifo_A_PE_9_2_x045", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "155", "DependentChan" : "382", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_2_x045_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_PE_dummy_10_x0_U0", "Parent" : "7",
		"CDFG" : "A_PE_dummy_10_x0",
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
			{"Name" : "fifo_A_PE_10_2_x048", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "167", "DependentChan" : "388", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_2_x048_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "208", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_PE_dummy_11_x0_U0", "Parent" : "7",
		"CDFG" : "A_PE_dummy_11_x0",
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
			{"Name" : "fifo_A_PE_11_2_x051", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "179", "DependentChan" : "394", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_2_x051_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_PE_dummy_12_x0_U0", "Parent" : "7",
		"CDFG" : "A_PE_dummy_12_x0",
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
			{"Name" : "fifo_A_PE_12_2_x054", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "191", "DependentChan" : "400", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_2_x054_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.B_PE_dummy_0_x0_U0", "Parent" : "7",
		"CDFG" : "B_PE_dummy_0_x0",
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
			{"Name" : "fifo_B_PE_13_0_x068", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "185", "DependentChan" : "398", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_0_x068_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.B_PE_dummy_1_x0_U0", "Parent" : "7",
		"CDFG" : "B_PE_dummy_1_x0",
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
			{"Name" : "fifo_B_PE_13_1_x082", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "191", "DependentChan" : "401", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_1_x082_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_boundary_0_x0_U0", "Parent" : "7", "Child" : ["213", "214"],
		"CDFG" : "C_drain_IO_L1_out_boundary_0_x0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x0121", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "215", "DependentChan" : "403", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x0121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_0_x095", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "185", "DependentChan" : "399", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_0_x095_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "213", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_boundary_0_x0_U0.local_C_V_U", "Parent" : "212"},
	{"ID" : "214", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_boundary_0_x0_U0.buf_data_split_V_U", "Parent" : "212"},
	{"ID" : "215", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_0_x0_U0", "Parent" : "7", "Child" : ["216", "217"],
		"CDFG" : "C_drain_IO_L1_out_0_x0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x0121", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "212", "DependentChan" : "403", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x0121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x0120", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "218", "DependentChan" : "404", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x0120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_0_x094", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "173", "DependentChan" : "393", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_0_x094_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "216", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_0_x0_U0.local_C_V_U", "Parent" : "215"},
	{"ID" : "217", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_0_x0_U0.buf_data_split_V_U", "Parent" : "215"},
	{"ID" : "218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_1_x0_U0", "Parent" : "7", "Child" : ["219", "220"],
		"CDFG" : "C_drain_IO_L1_out_1_x0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x0120", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "215", "DependentChan" : "404", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x0120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x0119", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "221", "DependentChan" : "405", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x0119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_0_x093", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "161", "DependentChan" : "387", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_0_x093_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "219", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_1_x0_U0.local_C_V_U", "Parent" : "218"},
	{"ID" : "220", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_1_x0_U0.buf_data_split_V_U", "Parent" : "218"},
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_2_x0_U0", "Parent" : "7", "Child" : ["222", "223"],
		"CDFG" : "C_drain_IO_L1_out_2_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9349", "EstimateLatencyMax" : "9349",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x0119", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "218", "DependentChan" : "405", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x0119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x0118", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "224", "DependentChan" : "406", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x0118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_0_x092", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "149", "DependentChan" : "381", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_0_x092_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "222", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_2_x0_U0.local_C_V_U", "Parent" : "221"},
	{"ID" : "223", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_2_x0_U0.buf_data_split_V_U", "Parent" : "221"},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_3_x0_U0", "Parent" : "7", "Child" : ["225", "226"],
		"CDFG" : "C_drain_IO_L1_out_3_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9861", "EstimateLatencyMax" : "9861",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x0118", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "221", "DependentChan" : "406", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x0118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x0117", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "227", "DependentChan" : "407", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x0117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_0_x091", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "137", "DependentChan" : "375", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_0_x091_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "225", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_3_x0_U0.local_C_V_U", "Parent" : "224"},
	{"ID" : "226", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_3_x0_U0.buf_data_split_V_U", "Parent" : "224"},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_4_x0_U0", "Parent" : "7", "Child" : ["228", "229"],
		"CDFG" : "C_drain_IO_L1_out_4_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13317", "EstimateLatencyMax" : "13317",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x0117", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "224", "DependentChan" : "407", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x0117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x0116", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "230", "DependentChan" : "408", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x0116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_0_x090", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "125", "DependentChan" : "369", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_0_x090_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "228", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_4_x0_U0.local_C_V_U", "Parent" : "227"},
	{"ID" : "229", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_4_x0_U0.buf_data_split_V_U", "Parent" : "227"},
	{"ID" : "230", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_5_x0_U0", "Parent" : "7", "Child" : ["231", "232"],
		"CDFG" : "C_drain_IO_L1_out_5_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13829", "EstimateLatencyMax" : "13829",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x0116", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "227", "DependentChan" : "408", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x0116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x0115", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "233", "DependentChan" : "409", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x0115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_0_x089", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "113", "DependentChan" : "363", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_0_x089_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "231", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_5_x0_U0.local_C_V_U", "Parent" : "230"},
	{"ID" : "232", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_5_x0_U0.buf_data_split_V_U", "Parent" : "230"},
	{"ID" : "233", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_6_x0_U0", "Parent" : "7", "Child" : ["234", "235"],
		"CDFG" : "C_drain_IO_L1_out_6_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14341", "EstimateLatencyMax" : "14341",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x0115", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "230", "DependentChan" : "409", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x0115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x0114", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "236", "DependentChan" : "410", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x0114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_0_x088", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "101", "DependentChan" : "357", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_0_x088_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "234", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_6_x0_U0.local_C_V_U", "Parent" : "233"},
	{"ID" : "235", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_6_x0_U0.buf_data_split_V_U", "Parent" : "233"},
	{"ID" : "236", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_7_x0_U0", "Parent" : "7", "Child" : ["237", "238"],
		"CDFG" : "C_drain_IO_L1_out_7_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14853", "EstimateLatencyMax" : "14853",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x0114", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "233", "DependentChan" : "410", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x0114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x0113", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "239", "DependentChan" : "411", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x0113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_0_x087", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "89", "DependentChan" : "351", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_0_x087_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "237", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_7_x0_U0.local_C_V_U", "Parent" : "236"},
	{"ID" : "238", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_7_x0_U0.buf_data_split_V_U", "Parent" : "236"},
	{"ID" : "239", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_8_x0_U0", "Parent" : "7", "Child" : ["240", "241"],
		"CDFG" : "C_drain_IO_L1_out_8_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15365", "EstimateLatencyMax" : "15365",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x0113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "236", "DependentChan" : "411", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x0113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x0112", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "242", "DependentChan" : "412", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x0112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_0_x086", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "77", "DependentChan" : "345", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_0_x086_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "240", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_8_x0_U0.local_C_V_U", "Parent" : "239"},
	{"ID" : "241", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_8_x0_U0.buf_data_split_V_U", "Parent" : "239"},
	{"ID" : "242", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_9_x0_U0", "Parent" : "7", "Child" : ["243", "244"],
		"CDFG" : "C_drain_IO_L1_out_9_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15877", "EstimateLatencyMax" : "15877",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x0112", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "239", "DependentChan" : "412", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x0112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x0111", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "245", "DependentChan" : "413", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x0111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_0_x085", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "339", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_0_x085_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "243", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_9_x0_U0.local_C_V_U", "Parent" : "242"},
	{"ID" : "244", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_9_x0_U0.buf_data_split_V_U", "Parent" : "242"},
	{"ID" : "245", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_10_x0_U0", "Parent" : "7", "Child" : ["246", "247"],
		"CDFG" : "C_drain_IO_L1_out_10_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16389", "EstimateLatencyMax" : "16389",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x0111", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "242", "DependentChan" : "413", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x0111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x0110", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "248", "DependentChan" : "414", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x0110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_0_x084", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "53", "DependentChan" : "333", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_0_x084_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "246", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_10_x0_U0.local_C_V_U", "Parent" : "245"},
	{"ID" : "247", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_10_x0_U0.buf_data_split_V_U", "Parent" : "245"},
	{"ID" : "248", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_11_x0_U0", "Parent" : "7", "Child" : ["249", "250"],
		"CDFG" : "C_drain_IO_L1_out_11_x0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x0110", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "245", "DependentChan" : "414", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x0110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x0109", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "291", "DependentChan" : "415", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x0109_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_0_x083", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "41", "DependentChan" : "327", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_0_x083_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "249", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_11_x0_U0.local_C_V_U", "Parent" : "248"},
	{"ID" : "250", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_11_x0_U0.buf_data_split_V_U", "Parent" : "248"},
	{"ID" : "251", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_boundary_1_x0_U0", "Parent" : "7", "Child" : ["252", "253"],
		"CDFG" : "C_drain_IO_L1_out_boundary_1_x0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x0134", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "254", "DependentChan" : "416", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x0134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_1_x0108", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "191", "DependentChan" : "402", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_1_x0108_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "252", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_boundary_1_x0_U0.local_C_V_U", "Parent" : "251"},
	{"ID" : "253", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_boundary_1_x0_U0.buf_data_split_V_U", "Parent" : "251"},
	{"ID" : "254", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_12_x0_U0", "Parent" : "7", "Child" : ["255", "256"],
		"CDFG" : "C_drain_IO_L1_out_12_x0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x0134", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "251", "DependentChan" : "416", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x0134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x0133", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "257", "DependentChan" : "417", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x0133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_1_x0107", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "179", "DependentChan" : "396", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_1_x0107_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "255", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_12_x0_U0.local_C_V_U", "Parent" : "254"},
	{"ID" : "256", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_12_x0_U0.buf_data_split_V_U", "Parent" : "254"},
	{"ID" : "257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_13_x0_U0", "Parent" : "7", "Child" : ["258", "259"],
		"CDFG" : "C_drain_IO_L1_out_13_x0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x0133", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "254", "DependentChan" : "417", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x0133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x0132", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "260", "DependentChan" : "418", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x0132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_1_x0106", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "167", "DependentChan" : "390", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_1_x0106_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "258", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_13_x0_U0.local_C_V_U", "Parent" : "257"},
	{"ID" : "259", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_13_x0_U0.buf_data_split_V_U", "Parent" : "257"},
	{"ID" : "260", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_14_x0_U0", "Parent" : "7", "Child" : ["261", "262"],
		"CDFG" : "C_drain_IO_L1_out_14_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9349", "EstimateLatencyMax" : "9349",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x0132", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "257", "DependentChan" : "418", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x0132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x0131", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "263", "DependentChan" : "419", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x0131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_1_x0105", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "155", "DependentChan" : "384", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_1_x0105_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "261", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_14_x0_U0.local_C_V_U", "Parent" : "260"},
	{"ID" : "262", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_14_x0_U0.buf_data_split_V_U", "Parent" : "260"},
	{"ID" : "263", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_15_x0_U0", "Parent" : "7", "Child" : ["264", "265"],
		"CDFG" : "C_drain_IO_L1_out_15_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9861", "EstimateLatencyMax" : "9861",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x0131", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "260", "DependentChan" : "419", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x0131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x0130", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "266", "DependentChan" : "420", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x0130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_1_x0104", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "143", "DependentChan" : "378", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_1_x0104_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "264", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_15_x0_U0.local_C_V_U", "Parent" : "263"},
	{"ID" : "265", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_15_x0_U0.buf_data_split_V_U", "Parent" : "263"},
	{"ID" : "266", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_16_x0_U0", "Parent" : "7", "Child" : ["267", "268"],
		"CDFG" : "C_drain_IO_L1_out_16_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13317", "EstimateLatencyMax" : "13317",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x0130", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "263", "DependentChan" : "420", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x0130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x0129", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "269", "DependentChan" : "421", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x0129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_1_x0103", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "131", "DependentChan" : "372", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_1_x0103_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "267", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_16_x0_U0.local_C_V_U", "Parent" : "266"},
	{"ID" : "268", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_16_x0_U0.buf_data_split_V_U", "Parent" : "266"},
	{"ID" : "269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_17_x0_U0", "Parent" : "7", "Child" : ["270", "271"],
		"CDFG" : "C_drain_IO_L1_out_17_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13829", "EstimateLatencyMax" : "13829",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x0129", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "266", "DependentChan" : "421", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x0129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x0128", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "272", "DependentChan" : "422", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x0128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x0102", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "119", "DependentChan" : "366", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x0102_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "270", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_17_x0_U0.local_C_V_U", "Parent" : "269"},
	{"ID" : "271", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_17_x0_U0.buf_data_split_V_U", "Parent" : "269"},
	{"ID" : "272", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_18_x0_U0", "Parent" : "7", "Child" : ["273", "274"],
		"CDFG" : "C_drain_IO_L1_out_18_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14341", "EstimateLatencyMax" : "14341",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x0128", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "269", "DependentChan" : "422", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x0128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x0127", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "275", "DependentChan" : "423", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x0127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_1_x0101", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "107", "DependentChan" : "360", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_1_x0101_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "273", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_18_x0_U0.local_C_V_U", "Parent" : "272"},
	{"ID" : "274", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_18_x0_U0.buf_data_split_V_U", "Parent" : "272"},
	{"ID" : "275", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_19_x0_U0", "Parent" : "7", "Child" : ["276", "277"],
		"CDFG" : "C_drain_IO_L1_out_19_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14853", "EstimateLatencyMax" : "14853",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x0127", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "272", "DependentChan" : "423", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x0127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x0126", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "278", "DependentChan" : "424", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x0126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_1_x0100", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "95", "DependentChan" : "354", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_1_x0100_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "276", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_19_x0_U0.local_C_V_U", "Parent" : "275"},
	{"ID" : "277", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_19_x0_U0.buf_data_split_V_U", "Parent" : "275"},
	{"ID" : "278", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_20_x0_U0", "Parent" : "7", "Child" : ["279", "280"],
		"CDFG" : "C_drain_IO_L1_out_20_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15365", "EstimateLatencyMax" : "15365",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x0126", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "275", "DependentChan" : "424", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x0126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x0125", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "281", "DependentChan" : "425", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x0125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_1_x099", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "83", "DependentChan" : "348", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_1_x099_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "279", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_20_x0_U0.local_C_V_U", "Parent" : "278"},
	{"ID" : "280", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_20_x0_U0.buf_data_split_V_U", "Parent" : "278"},
	{"ID" : "281", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_21_x0_U0", "Parent" : "7", "Child" : ["282", "283"],
		"CDFG" : "C_drain_IO_L1_out_21_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15877", "EstimateLatencyMax" : "15877",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x0125", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "278", "DependentChan" : "425", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x0125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x0124", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "284", "DependentChan" : "426", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x0124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_1_x098", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "71", "DependentChan" : "342", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_1_x098_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "282", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_21_x0_U0.local_C_V_U", "Parent" : "281"},
	{"ID" : "283", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_21_x0_U0.buf_data_split_V_U", "Parent" : "281"},
	{"ID" : "284", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_22_x0_U0", "Parent" : "7", "Child" : ["285", "286"],
		"CDFG" : "C_drain_IO_L1_out_22_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16389", "EstimateLatencyMax" : "16389",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x0124", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "281", "DependentChan" : "426", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x0124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x0123", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "287", "DependentChan" : "427", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x0123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_1_x097", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "59", "DependentChan" : "336", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_1_x097_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "285", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_22_x0_U0.local_C_V_U", "Parent" : "284"},
	{"ID" : "286", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_22_x0_U0.buf_data_split_V_U", "Parent" : "284"},
	{"ID" : "287", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_23_x0_U0", "Parent" : "7", "Child" : ["288", "289"],
		"CDFG" : "C_drain_IO_L1_out_23_x0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x0123", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "284", "DependentChan" : "427", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x0123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x0122", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "290", "DependentChan" : "428", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x0122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_1_x096", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "330", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_1_x096_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "288", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_23_x0_U0.local_C_V_U", "Parent" : "287"},
	{"ID" : "289", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L1_out_23_x0_U0.buf_data_split_V_U", "Parent" : "287"},
	{"ID" : "290", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L2_out_boundary_x0_U0", "Parent" : "7",
		"CDFG" : "C_drain_IO_L2_out_boundary_x0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x0136", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "291", "DependentChan" : "429", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x0136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x0122", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "287", "DependentChan" : "428", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x0122_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "291", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L2_out_x0_U0", "Parent" : "7",
		"CDFG" : "C_drain_IO_L2_out_x0",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x0136", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "290", "DependentChan" : "429", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x0136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x0135", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "292", "DependentChan" : "430", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x0135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x0109", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "248", "DependentChan" : "415", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x0109_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "292", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.C_drain_IO_L3_out_x0_U0", "Parent" : "7",
		"CDFG" : "C_drain_IO_L3_out_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8201", "EstimateLatencyMax" : "8201",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x0135", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "291", "DependentChan" : "430", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x0135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "C", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "293", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.A_c_U", "Parent" : "7"},
	{"ID" : "294", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.B_c_U", "Parent" : "7"},
	{"ID" : "295", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_A_IO_L2_in_0_x0_U", "Parent" : "7"},
	{"ID" : "296", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_A_IO_L2_in_1_x0_U", "Parent" : "7"},
	{"ID" : "297", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_0_0_x0_U", "Parent" : "7"},
	{"ID" : "298", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_A_IO_L2_in_2_x0_U", "Parent" : "7"},
	{"ID" : "299", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_1_0_x0_U", "Parent" : "7"},
	{"ID" : "300", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_A_IO_L2_in_3_x0_U", "Parent" : "7"},
	{"ID" : "301", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_2_0_x0_U", "Parent" : "7"},
	{"ID" : "302", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_A_IO_L2_in_4_x0_U", "Parent" : "7"},
	{"ID" : "303", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_3_0_x0_U", "Parent" : "7"},
	{"ID" : "304", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_A_IO_L2_in_5_x0_U", "Parent" : "7"},
	{"ID" : "305", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_4_0_x0_U", "Parent" : "7"},
	{"ID" : "306", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_A_IO_L2_in_6_x0_U", "Parent" : "7"},
	{"ID" : "307", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_5_0_x0_U", "Parent" : "7"},
	{"ID" : "308", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_A_IO_L2_in_7_x0_U", "Parent" : "7"},
	{"ID" : "309", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_6_0_x0_U", "Parent" : "7"},
	{"ID" : "310", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_A_IO_L2_in_8_x0_U", "Parent" : "7"},
	{"ID" : "311", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_7_0_x0_U", "Parent" : "7"},
	{"ID" : "312", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_A_IO_L2_in_9_x0_U", "Parent" : "7"},
	{"ID" : "313", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_8_0_x0_U", "Parent" : "7"},
	{"ID" : "314", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_A_IO_L2_in_10_x0_U", "Parent" : "7"},
	{"ID" : "315", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_9_0_x0_U", "Parent" : "7"},
	{"ID" : "316", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_A_IO_L2_in_11_x0_U", "Parent" : "7"},
	{"ID" : "317", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_10_0_x0_U", "Parent" : "7"},
	{"ID" : "318", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_A_IO_L2_in_12_x0_U", "Parent" : "7"},
	{"ID" : "319", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_11_0_x0_U", "Parent" : "7"},
	{"ID" : "320", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_12_0_x0_U", "Parent" : "7"},
	{"ID" : "321", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_B_IO_L2_in_0_x0_U", "Parent" : "7"},
	{"ID" : "322", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_B_IO_L2_in_1_x0_U", "Parent" : "7"},
	{"ID" : "323", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_0_0_x0_U", "Parent" : "7"},
	{"ID" : "324", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_0_1_x0_U", "Parent" : "7"},
	{"ID" : "325", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_0_1_x0_U", "Parent" : "7"},
	{"ID" : "326", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_1_0_x0_U", "Parent" : "7"},
	{"ID" : "327", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_0_0_x0_U", "Parent" : "7"},
	{"ID" : "328", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_0_2_x0_U", "Parent" : "7"},
	{"ID" : "329", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_1_1_x0_U", "Parent" : "7"},
	{"ID" : "330", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_0_1_x0_U", "Parent" : "7"},
	{"ID" : "331", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_1_1_x0_U", "Parent" : "7"},
	{"ID" : "332", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_2_0_x0_U", "Parent" : "7"},
	{"ID" : "333", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_1_0_x0_U", "Parent" : "7"},
	{"ID" : "334", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_1_2_x0_U", "Parent" : "7"},
	{"ID" : "335", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_2_1_x0_U", "Parent" : "7"},
	{"ID" : "336", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_1_1_x0_U", "Parent" : "7"},
	{"ID" : "337", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_2_1_x0_U", "Parent" : "7"},
	{"ID" : "338", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_3_0_x0_U", "Parent" : "7"},
	{"ID" : "339", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_2_0_x0_U", "Parent" : "7"},
	{"ID" : "340", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_2_2_x0_U", "Parent" : "7"},
	{"ID" : "341", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_3_1_x0_U", "Parent" : "7"},
	{"ID" : "342", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_2_1_x0_U", "Parent" : "7"},
	{"ID" : "343", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_3_1_x0_U", "Parent" : "7"},
	{"ID" : "344", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_4_0_x0_U", "Parent" : "7"},
	{"ID" : "345", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_3_0_x0_U", "Parent" : "7"},
	{"ID" : "346", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_3_2_x0_U", "Parent" : "7"},
	{"ID" : "347", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_4_1_x0_U", "Parent" : "7"},
	{"ID" : "348", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_3_1_x0_U", "Parent" : "7"},
	{"ID" : "349", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_4_1_x0_U", "Parent" : "7"},
	{"ID" : "350", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_5_0_x0_U", "Parent" : "7"},
	{"ID" : "351", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_4_0_x0_U", "Parent" : "7"},
	{"ID" : "352", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_4_2_x0_U", "Parent" : "7"},
	{"ID" : "353", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_5_1_x0_U", "Parent" : "7"},
	{"ID" : "354", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_4_1_x0_U", "Parent" : "7"},
	{"ID" : "355", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_5_1_x0_U", "Parent" : "7"},
	{"ID" : "356", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_6_0_x0_U", "Parent" : "7"},
	{"ID" : "357", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_5_0_x0_U", "Parent" : "7"},
	{"ID" : "358", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_5_2_x0_U", "Parent" : "7"},
	{"ID" : "359", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_6_1_x0_U", "Parent" : "7"},
	{"ID" : "360", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_5_1_x0_U", "Parent" : "7"},
	{"ID" : "361", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_6_1_x0_U", "Parent" : "7"},
	{"ID" : "362", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_7_0_x0_U", "Parent" : "7"},
	{"ID" : "363", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_6_0_x0_U", "Parent" : "7"},
	{"ID" : "364", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_6_2_x0_U", "Parent" : "7"},
	{"ID" : "365", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_7_1_x0_U", "Parent" : "7"},
	{"ID" : "366", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_6_1_x0_U", "Parent" : "7"},
	{"ID" : "367", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_7_1_x0_U", "Parent" : "7"},
	{"ID" : "368", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_8_0_x0_U", "Parent" : "7"},
	{"ID" : "369", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_7_0_x0_U", "Parent" : "7"},
	{"ID" : "370", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_7_2_x0_U", "Parent" : "7"},
	{"ID" : "371", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_8_1_x0_U", "Parent" : "7"},
	{"ID" : "372", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_7_1_x0_U", "Parent" : "7"},
	{"ID" : "373", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_8_1_x0_U", "Parent" : "7"},
	{"ID" : "374", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_9_0_x0_U", "Parent" : "7"},
	{"ID" : "375", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_8_0_x0_U", "Parent" : "7"},
	{"ID" : "376", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_8_2_x0_U", "Parent" : "7"},
	{"ID" : "377", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_9_1_x0_U", "Parent" : "7"},
	{"ID" : "378", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_8_1_x0_U", "Parent" : "7"},
	{"ID" : "379", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_9_1_x0_U", "Parent" : "7"},
	{"ID" : "380", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_10_0_x0_U", "Parent" : "7"},
	{"ID" : "381", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_9_0_x0_U", "Parent" : "7"},
	{"ID" : "382", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_9_2_x0_U", "Parent" : "7"},
	{"ID" : "383", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_10_1_x0_U", "Parent" : "7"},
	{"ID" : "384", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_9_1_x0_U", "Parent" : "7"},
	{"ID" : "385", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_10_1_x0_U", "Parent" : "7"},
	{"ID" : "386", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_11_0_x0_U", "Parent" : "7"},
	{"ID" : "387", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_10_0_x0_U", "Parent" : "7"},
	{"ID" : "388", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_10_2_x0_U", "Parent" : "7"},
	{"ID" : "389", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_11_1_x0_U", "Parent" : "7"},
	{"ID" : "390", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_10_1_x0_U", "Parent" : "7"},
	{"ID" : "391", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_11_1_x0_U", "Parent" : "7"},
	{"ID" : "392", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_12_0_x0_U", "Parent" : "7"},
	{"ID" : "393", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_11_0_x0_U", "Parent" : "7"},
	{"ID" : "394", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_11_2_x0_U", "Parent" : "7"},
	{"ID" : "395", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_12_1_x0_U", "Parent" : "7"},
	{"ID" : "396", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_11_1_x0_U", "Parent" : "7"},
	{"ID" : "397", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_12_1_x0_U", "Parent" : "7"},
	{"ID" : "398", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_13_0_x0_U", "Parent" : "7"},
	{"ID" : "399", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_12_0_x0_U", "Parent" : "7"},
	{"ID" : "400", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_A_PE_12_2_x0_U", "Parent" : "7"},
	{"ID" : "401", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_B_PE_13_1_x0_U", "Parent" : "7"},
	{"ID" : "402", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_PE_12_1_x0_U", "Parent" : "7"},
	{"ID" : "403", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_0_12_x0_U", "Parent" : "7"},
	{"ID" : "404", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_0_11_x0_U", "Parent" : "7"},
	{"ID" : "405", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_0_10_x0_U", "Parent" : "7"},
	{"ID" : "406", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_0_9_x0_U", "Parent" : "7"},
	{"ID" : "407", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_0_8_x0_U", "Parent" : "7"},
	{"ID" : "408", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_0_7_x0_U", "Parent" : "7"},
	{"ID" : "409", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_0_6_x0_U", "Parent" : "7"},
	{"ID" : "410", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_0_5_x0_U", "Parent" : "7"},
	{"ID" : "411", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_0_4_x0_U", "Parent" : "7"},
	{"ID" : "412", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_0_3_x0_U", "Parent" : "7"},
	{"ID" : "413", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_0_2_x0_U", "Parent" : "7"},
	{"ID" : "414", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_0_1_x0_U", "Parent" : "7"},
	{"ID" : "415", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_0_0_x0_U", "Parent" : "7"},
	{"ID" : "416", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_1_12_x0_U", "Parent" : "7"},
	{"ID" : "417", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_1_11_x0_U", "Parent" : "7"},
	{"ID" : "418", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_1_10_x0_U", "Parent" : "7"},
	{"ID" : "419", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_1_9_x0_U", "Parent" : "7"},
	{"ID" : "420", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_1_8_x0_U", "Parent" : "7"},
	{"ID" : "421", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_1_7_x0_U", "Parent" : "7"},
	{"ID" : "422", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_1_6_x0_U", "Parent" : "7"},
	{"ID" : "423", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_1_5_x0_U", "Parent" : "7"},
	{"ID" : "424", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_1_4_x0_U", "Parent" : "7"},
	{"ID" : "425", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_1_3_x0_U", "Parent" : "7"},
	{"ID" : "426", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_1_2_x0_U", "Parent" : "7"},
	{"ID" : "427", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_1_1_x0_U", "Parent" : "7"},
	{"ID" : "428", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L1_out_1_0_x0_U", "Parent" : "7"},
	{"ID" : "429", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L2_out_1_x0_U", "Parent" : "7"},
	{"ID" : "430", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_92.fifo_C_drain_C_drain_IO_L2_out_0_x0_U", "Parent" : "7"},
	{"ID" : "431", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106", "Parent" : "0", "Child" : ["432", "433", "434", "436", "438", "440", "442", "444", "446", "448", "450", "452", "454", "456", "458", "460", "462", "463", "465", "467", "473", "479", "485", "491", "497", "503", "509", "515", "521", "527", "533", "539", "545", "551", "557", "563", "569", "575", "581", "587", "593", "599", "605", "611", "617", "623", "624", "625", "626", "627", "628", "629", "630", "631", "632", "633", "634", "635", "636", "637", "638", "641", "644", "647", "650", "653", "656", "659", "662", "665", "668", "671", "674", "677", "680", "683", "686", "689", "692", "695", "698", "701", "704", "707", "710", "713", "716", "717", "718", "719", "720", "721", "722", "723", "724", "725", "726", "727", "728", "729", "730", "731", "732", "733", "734", "735", "736", "737", "738", "739", "740", "741", "742", "743", "744", "745", "746", "747", "748", "749", "750", "751", "752", "753", "754", "755", "756", "757", "758", "759", "760", "761", "762", "763", "764", "765", "766", "767", "768", "769", "770", "771", "772", "773", "774", "775", "776", "777", "778", "779", "780", "781", "782", "783", "784", "785", "786", "787", "788", "789", "790", "791", "792", "793", "794", "795", "796", "797", "798", "799", "800", "801", "802", "803", "804", "805", "806", "807", "808", "809", "810", "811", "812", "813", "814", "815", "816", "817", "818", "819", "820", "821", "822", "823", "824", "825", "826", "827", "828", "829", "830", "831", "832", "833", "834", "835", "836", "837", "838", "839", "840", "841", "842", "843", "844", "845", "846", "847", "848", "849", "850", "851", "852", "853", "854", "855", "856"],
		"CDFG" : "kernel3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "139120", "EstimateLatencyMax" : "139120",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "432", "Name" : "kernel3_x1_entry31_U0"},
			{"ID" : "434", "Name" : "A_IO_L3_in_x1_U0"},
			{"ID" : "462", "Name" : "B_IO_L3_in_x1_U0"}],
		"OutputProcess" : [
			{"ID" : "623", "Name" : "A_PE_dummy_0_x1_U0"},
			{"ID" : "624", "Name" : "A_PE_dummy_1_x1_U0"},
			{"ID" : "625", "Name" : "A_PE_dummy_2_x1_U0"},
			{"ID" : "626", "Name" : "A_PE_dummy_3_x1_U0"},
			{"ID" : "627", "Name" : "A_PE_dummy_4_x1_U0"},
			{"ID" : "628", "Name" : "A_PE_dummy_5_x1_U0"},
			{"ID" : "629", "Name" : "A_PE_dummy_6_x1_U0"},
			{"ID" : "630", "Name" : "A_PE_dummy_7_x1_U0"},
			{"ID" : "631", "Name" : "A_PE_dummy_8_x1_U0"},
			{"ID" : "632", "Name" : "A_PE_dummy_9_x1_U0"},
			{"ID" : "633", "Name" : "A_PE_dummy_10_x1_U0"},
			{"ID" : "634", "Name" : "A_PE_dummy_11_x1_U0"},
			{"ID" : "635", "Name" : "A_PE_dummy_12_x1_U0"},
			{"ID" : "636", "Name" : "B_PE_dummy_0_x1_U0"},
			{"ID" : "637", "Name" : "B_PE_dummy_1_x1_U0"},
			{"ID" : "718", "Name" : "C_drain_IO_L3_out_x1_U0"}],
		"Port" : [
			{"Name" : "gmem_C", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "718", "SubInstance" : "C_drain_IO_L3_out_x1_U0", "Port" : "gmem_C"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "462", "SubInstance" : "B_IO_L3_in_x1_U0", "Port" : "B"},
					{"ID" : "434", "SubInstance" : "A_IO_L3_in_x1_U0", "Port" : "A"}]},
			{"Name" : "C", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "432", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.kernel3_x1_entry31_U0", "Parent" : "431",
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
			{"Name" : "C_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "433", "DependentChan" : "719", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "433", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.kernel3_x1_entry42_U0", "Parent" : "431",
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
			{"Name" : "C", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "432", "DependentChan" : "719", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "C_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "718", "DependentChan" : "720", "DependentChanDepth" : "33", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "434", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L3_in_x1_U0", "Parent" : "431", "Child" : ["435"],
		"CDFG" : "A_IO_L3_in_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2050", "EstimateLatencyMax" : "2050",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_0_x11", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "436", "DependentChan" : "721", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_0_x11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "435", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L3_in_x1_U0.add_11ns_11ns_11_1_1_U553", "Parent" : "434"},
	{"ID" : "436", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_0_x1_U0", "Parent" : "431", "Child" : ["437"],
		"CDFG" : "A_IO_L2_in_0_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "48573", "EstimateLatencyMax" : "48573",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_0_x11", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "434", "DependentChan" : "721", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_0_x11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_1_x12", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "438", "DependentChan" : "722", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_0_x116", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "467", "DependentChan" : "723", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x116_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "437", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_0_x1_U0.local_A_pong_V_U", "Parent" : "436"},
	{"ID" : "438", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_1_x1_U0", "Parent" : "431", "Child" : ["439"],
		"CDFG" : "A_IO_L2_in_1_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "47515", "EstimateLatencyMax" : "47515",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_1_x12", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "436", "DependentChan" : "722", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_2_x13", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "440", "DependentChan" : "724", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_0_x119", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "479", "DependentChan" : "725", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x119_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "439", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_1_x1_U0.local_A_pong_V_U", "Parent" : "438"},
	{"ID" : "440", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_2_x1_U0", "Parent" : "431", "Child" : ["441"],
		"CDFG" : "A_IO_L2_in_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "46457", "EstimateLatencyMax" : "46457",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_2_x13", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "438", "DependentChan" : "724", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_3_x14", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "442", "DependentChan" : "726", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_0_x122", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "491", "DependentChan" : "727", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x122_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "441", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_2_x1_U0.local_A_pong_V_U", "Parent" : "440"},
	{"ID" : "442", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_3_x1_U0", "Parent" : "431", "Child" : ["443"],
		"CDFG" : "A_IO_L2_in_3_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "45399", "EstimateLatencyMax" : "45399",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_3_x14", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "440", "DependentChan" : "726", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_4_x15", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "444", "DependentChan" : "728", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_4_x15_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_0_x125", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "503", "DependentChan" : "729", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x125_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "443", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_3_x1_U0.local_A_pong_V_U", "Parent" : "442"},
	{"ID" : "444", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_4_x1_U0", "Parent" : "431", "Child" : ["445"],
		"CDFG" : "A_IO_L2_in_4_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "44341", "EstimateLatencyMax" : "44341",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_4_x15", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "442", "DependentChan" : "728", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_4_x15_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_5_x16", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "446", "DependentChan" : "730", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_5_x16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_0_x128", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "515", "DependentChan" : "731", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_0_x128_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "445", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_4_x1_U0.local_A_pong_V_U", "Parent" : "444"},
	{"ID" : "446", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_5_x1_U0", "Parent" : "431", "Child" : ["447"],
		"CDFG" : "A_IO_L2_in_5_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "43283", "EstimateLatencyMax" : "43283",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_5_x16", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "444", "DependentChan" : "730", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_5_x16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_6_x17", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "448", "DependentChan" : "732", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_6_x17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_0_x131", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "527", "DependentChan" : "733", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_0_x131_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "447", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_5_x1_U0.local_A_pong_V_U", "Parent" : "446"},
	{"ID" : "448", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_6_x1_U0", "Parent" : "431", "Child" : ["449"],
		"CDFG" : "A_IO_L2_in_6_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "42225", "EstimateLatencyMax" : "42225",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_6_x17", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "446", "DependentChan" : "732", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_6_x17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_7_x18", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "450", "DependentChan" : "734", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_7_x18_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_0_x134", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "539", "DependentChan" : "735", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_0_x134_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "449", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_6_x1_U0.local_A_pong_V_U", "Parent" : "448"},
	{"ID" : "450", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_7_x1_U0", "Parent" : "431", "Child" : ["451"],
		"CDFG" : "A_IO_L2_in_7_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41167", "EstimateLatencyMax" : "41167",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_7_x18", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "448", "DependentChan" : "734", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_7_x18_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_8_x19", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "452", "DependentChan" : "736", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_8_x19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_0_x137", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "551", "DependentChan" : "737", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_0_x137_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "451", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_7_x1_U0.local_A_pong_V_U", "Parent" : "450"},
	{"ID" : "452", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_8_x1_U0", "Parent" : "431", "Child" : ["453"],
		"CDFG" : "A_IO_L2_in_8_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "40109", "EstimateLatencyMax" : "40109",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_8_x19", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "450", "DependentChan" : "736", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_8_x19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_9_x110", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "454", "DependentChan" : "738", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_9_x110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_8_0_x140", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "563", "DependentChan" : "739", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_0_x140_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "453", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_8_x1_U0.local_A_pong_V_U", "Parent" : "452"},
	{"ID" : "454", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_9_x1_U0", "Parent" : "431", "Child" : ["455"],
		"CDFG" : "A_IO_L2_in_9_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "39051", "EstimateLatencyMax" : "39051",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_9_x110", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "452", "DependentChan" : "738", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_9_x110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_10_x111", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "456", "DependentChan" : "740", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_10_x111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_9_0_x143", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "575", "DependentChan" : "741", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_0_x143_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "455", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_9_x1_U0.local_A_pong_V_U", "Parent" : "454"},
	{"ID" : "456", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_10_x1_U0", "Parent" : "431", "Child" : ["457"],
		"CDFG" : "A_IO_L2_in_10_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "37993", "EstimateLatencyMax" : "37993",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_10_x111", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "454", "DependentChan" : "740", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_10_x111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_11_x112", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "458", "DependentChan" : "742", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_11_x112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_10_0_x146", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "587", "DependentChan" : "743", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_0_x146_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "457", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_10_x1_U0.local_A_pong_V_U", "Parent" : "456"},
	{"ID" : "458", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_11_x1_U0", "Parent" : "431", "Child" : ["459"],
		"CDFG" : "A_IO_L2_in_11_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "36935", "EstimateLatencyMax" : "36935",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_A_IO_L2_in_11_x112", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "456", "DependentChan" : "742", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_11_x112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_12_x113", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "460", "DependentChan" : "744", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_12_x113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_11_0_x149", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "599", "DependentChan" : "745", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_0_x149_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "459", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_11_x1_U0.local_A_pong_V_U", "Parent" : "458"},
	{"ID" : "460", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_boundary_x1_U0", "Parent" : "431", "Child" : ["461"],
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
			{"Name" : "fifo_A_A_IO_L2_in_12_x113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "458", "DependentChan" : "744", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_12_x113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_12_0_x152", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "611", "DependentChan" : "746", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_0_x152_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "461", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_IO_L2_in_boundary_x1_U0.local_A_pong_V_U", "Parent" : "460"},
	{"ID" : "462", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.B_IO_L3_in_x1_U0", "Parent" : "431",
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
			{"Name" : "fifo_B_B_IO_L2_in_0_x114", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "463", "DependentChan" : "747", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_0_x114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "463", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.B_IO_L2_in_x1_U0", "Parent" : "431", "Child" : ["464"],
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
			{"Name" : "fifo_B_B_IO_L2_in_0_x114", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "462", "DependentChan" : "747", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_0_x114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_1_x115", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "465", "DependentChan" : "748", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x155", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "467", "DependentChan" : "749", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x155_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "464", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.B_IO_L2_in_x1_U0.local_B_pong_V_U", "Parent" : "463"},
	{"ID" : "465", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.B_IO_L2_in_boundary_x1_U0", "Parent" : "431", "Child" : ["466"],
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
			{"Name" : "fifo_B_B_IO_L2_in_1_x115", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "463", "DependentChan" : "748", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x169", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "473", "DependentChan" : "750", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x169_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "466", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.B_IO_L2_in_boundary_x1_U0.local_B_pong_V_U", "Parent" : "465"},
	{"ID" : "467", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_0_0_x1_U0", "Parent" : "431", "Child" : ["468", "469", "470", "471", "472"],
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
			{"Name" : "fifo_A_PE_0_0_x116", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "436", "DependentChan" : "723", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_1_x117", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "473", "DependentChan" : "751", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x155", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "463", "DependentChan" : "749", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x155_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x156", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "479", "DependentChan" : "752", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x156_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_0_x183", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "674", "DependentChan" : "753", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_0_x183_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "468", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_0_0_x1_U0.local_C_U", "Parent" : "467"},
	{"ID" : "469", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_0_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U602", "Parent" : "467"},
	{"ID" : "470", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_0_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U603", "Parent" : "467"},
	{"ID" : "471", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_0_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U604", "Parent" : "467"},
	{"ID" : "472", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_0_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U605", "Parent" : "467"},
	{"ID" : "473", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_0_1_x1_U0", "Parent" : "431", "Child" : ["474", "475", "476", "477", "478"],
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
			{"Name" : "fifo_A_PE_0_1_x117", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "467", "DependentChan" : "751", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_2_x118", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "623", "DependentChan" : "754", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x169", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "465", "DependentChan" : "750", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x169_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x170", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "485", "DependentChan" : "755", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x170_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_1_x196", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "713", "DependentChan" : "756", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_1_x196_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "474", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_0_1_x1_U0.local_C_U", "Parent" : "473"},
	{"ID" : "475", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_0_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U611", "Parent" : "473"},
	{"ID" : "476", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_0_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U612", "Parent" : "473"},
	{"ID" : "477", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_0_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U613", "Parent" : "473"},
	{"ID" : "478", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_0_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U614", "Parent" : "473"},
	{"ID" : "479", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_1_0_x1_U0", "Parent" : "431", "Child" : ["480", "481", "482", "483", "484"],
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
			{"Name" : "fifo_A_PE_1_0_x119", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "438", "DependentChan" : "725", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_1_x120", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "485", "DependentChan" : "757", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x156", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "467", "DependentChan" : "752", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x156_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x157", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "491", "DependentChan" : "758", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x157_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_0_x184", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "671", "DependentChan" : "759", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_0_x184_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "480", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_1_0_x1_U0.local_C_U", "Parent" : "479"},
	{"ID" : "481", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_1_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U620", "Parent" : "479"},
	{"ID" : "482", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_1_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U621", "Parent" : "479"},
	{"ID" : "483", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_1_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U622", "Parent" : "479"},
	{"ID" : "484", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_1_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U623", "Parent" : "479"},
	{"ID" : "485", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_1_1_x1_U0", "Parent" : "431", "Child" : ["486", "487", "488", "489", "490"],
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
			{"Name" : "fifo_A_PE_1_1_x120", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "479", "DependentChan" : "757", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_2_x121", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "624", "DependentChan" : "760", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x170", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "473", "DependentChan" : "755", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x170_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x171", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "497", "DependentChan" : "761", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x171_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_1_x197", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "710", "DependentChan" : "762", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_1_x197_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "486", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_1_1_x1_U0.local_C_U", "Parent" : "485"},
	{"ID" : "487", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_1_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U629", "Parent" : "485"},
	{"ID" : "488", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_1_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U630", "Parent" : "485"},
	{"ID" : "489", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_1_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U631", "Parent" : "485"},
	{"ID" : "490", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_1_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U632", "Parent" : "485"},
	{"ID" : "491", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_2_0_x1_U0", "Parent" : "431", "Child" : ["492", "493", "494", "495", "496"],
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
			{"Name" : "fifo_A_PE_2_0_x122", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "440", "DependentChan" : "727", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_1_x123", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "497", "DependentChan" : "763", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x157", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "479", "DependentChan" : "758", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x157_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x158", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "503", "DependentChan" : "764", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x158_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_0_x185", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "668", "DependentChan" : "765", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_0_x185_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "492", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_2_0_x1_U0.local_C_U", "Parent" : "491"},
	{"ID" : "493", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_2_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U638", "Parent" : "491"},
	{"ID" : "494", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_2_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U639", "Parent" : "491"},
	{"ID" : "495", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_2_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U640", "Parent" : "491"},
	{"ID" : "496", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_2_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U641", "Parent" : "491"},
	{"ID" : "497", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_2_1_x1_U0", "Parent" : "431", "Child" : ["498", "499", "500", "501", "502"],
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
			{"Name" : "fifo_A_PE_2_1_x123", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "491", "DependentChan" : "763", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_2_x124", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "625", "DependentChan" : "766", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x171", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "485", "DependentChan" : "761", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x171_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x172", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "509", "DependentChan" : "767", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x172_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_1_x198", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "707", "DependentChan" : "768", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_1_x198_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "498", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_2_1_x1_U0.local_C_U", "Parent" : "497"},
	{"ID" : "499", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_2_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U647", "Parent" : "497"},
	{"ID" : "500", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_2_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U648", "Parent" : "497"},
	{"ID" : "501", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_2_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U649", "Parent" : "497"},
	{"ID" : "502", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_2_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U650", "Parent" : "497"},
	{"ID" : "503", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_3_0_x1_U0", "Parent" : "431", "Child" : ["504", "505", "506", "507", "508"],
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
			{"Name" : "fifo_A_PE_3_0_x125", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "442", "DependentChan" : "729", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_1_x126", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "509", "DependentChan" : "769", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x158", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "491", "DependentChan" : "764", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x158_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x159", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "515", "DependentChan" : "770", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x159_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_0_x186", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "665", "DependentChan" : "771", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_0_x186_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "504", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_3_0_x1_U0.local_C_U", "Parent" : "503"},
	{"ID" : "505", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_3_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U656", "Parent" : "503"},
	{"ID" : "506", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_3_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U657", "Parent" : "503"},
	{"ID" : "507", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_3_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U658", "Parent" : "503"},
	{"ID" : "508", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_3_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U659", "Parent" : "503"},
	{"ID" : "509", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_3_1_x1_U0", "Parent" : "431", "Child" : ["510", "511", "512", "513", "514"],
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
			{"Name" : "fifo_A_PE_3_1_x126", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "503", "DependentChan" : "769", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_2_x127", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "626", "DependentChan" : "772", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x172", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "497", "DependentChan" : "767", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x172_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x173", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "521", "DependentChan" : "773", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x173_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_1_x199", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "704", "DependentChan" : "774", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_1_x199_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "510", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_3_1_x1_U0.local_C_U", "Parent" : "509"},
	{"ID" : "511", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_3_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U665", "Parent" : "509"},
	{"ID" : "512", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_3_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U666", "Parent" : "509"},
	{"ID" : "513", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_3_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U667", "Parent" : "509"},
	{"ID" : "514", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_3_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U668", "Parent" : "509"},
	{"ID" : "515", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_4_0_x1_U0", "Parent" : "431", "Child" : ["516", "517", "518", "519", "520"],
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
			{"Name" : "fifo_A_PE_4_0_x128", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "444", "DependentChan" : "731", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_0_x128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_1_x129", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "521", "DependentChan" : "775", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x159", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "503", "DependentChan" : "770", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x159_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x160", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "527", "DependentChan" : "776", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x160_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_0_x187", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "662", "DependentChan" : "777", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_0_x187_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "516", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_4_0_x1_U0.local_C_U", "Parent" : "515"},
	{"ID" : "517", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_4_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U674", "Parent" : "515"},
	{"ID" : "518", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_4_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U675", "Parent" : "515"},
	{"ID" : "519", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_4_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U676", "Parent" : "515"},
	{"ID" : "520", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_4_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U677", "Parent" : "515"},
	{"ID" : "521", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_4_1_x1_U0", "Parent" : "431", "Child" : ["522", "523", "524", "525", "526"],
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
			{"Name" : "fifo_A_PE_4_1_x129", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "515", "DependentChan" : "775", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_2_x130", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "627", "DependentChan" : "778", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_2_x130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x173", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "509", "DependentChan" : "773", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x173_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_1_x174", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "533", "DependentChan" : "779", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_1_x174_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_1_x1100", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "701", "DependentChan" : "780", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_1_x1100_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "522", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_4_1_x1_U0.local_C_U", "Parent" : "521"},
	{"ID" : "523", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_4_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U683", "Parent" : "521"},
	{"ID" : "524", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_4_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U684", "Parent" : "521"},
	{"ID" : "525", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_4_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U685", "Parent" : "521"},
	{"ID" : "526", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_4_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U686", "Parent" : "521"},
	{"ID" : "527", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_5_0_x1_U0", "Parent" : "431", "Child" : ["528", "529", "530", "531", "532"],
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
			{"Name" : "fifo_A_PE_5_0_x131", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "446", "DependentChan" : "733", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_0_x131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_1_x132", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "533", "DependentChan" : "781", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_1_x132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x160", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "515", "DependentChan" : "776", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x160_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_0_x161", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "539", "DependentChan" : "782", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_0_x161_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_0_x188", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "659", "DependentChan" : "783", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_0_x188_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "528", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_5_0_x1_U0.local_C_U", "Parent" : "527"},
	{"ID" : "529", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_5_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U692", "Parent" : "527"},
	{"ID" : "530", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_5_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U693", "Parent" : "527"},
	{"ID" : "531", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_5_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U694", "Parent" : "527"},
	{"ID" : "532", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_5_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U695", "Parent" : "527"},
	{"ID" : "533", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_5_1_x1_U0", "Parent" : "431", "Child" : ["534", "535", "536", "537", "538"],
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
			{"Name" : "fifo_A_PE_5_1_x132", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "527", "DependentChan" : "781", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_1_x132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_2_x133", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "628", "DependentChan" : "784", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_2_x133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_1_x174", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "521", "DependentChan" : "779", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_1_x174_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x175", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "545", "DependentChan" : "785", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x175_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_1_x1101", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "698", "DependentChan" : "786", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_1_x1101_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "534", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_5_1_x1_U0.local_C_U", "Parent" : "533"},
	{"ID" : "535", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_5_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U701", "Parent" : "533"},
	{"ID" : "536", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_5_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U702", "Parent" : "533"},
	{"ID" : "537", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_5_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U703", "Parent" : "533"},
	{"ID" : "538", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_5_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U704", "Parent" : "533"},
	{"ID" : "539", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_6_0_x1_U0", "Parent" : "431", "Child" : ["540", "541", "542", "543", "544"],
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
			{"Name" : "fifo_A_PE_6_0_x134", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "448", "DependentChan" : "735", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_0_x134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_1_x135", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "545", "DependentChan" : "787", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_1_x135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_0_x161", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "527", "DependentChan" : "782", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_0_x161_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_0_x162", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "551", "DependentChan" : "788", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_0_x162_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_0_x189", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "656", "DependentChan" : "789", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_0_x189_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "540", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_6_0_x1_U0.local_C_U", "Parent" : "539"},
	{"ID" : "541", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_6_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U710", "Parent" : "539"},
	{"ID" : "542", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_6_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U711", "Parent" : "539"},
	{"ID" : "543", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_6_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U712", "Parent" : "539"},
	{"ID" : "544", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_6_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U713", "Parent" : "539"},
	{"ID" : "545", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_6_1_x1_U0", "Parent" : "431", "Child" : ["546", "547", "548", "549", "550"],
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
			{"Name" : "fifo_A_PE_6_1_x135", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "539", "DependentChan" : "787", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_1_x135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_2_x136", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "629", "DependentChan" : "790", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x175", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "533", "DependentChan" : "785", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x175_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_1_x176", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "557", "DependentChan" : "791", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_1_x176_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x1102", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "695", "DependentChan" : "792", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x1102_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "546", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_6_1_x1_U0.local_C_U", "Parent" : "545"},
	{"ID" : "547", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_6_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U719", "Parent" : "545"},
	{"ID" : "548", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_6_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U720", "Parent" : "545"},
	{"ID" : "549", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_6_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U721", "Parent" : "545"},
	{"ID" : "550", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_6_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U722", "Parent" : "545"},
	{"ID" : "551", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_7_0_x1_U0", "Parent" : "431", "Child" : ["552", "553", "554", "555", "556"],
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
			{"Name" : "fifo_A_PE_7_0_x137", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "450", "DependentChan" : "737", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_0_x137_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_1_x138", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "557", "DependentChan" : "793", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_1_x138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_0_x162", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "539", "DependentChan" : "788", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_0_x162_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_0_x163", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "563", "DependentChan" : "794", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_0_x163_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_0_x190", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "653", "DependentChan" : "795", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_0_x190_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "552", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_7_0_x1_U0.local_C_U", "Parent" : "551"},
	{"ID" : "553", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_7_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U728", "Parent" : "551"},
	{"ID" : "554", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_7_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U729", "Parent" : "551"},
	{"ID" : "555", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_7_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U730", "Parent" : "551"},
	{"ID" : "556", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_7_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U731", "Parent" : "551"},
	{"ID" : "557", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_7_1_x1_U0", "Parent" : "431", "Child" : ["558", "559", "560", "561", "562"],
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
			{"Name" : "fifo_A_PE_7_1_x138", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "551", "DependentChan" : "793", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_1_x138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_2_x139", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "630", "DependentChan" : "796", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_2_x139_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_1_x176", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "545", "DependentChan" : "791", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_1_x176_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_1_x177", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "569", "DependentChan" : "797", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_1_x177_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_1_x1103", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "692", "DependentChan" : "798", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_1_x1103_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "558", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_7_1_x1_U0.local_C_U", "Parent" : "557"},
	{"ID" : "559", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_7_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U737", "Parent" : "557"},
	{"ID" : "560", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_7_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U738", "Parent" : "557"},
	{"ID" : "561", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_7_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U739", "Parent" : "557"},
	{"ID" : "562", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_7_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U740", "Parent" : "557"},
	{"ID" : "563", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_8_0_x1_U0", "Parent" : "431", "Child" : ["564", "565", "566", "567", "568"],
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
			{"Name" : "fifo_A_PE_8_0_x140", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "452", "DependentChan" : "739", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_0_x140_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_8_1_x141", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "569", "DependentChan" : "799", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_1_x141_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_0_x163", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "551", "DependentChan" : "794", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_0_x163_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_0_x164", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "575", "DependentChan" : "800", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_0_x164_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_0_x191", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "650", "DependentChan" : "801", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_0_x191_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "564", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_8_0_x1_U0.local_C_U", "Parent" : "563"},
	{"ID" : "565", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_8_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U746", "Parent" : "563"},
	{"ID" : "566", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_8_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U747", "Parent" : "563"},
	{"ID" : "567", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_8_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U748", "Parent" : "563"},
	{"ID" : "568", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_8_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U749", "Parent" : "563"},
	{"ID" : "569", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_8_1_x1_U0", "Parent" : "431", "Child" : ["570", "571", "572", "573", "574"],
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
			{"Name" : "fifo_A_PE_8_1_x141", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "563", "DependentChan" : "799", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_1_x141_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_8_2_x142", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "631", "DependentChan" : "802", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_2_x142_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_1_x177", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "557", "DependentChan" : "797", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_1_x177_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_1_x178", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "581", "DependentChan" : "803", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_1_x178_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_1_x1104", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "689", "DependentChan" : "804", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_1_x1104_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "570", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_8_1_x1_U0.local_C_U", "Parent" : "569"},
	{"ID" : "571", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_8_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U755", "Parent" : "569"},
	{"ID" : "572", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_8_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U756", "Parent" : "569"},
	{"ID" : "573", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_8_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U757", "Parent" : "569"},
	{"ID" : "574", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_8_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U758", "Parent" : "569"},
	{"ID" : "575", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_9_0_x1_U0", "Parent" : "431", "Child" : ["576", "577", "578", "579", "580"],
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
			{"Name" : "fifo_A_PE_9_0_x143", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "454", "DependentChan" : "741", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_0_x143_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_9_1_x144", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "581", "DependentChan" : "805", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_1_x144_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_0_x164", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "563", "DependentChan" : "800", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_0_x164_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_0_x165", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "587", "DependentChan" : "806", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_0_x165_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_0_x192", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "647", "DependentChan" : "807", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_0_x192_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "576", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_9_0_x1_U0.local_C_U", "Parent" : "575"},
	{"ID" : "577", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_9_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U764", "Parent" : "575"},
	{"ID" : "578", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_9_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U765", "Parent" : "575"},
	{"ID" : "579", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_9_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U766", "Parent" : "575"},
	{"ID" : "580", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_9_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U767", "Parent" : "575"},
	{"ID" : "581", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_9_1_x1_U0", "Parent" : "431", "Child" : ["582", "583", "584", "585", "586"],
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
			{"Name" : "fifo_A_PE_9_1_x144", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "575", "DependentChan" : "805", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_1_x144_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_9_2_x145", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "632", "DependentChan" : "808", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_2_x145_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_1_x178", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "569", "DependentChan" : "803", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_1_x178_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_1_x179", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "593", "DependentChan" : "809", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_1_x179_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_1_x1105", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "686", "DependentChan" : "810", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_1_x1105_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "582", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_9_1_x1_U0.local_C_U", "Parent" : "581"},
	{"ID" : "583", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_9_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U773", "Parent" : "581"},
	{"ID" : "584", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_9_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U774", "Parent" : "581"},
	{"ID" : "585", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_9_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U775", "Parent" : "581"},
	{"ID" : "586", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_9_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U776", "Parent" : "581"},
	{"ID" : "587", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_10_0_x1_U0", "Parent" : "431", "Child" : ["588", "589", "590", "591", "592"],
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
			{"Name" : "fifo_A_PE_10_0_x146", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "456", "DependentChan" : "743", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_0_x146_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_10_1_x147", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "593", "DependentChan" : "811", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_1_x147_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_0_x165", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "575", "DependentChan" : "806", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_0_x165_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_0_x166", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "599", "DependentChan" : "812", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_0_x166_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_0_x193", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "644", "DependentChan" : "813", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_0_x193_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "588", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_10_0_x1_U0.local_C_U", "Parent" : "587"},
	{"ID" : "589", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_10_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U782", "Parent" : "587"},
	{"ID" : "590", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_10_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U783", "Parent" : "587"},
	{"ID" : "591", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_10_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U784", "Parent" : "587"},
	{"ID" : "592", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_10_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U785", "Parent" : "587"},
	{"ID" : "593", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_10_1_x1_U0", "Parent" : "431", "Child" : ["594", "595", "596", "597", "598"],
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
			{"Name" : "fifo_A_PE_10_1_x147", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "587", "DependentChan" : "811", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_1_x147_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_10_2_x148", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "633", "DependentChan" : "814", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_2_x148_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_1_x179", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "581", "DependentChan" : "809", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_1_x179_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_1_x180", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "605", "DependentChan" : "815", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_1_x180_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_1_x1106", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "683", "DependentChan" : "816", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_1_x1106_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "594", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_10_1_x1_U0.local_C_U", "Parent" : "593"},
	{"ID" : "595", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_10_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U791", "Parent" : "593"},
	{"ID" : "596", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_10_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U792", "Parent" : "593"},
	{"ID" : "597", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_10_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U793", "Parent" : "593"},
	{"ID" : "598", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_10_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U794", "Parent" : "593"},
	{"ID" : "599", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_11_0_x1_U0", "Parent" : "431", "Child" : ["600", "601", "602", "603", "604"],
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
			{"Name" : "fifo_A_PE_11_0_x149", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "458", "DependentChan" : "745", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_0_x149_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_11_1_x150", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "605", "DependentChan" : "817", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_1_x150_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_0_x166", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "587", "DependentChan" : "812", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_0_x166_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_0_x167", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "611", "DependentChan" : "818", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_0_x167_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_0_x194", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "641", "DependentChan" : "819", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_0_x194_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "600", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_11_0_x1_U0.local_C_U", "Parent" : "599"},
	{"ID" : "601", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_11_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U800", "Parent" : "599"},
	{"ID" : "602", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_11_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U801", "Parent" : "599"},
	{"ID" : "603", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_11_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U802", "Parent" : "599"},
	{"ID" : "604", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_11_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U803", "Parent" : "599"},
	{"ID" : "605", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_11_1_x1_U0", "Parent" : "431", "Child" : ["606", "607", "608", "609", "610"],
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
			{"Name" : "fifo_A_PE_11_1_x150", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "599", "DependentChan" : "817", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_1_x150_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_11_2_x151", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "634", "DependentChan" : "820", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_2_x151_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_1_x180", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "593", "DependentChan" : "815", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_1_x180_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_1_x181", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "617", "DependentChan" : "821", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_1_x181_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_1_x1107", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "680", "DependentChan" : "822", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_1_x1107_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "606", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_11_1_x1_U0.local_C_U", "Parent" : "605"},
	{"ID" : "607", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_11_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U809", "Parent" : "605"},
	{"ID" : "608", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_11_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U810", "Parent" : "605"},
	{"ID" : "609", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_11_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U811", "Parent" : "605"},
	{"ID" : "610", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_11_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U812", "Parent" : "605"},
	{"ID" : "611", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_12_0_x1_U0", "Parent" : "431", "Child" : ["612", "613", "614", "615", "616"],
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
			{"Name" : "fifo_A_PE_12_0_x152", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "460", "DependentChan" : "746", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_0_x152_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_12_1_x153", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "617", "DependentChan" : "823", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_1_x153_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_0_x167", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "599", "DependentChan" : "818", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_0_x167_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_13_0_x168", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "636", "DependentChan" : "824", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_0_x168_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_0_x195", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "638", "DependentChan" : "825", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_0_x195_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "612", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_12_0_x1_U0.local_C_U", "Parent" : "611"},
	{"ID" : "613", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_12_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U818", "Parent" : "611"},
	{"ID" : "614", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_12_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U819", "Parent" : "611"},
	{"ID" : "615", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_12_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U820", "Parent" : "611"},
	{"ID" : "616", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_12_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U821", "Parent" : "611"},
	{"ID" : "617", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_12_1_x1_U0", "Parent" : "431", "Child" : ["618", "619", "620", "621", "622"],
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
			{"Name" : "fifo_A_PE_12_1_x153", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "611", "DependentChan" : "823", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_1_x153_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_12_2_x154", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "635", "DependentChan" : "826", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_2_x154_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_1_x181", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "605", "DependentChan" : "821", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_1_x181_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_13_1_x182", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "637", "DependentChan" : "827", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_1_x182_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_1_x1108", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "677", "DependentChan" : "828", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_1_x1108_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "618", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_12_1_x1_U0.local_C_U", "Parent" : "617"},
	{"ID" : "619", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_12_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U827", "Parent" : "617"},
	{"ID" : "620", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_12_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U828", "Parent" : "617"},
	{"ID" : "621", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_12_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U829", "Parent" : "617"},
	{"ID" : "622", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.PE_wrapper_12_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U830", "Parent" : "617"},
	{"ID" : "623", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_PE_dummy_0_x1_U0", "Parent" : "431",
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
			{"Name" : "fifo_A_PE_0_2_x118", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "473", "DependentChan" : "754", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x118_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "624", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_PE_dummy_1_x1_U0", "Parent" : "431",
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
			{"Name" : "fifo_A_PE_1_2_x121", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "485", "DependentChan" : "760", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x121_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "625", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_PE_dummy_2_x1_U0", "Parent" : "431",
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
			{"Name" : "fifo_A_PE_2_2_x124", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "497", "DependentChan" : "766", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x124_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "626", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_PE_dummy_3_x1_U0", "Parent" : "431",
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
			{"Name" : "fifo_A_PE_3_2_x127", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "509", "DependentChan" : "772", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x127_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "627", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_PE_dummy_4_x1_U0", "Parent" : "431",
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
			{"Name" : "fifo_A_PE_4_2_x130", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "521", "DependentChan" : "778", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_2_x130_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "628", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_PE_dummy_5_x1_U0", "Parent" : "431",
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
			{"Name" : "fifo_A_PE_5_2_x133", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "533", "DependentChan" : "784", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_2_x133_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "629", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_PE_dummy_6_x1_U0", "Parent" : "431",
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
			{"Name" : "fifo_A_PE_6_2_x136", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "545", "DependentChan" : "790", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x136_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "630", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_PE_dummy_7_x1_U0", "Parent" : "431",
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
			{"Name" : "fifo_A_PE_7_2_x139", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "557", "DependentChan" : "796", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_2_x139_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "631", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_PE_dummy_8_x1_U0", "Parent" : "431",
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
			{"Name" : "fifo_A_PE_8_2_x142", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "569", "DependentChan" : "802", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_2_x142_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "632", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_PE_dummy_9_x1_U0", "Parent" : "431",
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
			{"Name" : "fifo_A_PE_9_2_x145", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "581", "DependentChan" : "808", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_2_x145_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "633", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_PE_dummy_10_x1_U0", "Parent" : "431",
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
			{"Name" : "fifo_A_PE_10_2_x148", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "593", "DependentChan" : "814", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_2_x148_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "634", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_PE_dummy_11_x1_U0", "Parent" : "431",
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
			{"Name" : "fifo_A_PE_11_2_x151", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "605", "DependentChan" : "820", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_2_x151_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "635", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.A_PE_dummy_12_x1_U0", "Parent" : "431",
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
			{"Name" : "fifo_A_PE_12_2_x154", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "617", "DependentChan" : "826", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_2_x154_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "636", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.B_PE_dummy_0_x1_U0", "Parent" : "431",
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
			{"Name" : "fifo_B_PE_13_0_x168", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "611", "DependentChan" : "824", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_0_x168_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "637", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.B_PE_dummy_1_x1_U0", "Parent" : "431",
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
			{"Name" : "fifo_B_PE_13_1_x182", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "617", "DependentChan" : "827", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_1_x182_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "638", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_boundary_0_x1_U0", "Parent" : "431", "Child" : ["639", "640"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x1121", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "641", "DependentChan" : "829", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x1121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_0_x195", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "611", "DependentChan" : "825", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_0_x195_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "639", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_boundary_0_x1_U0.local_C_V_U", "Parent" : "638"},
	{"ID" : "640", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_boundary_0_x1_U0.buf_data_split_V_U", "Parent" : "638"},
	{"ID" : "641", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_0_x1_U0", "Parent" : "431", "Child" : ["642", "643"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x1121", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "638", "DependentChan" : "829", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x1121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x1120", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "644", "DependentChan" : "830", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x1120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_0_x194", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "599", "DependentChan" : "819", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_0_x194_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "642", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_0_x1_U0.local_C_V_U", "Parent" : "641"},
	{"ID" : "643", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_0_x1_U0.buf_data_split_V_U", "Parent" : "641"},
	{"ID" : "644", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_1_x1_U0", "Parent" : "431", "Child" : ["645", "646"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x1120", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "641", "DependentChan" : "830", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x1120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x1119", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "647", "DependentChan" : "831", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x1119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_0_x193", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "587", "DependentChan" : "813", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_0_x193_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "645", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_1_x1_U0.local_C_V_U", "Parent" : "644"},
	{"ID" : "646", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_1_x1_U0.buf_data_split_V_U", "Parent" : "644"},
	{"ID" : "647", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_2_x1_U0", "Parent" : "431", "Child" : ["648", "649"],
		"CDFG" : "C_drain_IO_L1_out_2_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5128", "EstimateLatencyMax" : "5128",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x1119", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "644", "DependentChan" : "831", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x1119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x1118", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "650", "DependentChan" : "832", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x1118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_0_x192", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "575", "DependentChan" : "807", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_0_x192_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "648", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_2_x1_U0.local_C_V_U", "Parent" : "647"},
	{"ID" : "649", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_2_x1_U0.buf_data_split_V_U", "Parent" : "647"},
	{"ID" : "650", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_3_x1_U0", "Parent" : "431", "Child" : ["651", "652"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x1118", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "647", "DependentChan" : "832", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x1118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x1117", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "653", "DependentChan" : "833", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x1117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_0_x191", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "563", "DependentChan" : "801", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_0_x191_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "651", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_3_x1_U0.local_C_V_U", "Parent" : "650"},
	{"ID" : "652", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_3_x1_U0.buf_data_split_V_U", "Parent" : "650"},
	{"ID" : "653", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_4_x1_U0", "Parent" : "431", "Child" : ["654", "655"],
		"CDFG" : "C_drain_IO_L1_out_4_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13317", "EstimateLatencyMax" : "13317",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x1117", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "650", "DependentChan" : "833", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x1117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x1116", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "656", "DependentChan" : "834", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x1116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_0_x190", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "551", "DependentChan" : "795", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_0_x190_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "654", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_4_x1_U0.local_C_V_U", "Parent" : "653"},
	{"ID" : "655", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_4_x1_U0.buf_data_split_V_U", "Parent" : "653"},
	{"ID" : "656", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_5_x1_U0", "Parent" : "431", "Child" : ["657", "658"],
		"CDFG" : "C_drain_IO_L1_out_5_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13829", "EstimateLatencyMax" : "13829",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x1116", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "653", "DependentChan" : "834", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x1116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x1115", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "659", "DependentChan" : "835", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x1115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_0_x189", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "539", "DependentChan" : "789", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_0_x189_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "657", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_5_x1_U0.local_C_V_U", "Parent" : "656"},
	{"ID" : "658", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_5_x1_U0.buf_data_split_V_U", "Parent" : "656"},
	{"ID" : "659", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_6_x1_U0", "Parent" : "431", "Child" : ["660", "661"],
		"CDFG" : "C_drain_IO_L1_out_6_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14341", "EstimateLatencyMax" : "14341",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x1115", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "656", "DependentChan" : "835", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x1115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x1114", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "662", "DependentChan" : "836", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x1114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_0_x188", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "527", "DependentChan" : "783", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_0_x188_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "660", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_6_x1_U0.local_C_V_U", "Parent" : "659"},
	{"ID" : "661", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_6_x1_U0.buf_data_split_V_U", "Parent" : "659"},
	{"ID" : "662", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_7_x1_U0", "Parent" : "431", "Child" : ["663", "664"],
		"CDFG" : "C_drain_IO_L1_out_7_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14853", "EstimateLatencyMax" : "14853",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x1114", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "659", "DependentChan" : "836", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x1114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x1113", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "665", "DependentChan" : "837", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x1113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_0_x187", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "515", "DependentChan" : "777", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_0_x187_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "663", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_7_x1_U0.local_C_V_U", "Parent" : "662"},
	{"ID" : "664", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_7_x1_U0.buf_data_split_V_U", "Parent" : "662"},
	{"ID" : "665", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_8_x1_U0", "Parent" : "431", "Child" : ["666", "667"],
		"CDFG" : "C_drain_IO_L1_out_8_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15365", "EstimateLatencyMax" : "15365",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x1113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "662", "DependentChan" : "837", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x1113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x1112", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "668", "DependentChan" : "838", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x1112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_0_x186", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "503", "DependentChan" : "771", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_0_x186_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "666", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_8_x1_U0.local_C_V_U", "Parent" : "665"},
	{"ID" : "667", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_8_x1_U0.buf_data_split_V_U", "Parent" : "665"},
	{"ID" : "668", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_9_x1_U0", "Parent" : "431", "Child" : ["669", "670"],
		"CDFG" : "C_drain_IO_L1_out_9_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15877", "EstimateLatencyMax" : "15877",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x1112", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "665", "DependentChan" : "838", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x1112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x1111", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "671", "DependentChan" : "839", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x1111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_0_x185", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "491", "DependentChan" : "765", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_0_x185_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "669", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_9_x1_U0.local_C_V_U", "Parent" : "668"},
	{"ID" : "670", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_9_x1_U0.buf_data_split_V_U", "Parent" : "668"},
	{"ID" : "671", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_10_x1_U0", "Parent" : "431", "Child" : ["672", "673"],
		"CDFG" : "C_drain_IO_L1_out_10_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16389", "EstimateLatencyMax" : "16389",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x1111", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "668", "DependentChan" : "839", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x1111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x1110", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "674", "DependentChan" : "840", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x1110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_0_x184", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "479", "DependentChan" : "759", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_0_x184_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "672", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_10_x1_U0.local_C_V_U", "Parent" : "671"},
	{"ID" : "673", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_10_x1_U0.buf_data_split_V_U", "Parent" : "671"},
	{"ID" : "674", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_11_x1_U0", "Parent" : "431", "Child" : ["675", "676"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x1110", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "671", "DependentChan" : "840", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x1110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x1109", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "717", "DependentChan" : "841", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_0_x183", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "467", "DependentChan" : "753", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_0_x183_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "675", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_11_x1_U0.local_C_V_U", "Parent" : "674"},
	{"ID" : "676", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_11_x1_U0.buf_data_split_V_U", "Parent" : "674"},
	{"ID" : "677", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_boundary_1_x1_U0", "Parent" : "431", "Child" : ["678", "679"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x1134", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "680", "DependentChan" : "842", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x1134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_1_x1108", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "617", "DependentChan" : "828", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_1_x1108_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "678", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_boundary_1_x1_U0.local_C_V_U", "Parent" : "677"},
	{"ID" : "679", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_boundary_1_x1_U0.buf_data_split_V_U", "Parent" : "677"},
	{"ID" : "680", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_12_x1_U0", "Parent" : "431", "Child" : ["681", "682"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x1134", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "677", "DependentChan" : "842", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x1134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x1133", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "683", "DependentChan" : "843", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x1133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_1_x1107", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "605", "DependentChan" : "822", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_1_x1107_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "681", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_12_x1_U0.local_C_V_U", "Parent" : "680"},
	{"ID" : "682", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_12_x1_U0.buf_data_split_V_U", "Parent" : "680"},
	{"ID" : "683", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_13_x1_U0", "Parent" : "431", "Child" : ["684", "685"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x1133", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "680", "DependentChan" : "843", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x1133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x1132", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "686", "DependentChan" : "844", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x1132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_1_x1106", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "593", "DependentChan" : "816", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_1_x1106_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "684", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_13_x1_U0.local_C_V_U", "Parent" : "683"},
	{"ID" : "685", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_13_x1_U0.buf_data_split_V_U", "Parent" : "683"},
	{"ID" : "686", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_14_x1_U0", "Parent" : "431", "Child" : ["687", "688"],
		"CDFG" : "C_drain_IO_L1_out_14_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5128", "EstimateLatencyMax" : "5128",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x1132", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "683", "DependentChan" : "844", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x1132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x1131", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "689", "DependentChan" : "845", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x1131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_1_x1105", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "581", "DependentChan" : "810", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_1_x1105_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "687", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_14_x1_U0.local_C_V_U", "Parent" : "686"},
	{"ID" : "688", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_14_x1_U0.buf_data_split_V_U", "Parent" : "686"},
	{"ID" : "689", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_15_x1_U0", "Parent" : "431", "Child" : ["690", "691"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x1131", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "686", "DependentChan" : "845", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x1131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x1130", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "692", "DependentChan" : "846", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x1130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_1_x1104", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "569", "DependentChan" : "804", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_1_x1104_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "690", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_15_x1_U0.local_C_V_U", "Parent" : "689"},
	{"ID" : "691", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_15_x1_U0.buf_data_split_V_U", "Parent" : "689"},
	{"ID" : "692", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_16_x1_U0", "Parent" : "431", "Child" : ["693", "694"],
		"CDFG" : "C_drain_IO_L1_out_16_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13317", "EstimateLatencyMax" : "13317",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x1130", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "689", "DependentChan" : "846", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x1130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "695", "DependentChan" : "847", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_1_x1103", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "557", "DependentChan" : "798", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_1_x1103_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "693", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_16_x1_U0.local_C_V_U", "Parent" : "692"},
	{"ID" : "694", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_16_x1_U0.buf_data_split_V_U", "Parent" : "692"},
	{"ID" : "695", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_17_x1_U0", "Parent" : "431", "Child" : ["696", "697"],
		"CDFG" : "C_drain_IO_L1_out_17_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13829", "EstimateLatencyMax" : "13829",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "692", "DependentChan" : "847", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "698", "DependentChan" : "848", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x1102", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "545", "DependentChan" : "792", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x1102_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "696", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_17_x1_U0.local_C_V_U", "Parent" : "695"},
	{"ID" : "697", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_17_x1_U0.buf_data_split_V_U", "Parent" : "695"},
	{"ID" : "698", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_18_x1_U0", "Parent" : "431", "Child" : ["699", "700"],
		"CDFG" : "C_drain_IO_L1_out_18_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14341", "EstimateLatencyMax" : "14341",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "695", "DependentChan" : "848", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x1127", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "701", "DependentChan" : "849", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x1127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_1_x1101", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "533", "DependentChan" : "786", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_1_x1101_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "699", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_18_x1_U0.local_C_V_U", "Parent" : "698"},
	{"ID" : "700", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_18_x1_U0.buf_data_split_V_U", "Parent" : "698"},
	{"ID" : "701", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_19_x1_U0", "Parent" : "431", "Child" : ["702", "703"],
		"CDFG" : "C_drain_IO_L1_out_19_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14853", "EstimateLatencyMax" : "14853",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x1127", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "698", "DependentChan" : "849", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x1127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x1126", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "704", "DependentChan" : "850", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x1126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_1_x1100", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "521", "DependentChan" : "780", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_1_x1100_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "702", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_19_x1_U0.local_C_V_U", "Parent" : "701"},
	{"ID" : "703", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_19_x1_U0.buf_data_split_V_U", "Parent" : "701"},
	{"ID" : "704", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_20_x1_U0", "Parent" : "431", "Child" : ["705", "706"],
		"CDFG" : "C_drain_IO_L1_out_20_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15365", "EstimateLatencyMax" : "15365",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x1126", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "701", "DependentChan" : "850", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x1126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x1125", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "707", "DependentChan" : "851", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x1125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_1_x199", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "509", "DependentChan" : "774", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_1_x199_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "705", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_20_x1_U0.local_C_V_U", "Parent" : "704"},
	{"ID" : "706", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_20_x1_U0.buf_data_split_V_U", "Parent" : "704"},
	{"ID" : "707", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_21_x1_U0", "Parent" : "431", "Child" : ["708", "709"],
		"CDFG" : "C_drain_IO_L1_out_21_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15877", "EstimateLatencyMax" : "15877",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x1125", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "704", "DependentChan" : "851", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x1125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x1124", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "710", "DependentChan" : "852", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x1124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_1_x198", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "497", "DependentChan" : "768", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_1_x198_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "708", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_21_x1_U0.local_C_V_U", "Parent" : "707"},
	{"ID" : "709", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_21_x1_U0.buf_data_split_V_U", "Parent" : "707"},
	{"ID" : "710", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_22_x1_U0", "Parent" : "431", "Child" : ["711", "712"],
		"CDFG" : "C_drain_IO_L1_out_22_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16389", "EstimateLatencyMax" : "16389",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x1124", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "707", "DependentChan" : "852", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x1124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x1123", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "713", "DependentChan" : "853", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x1123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_1_x197", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "485", "DependentChan" : "762", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_1_x197_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "711", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_22_x1_U0.local_C_V_U", "Parent" : "710"},
	{"ID" : "712", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_22_x1_U0.buf_data_split_V_U", "Parent" : "710"},
	{"ID" : "713", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_23_x1_U0", "Parent" : "431", "Child" : ["714", "715"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x1123", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "710", "DependentChan" : "853", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x1123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x1122", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "716", "DependentChan" : "854", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x1122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_1_x196", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "473", "DependentChan" : "756", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_1_x196_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "714", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_23_x1_U0.local_C_V_U", "Parent" : "713"},
	{"ID" : "715", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L1_out_23_x1_U0.buf_data_split_V_U", "Parent" : "713"},
	{"ID" : "716", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L2_out_boundary_x1_U0", "Parent" : "431",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x1136", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "717", "DependentChan" : "855", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x1136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x1122", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "713", "DependentChan" : "854", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x1122_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "717", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L2_out_x1_U0", "Parent" : "431",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x1136", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "716", "DependentChan" : "855", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x1136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x1135", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "718", "DependentChan" : "856", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x1135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x1109", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "674", "DependentChan" : "841", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "718", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_drain_IO_L3_out_x1_U0", "Parent" : "431",
		"CDFG" : "C_drain_IO_L3_out_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8263", "EstimateLatencyMax" : "8263",
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
			{"Name" : "fifo_C_drain_local_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "717", "DependentChan" : "856", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_local_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "C", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "433", "DependentChan" : "720", "DependentChanDepth" : "33", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "719", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_c1_U", "Parent" : "431"},
	{"ID" : "720", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.C_c_U", "Parent" : "431"},
	{"ID" : "721", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_A_IO_L2_in_0_x1_U", "Parent" : "431"},
	{"ID" : "722", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_A_IO_L2_in_1_x1_U", "Parent" : "431"},
	{"ID" : "723", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_0_0_x1_U", "Parent" : "431"},
	{"ID" : "724", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_A_IO_L2_in_2_x1_U", "Parent" : "431"},
	{"ID" : "725", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_1_0_x1_U", "Parent" : "431"},
	{"ID" : "726", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_A_IO_L2_in_3_x1_U", "Parent" : "431"},
	{"ID" : "727", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_2_0_x1_U", "Parent" : "431"},
	{"ID" : "728", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_A_IO_L2_in_4_x1_U", "Parent" : "431"},
	{"ID" : "729", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_3_0_x1_U", "Parent" : "431"},
	{"ID" : "730", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_A_IO_L2_in_5_x1_U", "Parent" : "431"},
	{"ID" : "731", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_4_0_x1_U", "Parent" : "431"},
	{"ID" : "732", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_A_IO_L2_in_6_x1_U", "Parent" : "431"},
	{"ID" : "733", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_5_0_x1_U", "Parent" : "431"},
	{"ID" : "734", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_A_IO_L2_in_7_x1_U", "Parent" : "431"},
	{"ID" : "735", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_6_0_x1_U", "Parent" : "431"},
	{"ID" : "736", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_A_IO_L2_in_8_x1_U", "Parent" : "431"},
	{"ID" : "737", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_7_0_x1_U", "Parent" : "431"},
	{"ID" : "738", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_A_IO_L2_in_9_x1_U", "Parent" : "431"},
	{"ID" : "739", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_8_0_x1_U", "Parent" : "431"},
	{"ID" : "740", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_A_IO_L2_in_10_x1_U", "Parent" : "431"},
	{"ID" : "741", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_9_0_x1_U", "Parent" : "431"},
	{"ID" : "742", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_A_IO_L2_in_11_x1_U", "Parent" : "431"},
	{"ID" : "743", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_10_0_x1_U", "Parent" : "431"},
	{"ID" : "744", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_A_IO_L2_in_12_x1_U", "Parent" : "431"},
	{"ID" : "745", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_11_0_x1_U", "Parent" : "431"},
	{"ID" : "746", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_12_0_x1_U", "Parent" : "431"},
	{"ID" : "747", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_B_IO_L2_in_0_x1_U", "Parent" : "431"},
	{"ID" : "748", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_B_IO_L2_in_1_x1_U", "Parent" : "431"},
	{"ID" : "749", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_0_0_x1_U", "Parent" : "431"},
	{"ID" : "750", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_0_1_x1_U", "Parent" : "431"},
	{"ID" : "751", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_0_1_x1_U", "Parent" : "431"},
	{"ID" : "752", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_1_0_x1_U", "Parent" : "431"},
	{"ID" : "753", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_0_0_x1_U", "Parent" : "431"},
	{"ID" : "754", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_0_2_x1_U", "Parent" : "431"},
	{"ID" : "755", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_1_1_x1_U", "Parent" : "431"},
	{"ID" : "756", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_0_1_x1_U", "Parent" : "431"},
	{"ID" : "757", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_1_1_x1_U", "Parent" : "431"},
	{"ID" : "758", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_2_0_x1_U", "Parent" : "431"},
	{"ID" : "759", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_1_0_x1_U", "Parent" : "431"},
	{"ID" : "760", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_1_2_x1_U", "Parent" : "431"},
	{"ID" : "761", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_2_1_x1_U", "Parent" : "431"},
	{"ID" : "762", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_1_1_x1_U", "Parent" : "431"},
	{"ID" : "763", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_2_1_x1_U", "Parent" : "431"},
	{"ID" : "764", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_3_0_x1_U", "Parent" : "431"},
	{"ID" : "765", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_2_0_x1_U", "Parent" : "431"},
	{"ID" : "766", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_2_2_x1_U", "Parent" : "431"},
	{"ID" : "767", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_3_1_x1_U", "Parent" : "431"},
	{"ID" : "768", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_2_1_x1_U", "Parent" : "431"},
	{"ID" : "769", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_3_1_x1_U", "Parent" : "431"},
	{"ID" : "770", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_4_0_x1_U", "Parent" : "431"},
	{"ID" : "771", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_3_0_x1_U", "Parent" : "431"},
	{"ID" : "772", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_3_2_x1_U", "Parent" : "431"},
	{"ID" : "773", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_4_1_x1_U", "Parent" : "431"},
	{"ID" : "774", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_3_1_x1_U", "Parent" : "431"},
	{"ID" : "775", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_4_1_x1_U", "Parent" : "431"},
	{"ID" : "776", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_5_0_x1_U", "Parent" : "431"},
	{"ID" : "777", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_4_0_x1_U", "Parent" : "431"},
	{"ID" : "778", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_4_2_x1_U", "Parent" : "431"},
	{"ID" : "779", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_5_1_x1_U", "Parent" : "431"},
	{"ID" : "780", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_4_1_x1_U", "Parent" : "431"},
	{"ID" : "781", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_5_1_x1_U", "Parent" : "431"},
	{"ID" : "782", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_6_0_x1_U", "Parent" : "431"},
	{"ID" : "783", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_5_0_x1_U", "Parent" : "431"},
	{"ID" : "784", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_5_2_x1_U", "Parent" : "431"},
	{"ID" : "785", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_6_1_x1_U", "Parent" : "431"},
	{"ID" : "786", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_5_1_x1_U", "Parent" : "431"},
	{"ID" : "787", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_6_1_x1_U", "Parent" : "431"},
	{"ID" : "788", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_7_0_x1_U", "Parent" : "431"},
	{"ID" : "789", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_6_0_x1_U", "Parent" : "431"},
	{"ID" : "790", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_6_2_x1_U", "Parent" : "431"},
	{"ID" : "791", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_7_1_x1_U", "Parent" : "431"},
	{"ID" : "792", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_6_1_x1_U", "Parent" : "431"},
	{"ID" : "793", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_7_1_x1_U", "Parent" : "431"},
	{"ID" : "794", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_8_0_x1_U", "Parent" : "431"},
	{"ID" : "795", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_7_0_x1_U", "Parent" : "431"},
	{"ID" : "796", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_7_2_x1_U", "Parent" : "431"},
	{"ID" : "797", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_8_1_x1_U", "Parent" : "431"},
	{"ID" : "798", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_7_1_x1_U", "Parent" : "431"},
	{"ID" : "799", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_8_1_x1_U", "Parent" : "431"},
	{"ID" : "800", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_9_0_x1_U", "Parent" : "431"},
	{"ID" : "801", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_8_0_x1_U", "Parent" : "431"},
	{"ID" : "802", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_8_2_x1_U", "Parent" : "431"},
	{"ID" : "803", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_9_1_x1_U", "Parent" : "431"},
	{"ID" : "804", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_8_1_x1_U", "Parent" : "431"},
	{"ID" : "805", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_9_1_x1_U", "Parent" : "431"},
	{"ID" : "806", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_10_0_x1_U", "Parent" : "431"},
	{"ID" : "807", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_9_0_x1_U", "Parent" : "431"},
	{"ID" : "808", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_9_2_x1_U", "Parent" : "431"},
	{"ID" : "809", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_10_1_x1_U", "Parent" : "431"},
	{"ID" : "810", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_9_1_x1_U", "Parent" : "431"},
	{"ID" : "811", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_10_1_x1_U", "Parent" : "431"},
	{"ID" : "812", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_11_0_x1_U", "Parent" : "431"},
	{"ID" : "813", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_10_0_x1_U", "Parent" : "431"},
	{"ID" : "814", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_10_2_x1_U", "Parent" : "431"},
	{"ID" : "815", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_11_1_x1_U", "Parent" : "431"},
	{"ID" : "816", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_10_1_x1_U", "Parent" : "431"},
	{"ID" : "817", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_11_1_x1_U", "Parent" : "431"},
	{"ID" : "818", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_12_0_x1_U", "Parent" : "431"},
	{"ID" : "819", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_11_0_x1_U", "Parent" : "431"},
	{"ID" : "820", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_11_2_x1_U", "Parent" : "431"},
	{"ID" : "821", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_12_1_x1_U", "Parent" : "431"},
	{"ID" : "822", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_11_1_x1_U", "Parent" : "431"},
	{"ID" : "823", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_12_1_x1_U", "Parent" : "431"},
	{"ID" : "824", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_13_0_x1_U", "Parent" : "431"},
	{"ID" : "825", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_12_0_x1_U", "Parent" : "431"},
	{"ID" : "826", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_A_PE_12_2_x1_U", "Parent" : "431"},
	{"ID" : "827", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_B_PE_13_1_x1_U", "Parent" : "431"},
	{"ID" : "828", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_PE_12_1_x1_U", "Parent" : "431"},
	{"ID" : "829", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_0_12_x1_U", "Parent" : "431"},
	{"ID" : "830", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_0_11_x1_U", "Parent" : "431"},
	{"ID" : "831", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_0_10_x1_U", "Parent" : "431"},
	{"ID" : "832", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_0_9_x1_U", "Parent" : "431"},
	{"ID" : "833", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_0_8_x1_U", "Parent" : "431"},
	{"ID" : "834", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_0_7_x1_U", "Parent" : "431"},
	{"ID" : "835", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_0_6_x1_U", "Parent" : "431"},
	{"ID" : "836", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_0_5_x1_U", "Parent" : "431"},
	{"ID" : "837", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_0_4_x1_U", "Parent" : "431"},
	{"ID" : "838", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_0_3_x1_U", "Parent" : "431"},
	{"ID" : "839", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_0_2_x1_U", "Parent" : "431"},
	{"ID" : "840", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_0_1_x1_U", "Parent" : "431"},
	{"ID" : "841", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_0_0_x1_U", "Parent" : "431"},
	{"ID" : "842", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_1_12_x1_U", "Parent" : "431"},
	{"ID" : "843", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_1_11_x1_U", "Parent" : "431"},
	{"ID" : "844", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_1_10_x1_U", "Parent" : "431"},
	{"ID" : "845", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_1_9_x1_U", "Parent" : "431"},
	{"ID" : "846", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_1_8_x1_U", "Parent" : "431"},
	{"ID" : "847", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_1_7_x1_U", "Parent" : "431"},
	{"ID" : "848", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_1_6_x1_U", "Parent" : "431"},
	{"ID" : "849", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_1_5_x1_U", "Parent" : "431"},
	{"ID" : "850", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_1_4_x1_U", "Parent" : "431"},
	{"ID" : "851", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_1_3_x1_U", "Parent" : "431"},
	{"ID" : "852", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_1_2_x1_U", "Parent" : "431"},
	{"ID" : "853", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_1_1_x1_U", "Parent" : "431"},
	{"ID" : "854", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L1_out_1_0_x1_U", "Parent" : "431"},
	{"ID" : "855", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L2_out_1_x1_U", "Parent" : "431"},
	{"ID" : "856", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_106.fifo_C_drain_C_drain_IO_L2_out_0_x1_U", "Parent" : "431"},
	{"ID" : "857", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_2mm_fu_114", "Parent" : "0", "Child" : ["858", "859", "860", "861", "862", "863", "864", "865", "866"],
		"CDFG" : "nondf_kernel_2mm",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "468228", "EstimateLatencyMax" : "468228",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "xout", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "xin", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "858", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_2mm_fu_114.tmp_V_U", "Parent" : "857"},
	{"ID" : "859", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_2mm_fu_114.A_V_U", "Parent" : "857"},
	{"ID" : "860", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_2mm_fu_114.B_V_U", "Parent" : "857"},
	{"ID" : "861", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_2mm_fu_114.C_V_U", "Parent" : "857"},
	{"ID" : "862", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_2mm_fu_114.D_input_V_U", "Parent" : "857"},
	{"ID" : "863", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_2mm_fu_114.D_output_V_U", "Parent" : "857"},
	{"ID" : "864", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_2mm_fu_114.mul_512s_512s_512_5_1_U539", "Parent" : "857"},
	{"ID" : "865", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_2mm_fu_114.add_512ns_512ns_512_2_1_U540", "Parent" : "857"},
	{"ID" : "866", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_2mm_fu_114.mul_32s_32s_32_2_1_U541", "Parent" : "857"}]}


set ArgLastReadFirstWriteLatency {
	top {
		gmem_A {Type I LastRead 72 FirstWrite -1}
		gmem_B {Type I LastRead 72 FirstWrite -1}
		gmem_C {Type O LastRead 3 FirstWrite 11}
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}
		C {Type I LastRead 0 FirstWrite -1}}
	kernel3_x0 {
		gmem_A {Type I LastRead 72 FirstWrite -1}
		gmem_B {Type I LastRead 72 FirstWrite -1}
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 9}}
	kernel3_x0_entry38 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}
		A_out {Type O LastRead -1 FirstWrite 0}
		B_out {Type O LastRead -1 FirstWrite 0}}
	A_IO_L3_in_x0 {
		gmem_A {Type I LastRead 72 FirstWrite -1}
		fifo_A_local_out {Type O LastRead -1 FirstWrite 73}
		A {Type I LastRead 0 FirstWrite -1}}
	A_IO_L2_in_0_x0 {
		fifo_A_A_IO_L2_in_0_x01 {Type I LastRead 2 FirstWrite -1}
		fifo_A_A_IO_L2_in_1_x02 {Type O LastRead -1 FirstWrite 2}
		fifo_A_PE_0_0_x016 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_1_x0 {
		fifo_A_A_IO_L2_in_1_x02 {Type I LastRead 2 FirstWrite -1}
		fifo_A_A_IO_L2_in_2_x03 {Type O LastRead -1 FirstWrite 2}
		fifo_A_PE_1_0_x019 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_2_x0 {
		fifo_A_A_IO_L2_in_2_x03 {Type I LastRead 2 FirstWrite -1}
		fifo_A_A_IO_L2_in_3_x04 {Type O LastRead -1 FirstWrite 2}
		fifo_A_PE_2_0_x022 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_3_x0 {
		fifo_A_A_IO_L2_in_3_x04 {Type I LastRead 2 FirstWrite -1}
		fifo_A_A_IO_L2_in_4_x05 {Type O LastRead -1 FirstWrite 2}
		fifo_A_PE_3_0_x025 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_4_x0 {
		fifo_A_A_IO_L2_in_4_x05 {Type I LastRead 2 FirstWrite -1}
		fifo_A_A_IO_L2_in_5_x06 {Type O LastRead -1 FirstWrite 2}
		fifo_A_PE_4_0_x028 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_5_x0 {
		fifo_A_A_IO_L2_in_5_x06 {Type I LastRead 2 FirstWrite -1}
		fifo_A_A_IO_L2_in_6_x07 {Type O LastRead -1 FirstWrite 2}
		fifo_A_PE_5_0_x031 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_6_x0 {
		fifo_A_A_IO_L2_in_6_x07 {Type I LastRead 2 FirstWrite -1}
		fifo_A_A_IO_L2_in_7_x08 {Type O LastRead -1 FirstWrite 2}
		fifo_A_PE_6_0_x034 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_7_x0 {
		fifo_A_A_IO_L2_in_7_x08 {Type I LastRead 2 FirstWrite -1}
		fifo_A_A_IO_L2_in_8_x09 {Type O LastRead -1 FirstWrite 2}
		fifo_A_PE_7_0_x037 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_8_x0 {
		fifo_A_A_IO_L2_in_8_x09 {Type I LastRead 2 FirstWrite -1}
		fifo_A_A_IO_L2_in_9_x010 {Type O LastRead -1 FirstWrite 2}
		fifo_A_PE_8_0_x040 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_9_x0 {
		fifo_A_A_IO_L2_in_9_x010 {Type I LastRead 2 FirstWrite -1}
		fifo_A_A_IO_L2_in_10_x011 {Type O LastRead -1 FirstWrite 2}
		fifo_A_PE_9_0_x043 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_10_x0 {
		fifo_A_A_IO_L2_in_10_x011 {Type I LastRead 2 FirstWrite -1}
		fifo_A_A_IO_L2_in_11_x012 {Type O LastRead -1 FirstWrite 2}
		fifo_A_PE_10_0_x046 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_11_x0 {
		fifo_A_A_IO_L2_in_11_x012 {Type I LastRead 2 FirstWrite -1}
		fifo_A_A_IO_L2_in_12_x013 {Type O LastRead -1 FirstWrite 2}
		fifo_A_PE_11_0_x049 {Type O LastRead -1 FirstWrite 4}}
	A_IO_L2_in_boundary_x0 {
		fifo_A_A_IO_L2_in_12_x013 {Type I LastRead 2 FirstWrite -1}
		fifo_A_PE_12_0_x052 {Type O LastRead -1 FirstWrite 4}}
	B_IO_L3_in_x0 {
		gmem_B {Type I LastRead 72 FirstWrite -1}
		fifo_B_local_out {Type O LastRead -1 FirstWrite 74}
		B {Type I LastRead 0 FirstWrite -1}}
	B_IO_L2_in_x0 {
		fifo_B_B_IO_L2_in_0_x014 {Type I LastRead 2 FirstWrite -1}
		fifo_B_B_IO_L2_in_1_x015 {Type O LastRead -1 FirstWrite 2}
		fifo_B_PE_0_0_x055 {Type O LastRead -1 FirstWrite 5}}
	B_IO_L2_in_boundary_x0 {
		fifo_B_B_IO_L2_in_1_x015 {Type I LastRead 2 FirstWrite -1}
		fifo_B_PE_0_1_x069 {Type O LastRead -1 FirstWrite 5}}
	PE_wrapper_0_0_x0 {
		fifo_A_PE_0_0_x016 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_0_1_x017 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_0_0_x055 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_1_0_x056 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_0_0_x083 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_0_1_x0 {
		fifo_A_PE_0_1_x017 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_0_2_x018 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_0_1_x069 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_1_1_x070 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_0_1_x096 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_1_0_x0 {
		fifo_A_PE_1_0_x019 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_1_1_x020 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_1_0_x056 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_2_0_x057 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_1_0_x084 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_1_1_x0 {
		fifo_A_PE_1_1_x020 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_1_2_x021 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_1_1_x070 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_2_1_x071 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_1_1_x097 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_2_0_x0 {
		fifo_A_PE_2_0_x022 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_2_1_x023 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_2_0_x057 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_3_0_x058 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_2_0_x085 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_2_1_x0 {
		fifo_A_PE_2_1_x023 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_2_2_x024 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_2_1_x071 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_3_1_x072 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_2_1_x098 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_3_0_x0 {
		fifo_A_PE_3_0_x025 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_3_1_x026 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_3_0_x058 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_4_0_x059 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_3_0_x086 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_3_1_x0 {
		fifo_A_PE_3_1_x026 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_3_2_x027 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_3_1_x072 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_4_1_x073 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_3_1_x099 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_4_0_x0 {
		fifo_A_PE_4_0_x028 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_4_1_x029 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_4_0_x059 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_5_0_x060 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_4_0_x087 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_4_1_x0 {
		fifo_A_PE_4_1_x029 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_4_2_x030 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_4_1_x073 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_5_1_x074 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_4_1_x0100 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_5_0_x0 {
		fifo_A_PE_5_0_x031 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_5_1_x032 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_5_0_x060 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_6_0_x061 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_5_0_x088 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_5_1_x0 {
		fifo_A_PE_5_1_x032 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_5_2_x033 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_5_1_x074 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_6_1_x075 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_5_1_x0101 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_6_0_x0 {
		fifo_A_PE_6_0_x034 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_6_1_x035 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_6_0_x061 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_7_0_x062 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_6_0_x089 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_6_1_x0 {
		fifo_A_PE_6_1_x035 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_6_2_x036 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_6_1_x075 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_7_1_x076 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_6_1_x0102 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_7_0_x0 {
		fifo_A_PE_7_0_x037 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_7_1_x038 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_7_0_x062 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_8_0_x063 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_7_0_x090 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_7_1_x0 {
		fifo_A_PE_7_1_x038 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_7_2_x039 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_7_1_x076 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_8_1_x077 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_7_1_x0103 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_8_0_x0 {
		fifo_A_PE_8_0_x040 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_8_1_x041 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_8_0_x063 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_9_0_x064 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_8_0_x091 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_8_1_x0 {
		fifo_A_PE_8_1_x041 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_8_2_x042 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_8_1_x077 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_9_1_x078 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_8_1_x0104 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_9_0_x0 {
		fifo_A_PE_9_0_x043 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_9_1_x044 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_9_0_x064 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_10_0_x065 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_9_0_x092 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_9_1_x0 {
		fifo_A_PE_9_1_x044 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_9_2_x045 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_9_1_x078 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_10_1_x079 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_9_1_x0105 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_10_0_x0 {
		fifo_A_PE_10_0_x046 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_10_1_x047 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_10_0_x065 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_11_0_x066 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_10_0_x093 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_10_1_x0 {
		fifo_A_PE_10_1_x047 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_10_2_x048 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_10_1_x079 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_11_1_x080 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_10_1_x0106 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_11_0_x0 {
		fifo_A_PE_11_0_x049 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_11_1_x050 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_11_0_x066 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_12_0_x067 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_11_0_x094 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_11_1_x0 {
		fifo_A_PE_11_1_x050 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_11_2_x051 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_11_1_x080 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_12_1_x081 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_11_1_x0107 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_12_0_x0 {
		fifo_A_PE_12_0_x052 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_12_1_x053 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_12_0_x067 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_13_0_x068 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_12_0_x095 {Type O LastRead -1 FirstWrite 65}}
	PE_wrapper_12_1_x0 {
		fifo_A_PE_12_1_x053 {Type I LastRead 4 FirstWrite -1}
		fifo_A_PE_12_2_x054 {Type O LastRead -1 FirstWrite 4}
		fifo_B_PE_12_1_x081 {Type I LastRead 4 FirstWrite -1}
		fifo_B_PE_13_1_x082 {Type O LastRead -1 FirstWrite 4}
		fifo_C_drain_PE_12_1_x0108 {Type O LastRead -1 FirstWrite 65}}
	A_PE_dummy_0_x0 {
		fifo_A_PE_0_2_x018 {Type I LastRead 2 FirstWrite -1}}
	A_PE_dummy_1_x0 {
		fifo_A_PE_1_2_x021 {Type I LastRead 2 FirstWrite -1}}
	A_PE_dummy_2_x0 {
		fifo_A_PE_2_2_x024 {Type I LastRead 2 FirstWrite -1}}
	A_PE_dummy_3_x0 {
		fifo_A_PE_3_2_x027 {Type I LastRead 2 FirstWrite -1}}
	A_PE_dummy_4_x0 {
		fifo_A_PE_4_2_x030 {Type I LastRead 2 FirstWrite -1}}
	A_PE_dummy_5_x0 {
		fifo_A_PE_5_2_x033 {Type I LastRead 2 FirstWrite -1}}
	A_PE_dummy_6_x0 {
		fifo_A_PE_6_2_x036 {Type I LastRead 2 FirstWrite -1}}
	A_PE_dummy_7_x0 {
		fifo_A_PE_7_2_x039 {Type I LastRead 2 FirstWrite -1}}
	A_PE_dummy_8_x0 {
		fifo_A_PE_8_2_x042 {Type I LastRead 2 FirstWrite -1}}
	A_PE_dummy_9_x0 {
		fifo_A_PE_9_2_x045 {Type I LastRead 2 FirstWrite -1}}
	A_PE_dummy_10_x0 {
		fifo_A_PE_10_2_x048 {Type I LastRead 2 FirstWrite -1}}
	A_PE_dummy_11_x0 {
		fifo_A_PE_11_2_x051 {Type I LastRead 2 FirstWrite -1}}
	A_PE_dummy_12_x0 {
		fifo_A_PE_12_2_x054 {Type I LastRead 2 FirstWrite -1}}
	B_PE_dummy_0_x0 {
		fifo_B_PE_13_0_x068 {Type I LastRead 3 FirstWrite -1}}
	B_PE_dummy_1_x0 {
		fifo_B_PE_13_1_x082 {Type I LastRead 3 FirstWrite -1}}
	C_drain_IO_L1_out_boundary_0_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_12_x0121 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_12_0_x095 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_0_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_12_x0121 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_11_x0120 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_11_0_x094 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_1_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_11_x0120 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_10_x0119 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_10_0_x093 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_2_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_10_x0119 {Type I LastRead 4 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_9_x0118 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_9_0_x092 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_3_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_9_x0118 {Type I LastRead 4 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_8_x0117 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_8_0_x091 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_4_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_8_x0117 {Type I LastRead 4 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_7_x0116 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_7_0_x090 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_5_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_7_x0116 {Type I LastRead 4 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_6_x0115 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_6_0_x089 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_6_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_6_x0115 {Type I LastRead 4 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_5_x0114 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_5_0_x088 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_7_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_5_x0114 {Type I LastRead 4 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_4_x0113 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_4_0_x087 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_8_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_4_x0113 {Type I LastRead 4 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_3_x0112 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_3_0_x086 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_9_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_3_x0112 {Type I LastRead 4 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_2_x0111 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_2_0_x085 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_10_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_2_x0111 {Type I LastRead 4 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_1_x0110 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_1_0_x084 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_11_x0 {
		fifo_C_drain_C_drain_IO_L1_out_0_1_x0110 {Type I LastRead 4 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_0_x0109 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_0_0_x083 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_boundary_1_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_12_x0134 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_12_1_x0108 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_12_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_12_x0134 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_11_x0133 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_11_1_x0107 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_13_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_11_x0133 {Type I LastRead 5 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_10_x0132 {Type O LastRead -1 FirstWrite 6}
		fifo_C_drain_PE_10_1_x0106 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_14_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_10_x0132 {Type I LastRead 4 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_9_x0131 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_9_1_x0105 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_15_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_9_x0131 {Type I LastRead 4 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_8_x0130 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_8_1_x0104 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_16_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_8_x0130 {Type I LastRead 4 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_7_x0129 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_7_1_x0103 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_17_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_7_x0129 {Type I LastRead 4 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_6_x0128 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_6_1_x0102 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_18_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_6_x0128 {Type I LastRead 4 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_5_x0127 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_5_1_x0101 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_19_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_5_x0127 {Type I LastRead 4 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_4_x0126 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_4_1_x0100 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_20_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_4_x0126 {Type I LastRead 4 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_3_x0125 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_3_1_x099 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_21_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_3_x0125 {Type I LastRead 4 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_2_x0124 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_2_1_x098 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_22_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_2_x0124 {Type I LastRead 4 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_1_x0123 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_1_1_x097 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_23_x0 {
		fifo_C_drain_C_drain_IO_L1_out_1_1_x0123 {Type I LastRead 4 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_0_x0122 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_0_1_x096 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L2_out_boundary_x0 {
		fifo_C_drain_C_drain_IO_L2_out_1_x0136 {Type O LastRead -1 FirstWrite 2}
		fifo_C_drain_C_drain_IO_L1_out_1_0_x0122 {Type I LastRead 2 FirstWrite -1}}
	C_drain_IO_L2_out_x0 {
		fifo_C_drain_C_drain_IO_L2_out_1_x0136 {Type I LastRead 2 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L2_out_0_x0135 {Type O LastRead -1 FirstWrite 3}
		fifo_C_drain_C_drain_IO_L1_out_0_0_x0109 {Type I LastRead 2 FirstWrite -1}}
	C_drain_IO_L3_out_x0 {
		fifo_C_drain_C_drain_IO_L2_out_0_x0135 {Type I LastRead 9 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 9}}
	kernel3_x1 {
		gmem_C {Type O LastRead 3 FirstWrite 11}
		B {Type I LastRead 1 FirstWrite -1}
		C {Type I LastRead 62 FirstWrite -1}}
	kernel3_x1_entry31 {
		C {Type I LastRead 0 FirstWrite -1}
		C_out {Type O LastRead -1 FirstWrite 0}}
	kernel3_x1_entry42 {
		C {Type I LastRead 0 FirstWrite -1}
		C_out {Type O LastRead -1 FirstWrite 0}}
	A_IO_L3_in_x1 {
		fifo_A_A_IO_L2_in_0_x11 {Type O LastRead -1 FirstWrite 2}
		A {Type I LastRead 1 FirstWrite -1}}
	A_IO_L2_in_0_x1 {
		fifo_A_A_IO_L2_in_0_x11 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_1_x12 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_0_0_x116 {Type O LastRead -1 FirstWrite 3}}
	A_IO_L2_in_1_x1 {
		fifo_A_A_IO_L2_in_1_x12 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_2_x13 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_1_0_x119 {Type O LastRead -1 FirstWrite 3}}
	A_IO_L2_in_2_x1 {
		fifo_A_A_IO_L2_in_2_x13 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_3_x14 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_2_0_x122 {Type O LastRead -1 FirstWrite 3}}
	A_IO_L2_in_3_x1 {
		fifo_A_A_IO_L2_in_3_x14 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_4_x15 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_3_0_x125 {Type O LastRead -1 FirstWrite 3}}
	A_IO_L2_in_4_x1 {
		fifo_A_A_IO_L2_in_4_x15 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_5_x16 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_4_0_x128 {Type O LastRead -1 FirstWrite 3}}
	A_IO_L2_in_5_x1 {
		fifo_A_A_IO_L2_in_5_x16 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_6_x17 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_5_0_x131 {Type O LastRead -1 FirstWrite 3}}
	A_IO_L2_in_6_x1 {
		fifo_A_A_IO_L2_in_6_x17 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_7_x18 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_6_0_x134 {Type O LastRead -1 FirstWrite 3}}
	A_IO_L2_in_7_x1 {
		fifo_A_A_IO_L2_in_7_x18 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_8_x19 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_7_0_x137 {Type O LastRead -1 FirstWrite 3}}
	A_IO_L2_in_8_x1 {
		fifo_A_A_IO_L2_in_8_x19 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_9_x110 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_8_0_x140 {Type O LastRead -1 FirstWrite 3}}
	A_IO_L2_in_9_x1 {
		fifo_A_A_IO_L2_in_9_x110 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_10_x111 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_9_0_x143 {Type O LastRead -1 FirstWrite 3}}
	A_IO_L2_in_10_x1 {
		fifo_A_A_IO_L2_in_10_x111 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_11_x112 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_10_0_x146 {Type O LastRead -1 FirstWrite 3}}
	A_IO_L2_in_11_x1 {
		fifo_A_A_IO_L2_in_11_x112 {Type I LastRead 4 FirstWrite -1}
		fifo_A_A_IO_L2_in_12_x113 {Type O LastRead -1 FirstWrite 4}
		fifo_A_PE_11_0_x149 {Type O LastRead -1 FirstWrite 3}}
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
		fifo_C_drain_C_drain_IO_L1_out_0_8_x1117 {Type I LastRead 4 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_7_x1116 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_7_0_x190 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_5_x1 {
		fifo_C_drain_C_drain_IO_L1_out_0_7_x1116 {Type I LastRead 4 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_6_x1115 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_6_0_x189 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_6_x1 {
		fifo_C_drain_C_drain_IO_L1_out_0_6_x1115 {Type I LastRead 4 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_5_x1114 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_5_0_x188 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_7_x1 {
		fifo_C_drain_C_drain_IO_L1_out_0_5_x1114 {Type I LastRead 4 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_4_x1113 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_4_0_x187 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_8_x1 {
		fifo_C_drain_C_drain_IO_L1_out_0_4_x1113 {Type I LastRead 4 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_3_x1112 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_3_0_x186 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_9_x1 {
		fifo_C_drain_C_drain_IO_L1_out_0_3_x1112 {Type I LastRead 4 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_2_x1111 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_2_0_x185 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_10_x1 {
		fifo_C_drain_C_drain_IO_L1_out_0_2_x1111 {Type I LastRead 4 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_1_x1110 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_1_0_x184 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_11_x1 {
		fifo_C_drain_C_drain_IO_L1_out_0_1_x1110 {Type I LastRead 4 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_0_x1109 {Type O LastRead -1 FirstWrite 5}
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
		fifo_C_drain_C_drain_IO_L1_out_1_8_x1130 {Type I LastRead 4 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_7_x1129 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_7_1_x1103 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_17_x1 {
		fifo_C_drain_C_drain_IO_L1_out_1_7_x1129 {Type I LastRead 4 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_6_x1128 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_6_1_x1102 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_18_x1 {
		fifo_C_drain_C_drain_IO_L1_out_1_6_x1128 {Type I LastRead 4 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_5_x1127 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_5_1_x1101 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_19_x1 {
		fifo_C_drain_C_drain_IO_L1_out_1_5_x1127 {Type I LastRead 4 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_4_x1126 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_4_1_x1100 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_20_x1 {
		fifo_C_drain_C_drain_IO_L1_out_1_4_x1126 {Type I LastRead 4 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_3_x1125 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_3_1_x199 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_21_x1 {
		fifo_C_drain_C_drain_IO_L1_out_1_3_x1125 {Type I LastRead 4 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_2_x1124 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_2_1_x198 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_22_x1 {
		fifo_C_drain_C_drain_IO_L1_out_1_2_x1124 {Type I LastRead 4 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_1_x1123 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_1_1_x197 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L1_out_23_x1 {
		fifo_C_drain_C_drain_IO_L1_out_1_1_x1123 {Type I LastRead 4 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_1_0_x1122 {Type O LastRead -1 FirstWrite 5}
		fifo_C_drain_PE_0_1_x196 {Type I LastRead 4 FirstWrite -1}}
	C_drain_IO_L2_out_boundary_x1 {
		fifo_C_drain_C_drain_IO_L2_out_1_x1136 {Type O LastRead -1 FirstWrite 2}
		fifo_C_drain_C_drain_IO_L1_out_1_0_x1122 {Type I LastRead 2 FirstWrite -1}}
	C_drain_IO_L2_out_x1 {
		fifo_C_drain_C_drain_IO_L2_out_1_x1136 {Type I LastRead 2 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L2_out_0_x1135 {Type O LastRead -1 FirstWrite 3}
		fifo_C_drain_C_drain_IO_L1_out_0_0_x1109 {Type I LastRead 2 FirstWrite -1}}
	C_drain_IO_L3_out_x1 {
		gmem_C {Type O LastRead 3 FirstWrite 11}
		fifo_C_drain_local_in {Type I LastRead 10 FirstWrite -1}
		C {Type I LastRead 0 FirstWrite -1}}
	nondf_kernel_2mm {
		xout {Type I LastRead 2 FirstWrite -1}
		xin {Type O LastRead -1 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "745245", "Max" : "745245"}
	, {"Name" : "Interval", "Min" : "745246", "Max" : "745246"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem_A { m_axi {  { m_axi_gmem_A_AWVALID VALID 1 1 }  { m_axi_gmem_A_AWREADY READY 0 1 }  { m_axi_gmem_A_AWADDR ADDR 1 64 }  { m_axi_gmem_A_AWID ID 1 1 }  { m_axi_gmem_A_AWLEN LEN 1 8 }  { m_axi_gmem_A_AWSIZE SIZE 1 3 }  { m_axi_gmem_A_AWBURST BURST 1 2 }  { m_axi_gmem_A_AWLOCK LOCK 1 2 }  { m_axi_gmem_A_AWCACHE CACHE 1 4 }  { m_axi_gmem_A_AWPROT PROT 1 3 }  { m_axi_gmem_A_AWQOS QOS 1 4 }  { m_axi_gmem_A_AWREGION REGION 1 4 }  { m_axi_gmem_A_AWUSER USER 1 1 }  { m_axi_gmem_A_WVALID VALID 1 1 }  { m_axi_gmem_A_WREADY READY 0 1 }  { m_axi_gmem_A_WDATA DATA 1 512 }  { m_axi_gmem_A_WSTRB STRB 1 64 }  { m_axi_gmem_A_WLAST LAST 1 1 }  { m_axi_gmem_A_WID ID 1 1 }  { m_axi_gmem_A_WUSER USER 1 1 }  { m_axi_gmem_A_ARVALID VALID 1 1 }  { m_axi_gmem_A_ARREADY READY 0 1 }  { m_axi_gmem_A_ARADDR ADDR 1 64 }  { m_axi_gmem_A_ARID ID 1 1 }  { m_axi_gmem_A_ARLEN LEN 1 8 }  { m_axi_gmem_A_ARSIZE SIZE 1 3 }  { m_axi_gmem_A_ARBURST BURST 1 2 }  { m_axi_gmem_A_ARLOCK LOCK 1 2 }  { m_axi_gmem_A_ARCACHE CACHE 1 4 }  { m_axi_gmem_A_ARPROT PROT 1 3 }  { m_axi_gmem_A_ARQOS QOS 1 4 }  { m_axi_gmem_A_ARREGION REGION 1 4 }  { m_axi_gmem_A_ARUSER USER 1 1 }  { m_axi_gmem_A_RVALID VALID 0 1 }  { m_axi_gmem_A_RREADY READY 1 1 }  { m_axi_gmem_A_RDATA DATA 0 512 }  { m_axi_gmem_A_RLAST LAST 0 1 }  { m_axi_gmem_A_RID ID 0 1 }  { m_axi_gmem_A_RUSER USER 0 1 }  { m_axi_gmem_A_RRESP RESP 0 2 }  { m_axi_gmem_A_BVALID VALID 0 1 }  { m_axi_gmem_A_BREADY READY 1 1 }  { m_axi_gmem_A_BRESP RESP 0 2 }  { m_axi_gmem_A_BID ID 0 1 }  { m_axi_gmem_A_BUSER USER 0 1 } } }
	gmem_B { m_axi {  { m_axi_gmem_B_AWVALID VALID 1 1 }  { m_axi_gmem_B_AWREADY READY 0 1 }  { m_axi_gmem_B_AWADDR ADDR 1 64 }  { m_axi_gmem_B_AWID ID 1 1 }  { m_axi_gmem_B_AWLEN LEN 1 8 }  { m_axi_gmem_B_AWSIZE SIZE 1 3 }  { m_axi_gmem_B_AWBURST BURST 1 2 }  { m_axi_gmem_B_AWLOCK LOCK 1 2 }  { m_axi_gmem_B_AWCACHE CACHE 1 4 }  { m_axi_gmem_B_AWPROT PROT 1 3 }  { m_axi_gmem_B_AWQOS QOS 1 4 }  { m_axi_gmem_B_AWREGION REGION 1 4 }  { m_axi_gmem_B_AWUSER USER 1 1 }  { m_axi_gmem_B_WVALID VALID 1 1 }  { m_axi_gmem_B_WREADY READY 0 1 }  { m_axi_gmem_B_WDATA DATA 1 512 }  { m_axi_gmem_B_WSTRB STRB 1 64 }  { m_axi_gmem_B_WLAST LAST 1 1 }  { m_axi_gmem_B_WID ID 1 1 }  { m_axi_gmem_B_WUSER USER 1 1 }  { m_axi_gmem_B_ARVALID VALID 1 1 }  { m_axi_gmem_B_ARREADY READY 0 1 }  { m_axi_gmem_B_ARADDR ADDR 1 64 }  { m_axi_gmem_B_ARID ID 1 1 }  { m_axi_gmem_B_ARLEN LEN 1 8 }  { m_axi_gmem_B_ARSIZE SIZE 1 3 }  { m_axi_gmem_B_ARBURST BURST 1 2 }  { m_axi_gmem_B_ARLOCK LOCK 1 2 }  { m_axi_gmem_B_ARCACHE CACHE 1 4 }  { m_axi_gmem_B_ARPROT PROT 1 3 }  { m_axi_gmem_B_ARQOS QOS 1 4 }  { m_axi_gmem_B_ARREGION REGION 1 4 }  { m_axi_gmem_B_ARUSER USER 1 1 }  { m_axi_gmem_B_RVALID VALID 0 1 }  { m_axi_gmem_B_RREADY READY 1 1 }  { m_axi_gmem_B_RDATA DATA 0 512 }  { m_axi_gmem_B_RLAST LAST 0 1 }  { m_axi_gmem_B_RID ID 0 1 }  { m_axi_gmem_B_RUSER USER 0 1 }  { m_axi_gmem_B_RRESP RESP 0 2 }  { m_axi_gmem_B_BVALID VALID 0 1 }  { m_axi_gmem_B_BREADY READY 1 1 }  { m_axi_gmem_B_BRESP RESP 0 2 }  { m_axi_gmem_B_BID ID 0 1 }  { m_axi_gmem_B_BUSER USER 0 1 } } }
	gmem_C { m_axi {  { m_axi_gmem_C_AWVALID VALID 1 1 }  { m_axi_gmem_C_AWREADY READY 0 1 }  { m_axi_gmem_C_AWADDR ADDR 1 64 }  { m_axi_gmem_C_AWID ID 1 1 }  { m_axi_gmem_C_AWLEN LEN 1 8 }  { m_axi_gmem_C_AWSIZE SIZE 1 3 }  { m_axi_gmem_C_AWBURST BURST 1 2 }  { m_axi_gmem_C_AWLOCK LOCK 1 2 }  { m_axi_gmem_C_AWCACHE CACHE 1 4 }  { m_axi_gmem_C_AWPROT PROT 1 3 }  { m_axi_gmem_C_AWQOS QOS 1 4 }  { m_axi_gmem_C_AWREGION REGION 1 4 }  { m_axi_gmem_C_AWUSER USER 1 1 }  { m_axi_gmem_C_WVALID VALID 1 1 }  { m_axi_gmem_C_WREADY READY 0 1 }  { m_axi_gmem_C_WDATA DATA 1 512 }  { m_axi_gmem_C_WSTRB STRB 1 64 }  { m_axi_gmem_C_WLAST LAST 1 1 }  { m_axi_gmem_C_WID ID 1 1 }  { m_axi_gmem_C_WUSER USER 1 1 }  { m_axi_gmem_C_ARVALID VALID 1 1 }  { m_axi_gmem_C_ARREADY READY 0 1 }  { m_axi_gmem_C_ARADDR ADDR 1 64 }  { m_axi_gmem_C_ARID ID 1 1 }  { m_axi_gmem_C_ARLEN LEN 1 8 }  { m_axi_gmem_C_ARSIZE SIZE 1 3 }  { m_axi_gmem_C_ARBURST BURST 1 2 }  { m_axi_gmem_C_ARLOCK LOCK 1 2 }  { m_axi_gmem_C_ARCACHE CACHE 1 4 }  { m_axi_gmem_C_ARPROT PROT 1 3 }  { m_axi_gmem_C_ARQOS QOS 1 4 }  { m_axi_gmem_C_ARREGION REGION 1 4 }  { m_axi_gmem_C_ARUSER USER 1 1 }  { m_axi_gmem_C_RVALID VALID 0 1 }  { m_axi_gmem_C_RREADY READY 1 1 }  { m_axi_gmem_C_RDATA DATA 0 512 }  { m_axi_gmem_C_RLAST LAST 0 1 }  { m_axi_gmem_C_RID ID 0 1 }  { m_axi_gmem_C_RUSER USER 0 1 }  { m_axi_gmem_C_RRESP RESP 0 2 }  { m_axi_gmem_C_BVALID VALID 0 1 }  { m_axi_gmem_C_BREADY READY 1 1 }  { m_axi_gmem_C_BRESP RESP 0 2 }  { m_axi_gmem_C_BID ID 0 1 }  { m_axi_gmem_C_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ gmem_A { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ gmem_B { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ gmem_C { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem_A 64 }
	{ gmem_B 64 }
	{ gmem_C 64 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem_A 64 }
	{ gmem_B 64 }
	{ gmem_C 64 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
