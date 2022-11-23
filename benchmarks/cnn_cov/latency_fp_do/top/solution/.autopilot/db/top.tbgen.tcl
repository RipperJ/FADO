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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "434", "862", "1286", "1293", "1300", "1301"],
		"CDFG" : "top",
		"Protocol" : "ap_ctrl_chain",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17605858", "EstimateLatencyMax" : "17605858",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "gmem_A", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_kernel3_x0_fu_104", "Port" : "gmem_A"}]},
			{"Name" : "gmem_B", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_kernel3_x0_fu_104", "Port" : "gmem_B"}]},
			{"Name" : "gmem_C", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "434", "SubInstance" : "grp_kernel3_x2_fu_118", "Port" : "gmem_C"}]},
			{"Name" : "A", "Type" : "None", "Direction" : "I"},
			{"Name" : "B", "Type" : "None", "Direction" : "I"},
			{"Name" : "C", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_A_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_B_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_C_m_axi_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_xout0_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_xin1_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_xout1_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_xin2_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104", "Parent" : "0", "Child" : ["10", "11", "12", "14", "16", "18", "20", "22", "24", "26", "28", "30", "32", "34", "36", "38", "39", "41", "43", "49", "55", "61", "67", "73", "79", "85", "91", "97", "103", "109", "115", "121", "127", "133", "139", "145", "151", "157", "163", "169", "175", "181", "187", "193", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "217", "220", "223", "226", "229", "232", "235", "238", "241", "244", "247", "250", "253", "256", "259", "262", "265", "268", "271", "274", "277", "280", "283", "286", "289", "292", "293", "294", "296", "297", "298", "299", "300", "301", "302", "303", "304", "305", "306", "307", "308", "309", "310", "311", "312", "313", "314", "315", "316", "317", "318", "319", "320", "321", "322", "323", "324", "325", "326", "327", "328", "329", "330", "331", "332", "333", "334", "335", "336", "337", "338", "339", "340", "341", "342", "343", "344", "345", "346", "347", "348", "349", "350", "351", "352", "353", "354", "355", "356", "357", "358", "359", "360", "361", "362", "363", "364", "365", "366", "367", "368", "369", "370", "371", "372", "373", "374", "375", "376", "377", "378", "379", "380", "381", "382", "383", "384", "385", "386", "387", "388", "389", "390", "391", "392", "393", "394", "395", "396", "397", "398", "399", "400", "401", "402", "403", "404", "405", "406", "407", "408", "409", "410", "411", "412", "413", "414", "415", "416", "417", "418", "419", "420", "421", "422", "423", "424", "425", "426", "427", "428", "429", "430", "431", "432", "433"],
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
			{"ID" : "10", "Name" : "kernel3_x0_entry61_U0"},
			{"ID" : "11", "Name" : "A_IO_L3_in_x0_U0"},
			{"ID" : "38", "Name" : "B_IO_L3_in_x0_U0"}],
		"OutputProcess" : [
			{"ID" : "199", "Name" : "A_PE_dummy_0_x0_U0"},
			{"ID" : "200", "Name" : "A_PE_dummy_1_x0_U0"},
			{"ID" : "201", "Name" : "A_PE_dummy_2_x0_U0"},
			{"ID" : "202", "Name" : "A_PE_dummy_3_x0_U0"},
			{"ID" : "203", "Name" : "A_PE_dummy_4_x0_U0"},
			{"ID" : "204", "Name" : "A_PE_dummy_5_x0_U0"},
			{"ID" : "205", "Name" : "A_PE_dummy_6_x0_U0"},
			{"ID" : "206", "Name" : "A_PE_dummy_7_x0_U0"},
			{"ID" : "207", "Name" : "A_PE_dummy_8_x0_U0"},
			{"ID" : "208", "Name" : "A_PE_dummy_9_x0_U0"},
			{"ID" : "209", "Name" : "A_PE_dummy_10_x0_U0"},
			{"ID" : "210", "Name" : "A_PE_dummy_11_x0_U0"},
			{"ID" : "211", "Name" : "A_PE_dummy_12_x0_U0"},
			{"ID" : "212", "Name" : "B_PE_dummy_0_x0_U0"},
			{"ID" : "213", "Name" : "B_PE_dummy_1_x0_U0"},
			{"ID" : "294", "Name" : "C_drain_IO_L3_out_x0_U0"}],
		"Port" : [
			{"Name" : "gmem_A", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "A_IO_L3_in_x0_U0", "Port" : "gmem_A"}]},
			{"Name" : "gmem_B", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "B_IO_L3_in_x0_U0", "Port" : "gmem_B"}]},
			{"Name" : "A", "Type" : "None", "Direction" : "I"},
			{"Name" : "B", "Type" : "None", "Direction" : "I"},
			{"Name" : "C", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "294", "SubInstance" : "C_drain_IO_L3_out_x0_U0", "Port" : "C"}]}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.kernel3_x0_entry61_U0", "Parent" : "9",
		"CDFG" : "kernel3_x0_entry61",
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
			{"Name" : "A_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "296", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "A_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "38", "DependentChan" : "297", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.A_IO_L3_in_x0_U0", "Parent" : "9",
		"CDFG" : "A_IO_L3_in_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12359", "EstimateLatencyMax" : "12359",
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
			{"Name" : "fifo_A_local_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "12", "DependentChan" : "298", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_local_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "296", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "A_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.A_IO_L2_in_0_x0_U0", "Parent" : "9", "Child" : ["13"],
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
			{"Name" : "fifo_A_A_IO_L2_in_0_x01", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "298", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_0_x01_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_1_x02", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "299", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x02_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_0_x016", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "43", "DependentChan" : "300", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x016_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.A_IO_L2_in_0_x0_U0.local_A_pong_V_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.A_IO_L2_in_1_x0_U0", "Parent" : "9", "Child" : ["15"],
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
			{"Name" : "fifo_A_A_IO_L2_in_1_x02", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "299", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x02_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_2_x03", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "16", "DependentChan" : "301", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x03_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_0_x019", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "55", "DependentChan" : "302", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x019_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.A_IO_L2_in_1_x0_U0.local_A_pong_V_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.A_IO_L2_in_2_x0_U0", "Parent" : "9", "Child" : ["17"],
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
			{"Name" : "fifo_A_A_IO_L2_in_2_x03", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "301", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x03_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_3_x04", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "303", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x04_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_0_x022", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "67", "DependentChan" : "304", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x022_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.A_IO_L2_in_2_x0_U0.local_A_pong_V_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.A_IO_L2_in_3_x0_U0", "Parent" : "9", "Child" : ["19"],
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
			{"Name" : "fifo_A_A_IO_L2_in_3_x04", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "303", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x04_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_4_x05", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "305", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_4_x05_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_0_x025", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "79", "DependentChan" : "306", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x025_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.A_IO_L2_in_3_x0_U0.local_A_pong_V_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.A_IO_L2_in_4_x0_U0", "Parent" : "9", "Child" : ["21"],
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
			{"Name" : "fifo_A_A_IO_L2_in_4_x05", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "305", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_4_x05_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_5_x06", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "307", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_5_x06_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_0_x028", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "91", "DependentChan" : "308", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_0_x028_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.A_IO_L2_in_4_x0_U0.local_A_pong_V_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.A_IO_L2_in_5_x0_U0", "Parent" : "9", "Child" : ["23"],
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
			{"Name" : "fifo_A_A_IO_L2_in_5_x06", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "307", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_5_x06_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_6_x07", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "309", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_6_x07_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_0_x031", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "103", "DependentChan" : "310", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_0_x031_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.A_IO_L2_in_5_x0_U0.local_A_pong_V_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.A_IO_L2_in_6_x0_U0", "Parent" : "9", "Child" : ["25"],
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
			{"Name" : "fifo_A_A_IO_L2_in_6_x07", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "309", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_6_x07_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_7_x08", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "26", "DependentChan" : "311", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_7_x08_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_0_x034", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "115", "DependentChan" : "312", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_0_x034_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.A_IO_L2_in_6_x0_U0.local_A_pong_V_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.A_IO_L2_in_7_x0_U0", "Parent" : "9", "Child" : ["27"],
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
			{"Name" : "fifo_A_A_IO_L2_in_7_x08", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "311", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_7_x08_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_8_x09", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "28", "DependentChan" : "313", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_8_x09_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_0_x037", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "127", "DependentChan" : "314", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_0_x037_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.A_IO_L2_in_7_x0_U0.local_A_pong_V_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.A_IO_L2_in_8_x0_U0", "Parent" : "9", "Child" : ["29"],
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
			{"Name" : "fifo_A_A_IO_L2_in_8_x09", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "26", "DependentChan" : "313", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_8_x09_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_9_x010", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "30", "DependentChan" : "315", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_9_x010_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_8_0_x040", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "139", "DependentChan" : "316", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_0_x040_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.A_IO_L2_in_8_x0_U0.local_A_pong_V_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.A_IO_L2_in_9_x0_U0", "Parent" : "9", "Child" : ["31"],
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
			{"Name" : "fifo_A_A_IO_L2_in_9_x010", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "28", "DependentChan" : "315", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_9_x010_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_10_x011", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "32", "DependentChan" : "317", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_10_x011_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_9_0_x043", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "151", "DependentChan" : "318", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_0_x043_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.A_IO_L2_in_9_x0_U0.local_A_pong_V_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.A_IO_L2_in_10_x0_U0", "Parent" : "9", "Child" : ["33"],
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
			{"Name" : "fifo_A_A_IO_L2_in_10_x011", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "30", "DependentChan" : "317", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_10_x011_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_11_x012", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "319", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_11_x012_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_10_0_x046", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "163", "DependentChan" : "320", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_0_x046_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.A_IO_L2_in_10_x0_U0.local_A_pong_V_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.A_IO_L2_in_11_x0_U0", "Parent" : "9", "Child" : ["35"],
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
			{"Name" : "fifo_A_A_IO_L2_in_11_x012", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "319", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_11_x012_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_12_x013", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "36", "DependentChan" : "321", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_12_x013_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_11_0_x049", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "175", "DependentChan" : "322", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_0_x049_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.A_IO_L2_in_11_x0_U0.local_A_pong_V_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.A_IO_L2_in_boundary_x0_U0", "Parent" : "9", "Child" : ["37"],
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
			{"Name" : "fifo_A_A_IO_L2_in_12_x013", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "321", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_12_x013_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_12_0_x052", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "187", "DependentChan" : "323", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_0_x052_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.A_IO_L2_in_boundary_x0_U0.local_A_pong_V_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.B_IO_L3_in_x0_U0", "Parent" : "9",
		"CDFG" : "B_IO_L3_in_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12359", "EstimateLatencyMax" : "12359",
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
			{"Name" : "fifo_B_local_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "39", "DependentChan" : "324", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_local_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "297", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.B_IO_L2_in_x0_U0", "Parent" : "9", "Child" : ["40"],
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
			{"Name" : "fifo_B_B_IO_L2_in_0_x014", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "324", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_0_x014_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_1_x015", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "41", "DependentChan" : "325", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x015_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x055", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "43", "DependentChan" : "326", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x055_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.B_IO_L2_in_x0_U0.local_B_pong_V_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.B_IO_L2_in_boundary_x0_U0", "Parent" : "9", "Child" : ["42"],
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
			{"Name" : "fifo_B_B_IO_L2_in_1_x015", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "39", "DependentChan" : "325", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x015_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x069", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "49", "DependentChan" : "327", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x069_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.B_IO_L2_in_boundary_x0_U0.local_B_pong_V_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_0_0_x0_U0", "Parent" : "9", "Child" : ["44", "45", "46", "47", "48"],
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
			{"Name" : "fifo_A_PE_0_0_x016", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "300", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x016_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_1_x017", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "49", "DependentChan" : "328", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x017_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x055", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "39", "DependentChan" : "326", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x055_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x056", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "55", "DependentChan" : "329", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x056_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_0_x083", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "250", "DependentChan" : "330", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_0_x083_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_0_0_x0_U0.local_A_0_U", "Parent" : "43"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_0_0_x0_U0.local_B_0_U", "Parent" : "43"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_0_0_x0_U0.local_C_U", "Parent" : "43"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_0_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U56", "Parent" : "43"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_0_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U57", "Parent" : "43"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_0_1_x0_U0", "Parent" : "9", "Child" : ["50", "51", "52", "53", "54"],
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
			{"Name" : "fifo_A_PE_0_1_x017", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "43", "DependentChan" : "328", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x017_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_2_x018", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "199", "DependentChan" : "331", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x018_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x069", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "41", "DependentChan" : "327", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x069_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x070", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "61", "DependentChan" : "332", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x070_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_1_x096", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "289", "DependentChan" : "333", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_1_x096_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_0_1_x0_U0.local_A_0_U", "Parent" : "49"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_0_1_x0_U0.local_B_0_U", "Parent" : "49"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_0_1_x0_U0.local_C_U", "Parent" : "49"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_0_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U67", "Parent" : "49"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_0_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U68", "Parent" : "49"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_1_0_x0_U0", "Parent" : "9", "Child" : ["56", "57", "58", "59", "60"],
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
			{"Name" : "fifo_A_PE_1_0_x019", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "302", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x019_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_1_x020", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "61", "DependentChan" : "334", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x020_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x056", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "43", "DependentChan" : "329", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x056_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x057", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "67", "DependentChan" : "335", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x057_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_0_x084", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "247", "DependentChan" : "336", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_0_x084_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_1_0_x0_U0.local_A_0_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_1_0_x0_U0.local_B_0_U", "Parent" : "55"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_1_0_x0_U0.local_C_U", "Parent" : "55"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_1_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U74", "Parent" : "55"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_1_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U75", "Parent" : "55"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_1_1_x0_U0", "Parent" : "9", "Child" : ["62", "63", "64", "65", "66"],
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
			{"Name" : "fifo_A_PE_1_1_x020", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "334", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x020_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_2_x021", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "200", "DependentChan" : "337", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x021_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x070", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "49", "DependentChan" : "332", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x070_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x071", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "73", "DependentChan" : "338", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x071_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_1_x097", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "286", "DependentChan" : "339", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_1_x097_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_1_1_x0_U0.local_A_0_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_1_1_x0_U0.local_B_0_U", "Parent" : "61"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_1_1_x0_U0.local_C_U", "Parent" : "61"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_1_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U81", "Parent" : "61"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_1_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U82", "Parent" : "61"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_2_0_x0_U0", "Parent" : "9", "Child" : ["68", "69", "70", "71", "72"],
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
			{"Name" : "fifo_A_PE_2_0_x022", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "304", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x022_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_1_x023", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "73", "DependentChan" : "340", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x023_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x057", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "335", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x057_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x058", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "79", "DependentChan" : "341", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x058_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_0_x085", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "244", "DependentChan" : "342", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_0_x085_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_2_0_x0_U0.local_A_0_U", "Parent" : "67"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_2_0_x0_U0.local_B_0_U", "Parent" : "67"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_2_0_x0_U0.local_C_U", "Parent" : "67"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_2_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U88", "Parent" : "67"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_2_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U89", "Parent" : "67"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_2_1_x0_U0", "Parent" : "9", "Child" : ["74", "75", "76", "77", "78"],
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
			{"Name" : "fifo_A_PE_2_1_x023", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "67", "DependentChan" : "340", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x023_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_2_x024", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "201", "DependentChan" : "343", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x024_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x071", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "61", "DependentChan" : "338", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x071_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x072", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "85", "DependentChan" : "344", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x072_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_1_x098", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "283", "DependentChan" : "345", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_1_x098_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_2_1_x0_U0.local_A_0_U", "Parent" : "73"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_2_1_x0_U0.local_B_0_U", "Parent" : "73"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_2_1_x0_U0.local_C_U", "Parent" : "73"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_2_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U95", "Parent" : "73"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_2_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U96", "Parent" : "73"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_3_0_x0_U0", "Parent" : "9", "Child" : ["80", "81", "82", "83", "84"],
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
			{"Name" : "fifo_A_PE_3_0_x025", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "306", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x025_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_1_x026", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "85", "DependentChan" : "346", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x026_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x058", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "67", "DependentChan" : "341", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x058_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x059", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "91", "DependentChan" : "347", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x059_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_0_x086", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "241", "DependentChan" : "348", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_0_x086_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_3_0_x0_U0.local_A_0_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_3_0_x0_U0.local_B_0_U", "Parent" : "79"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_3_0_x0_U0.local_C_U", "Parent" : "79"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_3_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U102", "Parent" : "79"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_3_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U103", "Parent" : "79"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_3_1_x0_U0", "Parent" : "9", "Child" : ["86", "87", "88", "89", "90"],
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
			{"Name" : "fifo_A_PE_3_1_x026", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "79", "DependentChan" : "346", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x026_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_2_x027", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "202", "DependentChan" : "349", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x027_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x072", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "73", "DependentChan" : "344", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x072_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x073", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "97", "DependentChan" : "350", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x073_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_1_x099", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "280", "DependentChan" : "351", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_1_x099_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_3_1_x0_U0.local_A_0_U", "Parent" : "85"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_3_1_x0_U0.local_B_0_U", "Parent" : "85"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_3_1_x0_U0.local_C_U", "Parent" : "85"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_3_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U109", "Parent" : "85"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_3_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U110", "Parent" : "85"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_4_0_x0_U0", "Parent" : "9", "Child" : ["92", "93", "94", "95", "96"],
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
			{"Name" : "fifo_A_PE_4_0_x028", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "308", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_0_x028_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_1_x029", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "97", "DependentChan" : "352", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x029_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x059", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "79", "DependentChan" : "347", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x059_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x060", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "103", "DependentChan" : "353", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x060_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_0_x087", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "238", "DependentChan" : "354", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_0_x087_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_4_0_x0_U0.local_A_0_U", "Parent" : "91"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_4_0_x0_U0.local_B_0_U", "Parent" : "91"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_4_0_x0_U0.local_C_U", "Parent" : "91"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_4_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U116", "Parent" : "91"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_4_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U117", "Parent" : "91"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_4_1_x0_U0", "Parent" : "9", "Child" : ["98", "99", "100", "101", "102"],
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
			{"Name" : "fifo_A_PE_4_1_x029", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "91", "DependentChan" : "352", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x029_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_2_x030", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "203", "DependentChan" : "355", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_2_x030_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x073", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "85", "DependentChan" : "350", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x073_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_1_x074", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "109", "DependentChan" : "356", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_1_x074_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_1_x0100", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "277", "DependentChan" : "357", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_1_x0100_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_4_1_x0_U0.local_A_0_U", "Parent" : "97"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_4_1_x0_U0.local_B_0_U", "Parent" : "97"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_4_1_x0_U0.local_C_U", "Parent" : "97"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_4_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U123", "Parent" : "97"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_4_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U124", "Parent" : "97"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_5_0_x0_U0", "Parent" : "9", "Child" : ["104", "105", "106", "107", "108"],
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
			{"Name" : "fifo_A_PE_5_0_x031", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "310", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_0_x031_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_1_x032", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "109", "DependentChan" : "358", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_1_x032_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x060", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "91", "DependentChan" : "353", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x060_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_0_x061", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "115", "DependentChan" : "359", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_0_x061_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_0_x088", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "235", "DependentChan" : "360", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_0_x088_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_5_0_x0_U0.local_A_0_U", "Parent" : "103"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_5_0_x0_U0.local_B_0_U", "Parent" : "103"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_5_0_x0_U0.local_C_U", "Parent" : "103"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_5_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U130", "Parent" : "103"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_5_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U131", "Parent" : "103"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_5_1_x0_U0", "Parent" : "9", "Child" : ["110", "111", "112", "113", "114"],
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
			{"Name" : "fifo_A_PE_5_1_x032", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "103", "DependentChan" : "358", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_1_x032_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_2_x033", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "204", "DependentChan" : "361", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_2_x033_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_1_x074", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "97", "DependentChan" : "356", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_1_x074_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x075", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "121", "DependentChan" : "362", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x075_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_1_x0101", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "274", "DependentChan" : "363", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_1_x0101_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_5_1_x0_U0.local_A_0_U", "Parent" : "109"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_5_1_x0_U0.local_B_0_U", "Parent" : "109"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_5_1_x0_U0.local_C_U", "Parent" : "109"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_5_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U137", "Parent" : "109"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_5_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U138", "Parent" : "109"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_6_0_x0_U0", "Parent" : "9", "Child" : ["116", "117", "118", "119", "120"],
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
			{"Name" : "fifo_A_PE_6_0_x034", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "312", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_0_x034_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_1_x035", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "121", "DependentChan" : "364", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_1_x035_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_0_x061", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "103", "DependentChan" : "359", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_0_x061_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_0_x062", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "127", "DependentChan" : "365", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_0_x062_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_0_x089", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "232", "DependentChan" : "366", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_0_x089_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_6_0_x0_U0.local_A_0_U", "Parent" : "115"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_6_0_x0_U0.local_B_0_U", "Parent" : "115"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_6_0_x0_U0.local_C_U", "Parent" : "115"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_6_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U144", "Parent" : "115"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_6_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U145", "Parent" : "115"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_6_1_x0_U0", "Parent" : "9", "Child" : ["122", "123", "124", "125", "126"],
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
			{"Name" : "fifo_A_PE_6_1_x035", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "115", "DependentChan" : "364", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_1_x035_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_2_x036", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "205", "DependentChan" : "367", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x036_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x075", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "109", "DependentChan" : "362", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x075_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_1_x076", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "133", "DependentChan" : "368", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_1_x076_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x0102", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "271", "DependentChan" : "369", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x0102_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_6_1_x0_U0.local_A_0_U", "Parent" : "121"},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_6_1_x0_U0.local_B_0_U", "Parent" : "121"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_6_1_x0_U0.local_C_U", "Parent" : "121"},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_6_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U151", "Parent" : "121"},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_6_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U152", "Parent" : "121"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_7_0_x0_U0", "Parent" : "9", "Child" : ["128", "129", "130", "131", "132"],
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
			{"Name" : "fifo_A_PE_7_0_x037", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "26", "DependentChan" : "314", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_0_x037_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_1_x038", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "133", "DependentChan" : "370", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_1_x038_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_0_x062", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "115", "DependentChan" : "365", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_0_x062_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_0_x063", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "139", "DependentChan" : "371", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_0_x063_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_0_x090", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "229", "DependentChan" : "372", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_0_x090_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_7_0_x0_U0.local_A_0_U", "Parent" : "127"},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_7_0_x0_U0.local_B_0_U", "Parent" : "127"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_7_0_x0_U0.local_C_U", "Parent" : "127"},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_7_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U158", "Parent" : "127"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_7_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U159", "Parent" : "127"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_7_1_x0_U0", "Parent" : "9", "Child" : ["134", "135", "136", "137", "138"],
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
			{"Name" : "fifo_A_PE_7_1_x038", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "127", "DependentChan" : "370", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_1_x038_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_2_x039", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "206", "DependentChan" : "373", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_2_x039_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_1_x076", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "121", "DependentChan" : "368", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_1_x076_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_1_x077", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "145", "DependentChan" : "374", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_1_x077_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_1_x0103", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "268", "DependentChan" : "375", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_1_x0103_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_7_1_x0_U0.local_A_0_U", "Parent" : "133"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_7_1_x0_U0.local_B_0_U", "Parent" : "133"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_7_1_x0_U0.local_C_U", "Parent" : "133"},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_7_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U165", "Parent" : "133"},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_7_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U166", "Parent" : "133"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_8_0_x0_U0", "Parent" : "9", "Child" : ["140", "141", "142", "143", "144"],
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
			{"Name" : "fifo_A_PE_8_0_x040", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "28", "DependentChan" : "316", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_0_x040_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_8_1_x041", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "145", "DependentChan" : "376", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_1_x041_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_0_x063", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "127", "DependentChan" : "371", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_0_x063_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_0_x064", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "151", "DependentChan" : "377", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_0_x064_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_0_x091", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "226", "DependentChan" : "378", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_0_x091_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_8_0_x0_U0.local_A_0_U", "Parent" : "139"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_8_0_x0_U0.local_B_0_U", "Parent" : "139"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_8_0_x0_U0.local_C_U", "Parent" : "139"},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_8_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U172", "Parent" : "139"},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_8_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U173", "Parent" : "139"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_8_1_x0_U0", "Parent" : "9", "Child" : ["146", "147", "148", "149", "150"],
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
			{"Name" : "fifo_A_PE_8_1_x041", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "139", "DependentChan" : "376", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_1_x041_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_8_2_x042", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "207", "DependentChan" : "379", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_2_x042_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_1_x077", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "133", "DependentChan" : "374", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_1_x077_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_1_x078", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "157", "DependentChan" : "380", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_1_x078_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_1_x0104", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "265", "DependentChan" : "381", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_1_x0104_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_8_1_x0_U0.local_A_0_U", "Parent" : "145"},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_8_1_x0_U0.local_B_0_U", "Parent" : "145"},
	{"ID" : "148", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_8_1_x0_U0.local_C_U", "Parent" : "145"},
	{"ID" : "149", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_8_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U179", "Parent" : "145"},
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_8_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U180", "Parent" : "145"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_9_0_x0_U0", "Parent" : "9", "Child" : ["152", "153", "154", "155", "156"],
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
			{"Name" : "fifo_A_PE_9_0_x043", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "30", "DependentChan" : "318", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_0_x043_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_9_1_x044", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "157", "DependentChan" : "382", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_1_x044_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_0_x064", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "139", "DependentChan" : "377", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_0_x064_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_0_x065", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "163", "DependentChan" : "383", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_0_x065_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_0_x092", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "223", "DependentChan" : "384", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_0_x092_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_9_0_x0_U0.local_A_0_U", "Parent" : "151"},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_9_0_x0_U0.local_B_0_U", "Parent" : "151"},
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_9_0_x0_U0.local_C_U", "Parent" : "151"},
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_9_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U186", "Parent" : "151"},
	{"ID" : "156", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_9_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U187", "Parent" : "151"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_9_1_x0_U0", "Parent" : "9", "Child" : ["158", "159", "160", "161", "162"],
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
			{"Name" : "fifo_A_PE_9_1_x044", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "151", "DependentChan" : "382", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_1_x044_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_9_2_x045", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "208", "DependentChan" : "385", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_2_x045_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_1_x078", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "145", "DependentChan" : "380", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_1_x078_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_1_x079", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "169", "DependentChan" : "386", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_1_x079_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_1_x0105", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "262", "DependentChan" : "387", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_1_x0105_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "158", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_9_1_x0_U0.local_A_0_U", "Parent" : "157"},
	{"ID" : "159", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_9_1_x0_U0.local_B_0_U", "Parent" : "157"},
	{"ID" : "160", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_9_1_x0_U0.local_C_U", "Parent" : "157"},
	{"ID" : "161", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_9_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U193", "Parent" : "157"},
	{"ID" : "162", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_9_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U194", "Parent" : "157"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_10_0_x0_U0", "Parent" : "9", "Child" : ["164", "165", "166", "167", "168"],
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
			{"Name" : "fifo_A_PE_10_0_x046", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "320", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_0_x046_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_10_1_x047", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "169", "DependentChan" : "388", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_1_x047_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_0_x065", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "151", "DependentChan" : "383", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_0_x065_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_0_x066", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "175", "DependentChan" : "389", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_0_x066_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_0_x093", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "220", "DependentChan" : "390", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_0_x093_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "164", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_10_0_x0_U0.local_A_0_U", "Parent" : "163"},
	{"ID" : "165", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_10_0_x0_U0.local_B_0_U", "Parent" : "163"},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_10_0_x0_U0.local_C_U", "Parent" : "163"},
	{"ID" : "167", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_10_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U200", "Parent" : "163"},
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_10_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U201", "Parent" : "163"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_10_1_x0_U0", "Parent" : "9", "Child" : ["170", "171", "172", "173", "174"],
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
			{"Name" : "fifo_A_PE_10_1_x047", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "163", "DependentChan" : "388", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_1_x047_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_10_2_x048", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "209", "DependentChan" : "391", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_2_x048_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_1_x079", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "157", "DependentChan" : "386", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_1_x079_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_1_x080", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "181", "DependentChan" : "392", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_1_x080_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_1_x0106", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "259", "DependentChan" : "393", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_1_x0106_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "170", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_10_1_x0_U0.local_A_0_U", "Parent" : "169"},
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_10_1_x0_U0.local_B_0_U", "Parent" : "169"},
	{"ID" : "172", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_10_1_x0_U0.local_C_U", "Parent" : "169"},
	{"ID" : "173", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_10_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U207", "Parent" : "169"},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_10_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U208", "Parent" : "169"},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_11_0_x0_U0", "Parent" : "9", "Child" : ["176", "177", "178", "179", "180"],
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
			{"Name" : "fifo_A_PE_11_0_x049", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "322", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_0_x049_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_11_1_x050", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "181", "DependentChan" : "394", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_1_x050_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_0_x066", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "163", "DependentChan" : "389", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_0_x066_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_0_x067", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "187", "DependentChan" : "395", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_0_x067_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_0_x094", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "217", "DependentChan" : "396", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_0_x094_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "176", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_11_0_x0_U0.local_A_0_U", "Parent" : "175"},
	{"ID" : "177", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_11_0_x0_U0.local_B_0_U", "Parent" : "175"},
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_11_0_x0_U0.local_C_U", "Parent" : "175"},
	{"ID" : "179", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_11_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U214", "Parent" : "175"},
	{"ID" : "180", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_11_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U215", "Parent" : "175"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_11_1_x0_U0", "Parent" : "9", "Child" : ["182", "183", "184", "185", "186"],
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
			{"Name" : "fifo_A_PE_11_1_x050", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "175", "DependentChan" : "394", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_1_x050_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_11_2_x051", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "210", "DependentChan" : "397", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_2_x051_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_1_x080", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "169", "DependentChan" : "392", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_1_x080_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_1_x081", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "193", "DependentChan" : "398", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_1_x081_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_1_x0107", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "256", "DependentChan" : "399", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_1_x0107_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "182", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_11_1_x0_U0.local_A_0_U", "Parent" : "181"},
	{"ID" : "183", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_11_1_x0_U0.local_B_0_U", "Parent" : "181"},
	{"ID" : "184", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_11_1_x0_U0.local_C_U", "Parent" : "181"},
	{"ID" : "185", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_11_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U221", "Parent" : "181"},
	{"ID" : "186", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_11_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U222", "Parent" : "181"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_12_0_x0_U0", "Parent" : "9", "Child" : ["188", "189", "190", "191", "192"],
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
			{"Name" : "fifo_A_PE_12_0_x052", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "36", "DependentChan" : "323", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_0_x052_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_12_1_x053", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "193", "DependentChan" : "400", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_1_x053_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_0_x067", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "175", "DependentChan" : "395", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_0_x067_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_13_0_x068", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "212", "DependentChan" : "401", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_0_x068_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_0_x095", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "214", "DependentChan" : "402", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_0_x095_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "188", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_12_0_x0_U0.local_A_0_U", "Parent" : "187"},
	{"ID" : "189", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_12_0_x0_U0.local_B_0_U", "Parent" : "187"},
	{"ID" : "190", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_12_0_x0_U0.local_C_U", "Parent" : "187"},
	{"ID" : "191", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_12_0_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U228", "Parent" : "187"},
	{"ID" : "192", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_12_0_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U229", "Parent" : "187"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_12_1_x0_U0", "Parent" : "9", "Child" : ["194", "195", "196", "197", "198"],
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
			{"Name" : "fifo_A_PE_12_1_x053", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "187", "DependentChan" : "400", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_1_x053_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_12_2_x054", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "211", "DependentChan" : "403", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_2_x054_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_1_x081", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "181", "DependentChan" : "398", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_1_x081_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_13_1_x082", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "213", "DependentChan" : "404", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_1_x082_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_1_x0108", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "253", "DependentChan" : "405", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_1_x0108_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "194", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_12_1_x0_U0.local_A_0_U", "Parent" : "193"},
	{"ID" : "195", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_12_1_x0_U0.local_B_0_U", "Parent" : "193"},
	{"ID" : "196", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_12_1_x0_U0.local_C_U", "Parent" : "193"},
	{"ID" : "197", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_12_1_x0_U0.fadd_32ns_32ns_32_7_full_dsp_1_U235", "Parent" : "193"},
	{"ID" : "198", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.PE_wrapper_12_1_x0_U0.fmul_32ns_32ns_32_4_max_dsp_1_U236", "Parent" : "193"},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.A_PE_dummy_0_x0_U0", "Parent" : "9",
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
			{"Name" : "fifo_A_PE_0_2_x018", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "49", "DependentChan" : "331", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x018_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.A_PE_dummy_1_x0_U0", "Parent" : "9",
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
			{"Name" : "fifo_A_PE_1_2_x021", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "61", "DependentChan" : "337", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x021_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.A_PE_dummy_2_x0_U0", "Parent" : "9",
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
			{"Name" : "fifo_A_PE_2_2_x024", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "73", "DependentChan" : "343", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x024_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.A_PE_dummy_3_x0_U0", "Parent" : "9",
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
			{"Name" : "fifo_A_PE_3_2_x027", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "85", "DependentChan" : "349", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x027_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.A_PE_dummy_4_x0_U0", "Parent" : "9",
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
			{"Name" : "fifo_A_PE_4_2_x030", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "97", "DependentChan" : "355", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_2_x030_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.A_PE_dummy_5_x0_U0", "Parent" : "9",
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
			{"Name" : "fifo_A_PE_5_2_x033", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "109", "DependentChan" : "361", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_2_x033_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.A_PE_dummy_6_x0_U0", "Parent" : "9",
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
			{"Name" : "fifo_A_PE_6_2_x036", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "121", "DependentChan" : "367", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x036_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.A_PE_dummy_7_x0_U0", "Parent" : "9",
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
			{"Name" : "fifo_A_PE_7_2_x039", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "133", "DependentChan" : "373", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_2_x039_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.A_PE_dummy_8_x0_U0", "Parent" : "9",
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
			{"Name" : "fifo_A_PE_8_2_x042", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "145", "DependentChan" : "379", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_2_x042_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "208", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.A_PE_dummy_9_x0_U0", "Parent" : "9",
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
			{"Name" : "fifo_A_PE_9_2_x045", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "157", "DependentChan" : "385", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_2_x045_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.A_PE_dummy_10_x0_U0", "Parent" : "9",
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
			{"Name" : "fifo_A_PE_10_2_x048", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "169", "DependentChan" : "391", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_2_x048_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.A_PE_dummy_11_x0_U0", "Parent" : "9",
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
			{"Name" : "fifo_A_PE_11_2_x051", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "181", "DependentChan" : "397", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_2_x051_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.A_PE_dummy_12_x0_U0", "Parent" : "9",
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
			{"Name" : "fifo_A_PE_12_2_x054", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "193", "DependentChan" : "403", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_2_x054_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.B_PE_dummy_0_x0_U0", "Parent" : "9",
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
			{"Name" : "fifo_B_PE_13_0_x068", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "187", "DependentChan" : "401", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_0_x068_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.B_PE_dummy_1_x0_U0", "Parent" : "9",
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
			{"Name" : "fifo_B_PE_13_1_x082", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "193", "DependentChan" : "404", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_1_x082_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "214", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_boundary_0_x0_U0", "Parent" : "9", "Child" : ["215", "216"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x0121", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "217", "DependentChan" : "406", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x0121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_0_x095", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "187", "DependentChan" : "402", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_0_x095_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "215", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_boundary_0_x0_U0.local_C_V_U", "Parent" : "214"},
	{"ID" : "216", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_boundary_0_x0_U0.buf_data_split_V_U", "Parent" : "214"},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_0_x0_U0", "Parent" : "9", "Child" : ["218", "219"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x0121", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "214", "DependentChan" : "406", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x0121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x0120", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "220", "DependentChan" : "407", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x0120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_0_x094", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "175", "DependentChan" : "396", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_0_x094_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "218", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_0_x0_U0.local_C_V_U", "Parent" : "217"},
	{"ID" : "219", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_0_x0_U0.buf_data_split_V_U", "Parent" : "217"},
	{"ID" : "220", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_1_x0_U0", "Parent" : "9", "Child" : ["221", "222"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x0120", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "217", "DependentChan" : "407", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x0120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x0119", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "223", "DependentChan" : "408", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x0119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_0_x093", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "163", "DependentChan" : "390", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_0_x093_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "221", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_1_x0_U0.local_C_V_U", "Parent" : "220"},
	{"ID" : "222", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_1_x0_U0.buf_data_split_V_U", "Parent" : "220"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_2_x0_U0", "Parent" : "9", "Child" : ["224", "225"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x0119", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "220", "DependentChan" : "408", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x0119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x0118", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "226", "DependentChan" : "409", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x0118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_0_x092", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "151", "DependentChan" : "384", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_0_x092_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "224", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_2_x0_U0.local_C_V_U", "Parent" : "223"},
	{"ID" : "225", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_2_x0_U0.buf_data_split_V_U", "Parent" : "223"},
	{"ID" : "226", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_3_x0_U0", "Parent" : "9", "Child" : ["227", "228"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x0118", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "223", "DependentChan" : "409", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x0118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x0117", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "229", "DependentChan" : "410", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x0117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_0_x091", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "139", "DependentChan" : "378", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_0_x091_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "227", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_3_x0_U0.local_C_V_U", "Parent" : "226"},
	{"ID" : "228", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_3_x0_U0.buf_data_split_V_U", "Parent" : "226"},
	{"ID" : "229", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_4_x0_U0", "Parent" : "9", "Child" : ["230", "231"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x0117", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "226", "DependentChan" : "410", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x0117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x0116", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "232", "DependentChan" : "411", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x0116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_0_x090", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "127", "DependentChan" : "372", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_0_x090_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "230", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_4_x0_U0.local_C_V_U", "Parent" : "229"},
	{"ID" : "231", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_4_x0_U0.buf_data_split_V_U", "Parent" : "229"},
	{"ID" : "232", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_5_x0_U0", "Parent" : "9", "Child" : ["233", "234"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x0116", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "229", "DependentChan" : "411", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x0116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x0115", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "235", "DependentChan" : "412", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x0115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_0_x089", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "115", "DependentChan" : "366", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_0_x089_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "233", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_5_x0_U0.local_C_V_U", "Parent" : "232"},
	{"ID" : "234", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_5_x0_U0.buf_data_split_V_U", "Parent" : "232"},
	{"ID" : "235", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_6_x0_U0", "Parent" : "9", "Child" : ["236", "237"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x0115", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "232", "DependentChan" : "412", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x0115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x0114", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "238", "DependentChan" : "413", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x0114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_0_x088", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "103", "DependentChan" : "360", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_0_x088_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "236", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_6_x0_U0.local_C_V_U", "Parent" : "235"},
	{"ID" : "237", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_6_x0_U0.buf_data_split_V_U", "Parent" : "235"},
	{"ID" : "238", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_7_x0_U0", "Parent" : "9", "Child" : ["239", "240"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x0114", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "235", "DependentChan" : "413", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x0114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x0113", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "241", "DependentChan" : "414", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x0113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_0_x087", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "91", "DependentChan" : "354", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_0_x087_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "239", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_7_x0_U0.local_C_V_U", "Parent" : "238"},
	{"ID" : "240", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_7_x0_U0.buf_data_split_V_U", "Parent" : "238"},
	{"ID" : "241", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_8_x0_U0", "Parent" : "9", "Child" : ["242", "243"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x0113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "238", "DependentChan" : "414", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x0113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x0112", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "244", "DependentChan" : "415", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x0112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_0_x086", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "79", "DependentChan" : "348", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_0_x086_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "242", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_8_x0_U0.local_C_V_U", "Parent" : "241"},
	{"ID" : "243", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_8_x0_U0.buf_data_split_V_U", "Parent" : "241"},
	{"ID" : "244", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_9_x0_U0", "Parent" : "9", "Child" : ["245", "246"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x0112", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "241", "DependentChan" : "415", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x0112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x0111", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "247", "DependentChan" : "416", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x0111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_0_x085", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "67", "DependentChan" : "342", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_0_x085_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "245", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_9_x0_U0.local_C_V_U", "Parent" : "244"},
	{"ID" : "246", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_9_x0_U0.buf_data_split_V_U", "Parent" : "244"},
	{"ID" : "247", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_10_x0_U0", "Parent" : "9", "Child" : ["248", "249"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x0111", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "244", "DependentChan" : "416", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x0111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x0110", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "250", "DependentChan" : "417", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x0110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_0_x084", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "55", "DependentChan" : "336", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_0_x084_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "248", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_10_x0_U0.local_C_V_U", "Parent" : "247"},
	{"ID" : "249", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_10_x0_U0.buf_data_split_V_U", "Parent" : "247"},
	{"ID" : "250", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_11_x0_U0", "Parent" : "9", "Child" : ["251", "252"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x0110", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "247", "DependentChan" : "417", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x0110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x0109", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "293", "DependentChan" : "418", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x0109_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_0_x083", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "43", "DependentChan" : "330", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_0_x083_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "251", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_11_x0_U0.local_C_V_U", "Parent" : "250"},
	{"ID" : "252", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_11_x0_U0.buf_data_split_V_U", "Parent" : "250"},
	{"ID" : "253", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_boundary_1_x0_U0", "Parent" : "9", "Child" : ["254", "255"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x0134", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "256", "DependentChan" : "419", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x0134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_1_x0108", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "193", "DependentChan" : "405", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_1_x0108_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "254", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_boundary_1_x0_U0.local_C_V_U", "Parent" : "253"},
	{"ID" : "255", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_boundary_1_x0_U0.buf_data_split_V_U", "Parent" : "253"},
	{"ID" : "256", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_12_x0_U0", "Parent" : "9", "Child" : ["257", "258"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x0134", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "253", "DependentChan" : "419", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x0134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x0133", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "259", "DependentChan" : "420", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x0133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_1_x0107", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "181", "DependentChan" : "399", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_1_x0107_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "257", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_12_x0_U0.local_C_V_U", "Parent" : "256"},
	{"ID" : "258", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_12_x0_U0.buf_data_split_V_U", "Parent" : "256"},
	{"ID" : "259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_13_x0_U0", "Parent" : "9", "Child" : ["260", "261"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x0133", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "256", "DependentChan" : "420", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x0133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x0132", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "262", "DependentChan" : "421", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x0132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_1_x0106", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "169", "DependentChan" : "393", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_1_x0106_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "260", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_13_x0_U0.local_C_V_U", "Parent" : "259"},
	{"ID" : "261", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_13_x0_U0.buf_data_split_V_U", "Parent" : "259"},
	{"ID" : "262", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_14_x0_U0", "Parent" : "9", "Child" : ["263", "264"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x0132", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "259", "DependentChan" : "421", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x0132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x0131", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "265", "DependentChan" : "422", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x0131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_1_x0105", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "157", "DependentChan" : "387", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_1_x0105_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "263", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_14_x0_U0.local_C_V_U", "Parent" : "262"},
	{"ID" : "264", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_14_x0_U0.buf_data_split_V_U", "Parent" : "262"},
	{"ID" : "265", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_15_x0_U0", "Parent" : "9", "Child" : ["266", "267"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x0131", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "262", "DependentChan" : "422", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x0131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x0130", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "268", "DependentChan" : "423", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x0130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_1_x0104", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "145", "DependentChan" : "381", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_1_x0104_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "266", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_15_x0_U0.local_C_V_U", "Parent" : "265"},
	{"ID" : "267", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_15_x0_U0.buf_data_split_V_U", "Parent" : "265"},
	{"ID" : "268", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_16_x0_U0", "Parent" : "9", "Child" : ["269", "270"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x0130", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "265", "DependentChan" : "423", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x0130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x0129", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "271", "DependentChan" : "424", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x0129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_1_x0103", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "133", "DependentChan" : "375", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_1_x0103_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "269", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_16_x0_U0.local_C_V_U", "Parent" : "268"},
	{"ID" : "270", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_16_x0_U0.buf_data_split_V_U", "Parent" : "268"},
	{"ID" : "271", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_17_x0_U0", "Parent" : "9", "Child" : ["272", "273"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x0129", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "268", "DependentChan" : "424", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x0129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x0128", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "274", "DependentChan" : "425", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x0128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x0102", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "121", "DependentChan" : "369", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x0102_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "272", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_17_x0_U0.local_C_V_U", "Parent" : "271"},
	{"ID" : "273", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_17_x0_U0.buf_data_split_V_U", "Parent" : "271"},
	{"ID" : "274", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_18_x0_U0", "Parent" : "9", "Child" : ["275", "276"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x0128", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "271", "DependentChan" : "425", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x0128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x0127", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "277", "DependentChan" : "426", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x0127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_1_x0101", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "109", "DependentChan" : "363", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_1_x0101_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "275", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_18_x0_U0.local_C_V_U", "Parent" : "274"},
	{"ID" : "276", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_18_x0_U0.buf_data_split_V_U", "Parent" : "274"},
	{"ID" : "277", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_19_x0_U0", "Parent" : "9", "Child" : ["278", "279"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x0127", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "274", "DependentChan" : "426", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x0127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x0126", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "280", "DependentChan" : "427", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x0126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_1_x0100", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "97", "DependentChan" : "357", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_1_x0100_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "278", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_19_x0_U0.local_C_V_U", "Parent" : "277"},
	{"ID" : "279", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_19_x0_U0.buf_data_split_V_U", "Parent" : "277"},
	{"ID" : "280", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_20_x0_U0", "Parent" : "9", "Child" : ["281", "282"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x0126", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "277", "DependentChan" : "427", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x0126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x0125", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "283", "DependentChan" : "428", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x0125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_1_x099", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "85", "DependentChan" : "351", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_1_x099_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "281", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_20_x0_U0.local_C_V_U", "Parent" : "280"},
	{"ID" : "282", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_20_x0_U0.buf_data_split_V_U", "Parent" : "280"},
	{"ID" : "283", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_21_x0_U0", "Parent" : "9", "Child" : ["284", "285"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x0125", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "280", "DependentChan" : "428", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x0125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x0124", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "286", "DependentChan" : "429", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x0124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_1_x098", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "73", "DependentChan" : "345", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_1_x098_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "284", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_21_x0_U0.local_C_V_U", "Parent" : "283"},
	{"ID" : "285", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_21_x0_U0.buf_data_split_V_U", "Parent" : "283"},
	{"ID" : "286", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_22_x0_U0", "Parent" : "9", "Child" : ["287", "288"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x0124", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "283", "DependentChan" : "429", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x0124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x0123", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "289", "DependentChan" : "430", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x0123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_1_x097", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "61", "DependentChan" : "339", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_1_x097_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "287", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_22_x0_U0.local_C_V_U", "Parent" : "286"},
	{"ID" : "288", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_22_x0_U0.buf_data_split_V_U", "Parent" : "286"},
	{"ID" : "289", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_23_x0_U0", "Parent" : "9", "Child" : ["290", "291"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x0123", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "286", "DependentChan" : "430", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x0123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x0122", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "292", "DependentChan" : "431", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x0122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_1_x096", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "49", "DependentChan" : "333", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_1_x096_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "290", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_23_x0_U0.local_C_V_U", "Parent" : "289"},
	{"ID" : "291", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L1_out_23_x0_U0.buf_data_split_V_U", "Parent" : "289"},
	{"ID" : "292", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L2_out_boundary_x0_U0", "Parent" : "9",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x0136", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "293", "DependentChan" : "432", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x0136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x0122", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "289", "DependentChan" : "431", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x0122_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "293", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L2_out_x0_U0", "Parent" : "9",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x0136", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "292", "DependentChan" : "432", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x0136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x0135", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "294", "DependentChan" : "433", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x0135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x0109", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "250", "DependentChan" : "418", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x0109_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "294", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L3_out_x0_U0", "Parent" : "9", "Child" : ["295"],
		"CDFG" : "C_drain_IO_L3_out_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "45057", "EstimateLatencyMax" : "45057",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x0135", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "293", "DependentChan" : "433", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x0135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "C", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "295", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.C_drain_IO_L3_out_x0_U0.mem_data_split_V_U", "Parent" : "294"},
	{"ID" : "296", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.A_c_U", "Parent" : "9"},
	{"ID" : "297", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.B_c_U", "Parent" : "9"},
	{"ID" : "298", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_A_IO_L2_in_0_x0_U", "Parent" : "9"},
	{"ID" : "299", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_A_IO_L2_in_1_x0_U", "Parent" : "9"},
	{"ID" : "300", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_PE_0_0_x0_U", "Parent" : "9"},
	{"ID" : "301", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_A_IO_L2_in_2_x0_U", "Parent" : "9"},
	{"ID" : "302", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_PE_1_0_x0_U", "Parent" : "9"},
	{"ID" : "303", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_A_IO_L2_in_3_x0_U", "Parent" : "9"},
	{"ID" : "304", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_PE_2_0_x0_U", "Parent" : "9"},
	{"ID" : "305", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_A_IO_L2_in_4_x0_U", "Parent" : "9"},
	{"ID" : "306", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_PE_3_0_x0_U", "Parent" : "9"},
	{"ID" : "307", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_A_IO_L2_in_5_x0_U", "Parent" : "9"},
	{"ID" : "308", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_PE_4_0_x0_U", "Parent" : "9"},
	{"ID" : "309", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_A_IO_L2_in_6_x0_U", "Parent" : "9"},
	{"ID" : "310", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_PE_5_0_x0_U", "Parent" : "9"},
	{"ID" : "311", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_A_IO_L2_in_7_x0_U", "Parent" : "9"},
	{"ID" : "312", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_PE_6_0_x0_U", "Parent" : "9"},
	{"ID" : "313", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_A_IO_L2_in_8_x0_U", "Parent" : "9"},
	{"ID" : "314", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_PE_7_0_x0_U", "Parent" : "9"},
	{"ID" : "315", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_A_IO_L2_in_9_x0_U", "Parent" : "9"},
	{"ID" : "316", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_PE_8_0_x0_U", "Parent" : "9"},
	{"ID" : "317", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_A_IO_L2_in_10_x0_U", "Parent" : "9"},
	{"ID" : "318", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_PE_9_0_x0_U", "Parent" : "9"},
	{"ID" : "319", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_A_IO_L2_in_11_x0_U", "Parent" : "9"},
	{"ID" : "320", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_PE_10_0_x0_U", "Parent" : "9"},
	{"ID" : "321", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_A_IO_L2_in_12_x0_U", "Parent" : "9"},
	{"ID" : "322", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_PE_11_0_x0_U", "Parent" : "9"},
	{"ID" : "323", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_PE_12_0_x0_U", "Parent" : "9"},
	{"ID" : "324", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_B_B_IO_L2_in_0_x0_U", "Parent" : "9"},
	{"ID" : "325", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_B_B_IO_L2_in_1_x0_U", "Parent" : "9"},
	{"ID" : "326", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_B_PE_0_0_x0_U", "Parent" : "9"},
	{"ID" : "327", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_B_PE_0_1_x0_U", "Parent" : "9"},
	{"ID" : "328", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_PE_0_1_x0_U", "Parent" : "9"},
	{"ID" : "329", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_B_PE_1_0_x0_U", "Parent" : "9"},
	{"ID" : "330", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_PE_0_0_x0_U", "Parent" : "9"},
	{"ID" : "331", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_PE_0_2_x0_U", "Parent" : "9"},
	{"ID" : "332", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_B_PE_1_1_x0_U", "Parent" : "9"},
	{"ID" : "333", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_PE_0_1_x0_U", "Parent" : "9"},
	{"ID" : "334", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_PE_1_1_x0_U", "Parent" : "9"},
	{"ID" : "335", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_B_PE_2_0_x0_U", "Parent" : "9"},
	{"ID" : "336", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_PE_1_0_x0_U", "Parent" : "9"},
	{"ID" : "337", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_PE_1_2_x0_U", "Parent" : "9"},
	{"ID" : "338", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_B_PE_2_1_x0_U", "Parent" : "9"},
	{"ID" : "339", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_PE_1_1_x0_U", "Parent" : "9"},
	{"ID" : "340", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_PE_2_1_x0_U", "Parent" : "9"},
	{"ID" : "341", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_B_PE_3_0_x0_U", "Parent" : "9"},
	{"ID" : "342", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_PE_2_0_x0_U", "Parent" : "9"},
	{"ID" : "343", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_PE_2_2_x0_U", "Parent" : "9"},
	{"ID" : "344", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_B_PE_3_1_x0_U", "Parent" : "9"},
	{"ID" : "345", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_PE_2_1_x0_U", "Parent" : "9"},
	{"ID" : "346", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_PE_3_1_x0_U", "Parent" : "9"},
	{"ID" : "347", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_B_PE_4_0_x0_U", "Parent" : "9"},
	{"ID" : "348", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_PE_3_0_x0_U", "Parent" : "9"},
	{"ID" : "349", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_PE_3_2_x0_U", "Parent" : "9"},
	{"ID" : "350", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_B_PE_4_1_x0_U", "Parent" : "9"},
	{"ID" : "351", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_PE_3_1_x0_U", "Parent" : "9"},
	{"ID" : "352", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_PE_4_1_x0_U", "Parent" : "9"},
	{"ID" : "353", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_B_PE_5_0_x0_U", "Parent" : "9"},
	{"ID" : "354", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_PE_4_0_x0_U", "Parent" : "9"},
	{"ID" : "355", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_PE_4_2_x0_U", "Parent" : "9"},
	{"ID" : "356", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_B_PE_5_1_x0_U", "Parent" : "9"},
	{"ID" : "357", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_PE_4_1_x0_U", "Parent" : "9"},
	{"ID" : "358", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_PE_5_1_x0_U", "Parent" : "9"},
	{"ID" : "359", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_B_PE_6_0_x0_U", "Parent" : "9"},
	{"ID" : "360", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_PE_5_0_x0_U", "Parent" : "9"},
	{"ID" : "361", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_PE_5_2_x0_U", "Parent" : "9"},
	{"ID" : "362", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_B_PE_6_1_x0_U", "Parent" : "9"},
	{"ID" : "363", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_PE_5_1_x0_U", "Parent" : "9"},
	{"ID" : "364", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_PE_6_1_x0_U", "Parent" : "9"},
	{"ID" : "365", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_B_PE_7_0_x0_U", "Parent" : "9"},
	{"ID" : "366", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_PE_6_0_x0_U", "Parent" : "9"},
	{"ID" : "367", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_PE_6_2_x0_U", "Parent" : "9"},
	{"ID" : "368", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_B_PE_7_1_x0_U", "Parent" : "9"},
	{"ID" : "369", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_PE_6_1_x0_U", "Parent" : "9"},
	{"ID" : "370", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_PE_7_1_x0_U", "Parent" : "9"},
	{"ID" : "371", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_B_PE_8_0_x0_U", "Parent" : "9"},
	{"ID" : "372", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_PE_7_0_x0_U", "Parent" : "9"},
	{"ID" : "373", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_PE_7_2_x0_U", "Parent" : "9"},
	{"ID" : "374", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_B_PE_8_1_x0_U", "Parent" : "9"},
	{"ID" : "375", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_PE_7_1_x0_U", "Parent" : "9"},
	{"ID" : "376", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_PE_8_1_x0_U", "Parent" : "9"},
	{"ID" : "377", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_B_PE_9_0_x0_U", "Parent" : "9"},
	{"ID" : "378", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_PE_8_0_x0_U", "Parent" : "9"},
	{"ID" : "379", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_PE_8_2_x0_U", "Parent" : "9"},
	{"ID" : "380", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_B_PE_9_1_x0_U", "Parent" : "9"},
	{"ID" : "381", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_PE_8_1_x0_U", "Parent" : "9"},
	{"ID" : "382", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_PE_9_1_x0_U", "Parent" : "9"},
	{"ID" : "383", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_B_PE_10_0_x0_U", "Parent" : "9"},
	{"ID" : "384", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_PE_9_0_x0_U", "Parent" : "9"},
	{"ID" : "385", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_PE_9_2_x0_U", "Parent" : "9"},
	{"ID" : "386", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_B_PE_10_1_x0_U", "Parent" : "9"},
	{"ID" : "387", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_PE_9_1_x0_U", "Parent" : "9"},
	{"ID" : "388", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_PE_10_1_x0_U", "Parent" : "9"},
	{"ID" : "389", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_B_PE_11_0_x0_U", "Parent" : "9"},
	{"ID" : "390", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_PE_10_0_x0_U", "Parent" : "9"},
	{"ID" : "391", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_PE_10_2_x0_U", "Parent" : "9"},
	{"ID" : "392", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_B_PE_11_1_x0_U", "Parent" : "9"},
	{"ID" : "393", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_PE_10_1_x0_U", "Parent" : "9"},
	{"ID" : "394", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_PE_11_1_x0_U", "Parent" : "9"},
	{"ID" : "395", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_B_PE_12_0_x0_U", "Parent" : "9"},
	{"ID" : "396", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_PE_11_0_x0_U", "Parent" : "9"},
	{"ID" : "397", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_PE_11_2_x0_U", "Parent" : "9"},
	{"ID" : "398", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_B_PE_12_1_x0_U", "Parent" : "9"},
	{"ID" : "399", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_PE_11_1_x0_U", "Parent" : "9"},
	{"ID" : "400", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_PE_12_1_x0_U", "Parent" : "9"},
	{"ID" : "401", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_B_PE_13_0_x0_U", "Parent" : "9"},
	{"ID" : "402", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_PE_12_0_x0_U", "Parent" : "9"},
	{"ID" : "403", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_A_PE_12_2_x0_U", "Parent" : "9"},
	{"ID" : "404", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_B_PE_13_1_x0_U", "Parent" : "9"},
	{"ID" : "405", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_PE_12_1_x0_U", "Parent" : "9"},
	{"ID" : "406", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_C_drain_IO_L1_out_0_12_x0_U", "Parent" : "9"},
	{"ID" : "407", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_C_drain_IO_L1_out_0_11_x0_U", "Parent" : "9"},
	{"ID" : "408", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_C_drain_IO_L1_out_0_10_x0_U", "Parent" : "9"},
	{"ID" : "409", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_C_drain_IO_L1_out_0_9_x0_U", "Parent" : "9"},
	{"ID" : "410", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_C_drain_IO_L1_out_0_8_x0_U", "Parent" : "9"},
	{"ID" : "411", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_C_drain_IO_L1_out_0_7_x0_U", "Parent" : "9"},
	{"ID" : "412", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_C_drain_IO_L1_out_0_6_x0_U", "Parent" : "9"},
	{"ID" : "413", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_C_drain_IO_L1_out_0_5_x0_U", "Parent" : "9"},
	{"ID" : "414", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_C_drain_IO_L1_out_0_4_x0_U", "Parent" : "9"},
	{"ID" : "415", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_C_drain_IO_L1_out_0_3_x0_U", "Parent" : "9"},
	{"ID" : "416", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_C_drain_IO_L1_out_0_2_x0_U", "Parent" : "9"},
	{"ID" : "417", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_C_drain_IO_L1_out_0_1_x0_U", "Parent" : "9"},
	{"ID" : "418", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_C_drain_IO_L1_out_0_0_x0_U", "Parent" : "9"},
	{"ID" : "419", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_C_drain_IO_L1_out_1_12_x0_U", "Parent" : "9"},
	{"ID" : "420", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_C_drain_IO_L1_out_1_11_x0_U", "Parent" : "9"},
	{"ID" : "421", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_C_drain_IO_L1_out_1_10_x0_U", "Parent" : "9"},
	{"ID" : "422", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_C_drain_IO_L1_out_1_9_x0_U", "Parent" : "9"},
	{"ID" : "423", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_C_drain_IO_L1_out_1_8_x0_U", "Parent" : "9"},
	{"ID" : "424", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_C_drain_IO_L1_out_1_7_x0_U", "Parent" : "9"},
	{"ID" : "425", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_C_drain_IO_L1_out_1_6_x0_U", "Parent" : "9"},
	{"ID" : "426", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_C_drain_IO_L1_out_1_5_x0_U", "Parent" : "9"},
	{"ID" : "427", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_C_drain_IO_L1_out_1_4_x0_U", "Parent" : "9"},
	{"ID" : "428", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_C_drain_IO_L1_out_1_3_x0_U", "Parent" : "9"},
	{"ID" : "429", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_C_drain_IO_L1_out_1_2_x0_U", "Parent" : "9"},
	{"ID" : "430", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_C_drain_IO_L1_out_1_1_x0_U", "Parent" : "9"},
	{"ID" : "431", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_C_drain_IO_L1_out_1_0_x0_U", "Parent" : "9"},
	{"ID" : "432", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_C_drain_IO_L2_out_1_x0_U", "Parent" : "9"},
	{"ID" : "433", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x0_fu_104.fifo_C_drain_C_drain_IO_L2_out_0_x0_U", "Parent" : "9"},
	{"ID" : "434", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118", "Parent" : "0", "Child" : ["435", "436", "437", "440", "442", "444", "446", "448", "450", "452", "454", "456", "458", "460", "462", "464", "466", "467", "469", "471", "477", "483", "489", "495", "501", "507", "513", "519", "525", "531", "537", "543", "549", "555", "561", "567", "573", "579", "585", "591", "597", "603", "609", "615", "621", "627", "628", "629", "630", "631", "632", "633", "634", "635", "636", "637", "638", "639", "640", "641", "642", "645", "648", "651", "654", "657", "660", "663", "666", "669", "672", "675", "678", "681", "684", "687", "690", "693", "696", "699", "702", "705", "708", "711", "714", "717", "720", "721", "722", "724", "725", "726", "727", "728", "729", "730", "731", "732", "733", "734", "735", "736", "737", "738", "739", "740", "741", "742", "743", "744", "745", "746", "747", "748", "749", "750", "751", "752", "753", "754", "755", "756", "757", "758", "759", "760", "761", "762", "763", "764", "765", "766", "767", "768", "769", "770", "771", "772", "773", "774", "775", "776", "777", "778", "779", "780", "781", "782", "783", "784", "785", "786", "787", "788", "789", "790", "791", "792", "793", "794", "795", "796", "797", "798", "799", "800", "801", "802", "803", "804", "805", "806", "807", "808", "809", "810", "811", "812", "813", "814", "815", "816", "817", "818", "819", "820", "821", "822", "823", "824", "825", "826", "827", "828", "829", "830", "831", "832", "833", "834", "835", "836", "837", "838", "839", "840", "841", "842", "843", "844", "845", "846", "847", "848", "849", "850", "851", "852", "853", "854", "855", "856", "857", "858", "859", "860", "861"],
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
			{"ID" : "435", "Name" : "kernel3_x2_entry48_U0"},
			{"ID" : "437", "Name" : "A_IO_L3_in_x2_U0"},
			{"ID" : "466", "Name" : "B_IO_L3_in_x2_U0"}],
		"OutputProcess" : [
			{"ID" : "627", "Name" : "A_PE_dummy_0_x2_U0"},
			{"ID" : "628", "Name" : "A_PE_dummy_1_x2_U0"},
			{"ID" : "629", "Name" : "A_PE_dummy_2_x2_U0"},
			{"ID" : "630", "Name" : "A_PE_dummy_3_x2_U0"},
			{"ID" : "631", "Name" : "A_PE_dummy_4_x2_U0"},
			{"ID" : "632", "Name" : "A_PE_dummy_5_x2_U0"},
			{"ID" : "633", "Name" : "A_PE_dummy_6_x2_U0"},
			{"ID" : "634", "Name" : "A_PE_dummy_7_x2_U0"},
			{"ID" : "635", "Name" : "A_PE_dummy_8_x2_U0"},
			{"ID" : "636", "Name" : "A_PE_dummy_9_x2_U0"},
			{"ID" : "637", "Name" : "A_PE_dummy_10_x2_U0"},
			{"ID" : "638", "Name" : "A_PE_dummy_11_x2_U0"},
			{"ID" : "639", "Name" : "A_PE_dummy_12_x2_U0"},
			{"ID" : "640", "Name" : "B_PE_dummy_0_x2_U0"},
			{"ID" : "641", "Name" : "B_PE_dummy_1_x2_U0"},
			{"ID" : "722", "Name" : "C_drain_IO_L3_out_x2_U0"}],
		"Port" : [
			{"Name" : "gmem_C", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "722", "SubInstance" : "C_drain_IO_L3_out_x2_U0", "Port" : "gmem_C"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "466", "SubInstance" : "B_IO_L3_in_x2_U0", "Port" : "B"},
					{"ID" : "437", "SubInstance" : "A_IO_L3_in_x2_U0", "Port" : "A"}]},
			{"Name" : "C", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "435", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.kernel3_x2_entry48_U0", "Parent" : "434",
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
			{"Name" : "C_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "436", "DependentChan" : "724", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "436", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.kernel3_x2_entry65_U0", "Parent" : "434",
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
			{"Name" : "C", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "435", "DependentChan" : "724", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "C_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "722", "DependentChan" : "725", "DependentChanDepth" : "33", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "437", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.A_IO_L3_in_x2_U0", "Parent" : "434", "Child" : ["438", "439"],
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
			{"Name" : "fifo_A_A_IO_L2_in_0_x21", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "440", "DependentChan" : "726", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_0_x21_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "438", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.A_IO_L3_in_x2_U0.add_12ns_12ns_12_1_1_U980", "Parent" : "437"},
	{"ID" : "439", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.A_IO_L3_in_x2_U0.add_2ns_2ns_2_1_1_U981", "Parent" : "437"},
	{"ID" : "440", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.A_IO_L2_in_0_x2_U0", "Parent" : "434", "Child" : ["441"],
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
			{"Name" : "fifo_A_A_IO_L2_in_0_x21", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "437", "DependentChan" : "726", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_0_x21_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_1_x22", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "442", "DependentChan" : "727", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x22_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_0_x216", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "471", "DependentChan" : "728", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x216_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "441", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.A_IO_L2_in_0_x2_U0.local_A_pong_V_U", "Parent" : "440"},
	{"ID" : "442", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.A_IO_L2_in_1_x2_U0", "Parent" : "434", "Child" : ["443"],
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
			{"Name" : "fifo_A_A_IO_L2_in_1_x22", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "440", "DependentChan" : "727", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x22_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_2_x23", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "444", "DependentChan" : "729", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x23_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_0_x219", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "483", "DependentChan" : "730", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x219_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "443", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.A_IO_L2_in_1_x2_U0.local_A_pong_V_U", "Parent" : "442"},
	{"ID" : "444", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.A_IO_L2_in_2_x2_U0", "Parent" : "434", "Child" : ["445"],
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
			{"Name" : "fifo_A_A_IO_L2_in_2_x23", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "442", "DependentChan" : "729", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x23_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_3_x24", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "446", "DependentChan" : "731", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x24_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_0_x222", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "495", "DependentChan" : "732", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x222_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "445", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.A_IO_L2_in_2_x2_U0.local_A_pong_V_U", "Parent" : "444"},
	{"ID" : "446", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.A_IO_L2_in_3_x2_U0", "Parent" : "434", "Child" : ["447"],
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
			{"Name" : "fifo_A_A_IO_L2_in_3_x24", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "444", "DependentChan" : "731", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x24_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_4_x25", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "448", "DependentChan" : "733", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_4_x25_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_0_x225", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "507", "DependentChan" : "734", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x225_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "447", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.A_IO_L2_in_3_x2_U0.local_A_pong_V_U", "Parent" : "446"},
	{"ID" : "448", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.A_IO_L2_in_4_x2_U0", "Parent" : "434", "Child" : ["449"],
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
			{"Name" : "fifo_A_A_IO_L2_in_4_x25", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "446", "DependentChan" : "733", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_4_x25_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_5_x26", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "450", "DependentChan" : "735", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_5_x26_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_0_x228", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "519", "DependentChan" : "736", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_0_x228_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "449", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.A_IO_L2_in_4_x2_U0.local_A_pong_V_U", "Parent" : "448"},
	{"ID" : "450", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.A_IO_L2_in_5_x2_U0", "Parent" : "434", "Child" : ["451"],
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
			{"Name" : "fifo_A_A_IO_L2_in_5_x26", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "448", "DependentChan" : "735", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_5_x26_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_6_x27", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "452", "DependentChan" : "737", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_6_x27_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_0_x231", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "531", "DependentChan" : "738", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_0_x231_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "451", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.A_IO_L2_in_5_x2_U0.local_A_pong_V_U", "Parent" : "450"},
	{"ID" : "452", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.A_IO_L2_in_6_x2_U0", "Parent" : "434", "Child" : ["453"],
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
			{"Name" : "fifo_A_A_IO_L2_in_6_x27", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "450", "DependentChan" : "737", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_6_x27_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_7_x28", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "454", "DependentChan" : "739", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_7_x28_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_0_x234", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "543", "DependentChan" : "740", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_0_x234_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "453", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.A_IO_L2_in_6_x2_U0.local_A_pong_V_U", "Parent" : "452"},
	{"ID" : "454", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.A_IO_L2_in_7_x2_U0", "Parent" : "434", "Child" : ["455"],
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
			{"Name" : "fifo_A_A_IO_L2_in_7_x28", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "452", "DependentChan" : "739", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_7_x28_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_8_x29", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "456", "DependentChan" : "741", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_8_x29_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_0_x237", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "555", "DependentChan" : "742", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_0_x237_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "455", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.A_IO_L2_in_7_x2_U0.local_A_pong_V_U", "Parent" : "454"},
	{"ID" : "456", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.A_IO_L2_in_8_x2_U0", "Parent" : "434", "Child" : ["457"],
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
			{"Name" : "fifo_A_A_IO_L2_in_8_x29", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "454", "DependentChan" : "741", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_8_x29_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_9_x210", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "458", "DependentChan" : "743", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_9_x210_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_8_0_x240", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "567", "DependentChan" : "744", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_0_x240_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "457", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.A_IO_L2_in_8_x2_U0.local_A_pong_V_U", "Parent" : "456"},
	{"ID" : "458", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.A_IO_L2_in_9_x2_U0", "Parent" : "434", "Child" : ["459"],
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
			{"Name" : "fifo_A_A_IO_L2_in_9_x210", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "456", "DependentChan" : "743", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_9_x210_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_10_x211", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "460", "DependentChan" : "745", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_10_x211_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_9_0_x243", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "579", "DependentChan" : "746", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_0_x243_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "459", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.A_IO_L2_in_9_x2_U0.local_A_pong_V_U", "Parent" : "458"},
	{"ID" : "460", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.A_IO_L2_in_10_x2_U0", "Parent" : "434", "Child" : ["461"],
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
			{"Name" : "fifo_A_A_IO_L2_in_10_x211", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "458", "DependentChan" : "745", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_10_x211_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_11_x212", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "462", "DependentChan" : "747", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_11_x212_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_10_0_x246", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "591", "DependentChan" : "748", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_0_x246_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "461", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.A_IO_L2_in_10_x2_U0.local_A_pong_V_U", "Parent" : "460"},
	{"ID" : "462", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.A_IO_L2_in_11_x2_U0", "Parent" : "434", "Child" : ["463"],
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
			{"Name" : "fifo_A_A_IO_L2_in_11_x212", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "460", "DependentChan" : "747", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_11_x212_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_12_x213", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "464", "DependentChan" : "749", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_12_x213_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_11_0_x249", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "603", "DependentChan" : "750", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_0_x249_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "463", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.A_IO_L2_in_11_x2_U0.local_A_pong_V_U", "Parent" : "462"},
	{"ID" : "464", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.A_IO_L2_in_boundary_x2_U0", "Parent" : "434", "Child" : ["465"],
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
			{"Name" : "fifo_A_A_IO_L2_in_12_x213", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "462", "DependentChan" : "749", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_12_x213_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_12_0_x252", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "615", "DependentChan" : "751", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_0_x252_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "465", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.A_IO_L2_in_boundary_x2_U0.local_A_pong_V_U", "Parent" : "464"},
	{"ID" : "466", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.B_IO_L3_in_x2_U0", "Parent" : "434",
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
			{"Name" : "fifo_B_B_IO_L2_in_0_x214", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "467", "DependentChan" : "752", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_0_x214_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "467", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.B_IO_L2_in_x2_U0", "Parent" : "434", "Child" : ["468"],
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
			{"Name" : "fifo_B_B_IO_L2_in_0_x214", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "466", "DependentChan" : "752", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_0_x214_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_1_x215", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "469", "DependentChan" : "753", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x215_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x255", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "471", "DependentChan" : "754", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x255_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "468", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.B_IO_L2_in_x2_U0.local_B_pong_V_U", "Parent" : "467"},
	{"ID" : "469", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.B_IO_L2_in_boundary_x2_U0", "Parent" : "434", "Child" : ["470"],
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
			{"Name" : "fifo_B_B_IO_L2_in_1_x215", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "467", "DependentChan" : "753", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x215_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x269", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "477", "DependentChan" : "755", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x269_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "470", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.B_IO_L2_in_boundary_x2_U0.local_B_pong_V_U", "Parent" : "469"},
	{"ID" : "471", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_0_0_x2_U0", "Parent" : "434", "Child" : ["472", "473", "474", "475", "476"],
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
			{"Name" : "fifo_A_PE_0_0_x216", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "440", "DependentChan" : "728", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x216_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_1_x217", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "477", "DependentChan" : "756", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x217_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x255", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "467", "DependentChan" : "754", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x255_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x256", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "483", "DependentChan" : "757", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x256_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_0_x283", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "678", "DependentChan" : "758", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_0_x283_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "472", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_0_0_x2_U0.local_A_0_U", "Parent" : "471"},
	{"ID" : "473", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_0_0_x2_U0.local_B_0_U", "Parent" : "471"},
	{"ID" : "474", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_0_0_x2_U0.local_C_U", "Parent" : "471"},
	{"ID" : "475", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_0_0_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1029", "Parent" : "471"},
	{"ID" : "476", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_0_0_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1030", "Parent" : "471"},
	{"ID" : "477", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_0_1_x2_U0", "Parent" : "434", "Child" : ["478", "479", "480", "481", "482"],
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
			{"Name" : "fifo_A_PE_0_1_x217", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "471", "DependentChan" : "756", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x217_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_2_x218", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "627", "DependentChan" : "759", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x218_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x269", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "469", "DependentChan" : "755", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x269_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x270", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "489", "DependentChan" : "760", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x270_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_1_x296", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "717", "DependentChan" : "761", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_1_x296_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "478", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_0_1_x2_U0.local_A_0_U", "Parent" : "477"},
	{"ID" : "479", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_0_1_x2_U0.local_B_0_U", "Parent" : "477"},
	{"ID" : "480", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_0_1_x2_U0.local_C_U", "Parent" : "477"},
	{"ID" : "481", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_0_1_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1036", "Parent" : "477"},
	{"ID" : "482", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_0_1_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1037", "Parent" : "477"},
	{"ID" : "483", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_1_0_x2_U0", "Parent" : "434", "Child" : ["484", "485", "486", "487", "488"],
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
			{"Name" : "fifo_A_PE_1_0_x219", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "442", "DependentChan" : "730", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x219_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_1_x220", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "489", "DependentChan" : "762", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x220_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x256", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "471", "DependentChan" : "757", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x256_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x257", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "495", "DependentChan" : "763", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x257_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_0_x284", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "675", "DependentChan" : "764", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_0_x284_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "484", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_1_0_x2_U0.local_A_0_U", "Parent" : "483"},
	{"ID" : "485", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_1_0_x2_U0.local_B_0_U", "Parent" : "483"},
	{"ID" : "486", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_1_0_x2_U0.local_C_U", "Parent" : "483"},
	{"ID" : "487", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_1_0_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1043", "Parent" : "483"},
	{"ID" : "488", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_1_0_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1044", "Parent" : "483"},
	{"ID" : "489", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_1_1_x2_U0", "Parent" : "434", "Child" : ["490", "491", "492", "493", "494"],
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
			{"Name" : "fifo_A_PE_1_1_x220", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "483", "DependentChan" : "762", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x220_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_2_x221", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "628", "DependentChan" : "765", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x221_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x270", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "477", "DependentChan" : "760", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x270_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x271", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "501", "DependentChan" : "766", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x271_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_1_x297", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "714", "DependentChan" : "767", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_1_x297_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "490", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_1_1_x2_U0.local_A_0_U", "Parent" : "489"},
	{"ID" : "491", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_1_1_x2_U0.local_B_0_U", "Parent" : "489"},
	{"ID" : "492", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_1_1_x2_U0.local_C_U", "Parent" : "489"},
	{"ID" : "493", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_1_1_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1050", "Parent" : "489"},
	{"ID" : "494", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_1_1_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1051", "Parent" : "489"},
	{"ID" : "495", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_2_0_x2_U0", "Parent" : "434", "Child" : ["496", "497", "498", "499", "500"],
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
			{"Name" : "fifo_A_PE_2_0_x222", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "444", "DependentChan" : "732", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x222_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_1_x223", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "501", "DependentChan" : "768", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x223_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x257", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "483", "DependentChan" : "763", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x257_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x258", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "507", "DependentChan" : "769", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x258_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_0_x285", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "672", "DependentChan" : "770", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_0_x285_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "496", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_2_0_x2_U0.local_A_0_U", "Parent" : "495"},
	{"ID" : "497", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_2_0_x2_U0.local_B_0_U", "Parent" : "495"},
	{"ID" : "498", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_2_0_x2_U0.local_C_U", "Parent" : "495"},
	{"ID" : "499", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_2_0_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1057", "Parent" : "495"},
	{"ID" : "500", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_2_0_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1058", "Parent" : "495"},
	{"ID" : "501", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_2_1_x2_U0", "Parent" : "434", "Child" : ["502", "503", "504", "505", "506"],
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
			{"Name" : "fifo_A_PE_2_1_x223", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "495", "DependentChan" : "768", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x223_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_2_x224", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "629", "DependentChan" : "771", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x224_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x271", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "489", "DependentChan" : "766", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x271_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x272", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "513", "DependentChan" : "772", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x272_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_1_x298", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "711", "DependentChan" : "773", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_1_x298_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "502", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_2_1_x2_U0.local_A_0_U", "Parent" : "501"},
	{"ID" : "503", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_2_1_x2_U0.local_B_0_U", "Parent" : "501"},
	{"ID" : "504", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_2_1_x2_U0.local_C_U", "Parent" : "501"},
	{"ID" : "505", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_2_1_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1064", "Parent" : "501"},
	{"ID" : "506", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_2_1_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1065", "Parent" : "501"},
	{"ID" : "507", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_3_0_x2_U0", "Parent" : "434", "Child" : ["508", "509", "510", "511", "512"],
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
			{"Name" : "fifo_A_PE_3_0_x225", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "446", "DependentChan" : "734", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x225_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_1_x226", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "513", "DependentChan" : "774", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x226_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x258", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "495", "DependentChan" : "769", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x258_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x259", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "519", "DependentChan" : "775", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x259_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_0_x286", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "669", "DependentChan" : "776", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_0_x286_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "508", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_3_0_x2_U0.local_A_0_U", "Parent" : "507"},
	{"ID" : "509", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_3_0_x2_U0.local_B_0_U", "Parent" : "507"},
	{"ID" : "510", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_3_0_x2_U0.local_C_U", "Parent" : "507"},
	{"ID" : "511", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_3_0_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1071", "Parent" : "507"},
	{"ID" : "512", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_3_0_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1072", "Parent" : "507"},
	{"ID" : "513", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_3_1_x2_U0", "Parent" : "434", "Child" : ["514", "515", "516", "517", "518"],
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
			{"Name" : "fifo_A_PE_3_1_x226", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "507", "DependentChan" : "774", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x226_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_2_x227", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "630", "DependentChan" : "777", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x227_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x272", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "501", "DependentChan" : "772", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x272_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x273", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "525", "DependentChan" : "778", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x273_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_1_x299", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "708", "DependentChan" : "779", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_1_x299_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "514", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_3_1_x2_U0.local_A_0_U", "Parent" : "513"},
	{"ID" : "515", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_3_1_x2_U0.local_B_0_U", "Parent" : "513"},
	{"ID" : "516", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_3_1_x2_U0.local_C_U", "Parent" : "513"},
	{"ID" : "517", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_3_1_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1078", "Parent" : "513"},
	{"ID" : "518", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_3_1_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1079", "Parent" : "513"},
	{"ID" : "519", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_4_0_x2_U0", "Parent" : "434", "Child" : ["520", "521", "522", "523", "524"],
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
			{"Name" : "fifo_A_PE_4_0_x228", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "448", "DependentChan" : "736", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_0_x228_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_1_x229", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "525", "DependentChan" : "780", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x229_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x259", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "507", "DependentChan" : "775", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x259_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x260", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "531", "DependentChan" : "781", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x260_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_0_x287", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "666", "DependentChan" : "782", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_0_x287_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "520", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_4_0_x2_U0.local_A_0_U", "Parent" : "519"},
	{"ID" : "521", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_4_0_x2_U0.local_B_0_U", "Parent" : "519"},
	{"ID" : "522", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_4_0_x2_U0.local_C_U", "Parent" : "519"},
	{"ID" : "523", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_4_0_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1085", "Parent" : "519"},
	{"ID" : "524", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_4_0_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1086", "Parent" : "519"},
	{"ID" : "525", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_4_1_x2_U0", "Parent" : "434", "Child" : ["526", "527", "528", "529", "530"],
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
			{"Name" : "fifo_A_PE_4_1_x229", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "519", "DependentChan" : "780", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x229_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_2_x230", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "631", "DependentChan" : "783", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_2_x230_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x273", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "513", "DependentChan" : "778", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x273_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_1_x274", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "537", "DependentChan" : "784", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_1_x274_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_1_x2100", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "705", "DependentChan" : "785", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_1_x2100_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "526", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_4_1_x2_U0.local_A_0_U", "Parent" : "525"},
	{"ID" : "527", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_4_1_x2_U0.local_B_0_U", "Parent" : "525"},
	{"ID" : "528", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_4_1_x2_U0.local_C_U", "Parent" : "525"},
	{"ID" : "529", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_4_1_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1092", "Parent" : "525"},
	{"ID" : "530", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_4_1_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1093", "Parent" : "525"},
	{"ID" : "531", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_5_0_x2_U0", "Parent" : "434", "Child" : ["532", "533", "534", "535", "536"],
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
			{"Name" : "fifo_A_PE_5_0_x231", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "450", "DependentChan" : "738", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_0_x231_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_1_x232", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "537", "DependentChan" : "786", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_1_x232_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x260", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "519", "DependentChan" : "781", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x260_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_0_x261", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "543", "DependentChan" : "787", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_0_x261_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_0_x288", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "663", "DependentChan" : "788", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_0_x288_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "532", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_5_0_x2_U0.local_A_0_U", "Parent" : "531"},
	{"ID" : "533", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_5_0_x2_U0.local_B_0_U", "Parent" : "531"},
	{"ID" : "534", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_5_0_x2_U0.local_C_U", "Parent" : "531"},
	{"ID" : "535", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_5_0_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1099", "Parent" : "531"},
	{"ID" : "536", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_5_0_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1100", "Parent" : "531"},
	{"ID" : "537", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_5_1_x2_U0", "Parent" : "434", "Child" : ["538", "539", "540", "541", "542"],
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
			{"Name" : "fifo_A_PE_5_1_x232", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "531", "DependentChan" : "786", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_1_x232_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_2_x233", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "632", "DependentChan" : "789", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_2_x233_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_1_x274", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "525", "DependentChan" : "784", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_1_x274_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x275", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "549", "DependentChan" : "790", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x275_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_1_x2101", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "702", "DependentChan" : "791", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_1_x2101_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "538", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_5_1_x2_U0.local_A_0_U", "Parent" : "537"},
	{"ID" : "539", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_5_1_x2_U0.local_B_0_U", "Parent" : "537"},
	{"ID" : "540", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_5_1_x2_U0.local_C_U", "Parent" : "537"},
	{"ID" : "541", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_5_1_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1106", "Parent" : "537"},
	{"ID" : "542", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_5_1_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1107", "Parent" : "537"},
	{"ID" : "543", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_6_0_x2_U0", "Parent" : "434", "Child" : ["544", "545", "546", "547", "548"],
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
			{"Name" : "fifo_A_PE_6_0_x234", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "452", "DependentChan" : "740", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_0_x234_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_1_x235", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "549", "DependentChan" : "792", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_1_x235_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_0_x261", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "531", "DependentChan" : "787", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_0_x261_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_0_x262", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "555", "DependentChan" : "793", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_0_x262_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_0_x289", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "660", "DependentChan" : "794", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_0_x289_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "544", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_6_0_x2_U0.local_A_0_U", "Parent" : "543"},
	{"ID" : "545", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_6_0_x2_U0.local_B_0_U", "Parent" : "543"},
	{"ID" : "546", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_6_0_x2_U0.local_C_U", "Parent" : "543"},
	{"ID" : "547", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_6_0_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1113", "Parent" : "543"},
	{"ID" : "548", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_6_0_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1114", "Parent" : "543"},
	{"ID" : "549", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_6_1_x2_U0", "Parent" : "434", "Child" : ["550", "551", "552", "553", "554"],
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
			{"Name" : "fifo_A_PE_6_1_x235", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "543", "DependentChan" : "792", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_1_x235_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_2_x236", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "633", "DependentChan" : "795", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x236_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x275", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "537", "DependentChan" : "790", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x275_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_1_x276", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "561", "DependentChan" : "796", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_1_x276_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x2102", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "699", "DependentChan" : "797", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x2102_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "550", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_6_1_x2_U0.local_A_0_U", "Parent" : "549"},
	{"ID" : "551", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_6_1_x2_U0.local_B_0_U", "Parent" : "549"},
	{"ID" : "552", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_6_1_x2_U0.local_C_U", "Parent" : "549"},
	{"ID" : "553", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_6_1_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1120", "Parent" : "549"},
	{"ID" : "554", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_6_1_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1121", "Parent" : "549"},
	{"ID" : "555", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_7_0_x2_U0", "Parent" : "434", "Child" : ["556", "557", "558", "559", "560"],
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
			{"Name" : "fifo_A_PE_7_0_x237", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "454", "DependentChan" : "742", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_0_x237_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_1_x238", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "561", "DependentChan" : "798", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_1_x238_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_0_x262", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "543", "DependentChan" : "793", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_0_x262_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_0_x263", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "567", "DependentChan" : "799", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_0_x263_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_0_x290", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "657", "DependentChan" : "800", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_0_x290_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "556", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_7_0_x2_U0.local_A_0_U", "Parent" : "555"},
	{"ID" : "557", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_7_0_x2_U0.local_B_0_U", "Parent" : "555"},
	{"ID" : "558", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_7_0_x2_U0.local_C_U", "Parent" : "555"},
	{"ID" : "559", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_7_0_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1127", "Parent" : "555"},
	{"ID" : "560", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_7_0_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1128", "Parent" : "555"},
	{"ID" : "561", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_7_1_x2_U0", "Parent" : "434", "Child" : ["562", "563", "564", "565", "566"],
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
			{"Name" : "fifo_A_PE_7_1_x238", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "555", "DependentChan" : "798", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_1_x238_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_2_x239", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "634", "DependentChan" : "801", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_2_x239_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_1_x276", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "549", "DependentChan" : "796", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_1_x276_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_1_x277", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "573", "DependentChan" : "802", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_1_x277_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_1_x2103", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "696", "DependentChan" : "803", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_1_x2103_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "562", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_7_1_x2_U0.local_A_0_U", "Parent" : "561"},
	{"ID" : "563", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_7_1_x2_U0.local_B_0_U", "Parent" : "561"},
	{"ID" : "564", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_7_1_x2_U0.local_C_U", "Parent" : "561"},
	{"ID" : "565", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_7_1_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1134", "Parent" : "561"},
	{"ID" : "566", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_7_1_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1135", "Parent" : "561"},
	{"ID" : "567", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_8_0_x2_U0", "Parent" : "434", "Child" : ["568", "569", "570", "571", "572"],
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
			{"Name" : "fifo_A_PE_8_0_x240", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "456", "DependentChan" : "744", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_0_x240_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_8_1_x241", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "573", "DependentChan" : "804", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_1_x241_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_0_x263", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "555", "DependentChan" : "799", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_0_x263_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_0_x264", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "579", "DependentChan" : "805", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_0_x264_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_0_x291", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "654", "DependentChan" : "806", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_0_x291_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "568", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_8_0_x2_U0.local_A_0_U", "Parent" : "567"},
	{"ID" : "569", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_8_0_x2_U0.local_B_0_U", "Parent" : "567"},
	{"ID" : "570", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_8_0_x2_U0.local_C_U", "Parent" : "567"},
	{"ID" : "571", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_8_0_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1141", "Parent" : "567"},
	{"ID" : "572", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_8_0_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1142", "Parent" : "567"},
	{"ID" : "573", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_8_1_x2_U0", "Parent" : "434", "Child" : ["574", "575", "576", "577", "578"],
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
			{"Name" : "fifo_A_PE_8_1_x241", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "567", "DependentChan" : "804", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_1_x241_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_8_2_x242", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "635", "DependentChan" : "807", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_2_x242_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_1_x277", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "561", "DependentChan" : "802", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_1_x277_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_1_x278", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "585", "DependentChan" : "808", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_1_x278_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_1_x2104", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "693", "DependentChan" : "809", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_1_x2104_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "574", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_8_1_x2_U0.local_A_0_U", "Parent" : "573"},
	{"ID" : "575", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_8_1_x2_U0.local_B_0_U", "Parent" : "573"},
	{"ID" : "576", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_8_1_x2_U0.local_C_U", "Parent" : "573"},
	{"ID" : "577", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_8_1_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1148", "Parent" : "573"},
	{"ID" : "578", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_8_1_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1149", "Parent" : "573"},
	{"ID" : "579", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_9_0_x2_U0", "Parent" : "434", "Child" : ["580", "581", "582", "583", "584"],
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
			{"Name" : "fifo_A_PE_9_0_x243", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "458", "DependentChan" : "746", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_0_x243_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_9_1_x244", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "585", "DependentChan" : "810", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_1_x244_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_0_x264", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "567", "DependentChan" : "805", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_0_x264_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_0_x265", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "591", "DependentChan" : "811", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_0_x265_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_0_x292", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "651", "DependentChan" : "812", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_0_x292_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "580", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_9_0_x2_U0.local_A_0_U", "Parent" : "579"},
	{"ID" : "581", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_9_0_x2_U0.local_B_0_U", "Parent" : "579"},
	{"ID" : "582", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_9_0_x2_U0.local_C_U", "Parent" : "579"},
	{"ID" : "583", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_9_0_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1155", "Parent" : "579"},
	{"ID" : "584", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_9_0_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1156", "Parent" : "579"},
	{"ID" : "585", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_9_1_x2_U0", "Parent" : "434", "Child" : ["586", "587", "588", "589", "590"],
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
			{"Name" : "fifo_A_PE_9_1_x244", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "579", "DependentChan" : "810", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_1_x244_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_9_2_x245", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "636", "DependentChan" : "813", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_2_x245_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_1_x278", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "573", "DependentChan" : "808", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_1_x278_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_1_x279", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "597", "DependentChan" : "814", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_1_x279_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_1_x2105", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "690", "DependentChan" : "815", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_1_x2105_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "586", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_9_1_x2_U0.local_A_0_U", "Parent" : "585"},
	{"ID" : "587", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_9_1_x2_U0.local_B_0_U", "Parent" : "585"},
	{"ID" : "588", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_9_1_x2_U0.local_C_U", "Parent" : "585"},
	{"ID" : "589", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_9_1_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1162", "Parent" : "585"},
	{"ID" : "590", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_9_1_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1163", "Parent" : "585"},
	{"ID" : "591", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_10_0_x2_U0", "Parent" : "434", "Child" : ["592", "593", "594", "595", "596"],
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
			{"Name" : "fifo_A_PE_10_0_x246", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "460", "DependentChan" : "748", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_0_x246_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_10_1_x247", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "597", "DependentChan" : "816", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_1_x247_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_0_x265", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "579", "DependentChan" : "811", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_0_x265_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_0_x266", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "603", "DependentChan" : "817", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_0_x266_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_0_x293", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "648", "DependentChan" : "818", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_0_x293_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "592", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_10_0_x2_U0.local_A_0_U", "Parent" : "591"},
	{"ID" : "593", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_10_0_x2_U0.local_B_0_U", "Parent" : "591"},
	{"ID" : "594", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_10_0_x2_U0.local_C_U", "Parent" : "591"},
	{"ID" : "595", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_10_0_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1169", "Parent" : "591"},
	{"ID" : "596", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_10_0_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1170", "Parent" : "591"},
	{"ID" : "597", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_10_1_x2_U0", "Parent" : "434", "Child" : ["598", "599", "600", "601", "602"],
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
			{"Name" : "fifo_A_PE_10_1_x247", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "591", "DependentChan" : "816", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_1_x247_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_10_2_x248", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "637", "DependentChan" : "819", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_2_x248_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_1_x279", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "585", "DependentChan" : "814", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_1_x279_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_1_x280", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "609", "DependentChan" : "820", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_1_x280_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_1_x2106", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "687", "DependentChan" : "821", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_1_x2106_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "598", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_10_1_x2_U0.local_A_0_U", "Parent" : "597"},
	{"ID" : "599", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_10_1_x2_U0.local_B_0_U", "Parent" : "597"},
	{"ID" : "600", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_10_1_x2_U0.local_C_U", "Parent" : "597"},
	{"ID" : "601", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_10_1_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1176", "Parent" : "597"},
	{"ID" : "602", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_10_1_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1177", "Parent" : "597"},
	{"ID" : "603", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_11_0_x2_U0", "Parent" : "434", "Child" : ["604", "605", "606", "607", "608"],
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
			{"Name" : "fifo_A_PE_11_0_x249", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "462", "DependentChan" : "750", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_0_x249_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_11_1_x250", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "609", "DependentChan" : "822", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_1_x250_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_0_x266", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "591", "DependentChan" : "817", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_0_x266_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_0_x267", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "615", "DependentChan" : "823", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_0_x267_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_0_x294", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "645", "DependentChan" : "824", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_0_x294_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "604", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_11_0_x2_U0.local_A_0_U", "Parent" : "603"},
	{"ID" : "605", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_11_0_x2_U0.local_B_0_U", "Parent" : "603"},
	{"ID" : "606", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_11_0_x2_U0.local_C_U", "Parent" : "603"},
	{"ID" : "607", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_11_0_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1183", "Parent" : "603"},
	{"ID" : "608", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_11_0_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1184", "Parent" : "603"},
	{"ID" : "609", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_11_1_x2_U0", "Parent" : "434", "Child" : ["610", "611", "612", "613", "614"],
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
			{"Name" : "fifo_A_PE_11_1_x250", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "603", "DependentChan" : "822", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_1_x250_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_11_2_x251", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "638", "DependentChan" : "825", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_2_x251_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_1_x280", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "597", "DependentChan" : "820", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_1_x280_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_1_x281", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "621", "DependentChan" : "826", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_1_x281_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_1_x2107", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "684", "DependentChan" : "827", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_1_x2107_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "610", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_11_1_x2_U0.local_A_0_U", "Parent" : "609"},
	{"ID" : "611", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_11_1_x2_U0.local_B_0_U", "Parent" : "609"},
	{"ID" : "612", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_11_1_x2_U0.local_C_U", "Parent" : "609"},
	{"ID" : "613", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_11_1_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1190", "Parent" : "609"},
	{"ID" : "614", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_11_1_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1191", "Parent" : "609"},
	{"ID" : "615", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_12_0_x2_U0", "Parent" : "434", "Child" : ["616", "617", "618", "619", "620"],
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
			{"Name" : "fifo_A_PE_12_0_x252", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "464", "DependentChan" : "751", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_0_x252_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_12_1_x253", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "621", "DependentChan" : "828", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_1_x253_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_0_x267", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "603", "DependentChan" : "823", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_0_x267_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_13_0_x268", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "640", "DependentChan" : "829", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_0_x268_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_0_x295", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "642", "DependentChan" : "830", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_0_x295_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "616", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_12_0_x2_U0.local_A_0_U", "Parent" : "615"},
	{"ID" : "617", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_12_0_x2_U0.local_B_0_U", "Parent" : "615"},
	{"ID" : "618", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_12_0_x2_U0.local_C_U", "Parent" : "615"},
	{"ID" : "619", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_12_0_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1197", "Parent" : "615"},
	{"ID" : "620", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_12_0_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1198", "Parent" : "615"},
	{"ID" : "621", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_12_1_x2_U0", "Parent" : "434", "Child" : ["622", "623", "624", "625", "626"],
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
			{"Name" : "fifo_A_PE_12_1_x253", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "615", "DependentChan" : "828", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_1_x253_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_12_2_x254", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "639", "DependentChan" : "831", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_2_x254_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_1_x281", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "609", "DependentChan" : "826", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_1_x281_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_13_1_x282", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "641", "DependentChan" : "832", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_1_x282_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_1_x2108", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "681", "DependentChan" : "833", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_1_x2108_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "622", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_12_1_x2_U0.local_A_0_U", "Parent" : "621"},
	{"ID" : "623", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_12_1_x2_U0.local_B_0_U", "Parent" : "621"},
	{"ID" : "624", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_12_1_x2_U0.local_C_U", "Parent" : "621"},
	{"ID" : "625", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_12_1_x2_U0.fadd_32ns_32ns_32_7_full_dsp_1_U1204", "Parent" : "621"},
	{"ID" : "626", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.PE_wrapper_12_1_x2_U0.fmul_32ns_32ns_32_4_max_dsp_1_U1205", "Parent" : "621"},
	{"ID" : "627", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.A_PE_dummy_0_x2_U0", "Parent" : "434",
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
			{"Name" : "fifo_A_PE_0_2_x218", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "477", "DependentChan" : "759", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x218_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "628", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.A_PE_dummy_1_x2_U0", "Parent" : "434",
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
			{"Name" : "fifo_A_PE_1_2_x221", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "489", "DependentChan" : "765", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x221_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "629", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.A_PE_dummy_2_x2_U0", "Parent" : "434",
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
			{"Name" : "fifo_A_PE_2_2_x224", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "501", "DependentChan" : "771", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x224_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "630", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.A_PE_dummy_3_x2_U0", "Parent" : "434",
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
			{"Name" : "fifo_A_PE_3_2_x227", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "513", "DependentChan" : "777", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x227_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "631", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.A_PE_dummy_4_x2_U0", "Parent" : "434",
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
			{"Name" : "fifo_A_PE_4_2_x230", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "525", "DependentChan" : "783", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_2_x230_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "632", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.A_PE_dummy_5_x2_U0", "Parent" : "434",
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
			{"Name" : "fifo_A_PE_5_2_x233", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "537", "DependentChan" : "789", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_2_x233_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "633", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.A_PE_dummy_6_x2_U0", "Parent" : "434",
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
			{"Name" : "fifo_A_PE_6_2_x236", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "549", "DependentChan" : "795", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x236_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "634", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.A_PE_dummy_7_x2_U0", "Parent" : "434",
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
			{"Name" : "fifo_A_PE_7_2_x239", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "561", "DependentChan" : "801", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_2_x239_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "635", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.A_PE_dummy_8_x2_U0", "Parent" : "434",
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
			{"Name" : "fifo_A_PE_8_2_x242", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "573", "DependentChan" : "807", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_2_x242_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "636", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.A_PE_dummy_9_x2_U0", "Parent" : "434",
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
			{"Name" : "fifo_A_PE_9_2_x245", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "585", "DependentChan" : "813", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_2_x245_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "637", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.A_PE_dummy_10_x2_U0", "Parent" : "434",
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
			{"Name" : "fifo_A_PE_10_2_x248", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "597", "DependentChan" : "819", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_2_x248_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "638", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.A_PE_dummy_11_x2_U0", "Parent" : "434",
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
			{"Name" : "fifo_A_PE_11_2_x251", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "609", "DependentChan" : "825", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_2_x251_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "639", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.A_PE_dummy_12_x2_U0", "Parent" : "434",
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
			{"Name" : "fifo_A_PE_12_2_x254", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "621", "DependentChan" : "831", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_2_x254_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "640", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.B_PE_dummy_0_x2_U0", "Parent" : "434",
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
			{"Name" : "fifo_B_PE_13_0_x268", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "615", "DependentChan" : "829", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_0_x268_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "641", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.B_PE_dummy_1_x2_U0", "Parent" : "434",
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
			{"Name" : "fifo_B_PE_13_1_x282", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "621", "DependentChan" : "832", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_1_x282_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "642", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_boundary_0_x2_U0", "Parent" : "434", "Child" : ["643", "644"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x2121", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "645", "DependentChan" : "834", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x2121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_0_x295", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "615", "DependentChan" : "830", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_0_x295_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "643", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_boundary_0_x2_U0.local_C_V_U", "Parent" : "642"},
	{"ID" : "644", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_boundary_0_x2_U0.buf_data_split_V_U", "Parent" : "642"},
	{"ID" : "645", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_0_x2_U0", "Parent" : "434", "Child" : ["646", "647"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x2121", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "642", "DependentChan" : "834", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x2121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x2120", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "648", "DependentChan" : "835", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x2120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_0_x294", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "603", "DependentChan" : "824", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_0_x294_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "646", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_0_x2_U0.local_C_V_U", "Parent" : "645"},
	{"ID" : "647", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_0_x2_U0.buf_data_split_V_U", "Parent" : "645"},
	{"ID" : "648", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_1_x2_U0", "Parent" : "434", "Child" : ["649", "650"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x2120", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "645", "DependentChan" : "835", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x2120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x2119", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "651", "DependentChan" : "836", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x2119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_0_x293", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "591", "DependentChan" : "818", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_0_x293_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "649", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_1_x2_U0.local_C_V_U", "Parent" : "648"},
	{"ID" : "650", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_1_x2_U0.buf_data_split_V_U", "Parent" : "648"},
	{"ID" : "651", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_2_x2_U0", "Parent" : "434", "Child" : ["652", "653"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x2119", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "648", "DependentChan" : "836", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x2119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x2118", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "654", "DependentChan" : "837", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x2118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_0_x292", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "579", "DependentChan" : "812", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_0_x292_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "652", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_2_x2_U0.local_C_V_U", "Parent" : "651"},
	{"ID" : "653", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_2_x2_U0.buf_data_split_V_U", "Parent" : "651"},
	{"ID" : "654", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_3_x2_U0", "Parent" : "434", "Child" : ["655", "656"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x2118", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "651", "DependentChan" : "837", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x2118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x2117", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "657", "DependentChan" : "838", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x2117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_0_x291", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "567", "DependentChan" : "806", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_0_x291_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "655", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_3_x2_U0.local_C_V_U", "Parent" : "654"},
	{"ID" : "656", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_3_x2_U0.buf_data_split_V_U", "Parent" : "654"},
	{"ID" : "657", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_4_x2_U0", "Parent" : "434", "Child" : ["658", "659"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x2117", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "654", "DependentChan" : "838", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x2117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x2116", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "660", "DependentChan" : "839", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x2116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_0_x290", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "555", "DependentChan" : "800", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_0_x290_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "658", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_4_x2_U0.local_C_V_U", "Parent" : "657"},
	{"ID" : "659", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_4_x2_U0.buf_data_split_V_U", "Parent" : "657"},
	{"ID" : "660", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_5_x2_U0", "Parent" : "434", "Child" : ["661", "662"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x2116", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "657", "DependentChan" : "839", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x2116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x2115", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "663", "DependentChan" : "840", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x2115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_0_x289", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "543", "DependentChan" : "794", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_0_x289_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "661", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_5_x2_U0.local_C_V_U", "Parent" : "660"},
	{"ID" : "662", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_5_x2_U0.buf_data_split_V_U", "Parent" : "660"},
	{"ID" : "663", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_6_x2_U0", "Parent" : "434", "Child" : ["664", "665"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x2115", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "660", "DependentChan" : "840", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x2115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x2114", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "666", "DependentChan" : "841", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x2114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_0_x288", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "531", "DependentChan" : "788", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_0_x288_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "664", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_6_x2_U0.local_C_V_U", "Parent" : "663"},
	{"ID" : "665", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_6_x2_U0.buf_data_split_V_U", "Parent" : "663"},
	{"ID" : "666", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_7_x2_U0", "Parent" : "434", "Child" : ["667", "668"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x2114", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "663", "DependentChan" : "841", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x2114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x2113", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "669", "DependentChan" : "842", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x2113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_0_x287", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "519", "DependentChan" : "782", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_0_x287_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "667", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_7_x2_U0.local_C_V_U", "Parent" : "666"},
	{"ID" : "668", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_7_x2_U0.buf_data_split_V_U", "Parent" : "666"},
	{"ID" : "669", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_8_x2_U0", "Parent" : "434", "Child" : ["670", "671"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x2113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "666", "DependentChan" : "842", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x2113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x2112", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "672", "DependentChan" : "843", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x2112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_0_x286", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "507", "DependentChan" : "776", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_0_x286_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "670", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_8_x2_U0.local_C_V_U", "Parent" : "669"},
	{"ID" : "671", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_8_x2_U0.buf_data_split_V_U", "Parent" : "669"},
	{"ID" : "672", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_9_x2_U0", "Parent" : "434", "Child" : ["673", "674"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x2112", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "669", "DependentChan" : "843", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x2112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x2111", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "675", "DependentChan" : "844", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x2111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_0_x285", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "495", "DependentChan" : "770", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_0_x285_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "673", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_9_x2_U0.local_C_V_U", "Parent" : "672"},
	{"ID" : "674", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_9_x2_U0.buf_data_split_V_U", "Parent" : "672"},
	{"ID" : "675", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_10_x2_U0", "Parent" : "434", "Child" : ["676", "677"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x2111", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "672", "DependentChan" : "844", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x2111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x2110", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "678", "DependentChan" : "845", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x2110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_0_x284", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "483", "DependentChan" : "764", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_0_x284_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "676", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_10_x2_U0.local_C_V_U", "Parent" : "675"},
	{"ID" : "677", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_10_x2_U0.buf_data_split_V_U", "Parent" : "675"},
	{"ID" : "678", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_11_x2_U0", "Parent" : "434", "Child" : ["679", "680"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x2110", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "675", "DependentChan" : "845", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x2110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x2109", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "721", "DependentChan" : "846", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x2109_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_0_x283", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "471", "DependentChan" : "758", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_0_x283_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "679", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_11_x2_U0.local_C_V_U", "Parent" : "678"},
	{"ID" : "680", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_11_x2_U0.buf_data_split_V_U", "Parent" : "678"},
	{"ID" : "681", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_boundary_1_x2_U0", "Parent" : "434", "Child" : ["682", "683"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x2134", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "684", "DependentChan" : "847", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x2134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_1_x2108", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "621", "DependentChan" : "833", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_1_x2108_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "682", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_boundary_1_x2_U0.local_C_V_U", "Parent" : "681"},
	{"ID" : "683", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_boundary_1_x2_U0.buf_data_split_V_U", "Parent" : "681"},
	{"ID" : "684", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_12_x2_U0", "Parent" : "434", "Child" : ["685", "686"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x2134", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "681", "DependentChan" : "847", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x2134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x2133", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "687", "DependentChan" : "848", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x2133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_1_x2107", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "609", "DependentChan" : "827", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_1_x2107_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "685", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_12_x2_U0.local_C_V_U", "Parent" : "684"},
	{"ID" : "686", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_12_x2_U0.buf_data_split_V_U", "Parent" : "684"},
	{"ID" : "687", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_13_x2_U0", "Parent" : "434", "Child" : ["688", "689"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x2133", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "684", "DependentChan" : "848", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x2133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x2132", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "690", "DependentChan" : "849", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x2132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_1_x2106", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "597", "DependentChan" : "821", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_1_x2106_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "688", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_13_x2_U0.local_C_V_U", "Parent" : "687"},
	{"ID" : "689", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_13_x2_U0.buf_data_split_V_U", "Parent" : "687"},
	{"ID" : "690", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_14_x2_U0", "Parent" : "434", "Child" : ["691", "692"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x2132", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "687", "DependentChan" : "849", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x2132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x2131", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "693", "DependentChan" : "850", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x2131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_1_x2105", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "585", "DependentChan" : "815", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_1_x2105_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "691", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_14_x2_U0.local_C_V_U", "Parent" : "690"},
	{"ID" : "692", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_14_x2_U0.buf_data_split_V_U", "Parent" : "690"},
	{"ID" : "693", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_15_x2_U0", "Parent" : "434", "Child" : ["694", "695"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x2131", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "690", "DependentChan" : "850", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x2131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x2130", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "696", "DependentChan" : "851", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x2130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_1_x2104", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "573", "DependentChan" : "809", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_1_x2104_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "694", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_15_x2_U0.local_C_V_U", "Parent" : "693"},
	{"ID" : "695", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_15_x2_U0.buf_data_split_V_U", "Parent" : "693"},
	{"ID" : "696", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_16_x2_U0", "Parent" : "434", "Child" : ["697", "698"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x2130", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "693", "DependentChan" : "851", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x2130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x2129", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "699", "DependentChan" : "852", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x2129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_1_x2103", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "561", "DependentChan" : "803", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_1_x2103_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "697", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_16_x2_U0.local_C_V_U", "Parent" : "696"},
	{"ID" : "698", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_16_x2_U0.buf_data_split_V_U", "Parent" : "696"},
	{"ID" : "699", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_17_x2_U0", "Parent" : "434", "Child" : ["700", "701"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x2129", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "696", "DependentChan" : "852", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x2129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x2128", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "702", "DependentChan" : "853", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x2128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x2102", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "549", "DependentChan" : "797", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x2102_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "700", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_17_x2_U0.local_C_V_U", "Parent" : "699"},
	{"ID" : "701", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_17_x2_U0.buf_data_split_V_U", "Parent" : "699"},
	{"ID" : "702", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_18_x2_U0", "Parent" : "434", "Child" : ["703", "704"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x2128", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "699", "DependentChan" : "853", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x2128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x2127", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "705", "DependentChan" : "854", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x2127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_1_x2101", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "537", "DependentChan" : "791", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_1_x2101_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "703", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_18_x2_U0.local_C_V_U", "Parent" : "702"},
	{"ID" : "704", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_18_x2_U0.buf_data_split_V_U", "Parent" : "702"},
	{"ID" : "705", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_19_x2_U0", "Parent" : "434", "Child" : ["706", "707"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x2127", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "702", "DependentChan" : "854", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x2127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x2126", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "708", "DependentChan" : "855", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x2126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_1_x2100", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "525", "DependentChan" : "785", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_1_x2100_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "706", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_19_x2_U0.local_C_V_U", "Parent" : "705"},
	{"ID" : "707", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_19_x2_U0.buf_data_split_V_U", "Parent" : "705"},
	{"ID" : "708", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_20_x2_U0", "Parent" : "434", "Child" : ["709", "710"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x2126", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "705", "DependentChan" : "855", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x2126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x2125", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "711", "DependentChan" : "856", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x2125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_1_x299", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "513", "DependentChan" : "779", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_1_x299_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "709", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_20_x2_U0.local_C_V_U", "Parent" : "708"},
	{"ID" : "710", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_20_x2_U0.buf_data_split_V_U", "Parent" : "708"},
	{"ID" : "711", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_21_x2_U0", "Parent" : "434", "Child" : ["712", "713"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x2125", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "708", "DependentChan" : "856", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x2125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x2124", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "714", "DependentChan" : "857", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x2124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_1_x298", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "501", "DependentChan" : "773", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_1_x298_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "712", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_21_x2_U0.local_C_V_U", "Parent" : "711"},
	{"ID" : "713", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_21_x2_U0.buf_data_split_V_U", "Parent" : "711"},
	{"ID" : "714", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_22_x2_U0", "Parent" : "434", "Child" : ["715", "716"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x2124", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "711", "DependentChan" : "857", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x2124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x2123", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "717", "DependentChan" : "858", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x2123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_1_x297", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "489", "DependentChan" : "767", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_1_x297_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "715", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_22_x2_U0.local_C_V_U", "Parent" : "714"},
	{"ID" : "716", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_22_x2_U0.buf_data_split_V_U", "Parent" : "714"},
	{"ID" : "717", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_23_x2_U0", "Parent" : "434", "Child" : ["718", "719"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x2123", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "714", "DependentChan" : "858", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x2123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x2122", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "720", "DependentChan" : "859", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x2122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_1_x296", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "477", "DependentChan" : "761", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_1_x296_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "718", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_23_x2_U0.local_C_V_U", "Parent" : "717"},
	{"ID" : "719", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L1_out_23_x2_U0.buf_data_split_V_U", "Parent" : "717"},
	{"ID" : "720", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L2_out_boundary_x2_U0", "Parent" : "434",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x2136", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "721", "DependentChan" : "860", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x2136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x2122", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "717", "DependentChan" : "859", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x2122_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "721", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L2_out_x2_U0", "Parent" : "434",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x2136", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "720", "DependentChan" : "860", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x2136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x2135", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "722", "DependentChan" : "861", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x2135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x2109", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "678", "DependentChan" : "846", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x2109_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "722", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L3_out_x2_U0", "Parent" : "434", "Child" : ["723"],
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
			{"Name" : "fifo_C_drain_local_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "721", "DependentChan" : "861", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_local_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "C", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "436", "DependentChan" : "725", "DependentChanDepth" : "33", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "723", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_drain_IO_L3_out_x2_U0.mem_data_split_V_U", "Parent" : "722"},
	{"ID" : "724", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_c1_U", "Parent" : "434"},
	{"ID" : "725", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.C_c_U", "Parent" : "434"},
	{"ID" : "726", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_A_IO_L2_in_0_x2_U", "Parent" : "434"},
	{"ID" : "727", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_A_IO_L2_in_1_x2_U", "Parent" : "434"},
	{"ID" : "728", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_PE_0_0_x2_U", "Parent" : "434"},
	{"ID" : "729", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_A_IO_L2_in_2_x2_U", "Parent" : "434"},
	{"ID" : "730", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_PE_1_0_x2_U", "Parent" : "434"},
	{"ID" : "731", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_A_IO_L2_in_3_x2_U", "Parent" : "434"},
	{"ID" : "732", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_PE_2_0_x2_U", "Parent" : "434"},
	{"ID" : "733", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_A_IO_L2_in_4_x2_U", "Parent" : "434"},
	{"ID" : "734", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_PE_3_0_x2_U", "Parent" : "434"},
	{"ID" : "735", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_A_IO_L2_in_5_x2_U", "Parent" : "434"},
	{"ID" : "736", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_PE_4_0_x2_U", "Parent" : "434"},
	{"ID" : "737", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_A_IO_L2_in_6_x2_U", "Parent" : "434"},
	{"ID" : "738", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_PE_5_0_x2_U", "Parent" : "434"},
	{"ID" : "739", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_A_IO_L2_in_7_x2_U", "Parent" : "434"},
	{"ID" : "740", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_PE_6_0_x2_U", "Parent" : "434"},
	{"ID" : "741", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_A_IO_L2_in_8_x2_U", "Parent" : "434"},
	{"ID" : "742", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_PE_7_0_x2_U", "Parent" : "434"},
	{"ID" : "743", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_A_IO_L2_in_9_x2_U", "Parent" : "434"},
	{"ID" : "744", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_PE_8_0_x2_U", "Parent" : "434"},
	{"ID" : "745", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_A_IO_L2_in_10_x2_U", "Parent" : "434"},
	{"ID" : "746", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_PE_9_0_x2_U", "Parent" : "434"},
	{"ID" : "747", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_A_IO_L2_in_11_x2_U", "Parent" : "434"},
	{"ID" : "748", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_PE_10_0_x2_U", "Parent" : "434"},
	{"ID" : "749", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_A_IO_L2_in_12_x2_U", "Parent" : "434"},
	{"ID" : "750", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_PE_11_0_x2_U", "Parent" : "434"},
	{"ID" : "751", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_PE_12_0_x2_U", "Parent" : "434"},
	{"ID" : "752", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_B_B_IO_L2_in_0_x2_U", "Parent" : "434"},
	{"ID" : "753", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_B_B_IO_L2_in_1_x2_U", "Parent" : "434"},
	{"ID" : "754", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_B_PE_0_0_x2_U", "Parent" : "434"},
	{"ID" : "755", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_B_PE_0_1_x2_U", "Parent" : "434"},
	{"ID" : "756", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_PE_0_1_x2_U", "Parent" : "434"},
	{"ID" : "757", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_B_PE_1_0_x2_U", "Parent" : "434"},
	{"ID" : "758", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_PE_0_0_x2_U", "Parent" : "434"},
	{"ID" : "759", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_PE_0_2_x2_U", "Parent" : "434"},
	{"ID" : "760", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_B_PE_1_1_x2_U", "Parent" : "434"},
	{"ID" : "761", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_PE_0_1_x2_U", "Parent" : "434"},
	{"ID" : "762", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_PE_1_1_x2_U", "Parent" : "434"},
	{"ID" : "763", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_B_PE_2_0_x2_U", "Parent" : "434"},
	{"ID" : "764", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_PE_1_0_x2_U", "Parent" : "434"},
	{"ID" : "765", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_PE_1_2_x2_U", "Parent" : "434"},
	{"ID" : "766", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_B_PE_2_1_x2_U", "Parent" : "434"},
	{"ID" : "767", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_PE_1_1_x2_U", "Parent" : "434"},
	{"ID" : "768", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_PE_2_1_x2_U", "Parent" : "434"},
	{"ID" : "769", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_B_PE_3_0_x2_U", "Parent" : "434"},
	{"ID" : "770", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_PE_2_0_x2_U", "Parent" : "434"},
	{"ID" : "771", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_PE_2_2_x2_U", "Parent" : "434"},
	{"ID" : "772", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_B_PE_3_1_x2_U", "Parent" : "434"},
	{"ID" : "773", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_PE_2_1_x2_U", "Parent" : "434"},
	{"ID" : "774", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_PE_3_1_x2_U", "Parent" : "434"},
	{"ID" : "775", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_B_PE_4_0_x2_U", "Parent" : "434"},
	{"ID" : "776", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_PE_3_0_x2_U", "Parent" : "434"},
	{"ID" : "777", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_PE_3_2_x2_U", "Parent" : "434"},
	{"ID" : "778", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_B_PE_4_1_x2_U", "Parent" : "434"},
	{"ID" : "779", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_PE_3_1_x2_U", "Parent" : "434"},
	{"ID" : "780", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_PE_4_1_x2_U", "Parent" : "434"},
	{"ID" : "781", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_B_PE_5_0_x2_U", "Parent" : "434"},
	{"ID" : "782", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_PE_4_0_x2_U", "Parent" : "434"},
	{"ID" : "783", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_PE_4_2_x2_U", "Parent" : "434"},
	{"ID" : "784", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_B_PE_5_1_x2_U", "Parent" : "434"},
	{"ID" : "785", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_PE_4_1_x2_U", "Parent" : "434"},
	{"ID" : "786", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_PE_5_1_x2_U", "Parent" : "434"},
	{"ID" : "787", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_B_PE_6_0_x2_U", "Parent" : "434"},
	{"ID" : "788", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_PE_5_0_x2_U", "Parent" : "434"},
	{"ID" : "789", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_PE_5_2_x2_U", "Parent" : "434"},
	{"ID" : "790", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_B_PE_6_1_x2_U", "Parent" : "434"},
	{"ID" : "791", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_PE_5_1_x2_U", "Parent" : "434"},
	{"ID" : "792", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_PE_6_1_x2_U", "Parent" : "434"},
	{"ID" : "793", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_B_PE_7_0_x2_U", "Parent" : "434"},
	{"ID" : "794", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_PE_6_0_x2_U", "Parent" : "434"},
	{"ID" : "795", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_PE_6_2_x2_U", "Parent" : "434"},
	{"ID" : "796", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_B_PE_7_1_x2_U", "Parent" : "434"},
	{"ID" : "797", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_PE_6_1_x2_U", "Parent" : "434"},
	{"ID" : "798", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_PE_7_1_x2_U", "Parent" : "434"},
	{"ID" : "799", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_B_PE_8_0_x2_U", "Parent" : "434"},
	{"ID" : "800", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_PE_7_0_x2_U", "Parent" : "434"},
	{"ID" : "801", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_PE_7_2_x2_U", "Parent" : "434"},
	{"ID" : "802", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_B_PE_8_1_x2_U", "Parent" : "434"},
	{"ID" : "803", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_PE_7_1_x2_U", "Parent" : "434"},
	{"ID" : "804", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_PE_8_1_x2_U", "Parent" : "434"},
	{"ID" : "805", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_B_PE_9_0_x2_U", "Parent" : "434"},
	{"ID" : "806", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_PE_8_0_x2_U", "Parent" : "434"},
	{"ID" : "807", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_PE_8_2_x2_U", "Parent" : "434"},
	{"ID" : "808", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_B_PE_9_1_x2_U", "Parent" : "434"},
	{"ID" : "809", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_PE_8_1_x2_U", "Parent" : "434"},
	{"ID" : "810", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_PE_9_1_x2_U", "Parent" : "434"},
	{"ID" : "811", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_B_PE_10_0_x2_U", "Parent" : "434"},
	{"ID" : "812", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_PE_9_0_x2_U", "Parent" : "434"},
	{"ID" : "813", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_PE_9_2_x2_U", "Parent" : "434"},
	{"ID" : "814", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_B_PE_10_1_x2_U", "Parent" : "434"},
	{"ID" : "815", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_PE_9_1_x2_U", "Parent" : "434"},
	{"ID" : "816", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_PE_10_1_x2_U", "Parent" : "434"},
	{"ID" : "817", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_B_PE_11_0_x2_U", "Parent" : "434"},
	{"ID" : "818", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_PE_10_0_x2_U", "Parent" : "434"},
	{"ID" : "819", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_PE_10_2_x2_U", "Parent" : "434"},
	{"ID" : "820", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_B_PE_11_1_x2_U", "Parent" : "434"},
	{"ID" : "821", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_PE_10_1_x2_U", "Parent" : "434"},
	{"ID" : "822", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_PE_11_1_x2_U", "Parent" : "434"},
	{"ID" : "823", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_B_PE_12_0_x2_U", "Parent" : "434"},
	{"ID" : "824", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_PE_11_0_x2_U", "Parent" : "434"},
	{"ID" : "825", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_PE_11_2_x2_U", "Parent" : "434"},
	{"ID" : "826", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_B_PE_12_1_x2_U", "Parent" : "434"},
	{"ID" : "827", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_PE_11_1_x2_U", "Parent" : "434"},
	{"ID" : "828", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_PE_12_1_x2_U", "Parent" : "434"},
	{"ID" : "829", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_B_PE_13_0_x2_U", "Parent" : "434"},
	{"ID" : "830", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_PE_12_0_x2_U", "Parent" : "434"},
	{"ID" : "831", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_A_PE_12_2_x2_U", "Parent" : "434"},
	{"ID" : "832", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_B_PE_13_1_x2_U", "Parent" : "434"},
	{"ID" : "833", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_PE_12_1_x2_U", "Parent" : "434"},
	{"ID" : "834", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_C_drain_IO_L1_out_0_12_x2_U", "Parent" : "434"},
	{"ID" : "835", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_C_drain_IO_L1_out_0_11_x2_U", "Parent" : "434"},
	{"ID" : "836", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_C_drain_IO_L1_out_0_10_x2_U", "Parent" : "434"},
	{"ID" : "837", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_C_drain_IO_L1_out_0_9_x2_U", "Parent" : "434"},
	{"ID" : "838", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_C_drain_IO_L1_out_0_8_x2_U", "Parent" : "434"},
	{"ID" : "839", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_C_drain_IO_L1_out_0_7_x2_U", "Parent" : "434"},
	{"ID" : "840", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_C_drain_IO_L1_out_0_6_x2_U", "Parent" : "434"},
	{"ID" : "841", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_C_drain_IO_L1_out_0_5_x2_U", "Parent" : "434"},
	{"ID" : "842", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_C_drain_IO_L1_out_0_4_x2_U", "Parent" : "434"},
	{"ID" : "843", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_C_drain_IO_L1_out_0_3_x2_U", "Parent" : "434"},
	{"ID" : "844", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_C_drain_IO_L1_out_0_2_x2_U", "Parent" : "434"},
	{"ID" : "845", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_C_drain_IO_L1_out_0_1_x2_U", "Parent" : "434"},
	{"ID" : "846", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_C_drain_IO_L1_out_0_0_x2_U", "Parent" : "434"},
	{"ID" : "847", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_C_drain_IO_L1_out_1_12_x2_U", "Parent" : "434"},
	{"ID" : "848", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_C_drain_IO_L1_out_1_11_x2_U", "Parent" : "434"},
	{"ID" : "849", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_C_drain_IO_L1_out_1_10_x2_U", "Parent" : "434"},
	{"ID" : "850", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_C_drain_IO_L1_out_1_9_x2_U", "Parent" : "434"},
	{"ID" : "851", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_C_drain_IO_L1_out_1_8_x2_U", "Parent" : "434"},
	{"ID" : "852", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_C_drain_IO_L1_out_1_7_x2_U", "Parent" : "434"},
	{"ID" : "853", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_C_drain_IO_L1_out_1_6_x2_U", "Parent" : "434"},
	{"ID" : "854", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_C_drain_IO_L1_out_1_5_x2_U", "Parent" : "434"},
	{"ID" : "855", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_C_drain_IO_L1_out_1_4_x2_U", "Parent" : "434"},
	{"ID" : "856", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_C_drain_IO_L1_out_1_3_x2_U", "Parent" : "434"},
	{"ID" : "857", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_C_drain_IO_L1_out_1_2_x2_U", "Parent" : "434"},
	{"ID" : "858", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_C_drain_IO_L1_out_1_1_x2_U", "Parent" : "434"},
	{"ID" : "859", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_C_drain_IO_L1_out_1_0_x2_U", "Parent" : "434"},
	{"ID" : "860", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_C_drain_IO_L2_out_1_x2_U", "Parent" : "434"},
	{"ID" : "861", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x2_fu_118.fifo_C_drain_C_drain_IO_L2_out_0_x2_U", "Parent" : "434"},
	{"ID" : "862", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126", "Parent" : "0", "Child" : ["863", "866", "868", "870", "872", "874", "876", "878", "880", "882", "884", "886", "888", "890", "892", "893", "895", "897", "903", "909", "915", "921", "927", "933", "939", "945", "951", "957", "963", "969", "975", "981", "987", "993", "999", "1005", "1011", "1017", "1023", "1029", "1035", "1041", "1047", "1053", "1054", "1055", "1056", "1057", "1058", "1059", "1060", "1061", "1062", "1063", "1064", "1065", "1066", "1067", "1068", "1071", "1074", "1077", "1080", "1083", "1086", "1089", "1092", "1095", "1098", "1101", "1104", "1107", "1110", "1113", "1116", "1119", "1122", "1125", "1128", "1131", "1134", "1137", "1140", "1143", "1146", "1147", "1148", "1150", "1151", "1152", "1153", "1154", "1155", "1156", "1157", "1158", "1159", "1160", "1161", "1162", "1163", "1164", "1165", "1166", "1167", "1168", "1169", "1170", "1171", "1172", "1173", "1174", "1175", "1176", "1177", "1178", "1179", "1180", "1181", "1182", "1183", "1184", "1185", "1186", "1187", "1188", "1189", "1190", "1191", "1192", "1193", "1194", "1195", "1196", "1197", "1198", "1199", "1200", "1201", "1202", "1203", "1204", "1205", "1206", "1207", "1208", "1209", "1210", "1211", "1212", "1213", "1214", "1215", "1216", "1217", "1218", "1219", "1220", "1221", "1222", "1223", "1224", "1225", "1226", "1227", "1228", "1229", "1230", "1231", "1232", "1233", "1234", "1235", "1236", "1237", "1238", "1239", "1240", "1241", "1242", "1243", "1244", "1245", "1246", "1247", "1248", "1249", "1250", "1251", "1252", "1253", "1254", "1255", "1256", "1257", "1258", "1259", "1260", "1261", "1262", "1263", "1264", "1265", "1266", "1267", "1268", "1269", "1270", "1271", "1272", "1273", "1274", "1275", "1276", "1277", "1278", "1279", "1280", "1281", "1282", "1283", "1284", "1285"],
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
			{"ID" : "863", "Name" : "A_IO_L3_in_x1_U0"},
			{"ID" : "892", "Name" : "B_IO_L3_in_x1_U0"}],
		"OutputProcess" : [
			{"ID" : "1053", "Name" : "A_PE_dummy_0_x1_U0"},
			{"ID" : "1054", "Name" : "A_PE_dummy_1_x1_U0"},
			{"ID" : "1055", "Name" : "A_PE_dummy_2_x1_U0"},
			{"ID" : "1056", "Name" : "A_PE_dummy_3_x1_U0"},
			{"ID" : "1057", "Name" : "A_PE_dummy_4_x1_U0"},
			{"ID" : "1058", "Name" : "A_PE_dummy_5_x1_U0"},
			{"ID" : "1059", "Name" : "A_PE_dummy_6_x1_U0"},
			{"ID" : "1060", "Name" : "A_PE_dummy_7_x1_U0"},
			{"ID" : "1061", "Name" : "A_PE_dummy_8_x1_U0"},
			{"ID" : "1062", "Name" : "A_PE_dummy_9_x1_U0"},
			{"ID" : "1063", "Name" : "A_PE_dummy_10_x1_U0"},
			{"ID" : "1064", "Name" : "A_PE_dummy_11_x1_U0"},
			{"ID" : "1065", "Name" : "A_PE_dummy_12_x1_U0"},
			{"ID" : "1066", "Name" : "B_PE_dummy_0_x1_U0"},
			{"ID" : "1067", "Name" : "B_PE_dummy_1_x1_U0"},
			{"ID" : "1148", "Name" : "C_drain_IO_L3_out_x1_U0"}],
		"Port" : [
			{"Name" : "B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "863", "SubInstance" : "A_IO_L3_in_x1_U0", "Port" : "A"},
					{"ID" : "892", "SubInstance" : "B_IO_L3_in_x1_U0", "Port" : "B"}]},
			{"Name" : "C", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1148", "SubInstance" : "C_drain_IO_L3_out_x1_U0", "Port" : "C"}]}]},
	{"ID" : "863", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.A_IO_L3_in_x1_U0", "Parent" : "862", "Child" : ["864", "865"],
		"CDFG" : "A_IO_L3_in_x1",
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
			{"Name" : "fifo_A_A_IO_L2_in_0_x11", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "866", "DependentChan" : "1150", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_0_x11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "864", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.A_IO_L3_in_x1_U0.add_12ns_12ns_12_1_1_U500", "Parent" : "863"},
	{"ID" : "865", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.A_IO_L3_in_x1_U0.add_2ns_2ns_2_1_1_U501", "Parent" : "863"},
	{"ID" : "866", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.A_IO_L2_in_0_x1_U0", "Parent" : "862", "Child" : ["867"],
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
			{"Name" : "fifo_A_A_IO_L2_in_0_x11", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "863", "DependentChan" : "1150", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_0_x11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_1_x12", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "868", "DependentChan" : "1151", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_0_x116", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "897", "DependentChan" : "1152", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x116_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "867", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.A_IO_L2_in_0_x1_U0.local_A_pong_V_U", "Parent" : "866"},
	{"ID" : "868", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.A_IO_L2_in_1_x1_U0", "Parent" : "862", "Child" : ["869"],
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
			{"Name" : "fifo_A_A_IO_L2_in_1_x12", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "866", "DependentChan" : "1151", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_2_x13", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "870", "DependentChan" : "1153", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_0_x119", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "909", "DependentChan" : "1154", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x119_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "869", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.A_IO_L2_in_1_x1_U0.local_A_pong_V_U", "Parent" : "868"},
	{"ID" : "870", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.A_IO_L2_in_2_x1_U0", "Parent" : "862", "Child" : ["871"],
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
			{"Name" : "fifo_A_A_IO_L2_in_2_x13", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "868", "DependentChan" : "1153", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_3_x14", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "872", "DependentChan" : "1155", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_0_x122", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "921", "DependentChan" : "1156", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x122_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "871", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.A_IO_L2_in_2_x1_U0.local_A_pong_V_U", "Parent" : "870"},
	{"ID" : "872", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.A_IO_L2_in_3_x1_U0", "Parent" : "862", "Child" : ["873"],
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
			{"Name" : "fifo_A_A_IO_L2_in_3_x14", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "870", "DependentChan" : "1155", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_4_x15", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "874", "DependentChan" : "1157", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_4_x15_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_0_x125", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "933", "DependentChan" : "1158", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x125_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "873", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.A_IO_L2_in_3_x1_U0.local_A_pong_V_U", "Parent" : "872"},
	{"ID" : "874", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.A_IO_L2_in_4_x1_U0", "Parent" : "862", "Child" : ["875"],
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
			{"Name" : "fifo_A_A_IO_L2_in_4_x15", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "872", "DependentChan" : "1157", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_4_x15_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_5_x16", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "876", "DependentChan" : "1159", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_5_x16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_0_x128", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "945", "DependentChan" : "1160", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_0_x128_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "875", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.A_IO_L2_in_4_x1_U0.local_A_pong_V_U", "Parent" : "874"},
	{"ID" : "876", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.A_IO_L2_in_5_x1_U0", "Parent" : "862", "Child" : ["877"],
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
			{"Name" : "fifo_A_A_IO_L2_in_5_x16", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "874", "DependentChan" : "1159", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_5_x16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_6_x17", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "878", "DependentChan" : "1161", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_6_x17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_0_x131", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "957", "DependentChan" : "1162", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_0_x131_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "877", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.A_IO_L2_in_5_x1_U0.local_A_pong_V_U", "Parent" : "876"},
	{"ID" : "878", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.A_IO_L2_in_6_x1_U0", "Parent" : "862", "Child" : ["879"],
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
			{"Name" : "fifo_A_A_IO_L2_in_6_x17", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "876", "DependentChan" : "1161", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_6_x17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_7_x18", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "880", "DependentChan" : "1163", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_7_x18_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_0_x134", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "969", "DependentChan" : "1164", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_0_x134_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "879", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.A_IO_L2_in_6_x1_U0.local_A_pong_V_U", "Parent" : "878"},
	{"ID" : "880", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.A_IO_L2_in_7_x1_U0", "Parent" : "862", "Child" : ["881"],
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
			{"Name" : "fifo_A_A_IO_L2_in_7_x18", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "878", "DependentChan" : "1163", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_7_x18_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_8_x19", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "882", "DependentChan" : "1165", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_8_x19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_0_x137", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "981", "DependentChan" : "1166", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_0_x137_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "881", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.A_IO_L2_in_7_x1_U0.local_A_pong_V_U", "Parent" : "880"},
	{"ID" : "882", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.A_IO_L2_in_8_x1_U0", "Parent" : "862", "Child" : ["883"],
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
			{"Name" : "fifo_A_A_IO_L2_in_8_x19", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "880", "DependentChan" : "1165", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_8_x19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_9_x110", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "884", "DependentChan" : "1167", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_9_x110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_8_0_x140", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "993", "DependentChan" : "1168", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_0_x140_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "883", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.A_IO_L2_in_8_x1_U0.local_A_pong_V_U", "Parent" : "882"},
	{"ID" : "884", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.A_IO_L2_in_9_x1_U0", "Parent" : "862", "Child" : ["885"],
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
			{"Name" : "fifo_A_A_IO_L2_in_9_x110", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "882", "DependentChan" : "1167", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_9_x110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_10_x111", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "886", "DependentChan" : "1169", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_10_x111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_9_0_x143", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1005", "DependentChan" : "1170", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_0_x143_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "885", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.A_IO_L2_in_9_x1_U0.local_A_pong_V_U", "Parent" : "884"},
	{"ID" : "886", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.A_IO_L2_in_10_x1_U0", "Parent" : "862", "Child" : ["887"],
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
			{"Name" : "fifo_A_A_IO_L2_in_10_x111", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "884", "DependentChan" : "1169", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_10_x111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_11_x112", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "888", "DependentChan" : "1171", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_11_x112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_10_0_x146", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1017", "DependentChan" : "1172", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_0_x146_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "887", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.A_IO_L2_in_10_x1_U0.local_A_pong_V_U", "Parent" : "886"},
	{"ID" : "888", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.A_IO_L2_in_11_x1_U0", "Parent" : "862", "Child" : ["889"],
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
			{"Name" : "fifo_A_A_IO_L2_in_11_x112", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "886", "DependentChan" : "1171", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_11_x112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_12_x113", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "890", "DependentChan" : "1173", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_12_x113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_11_0_x149", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1029", "DependentChan" : "1174", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_0_x149_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "889", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.A_IO_L2_in_11_x1_U0.local_A_pong_V_U", "Parent" : "888"},
	{"ID" : "890", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.A_IO_L2_in_boundary_x1_U0", "Parent" : "862", "Child" : ["891"],
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
			{"Name" : "fifo_A_A_IO_L2_in_12_x113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "888", "DependentChan" : "1173", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_12_x113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_12_0_x152", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1041", "DependentChan" : "1175", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_0_x152_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "891", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.A_IO_L2_in_boundary_x1_U0.local_A_pong_V_U", "Parent" : "890"},
	{"ID" : "892", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.B_IO_L3_in_x1_U0", "Parent" : "862",
		"CDFG" : "B_IO_L3_in_x1",
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
			{"Name" : "fifo_B_B_IO_L2_in_0_x114", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "893", "DependentChan" : "1176", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_0_x114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "893", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.B_IO_L2_in_x1_U0", "Parent" : "862", "Child" : ["894"],
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
			{"Name" : "fifo_B_B_IO_L2_in_0_x114", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "892", "DependentChan" : "1176", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_0_x114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_1_x115", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "895", "DependentChan" : "1177", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x155", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "897", "DependentChan" : "1178", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x155_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "894", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.B_IO_L2_in_x1_U0.local_B_pong_V_U", "Parent" : "893"},
	{"ID" : "895", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.B_IO_L2_in_boundary_x1_U0", "Parent" : "862", "Child" : ["896"],
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
			{"Name" : "fifo_B_B_IO_L2_in_1_x115", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "893", "DependentChan" : "1177", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x169", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "903", "DependentChan" : "1179", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x169_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "896", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.B_IO_L2_in_boundary_x1_U0.local_B_pong_V_U", "Parent" : "895"},
	{"ID" : "897", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_0_0_x1_U0", "Parent" : "862", "Child" : ["898", "899", "900", "901", "902"],
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
			{"Name" : "fifo_A_PE_0_0_x116", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "866", "DependentChan" : "1152", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_1_x117", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "903", "DependentChan" : "1180", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x155", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "893", "DependentChan" : "1178", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x155_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x156", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "909", "DependentChan" : "1181", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x156_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_0_x183", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1104", "DependentChan" : "1182", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_0_x183_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "898", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_0_0_x1_U0.local_A_0_U", "Parent" : "897"},
	{"ID" : "899", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_0_0_x1_U0.local_B_0_U", "Parent" : "897"},
	{"ID" : "900", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_0_0_x1_U0.local_C_U", "Parent" : "897"},
	{"ID" : "901", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_0_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U551", "Parent" : "897"},
	{"ID" : "902", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_0_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U552", "Parent" : "897"},
	{"ID" : "903", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_0_1_x1_U0", "Parent" : "862", "Child" : ["904", "905", "906", "907", "908"],
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
			{"Name" : "fifo_A_PE_0_1_x117", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "897", "DependentChan" : "1180", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_2_x118", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1053", "DependentChan" : "1183", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x169", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "895", "DependentChan" : "1179", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x169_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x170", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "915", "DependentChan" : "1184", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x170_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_1_x196", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1143", "DependentChan" : "1185", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_1_x196_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "904", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_0_1_x1_U0.local_A_0_U", "Parent" : "903"},
	{"ID" : "905", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_0_1_x1_U0.local_B_0_U", "Parent" : "903"},
	{"ID" : "906", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_0_1_x1_U0.local_C_U", "Parent" : "903"},
	{"ID" : "907", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_0_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U558", "Parent" : "903"},
	{"ID" : "908", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_0_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U559", "Parent" : "903"},
	{"ID" : "909", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_1_0_x1_U0", "Parent" : "862", "Child" : ["910", "911", "912", "913", "914"],
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
			{"Name" : "fifo_A_PE_1_0_x119", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "868", "DependentChan" : "1154", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_1_x120", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "915", "DependentChan" : "1186", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x156", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "897", "DependentChan" : "1181", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x156_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x157", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "921", "DependentChan" : "1187", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x157_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_0_x184", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1101", "DependentChan" : "1188", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_0_x184_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "910", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_1_0_x1_U0.local_A_0_U", "Parent" : "909"},
	{"ID" : "911", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_1_0_x1_U0.local_B_0_U", "Parent" : "909"},
	{"ID" : "912", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_1_0_x1_U0.local_C_U", "Parent" : "909"},
	{"ID" : "913", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_1_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U565", "Parent" : "909"},
	{"ID" : "914", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_1_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U566", "Parent" : "909"},
	{"ID" : "915", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_1_1_x1_U0", "Parent" : "862", "Child" : ["916", "917", "918", "919", "920"],
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
			{"Name" : "fifo_A_PE_1_1_x120", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "909", "DependentChan" : "1186", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_2_x121", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1054", "DependentChan" : "1189", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x170", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "903", "DependentChan" : "1184", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x170_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x171", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "927", "DependentChan" : "1190", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x171_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_1_x197", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1140", "DependentChan" : "1191", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_1_x197_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "916", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_1_1_x1_U0.local_A_0_U", "Parent" : "915"},
	{"ID" : "917", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_1_1_x1_U0.local_B_0_U", "Parent" : "915"},
	{"ID" : "918", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_1_1_x1_U0.local_C_U", "Parent" : "915"},
	{"ID" : "919", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_1_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U572", "Parent" : "915"},
	{"ID" : "920", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_1_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U573", "Parent" : "915"},
	{"ID" : "921", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_2_0_x1_U0", "Parent" : "862", "Child" : ["922", "923", "924", "925", "926"],
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
			{"Name" : "fifo_A_PE_2_0_x122", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "870", "DependentChan" : "1156", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_1_x123", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "927", "DependentChan" : "1192", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x157", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "909", "DependentChan" : "1187", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x157_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x158", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "933", "DependentChan" : "1193", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x158_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_0_x185", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1098", "DependentChan" : "1194", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_0_x185_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "922", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_2_0_x1_U0.local_A_0_U", "Parent" : "921"},
	{"ID" : "923", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_2_0_x1_U0.local_B_0_U", "Parent" : "921"},
	{"ID" : "924", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_2_0_x1_U0.local_C_U", "Parent" : "921"},
	{"ID" : "925", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_2_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U579", "Parent" : "921"},
	{"ID" : "926", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_2_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U580", "Parent" : "921"},
	{"ID" : "927", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_2_1_x1_U0", "Parent" : "862", "Child" : ["928", "929", "930", "931", "932"],
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
			{"Name" : "fifo_A_PE_2_1_x123", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "921", "DependentChan" : "1192", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_2_x124", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1055", "DependentChan" : "1195", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x171", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "915", "DependentChan" : "1190", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x171_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x172", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "939", "DependentChan" : "1196", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x172_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_1_x198", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1137", "DependentChan" : "1197", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_1_x198_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "928", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_2_1_x1_U0.local_A_0_U", "Parent" : "927"},
	{"ID" : "929", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_2_1_x1_U0.local_B_0_U", "Parent" : "927"},
	{"ID" : "930", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_2_1_x1_U0.local_C_U", "Parent" : "927"},
	{"ID" : "931", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_2_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U586", "Parent" : "927"},
	{"ID" : "932", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_2_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U587", "Parent" : "927"},
	{"ID" : "933", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_3_0_x1_U0", "Parent" : "862", "Child" : ["934", "935", "936", "937", "938"],
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
			{"Name" : "fifo_A_PE_3_0_x125", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "872", "DependentChan" : "1158", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_1_x126", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "939", "DependentChan" : "1198", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x158", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "921", "DependentChan" : "1193", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x158_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x159", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "945", "DependentChan" : "1199", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x159_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_0_x186", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1095", "DependentChan" : "1200", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_0_x186_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "934", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_3_0_x1_U0.local_A_0_U", "Parent" : "933"},
	{"ID" : "935", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_3_0_x1_U0.local_B_0_U", "Parent" : "933"},
	{"ID" : "936", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_3_0_x1_U0.local_C_U", "Parent" : "933"},
	{"ID" : "937", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_3_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U593", "Parent" : "933"},
	{"ID" : "938", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_3_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U594", "Parent" : "933"},
	{"ID" : "939", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_3_1_x1_U0", "Parent" : "862", "Child" : ["940", "941", "942", "943", "944"],
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
			{"Name" : "fifo_A_PE_3_1_x126", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "933", "DependentChan" : "1198", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_2_x127", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1056", "DependentChan" : "1201", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x172", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "927", "DependentChan" : "1196", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x172_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x173", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "951", "DependentChan" : "1202", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x173_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_1_x199", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1134", "DependentChan" : "1203", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_1_x199_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "940", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_3_1_x1_U0.local_A_0_U", "Parent" : "939"},
	{"ID" : "941", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_3_1_x1_U0.local_B_0_U", "Parent" : "939"},
	{"ID" : "942", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_3_1_x1_U0.local_C_U", "Parent" : "939"},
	{"ID" : "943", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_3_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U600", "Parent" : "939"},
	{"ID" : "944", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_3_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U601", "Parent" : "939"},
	{"ID" : "945", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_4_0_x1_U0", "Parent" : "862", "Child" : ["946", "947", "948", "949", "950"],
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
			{"Name" : "fifo_A_PE_4_0_x128", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "874", "DependentChan" : "1160", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_0_x128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_1_x129", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "951", "DependentChan" : "1204", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x159", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "933", "DependentChan" : "1199", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x159_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x160", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "957", "DependentChan" : "1205", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x160_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_0_x187", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1092", "DependentChan" : "1206", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_0_x187_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "946", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_4_0_x1_U0.local_A_0_U", "Parent" : "945"},
	{"ID" : "947", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_4_0_x1_U0.local_B_0_U", "Parent" : "945"},
	{"ID" : "948", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_4_0_x1_U0.local_C_U", "Parent" : "945"},
	{"ID" : "949", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_4_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U607", "Parent" : "945"},
	{"ID" : "950", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_4_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U608", "Parent" : "945"},
	{"ID" : "951", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_4_1_x1_U0", "Parent" : "862", "Child" : ["952", "953", "954", "955", "956"],
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
			{"Name" : "fifo_A_PE_4_1_x129", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "945", "DependentChan" : "1204", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_2_x130", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1057", "DependentChan" : "1207", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_2_x130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x173", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "939", "DependentChan" : "1202", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x173_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_1_x174", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "963", "DependentChan" : "1208", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_1_x174_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_1_x1100", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1131", "DependentChan" : "1209", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_1_x1100_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "952", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_4_1_x1_U0.local_A_0_U", "Parent" : "951"},
	{"ID" : "953", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_4_1_x1_U0.local_B_0_U", "Parent" : "951"},
	{"ID" : "954", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_4_1_x1_U0.local_C_U", "Parent" : "951"},
	{"ID" : "955", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_4_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U614", "Parent" : "951"},
	{"ID" : "956", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_4_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U615", "Parent" : "951"},
	{"ID" : "957", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_5_0_x1_U0", "Parent" : "862", "Child" : ["958", "959", "960", "961", "962"],
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
			{"Name" : "fifo_A_PE_5_0_x131", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "876", "DependentChan" : "1162", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_0_x131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_1_x132", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "963", "DependentChan" : "1210", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_1_x132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x160", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "945", "DependentChan" : "1205", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x160_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_0_x161", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "969", "DependentChan" : "1211", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_0_x161_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_0_x188", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1089", "DependentChan" : "1212", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_0_x188_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "958", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_5_0_x1_U0.local_A_0_U", "Parent" : "957"},
	{"ID" : "959", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_5_0_x1_U0.local_B_0_U", "Parent" : "957"},
	{"ID" : "960", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_5_0_x1_U0.local_C_U", "Parent" : "957"},
	{"ID" : "961", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_5_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U621", "Parent" : "957"},
	{"ID" : "962", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_5_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U622", "Parent" : "957"},
	{"ID" : "963", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_5_1_x1_U0", "Parent" : "862", "Child" : ["964", "965", "966", "967", "968"],
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
			{"Name" : "fifo_A_PE_5_1_x132", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "957", "DependentChan" : "1210", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_1_x132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_2_x133", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1058", "DependentChan" : "1213", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_2_x133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_1_x174", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "951", "DependentChan" : "1208", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_1_x174_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x175", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "975", "DependentChan" : "1214", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x175_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_1_x1101", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1128", "DependentChan" : "1215", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_1_x1101_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "964", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_5_1_x1_U0.local_A_0_U", "Parent" : "963"},
	{"ID" : "965", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_5_1_x1_U0.local_B_0_U", "Parent" : "963"},
	{"ID" : "966", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_5_1_x1_U0.local_C_U", "Parent" : "963"},
	{"ID" : "967", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_5_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U628", "Parent" : "963"},
	{"ID" : "968", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_5_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U629", "Parent" : "963"},
	{"ID" : "969", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_6_0_x1_U0", "Parent" : "862", "Child" : ["970", "971", "972", "973", "974"],
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
			{"Name" : "fifo_A_PE_6_0_x134", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "878", "DependentChan" : "1164", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_0_x134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_1_x135", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "975", "DependentChan" : "1216", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_1_x135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_0_x161", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "957", "DependentChan" : "1211", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_0_x161_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_0_x162", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "981", "DependentChan" : "1217", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_0_x162_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_0_x189", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1086", "DependentChan" : "1218", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_0_x189_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "970", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_6_0_x1_U0.local_A_0_U", "Parent" : "969"},
	{"ID" : "971", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_6_0_x1_U0.local_B_0_U", "Parent" : "969"},
	{"ID" : "972", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_6_0_x1_U0.local_C_U", "Parent" : "969"},
	{"ID" : "973", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_6_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U635", "Parent" : "969"},
	{"ID" : "974", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_6_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U636", "Parent" : "969"},
	{"ID" : "975", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_6_1_x1_U0", "Parent" : "862", "Child" : ["976", "977", "978", "979", "980"],
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
			{"Name" : "fifo_A_PE_6_1_x135", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "969", "DependentChan" : "1216", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_1_x135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_2_x136", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1059", "DependentChan" : "1219", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x175", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "963", "DependentChan" : "1214", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x175_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_1_x176", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "987", "DependentChan" : "1220", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_1_x176_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x1102", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1125", "DependentChan" : "1221", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x1102_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "976", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_6_1_x1_U0.local_A_0_U", "Parent" : "975"},
	{"ID" : "977", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_6_1_x1_U0.local_B_0_U", "Parent" : "975"},
	{"ID" : "978", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_6_1_x1_U0.local_C_U", "Parent" : "975"},
	{"ID" : "979", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_6_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U642", "Parent" : "975"},
	{"ID" : "980", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_6_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U643", "Parent" : "975"},
	{"ID" : "981", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_7_0_x1_U0", "Parent" : "862", "Child" : ["982", "983", "984", "985", "986"],
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
			{"Name" : "fifo_A_PE_7_0_x137", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "880", "DependentChan" : "1166", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_0_x137_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_1_x138", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "987", "DependentChan" : "1222", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_1_x138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_0_x162", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "969", "DependentChan" : "1217", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_0_x162_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_0_x163", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "993", "DependentChan" : "1223", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_0_x163_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_0_x190", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1083", "DependentChan" : "1224", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_0_x190_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "982", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_7_0_x1_U0.local_A_0_U", "Parent" : "981"},
	{"ID" : "983", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_7_0_x1_U0.local_B_0_U", "Parent" : "981"},
	{"ID" : "984", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_7_0_x1_U0.local_C_U", "Parent" : "981"},
	{"ID" : "985", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_7_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U649", "Parent" : "981"},
	{"ID" : "986", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_7_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U650", "Parent" : "981"},
	{"ID" : "987", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_7_1_x1_U0", "Parent" : "862", "Child" : ["988", "989", "990", "991", "992"],
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
			{"Name" : "fifo_A_PE_7_1_x138", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "981", "DependentChan" : "1222", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_1_x138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_2_x139", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1060", "DependentChan" : "1225", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_2_x139_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_1_x176", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "975", "DependentChan" : "1220", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_1_x176_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_1_x177", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "999", "DependentChan" : "1226", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_1_x177_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_1_x1103", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1122", "DependentChan" : "1227", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_1_x1103_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "988", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_7_1_x1_U0.local_A_0_U", "Parent" : "987"},
	{"ID" : "989", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_7_1_x1_U0.local_B_0_U", "Parent" : "987"},
	{"ID" : "990", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_7_1_x1_U0.local_C_U", "Parent" : "987"},
	{"ID" : "991", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_7_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U656", "Parent" : "987"},
	{"ID" : "992", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_7_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U657", "Parent" : "987"},
	{"ID" : "993", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_8_0_x1_U0", "Parent" : "862", "Child" : ["994", "995", "996", "997", "998"],
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
			{"Name" : "fifo_A_PE_8_0_x140", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "882", "DependentChan" : "1168", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_0_x140_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_8_1_x141", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "999", "DependentChan" : "1228", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_1_x141_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_0_x163", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "981", "DependentChan" : "1223", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_0_x163_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_0_x164", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1005", "DependentChan" : "1229", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_0_x164_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_0_x191", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1080", "DependentChan" : "1230", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_0_x191_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "994", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_8_0_x1_U0.local_A_0_U", "Parent" : "993"},
	{"ID" : "995", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_8_0_x1_U0.local_B_0_U", "Parent" : "993"},
	{"ID" : "996", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_8_0_x1_U0.local_C_U", "Parent" : "993"},
	{"ID" : "997", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_8_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U663", "Parent" : "993"},
	{"ID" : "998", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_8_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U664", "Parent" : "993"},
	{"ID" : "999", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_8_1_x1_U0", "Parent" : "862", "Child" : ["1000", "1001", "1002", "1003", "1004"],
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
			{"Name" : "fifo_A_PE_8_1_x141", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "993", "DependentChan" : "1228", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_1_x141_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_8_2_x142", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1061", "DependentChan" : "1231", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_2_x142_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_1_x177", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "987", "DependentChan" : "1226", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_1_x177_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_1_x178", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1011", "DependentChan" : "1232", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_1_x178_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_1_x1104", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1119", "DependentChan" : "1233", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_1_x1104_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1000", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_8_1_x1_U0.local_A_0_U", "Parent" : "999"},
	{"ID" : "1001", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_8_1_x1_U0.local_B_0_U", "Parent" : "999"},
	{"ID" : "1002", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_8_1_x1_U0.local_C_U", "Parent" : "999"},
	{"ID" : "1003", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_8_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U670", "Parent" : "999"},
	{"ID" : "1004", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_8_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U671", "Parent" : "999"},
	{"ID" : "1005", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_9_0_x1_U0", "Parent" : "862", "Child" : ["1006", "1007", "1008", "1009", "1010"],
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
			{"Name" : "fifo_A_PE_9_0_x143", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "884", "DependentChan" : "1170", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_0_x143_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_9_1_x144", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1011", "DependentChan" : "1234", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_1_x144_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_0_x164", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "993", "DependentChan" : "1229", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_0_x164_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_0_x165", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1017", "DependentChan" : "1235", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_0_x165_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_0_x192", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1077", "DependentChan" : "1236", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_0_x192_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1006", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_9_0_x1_U0.local_A_0_U", "Parent" : "1005"},
	{"ID" : "1007", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_9_0_x1_U0.local_B_0_U", "Parent" : "1005"},
	{"ID" : "1008", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_9_0_x1_U0.local_C_U", "Parent" : "1005"},
	{"ID" : "1009", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_9_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U677", "Parent" : "1005"},
	{"ID" : "1010", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_9_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U678", "Parent" : "1005"},
	{"ID" : "1011", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_9_1_x1_U0", "Parent" : "862", "Child" : ["1012", "1013", "1014", "1015", "1016"],
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
			{"Name" : "fifo_A_PE_9_1_x144", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1005", "DependentChan" : "1234", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_1_x144_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_9_2_x145", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1062", "DependentChan" : "1237", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_2_x145_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_9_1_x178", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "999", "DependentChan" : "1232", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_9_1_x178_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_1_x179", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1023", "DependentChan" : "1238", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_1_x179_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_1_x1105", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1116", "DependentChan" : "1239", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_1_x1105_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1012", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_9_1_x1_U0.local_A_0_U", "Parent" : "1011"},
	{"ID" : "1013", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_9_1_x1_U0.local_B_0_U", "Parent" : "1011"},
	{"ID" : "1014", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_9_1_x1_U0.local_C_U", "Parent" : "1011"},
	{"ID" : "1015", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_9_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U684", "Parent" : "1011"},
	{"ID" : "1016", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_9_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U685", "Parent" : "1011"},
	{"ID" : "1017", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_10_0_x1_U0", "Parent" : "862", "Child" : ["1018", "1019", "1020", "1021", "1022"],
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
			{"Name" : "fifo_A_PE_10_0_x146", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "886", "DependentChan" : "1172", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_0_x146_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_10_1_x147", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1023", "DependentChan" : "1240", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_1_x147_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_0_x165", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1005", "DependentChan" : "1235", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_0_x165_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_0_x166", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1029", "DependentChan" : "1241", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_0_x166_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_0_x193", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1074", "DependentChan" : "1242", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_0_x193_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1018", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_10_0_x1_U0.local_A_0_U", "Parent" : "1017"},
	{"ID" : "1019", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_10_0_x1_U0.local_B_0_U", "Parent" : "1017"},
	{"ID" : "1020", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_10_0_x1_U0.local_C_U", "Parent" : "1017"},
	{"ID" : "1021", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_10_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U691", "Parent" : "1017"},
	{"ID" : "1022", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_10_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U692", "Parent" : "1017"},
	{"ID" : "1023", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_10_1_x1_U0", "Parent" : "862", "Child" : ["1024", "1025", "1026", "1027", "1028"],
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
			{"Name" : "fifo_A_PE_10_1_x147", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1017", "DependentChan" : "1240", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_1_x147_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_10_2_x148", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1063", "DependentChan" : "1243", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_2_x148_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_10_1_x179", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1011", "DependentChan" : "1238", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_10_1_x179_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_1_x180", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1035", "DependentChan" : "1244", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_1_x180_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_1_x1106", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1113", "DependentChan" : "1245", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_1_x1106_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1024", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_10_1_x1_U0.local_A_0_U", "Parent" : "1023"},
	{"ID" : "1025", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_10_1_x1_U0.local_B_0_U", "Parent" : "1023"},
	{"ID" : "1026", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_10_1_x1_U0.local_C_U", "Parent" : "1023"},
	{"ID" : "1027", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_10_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U698", "Parent" : "1023"},
	{"ID" : "1028", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_10_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U699", "Parent" : "1023"},
	{"ID" : "1029", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_11_0_x1_U0", "Parent" : "862", "Child" : ["1030", "1031", "1032", "1033", "1034"],
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
			{"Name" : "fifo_A_PE_11_0_x149", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "888", "DependentChan" : "1174", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_0_x149_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_11_1_x150", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1035", "DependentChan" : "1246", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_1_x150_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_0_x166", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1017", "DependentChan" : "1241", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_0_x166_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_0_x167", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1041", "DependentChan" : "1247", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_0_x167_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_0_x194", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1071", "DependentChan" : "1248", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_0_x194_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1030", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_11_0_x1_U0.local_A_0_U", "Parent" : "1029"},
	{"ID" : "1031", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_11_0_x1_U0.local_B_0_U", "Parent" : "1029"},
	{"ID" : "1032", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_11_0_x1_U0.local_C_U", "Parent" : "1029"},
	{"ID" : "1033", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_11_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U705", "Parent" : "1029"},
	{"ID" : "1034", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_11_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U706", "Parent" : "1029"},
	{"ID" : "1035", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_11_1_x1_U0", "Parent" : "862", "Child" : ["1036", "1037", "1038", "1039", "1040"],
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
			{"Name" : "fifo_A_PE_11_1_x150", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1029", "DependentChan" : "1246", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_1_x150_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_11_2_x151", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1064", "DependentChan" : "1249", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_2_x151_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_11_1_x180", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1023", "DependentChan" : "1244", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_11_1_x180_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_1_x181", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1047", "DependentChan" : "1250", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_1_x181_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_1_x1107", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1110", "DependentChan" : "1251", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_1_x1107_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1036", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_11_1_x1_U0.local_A_0_U", "Parent" : "1035"},
	{"ID" : "1037", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_11_1_x1_U0.local_B_0_U", "Parent" : "1035"},
	{"ID" : "1038", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_11_1_x1_U0.local_C_U", "Parent" : "1035"},
	{"ID" : "1039", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_11_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U712", "Parent" : "1035"},
	{"ID" : "1040", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_11_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U713", "Parent" : "1035"},
	{"ID" : "1041", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_12_0_x1_U0", "Parent" : "862", "Child" : ["1042", "1043", "1044", "1045", "1046"],
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
			{"Name" : "fifo_A_PE_12_0_x152", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "890", "DependentChan" : "1175", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_0_x152_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_12_1_x153", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1047", "DependentChan" : "1252", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_1_x153_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_0_x167", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1029", "DependentChan" : "1247", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_0_x167_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_13_0_x168", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1066", "DependentChan" : "1253", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_0_x168_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_0_x195", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1068", "DependentChan" : "1254", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_0_x195_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1042", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_12_0_x1_U0.local_A_0_U", "Parent" : "1041"},
	{"ID" : "1043", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_12_0_x1_U0.local_B_0_U", "Parent" : "1041"},
	{"ID" : "1044", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_12_0_x1_U0.local_C_U", "Parent" : "1041"},
	{"ID" : "1045", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_12_0_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U719", "Parent" : "1041"},
	{"ID" : "1046", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_12_0_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U720", "Parent" : "1041"},
	{"ID" : "1047", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_12_1_x1_U0", "Parent" : "862", "Child" : ["1048", "1049", "1050", "1051", "1052"],
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
			{"Name" : "fifo_A_PE_12_1_x153", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1041", "DependentChan" : "1252", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_1_x153_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_12_2_x154", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1065", "DependentChan" : "1255", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_2_x154_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_12_1_x181", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1035", "DependentChan" : "1250", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_12_1_x181_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_13_1_x182", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1067", "DependentChan" : "1256", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_1_x182_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_1_x1108", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1107", "DependentChan" : "1257", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_1_x1108_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1048", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_12_1_x1_U0.local_A_0_U", "Parent" : "1047"},
	{"ID" : "1049", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_12_1_x1_U0.local_B_0_U", "Parent" : "1047"},
	{"ID" : "1050", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_12_1_x1_U0.local_C_U", "Parent" : "1047"},
	{"ID" : "1051", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_12_1_x1_U0.fadd_32ns_32ns_32_7_full_dsp_1_U726", "Parent" : "1047"},
	{"ID" : "1052", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.PE_wrapper_12_1_x1_U0.fmul_32ns_32ns_32_4_max_dsp_1_U727", "Parent" : "1047"},
	{"ID" : "1053", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.A_PE_dummy_0_x1_U0", "Parent" : "862",
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
			{"Name" : "fifo_A_PE_0_2_x118", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "903", "DependentChan" : "1183", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x118_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1054", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.A_PE_dummy_1_x1_U0", "Parent" : "862",
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
			{"Name" : "fifo_A_PE_1_2_x121", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "915", "DependentChan" : "1189", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x121_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1055", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.A_PE_dummy_2_x1_U0", "Parent" : "862",
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
			{"Name" : "fifo_A_PE_2_2_x124", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "927", "DependentChan" : "1195", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x124_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1056", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.A_PE_dummy_3_x1_U0", "Parent" : "862",
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
			{"Name" : "fifo_A_PE_3_2_x127", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "939", "DependentChan" : "1201", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x127_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1057", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.A_PE_dummy_4_x1_U0", "Parent" : "862",
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
			{"Name" : "fifo_A_PE_4_2_x130", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "951", "DependentChan" : "1207", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_2_x130_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1058", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.A_PE_dummy_5_x1_U0", "Parent" : "862",
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
			{"Name" : "fifo_A_PE_5_2_x133", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "963", "DependentChan" : "1213", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_2_x133_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1059", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.A_PE_dummy_6_x1_U0", "Parent" : "862",
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
			{"Name" : "fifo_A_PE_6_2_x136", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "975", "DependentChan" : "1219", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x136_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1060", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.A_PE_dummy_7_x1_U0", "Parent" : "862",
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
			{"Name" : "fifo_A_PE_7_2_x139", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "987", "DependentChan" : "1225", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_2_x139_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1061", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.A_PE_dummy_8_x1_U0", "Parent" : "862",
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
			{"Name" : "fifo_A_PE_8_2_x142", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "999", "DependentChan" : "1231", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_8_2_x142_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1062", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.A_PE_dummy_9_x1_U0", "Parent" : "862",
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
			{"Name" : "fifo_A_PE_9_2_x145", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1011", "DependentChan" : "1237", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_9_2_x145_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1063", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.A_PE_dummy_10_x1_U0", "Parent" : "862",
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
			{"Name" : "fifo_A_PE_10_2_x148", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1023", "DependentChan" : "1243", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_10_2_x148_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1064", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.A_PE_dummy_11_x1_U0", "Parent" : "862",
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
			{"Name" : "fifo_A_PE_11_2_x151", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1035", "DependentChan" : "1249", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_11_2_x151_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1065", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.A_PE_dummy_12_x1_U0", "Parent" : "862",
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
			{"Name" : "fifo_A_PE_12_2_x154", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1047", "DependentChan" : "1255", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_12_2_x154_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1066", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.B_PE_dummy_0_x1_U0", "Parent" : "862",
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
			{"Name" : "fifo_B_PE_13_0_x168", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1041", "DependentChan" : "1253", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_0_x168_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1067", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.B_PE_dummy_1_x1_U0", "Parent" : "862",
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
			{"Name" : "fifo_B_PE_13_1_x182", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1047", "DependentChan" : "1256", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_13_1_x182_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1068", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_boundary_0_x1_U0", "Parent" : "862", "Child" : ["1069", "1070"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x1121", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1071", "DependentChan" : "1258", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x1121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_0_x195", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1041", "DependentChan" : "1254", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_0_x195_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1069", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_boundary_0_x1_U0.local_C_V_U", "Parent" : "1068"},
	{"ID" : "1070", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_boundary_0_x1_U0.buf_data_split_V_U", "Parent" : "1068"},
	{"ID" : "1071", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_0_x1_U0", "Parent" : "862", "Child" : ["1072", "1073"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x1121", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1068", "DependentChan" : "1258", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_12_x1121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x1120", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1074", "DependentChan" : "1259", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x1120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_0_x194", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1029", "DependentChan" : "1248", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_0_x194_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1072", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_0_x1_U0.local_C_V_U", "Parent" : "1071"},
	{"ID" : "1073", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_0_x1_U0.buf_data_split_V_U", "Parent" : "1071"},
	{"ID" : "1074", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_1_x1_U0", "Parent" : "862", "Child" : ["1075", "1076"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x1120", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1071", "DependentChan" : "1259", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_11_x1120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x1119", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1077", "DependentChan" : "1260", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x1119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_0_x193", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1017", "DependentChan" : "1242", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_0_x193_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1075", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_1_x1_U0.local_C_V_U", "Parent" : "1074"},
	{"ID" : "1076", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_1_x1_U0.buf_data_split_V_U", "Parent" : "1074"},
	{"ID" : "1077", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_2_x1_U0", "Parent" : "862", "Child" : ["1078", "1079"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x1119", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1074", "DependentChan" : "1260", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_10_x1119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x1118", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1080", "DependentChan" : "1261", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x1118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_0_x192", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1005", "DependentChan" : "1236", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_0_x192_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1078", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_2_x1_U0.local_C_V_U", "Parent" : "1077"},
	{"ID" : "1079", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_2_x1_U0.buf_data_split_V_U", "Parent" : "1077"},
	{"ID" : "1080", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_3_x1_U0", "Parent" : "862", "Child" : ["1081", "1082"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x1118", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1077", "DependentChan" : "1261", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_9_x1118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x1117", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1083", "DependentChan" : "1262", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x1117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_0_x191", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "993", "DependentChan" : "1230", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_0_x191_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1081", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_3_x1_U0.local_C_V_U", "Parent" : "1080"},
	{"ID" : "1082", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_3_x1_U0.buf_data_split_V_U", "Parent" : "1080"},
	{"ID" : "1083", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_4_x1_U0", "Parent" : "862", "Child" : ["1084", "1085"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x1117", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1080", "DependentChan" : "1262", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_8_x1117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x1116", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1086", "DependentChan" : "1263", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x1116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_0_x190", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "981", "DependentChan" : "1224", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_0_x190_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1084", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_4_x1_U0.local_C_V_U", "Parent" : "1083"},
	{"ID" : "1085", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_4_x1_U0.buf_data_split_V_U", "Parent" : "1083"},
	{"ID" : "1086", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_5_x1_U0", "Parent" : "862", "Child" : ["1087", "1088"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x1116", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1083", "DependentChan" : "1263", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x1116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x1115", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1089", "DependentChan" : "1264", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x1115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_0_x189", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "969", "DependentChan" : "1218", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_0_x189_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1087", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_5_x1_U0.local_C_V_U", "Parent" : "1086"},
	{"ID" : "1088", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_5_x1_U0.buf_data_split_V_U", "Parent" : "1086"},
	{"ID" : "1089", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_6_x1_U0", "Parent" : "862", "Child" : ["1090", "1091"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x1115", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1086", "DependentChan" : "1264", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x1115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x1114", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1092", "DependentChan" : "1265", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x1114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_0_x188", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "957", "DependentChan" : "1212", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_0_x188_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1090", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_6_x1_U0.local_C_V_U", "Parent" : "1089"},
	{"ID" : "1091", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_6_x1_U0.buf_data_split_V_U", "Parent" : "1089"},
	{"ID" : "1092", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_7_x1_U0", "Parent" : "862", "Child" : ["1093", "1094"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x1114", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1089", "DependentChan" : "1265", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x1114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x1113", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1095", "DependentChan" : "1266", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x1113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_0_x187", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "945", "DependentChan" : "1206", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_0_x187_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1093", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_7_x1_U0.local_C_V_U", "Parent" : "1092"},
	{"ID" : "1094", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_7_x1_U0.buf_data_split_V_U", "Parent" : "1092"},
	{"ID" : "1095", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_8_x1_U0", "Parent" : "862", "Child" : ["1096", "1097"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x1113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1092", "DependentChan" : "1266", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x1113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x1112", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1098", "DependentChan" : "1267", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x1112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_0_x186", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "933", "DependentChan" : "1200", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_0_x186_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1096", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_8_x1_U0.local_C_V_U", "Parent" : "1095"},
	{"ID" : "1097", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_8_x1_U0.buf_data_split_V_U", "Parent" : "1095"},
	{"ID" : "1098", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_9_x1_U0", "Parent" : "862", "Child" : ["1099", "1100"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x1112", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1095", "DependentChan" : "1267", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x1112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x1111", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1101", "DependentChan" : "1268", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x1111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_0_x185", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "921", "DependentChan" : "1194", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_0_x185_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1099", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_9_x1_U0.local_C_V_U", "Parent" : "1098"},
	{"ID" : "1100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_9_x1_U0.buf_data_split_V_U", "Parent" : "1098"},
	{"ID" : "1101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_10_x1_U0", "Parent" : "862", "Child" : ["1102", "1103"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x1111", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1098", "DependentChan" : "1268", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x1111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x1110", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1104", "DependentChan" : "1269", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x1110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_0_x184", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "909", "DependentChan" : "1188", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_0_x184_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_10_x1_U0.local_C_V_U", "Parent" : "1101"},
	{"ID" : "1103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_10_x1_U0.buf_data_split_V_U", "Parent" : "1101"},
	{"ID" : "1104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_11_x1_U0", "Parent" : "862", "Child" : ["1105", "1106"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x1110", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1101", "DependentChan" : "1269", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x1110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x1109", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1147", "DependentChan" : "1270", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_0_x183", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "897", "DependentChan" : "1182", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_0_x183_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_11_x1_U0.local_C_V_U", "Parent" : "1104"},
	{"ID" : "1106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_11_x1_U0.buf_data_split_V_U", "Parent" : "1104"},
	{"ID" : "1107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_boundary_1_x1_U0", "Parent" : "862", "Child" : ["1108", "1109"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x1134", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1110", "DependentChan" : "1271", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x1134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_12_1_x1108", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1047", "DependentChan" : "1257", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_12_1_x1108_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_boundary_1_x1_U0.local_C_V_U", "Parent" : "1107"},
	{"ID" : "1109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_boundary_1_x1_U0.buf_data_split_V_U", "Parent" : "1107"},
	{"ID" : "1110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_12_x1_U0", "Parent" : "862", "Child" : ["1111", "1112"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x1134", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1107", "DependentChan" : "1271", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_12_x1134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x1133", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1113", "DependentChan" : "1272", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x1133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_11_1_x1107", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1035", "DependentChan" : "1251", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_11_1_x1107_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_12_x1_U0.local_C_V_U", "Parent" : "1110"},
	{"ID" : "1112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_12_x1_U0.buf_data_split_V_U", "Parent" : "1110"},
	{"ID" : "1113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_13_x1_U0", "Parent" : "862", "Child" : ["1114", "1115"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x1133", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1110", "DependentChan" : "1272", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_11_x1133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x1132", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1116", "DependentChan" : "1273", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x1132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_10_1_x1106", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1023", "DependentChan" : "1245", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_10_1_x1106_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_13_x1_U0.local_C_V_U", "Parent" : "1113"},
	{"ID" : "1115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_13_x1_U0.buf_data_split_V_U", "Parent" : "1113"},
	{"ID" : "1116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_14_x1_U0", "Parent" : "862", "Child" : ["1117", "1118"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x1132", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1113", "DependentChan" : "1273", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_10_x1132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x1131", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1119", "DependentChan" : "1274", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x1131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_9_1_x1105", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1011", "DependentChan" : "1239", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_9_1_x1105_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_14_x1_U0.local_C_V_U", "Parent" : "1116"},
	{"ID" : "1118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_14_x1_U0.buf_data_split_V_U", "Parent" : "1116"},
	{"ID" : "1119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_15_x1_U0", "Parent" : "862", "Child" : ["1120", "1121"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x1131", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1116", "DependentChan" : "1274", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_9_x1131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x1130", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1122", "DependentChan" : "1275", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x1130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_8_1_x1104", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "999", "DependentChan" : "1233", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_8_1_x1104_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_15_x1_U0.local_C_V_U", "Parent" : "1119"},
	{"ID" : "1121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_15_x1_U0.buf_data_split_V_U", "Parent" : "1119"},
	{"ID" : "1122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_16_x1_U0", "Parent" : "862", "Child" : ["1123", "1124"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x1130", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1119", "DependentChan" : "1275", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_8_x1130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1125", "DependentChan" : "1276", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_1_x1103", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "987", "DependentChan" : "1227", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_1_x1103_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_16_x1_U0.local_C_V_U", "Parent" : "1122"},
	{"ID" : "1124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_16_x1_U0.buf_data_split_V_U", "Parent" : "1122"},
	{"ID" : "1125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_17_x1_U0", "Parent" : "862", "Child" : ["1126", "1127"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1122", "DependentChan" : "1276", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1128", "DependentChan" : "1277", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x1102", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "975", "DependentChan" : "1221", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x1102_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_17_x1_U0.local_C_V_U", "Parent" : "1125"},
	{"ID" : "1127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_17_x1_U0.buf_data_split_V_U", "Parent" : "1125"},
	{"ID" : "1128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_18_x1_U0", "Parent" : "862", "Child" : ["1129", "1130"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1125", "DependentChan" : "1277", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x1127", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1131", "DependentChan" : "1278", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x1127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_1_x1101", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "963", "DependentChan" : "1215", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_1_x1101_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_18_x1_U0.local_C_V_U", "Parent" : "1128"},
	{"ID" : "1130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_18_x1_U0.buf_data_split_V_U", "Parent" : "1128"},
	{"ID" : "1131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_19_x1_U0", "Parent" : "862", "Child" : ["1132", "1133"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x1127", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1128", "DependentChan" : "1278", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x1127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x1126", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1134", "DependentChan" : "1279", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x1126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_1_x1100", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "951", "DependentChan" : "1209", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_1_x1100_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_19_x1_U0.local_C_V_U", "Parent" : "1131"},
	{"ID" : "1133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_19_x1_U0.buf_data_split_V_U", "Parent" : "1131"},
	{"ID" : "1134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_20_x1_U0", "Parent" : "862", "Child" : ["1135", "1136"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x1126", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1131", "DependentChan" : "1279", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x1126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x1125", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1137", "DependentChan" : "1280", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x1125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_1_x199", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "939", "DependentChan" : "1203", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_1_x199_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_20_x1_U0.local_C_V_U", "Parent" : "1134"},
	{"ID" : "1136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_20_x1_U0.buf_data_split_V_U", "Parent" : "1134"},
	{"ID" : "1137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_21_x1_U0", "Parent" : "862", "Child" : ["1138", "1139"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x1125", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1134", "DependentChan" : "1280", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x1125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x1124", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1140", "DependentChan" : "1281", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x1124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_1_x198", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "927", "DependentChan" : "1197", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_1_x198_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_21_x1_U0.local_C_V_U", "Parent" : "1137"},
	{"ID" : "1139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_21_x1_U0.buf_data_split_V_U", "Parent" : "1137"},
	{"ID" : "1140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_22_x1_U0", "Parent" : "862", "Child" : ["1141", "1142"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x1124", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1137", "DependentChan" : "1281", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x1124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x1123", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1143", "DependentChan" : "1282", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x1123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_1_x197", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "915", "DependentChan" : "1191", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_1_x197_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_22_x1_U0.local_C_V_U", "Parent" : "1140"},
	{"ID" : "1142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_22_x1_U0.buf_data_split_V_U", "Parent" : "1140"},
	{"ID" : "1143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_23_x1_U0", "Parent" : "862", "Child" : ["1144", "1145"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x1123", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1140", "DependentChan" : "1282", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x1123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x1122", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1146", "DependentChan" : "1283", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x1122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_1_x196", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "903", "DependentChan" : "1185", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_1_x196_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_23_x1_U0.local_C_V_U", "Parent" : "1143"},
	{"ID" : "1145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L1_out_23_x1_U0.buf_data_split_V_U", "Parent" : "1143"},
	{"ID" : "1146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L2_out_boundary_x1_U0", "Parent" : "862",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x1136", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1147", "DependentChan" : "1284", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x1136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x1122", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1143", "DependentChan" : "1283", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x1122_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L2_out_x1_U0", "Parent" : "862",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x1136", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1146", "DependentChan" : "1284", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x1136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x1135", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "1148", "DependentChan" : "1285", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x1135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x1109", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1104", "DependentChan" : "1270", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L3_out_x1_U0", "Parent" : "862", "Child" : ["1149"],
		"CDFG" : "C_drain_IO_L3_out_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "45057", "EstimateLatencyMax" : "45057",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x1135", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1147", "DependentChan" : "1285", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x1135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "C", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1149", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.C_drain_IO_L3_out_x1_U0.mem_data_split_V_U", "Parent" : "1148"},
	{"ID" : "1150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_A_IO_L2_in_0_x1_U", "Parent" : "862"},
	{"ID" : "1151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_A_IO_L2_in_1_x1_U", "Parent" : "862"},
	{"ID" : "1152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_PE_0_0_x1_U", "Parent" : "862"},
	{"ID" : "1153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_A_IO_L2_in_2_x1_U", "Parent" : "862"},
	{"ID" : "1154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_PE_1_0_x1_U", "Parent" : "862"},
	{"ID" : "1155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_A_IO_L2_in_3_x1_U", "Parent" : "862"},
	{"ID" : "1156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_PE_2_0_x1_U", "Parent" : "862"},
	{"ID" : "1157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_A_IO_L2_in_4_x1_U", "Parent" : "862"},
	{"ID" : "1158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_PE_3_0_x1_U", "Parent" : "862"},
	{"ID" : "1159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_A_IO_L2_in_5_x1_U", "Parent" : "862"},
	{"ID" : "1160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_PE_4_0_x1_U", "Parent" : "862"},
	{"ID" : "1161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_A_IO_L2_in_6_x1_U", "Parent" : "862"},
	{"ID" : "1162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_PE_5_0_x1_U", "Parent" : "862"},
	{"ID" : "1163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_A_IO_L2_in_7_x1_U", "Parent" : "862"},
	{"ID" : "1164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_PE_6_0_x1_U", "Parent" : "862"},
	{"ID" : "1165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_A_IO_L2_in_8_x1_U", "Parent" : "862"},
	{"ID" : "1166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_PE_7_0_x1_U", "Parent" : "862"},
	{"ID" : "1167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_A_IO_L2_in_9_x1_U", "Parent" : "862"},
	{"ID" : "1168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_PE_8_0_x1_U", "Parent" : "862"},
	{"ID" : "1169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_A_IO_L2_in_10_x1_U", "Parent" : "862"},
	{"ID" : "1170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_PE_9_0_x1_U", "Parent" : "862"},
	{"ID" : "1171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_A_IO_L2_in_11_x1_U", "Parent" : "862"},
	{"ID" : "1172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_PE_10_0_x1_U", "Parent" : "862"},
	{"ID" : "1173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_A_IO_L2_in_12_x1_U", "Parent" : "862"},
	{"ID" : "1174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_PE_11_0_x1_U", "Parent" : "862"},
	{"ID" : "1175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_PE_12_0_x1_U", "Parent" : "862"},
	{"ID" : "1176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_B_B_IO_L2_in_0_x1_U", "Parent" : "862"},
	{"ID" : "1177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_B_B_IO_L2_in_1_x1_U", "Parent" : "862"},
	{"ID" : "1178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_B_PE_0_0_x1_U", "Parent" : "862"},
	{"ID" : "1179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_B_PE_0_1_x1_U", "Parent" : "862"},
	{"ID" : "1180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_PE_0_1_x1_U", "Parent" : "862"},
	{"ID" : "1181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_B_PE_1_0_x1_U", "Parent" : "862"},
	{"ID" : "1182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_PE_0_0_x1_U", "Parent" : "862"},
	{"ID" : "1183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_PE_0_2_x1_U", "Parent" : "862"},
	{"ID" : "1184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_B_PE_1_1_x1_U", "Parent" : "862"},
	{"ID" : "1185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_PE_0_1_x1_U", "Parent" : "862"},
	{"ID" : "1186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_PE_1_1_x1_U", "Parent" : "862"},
	{"ID" : "1187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_B_PE_2_0_x1_U", "Parent" : "862"},
	{"ID" : "1188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_PE_1_0_x1_U", "Parent" : "862"},
	{"ID" : "1189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_PE_1_2_x1_U", "Parent" : "862"},
	{"ID" : "1190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_B_PE_2_1_x1_U", "Parent" : "862"},
	{"ID" : "1191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_PE_1_1_x1_U", "Parent" : "862"},
	{"ID" : "1192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_PE_2_1_x1_U", "Parent" : "862"},
	{"ID" : "1193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_B_PE_3_0_x1_U", "Parent" : "862"},
	{"ID" : "1194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_PE_2_0_x1_U", "Parent" : "862"},
	{"ID" : "1195", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_PE_2_2_x1_U", "Parent" : "862"},
	{"ID" : "1196", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_B_PE_3_1_x1_U", "Parent" : "862"},
	{"ID" : "1197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_PE_2_1_x1_U", "Parent" : "862"},
	{"ID" : "1198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_PE_3_1_x1_U", "Parent" : "862"},
	{"ID" : "1199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_B_PE_4_0_x1_U", "Parent" : "862"},
	{"ID" : "1200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_PE_3_0_x1_U", "Parent" : "862"},
	{"ID" : "1201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_PE_3_2_x1_U", "Parent" : "862"},
	{"ID" : "1202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_B_PE_4_1_x1_U", "Parent" : "862"},
	{"ID" : "1203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_PE_3_1_x1_U", "Parent" : "862"},
	{"ID" : "1204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_PE_4_1_x1_U", "Parent" : "862"},
	{"ID" : "1205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_B_PE_5_0_x1_U", "Parent" : "862"},
	{"ID" : "1206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_PE_4_0_x1_U", "Parent" : "862"},
	{"ID" : "1207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_PE_4_2_x1_U", "Parent" : "862"},
	{"ID" : "1208", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_B_PE_5_1_x1_U", "Parent" : "862"},
	{"ID" : "1209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_PE_4_1_x1_U", "Parent" : "862"},
	{"ID" : "1210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_PE_5_1_x1_U", "Parent" : "862"},
	{"ID" : "1211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_B_PE_6_0_x1_U", "Parent" : "862"},
	{"ID" : "1212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_PE_5_0_x1_U", "Parent" : "862"},
	{"ID" : "1213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_PE_5_2_x1_U", "Parent" : "862"},
	{"ID" : "1214", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_B_PE_6_1_x1_U", "Parent" : "862"},
	{"ID" : "1215", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_PE_5_1_x1_U", "Parent" : "862"},
	{"ID" : "1216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_PE_6_1_x1_U", "Parent" : "862"},
	{"ID" : "1217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_B_PE_7_0_x1_U", "Parent" : "862"},
	{"ID" : "1218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_PE_6_0_x1_U", "Parent" : "862"},
	{"ID" : "1219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_PE_6_2_x1_U", "Parent" : "862"},
	{"ID" : "1220", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_B_PE_7_1_x1_U", "Parent" : "862"},
	{"ID" : "1221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_PE_6_1_x1_U", "Parent" : "862"},
	{"ID" : "1222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_PE_7_1_x1_U", "Parent" : "862"},
	{"ID" : "1223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_B_PE_8_0_x1_U", "Parent" : "862"},
	{"ID" : "1224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_PE_7_0_x1_U", "Parent" : "862"},
	{"ID" : "1225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_PE_7_2_x1_U", "Parent" : "862"},
	{"ID" : "1226", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_B_PE_8_1_x1_U", "Parent" : "862"},
	{"ID" : "1227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_PE_7_1_x1_U", "Parent" : "862"},
	{"ID" : "1228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_PE_8_1_x1_U", "Parent" : "862"},
	{"ID" : "1229", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_B_PE_9_0_x1_U", "Parent" : "862"},
	{"ID" : "1230", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_PE_8_0_x1_U", "Parent" : "862"},
	{"ID" : "1231", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_PE_8_2_x1_U", "Parent" : "862"},
	{"ID" : "1232", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_B_PE_9_1_x1_U", "Parent" : "862"},
	{"ID" : "1233", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_PE_8_1_x1_U", "Parent" : "862"},
	{"ID" : "1234", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_PE_9_1_x1_U", "Parent" : "862"},
	{"ID" : "1235", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_B_PE_10_0_x1_U", "Parent" : "862"},
	{"ID" : "1236", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_PE_9_0_x1_U", "Parent" : "862"},
	{"ID" : "1237", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_PE_9_2_x1_U", "Parent" : "862"},
	{"ID" : "1238", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_B_PE_10_1_x1_U", "Parent" : "862"},
	{"ID" : "1239", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_PE_9_1_x1_U", "Parent" : "862"},
	{"ID" : "1240", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_PE_10_1_x1_U", "Parent" : "862"},
	{"ID" : "1241", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_B_PE_11_0_x1_U", "Parent" : "862"},
	{"ID" : "1242", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_PE_10_0_x1_U", "Parent" : "862"},
	{"ID" : "1243", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_PE_10_2_x1_U", "Parent" : "862"},
	{"ID" : "1244", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_B_PE_11_1_x1_U", "Parent" : "862"},
	{"ID" : "1245", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_PE_10_1_x1_U", "Parent" : "862"},
	{"ID" : "1246", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_PE_11_1_x1_U", "Parent" : "862"},
	{"ID" : "1247", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_B_PE_12_0_x1_U", "Parent" : "862"},
	{"ID" : "1248", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_PE_11_0_x1_U", "Parent" : "862"},
	{"ID" : "1249", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_PE_11_2_x1_U", "Parent" : "862"},
	{"ID" : "1250", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_B_PE_12_1_x1_U", "Parent" : "862"},
	{"ID" : "1251", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_PE_11_1_x1_U", "Parent" : "862"},
	{"ID" : "1252", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_PE_12_1_x1_U", "Parent" : "862"},
	{"ID" : "1253", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_B_PE_13_0_x1_U", "Parent" : "862"},
	{"ID" : "1254", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_PE_12_0_x1_U", "Parent" : "862"},
	{"ID" : "1255", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_A_PE_12_2_x1_U", "Parent" : "862"},
	{"ID" : "1256", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_B_PE_13_1_x1_U", "Parent" : "862"},
	{"ID" : "1257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_PE_12_1_x1_U", "Parent" : "862"},
	{"ID" : "1258", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_C_drain_IO_L1_out_0_12_x1_U", "Parent" : "862"},
	{"ID" : "1259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_C_drain_IO_L1_out_0_11_x1_U", "Parent" : "862"},
	{"ID" : "1260", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_C_drain_IO_L1_out_0_10_x1_U", "Parent" : "862"},
	{"ID" : "1261", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_C_drain_IO_L1_out_0_9_x1_U", "Parent" : "862"},
	{"ID" : "1262", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_C_drain_IO_L1_out_0_8_x1_U", "Parent" : "862"},
	{"ID" : "1263", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_C_drain_IO_L1_out_0_7_x1_U", "Parent" : "862"},
	{"ID" : "1264", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_C_drain_IO_L1_out_0_6_x1_U", "Parent" : "862"},
	{"ID" : "1265", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_C_drain_IO_L1_out_0_5_x1_U", "Parent" : "862"},
	{"ID" : "1266", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_C_drain_IO_L1_out_0_4_x1_U", "Parent" : "862"},
	{"ID" : "1267", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_C_drain_IO_L1_out_0_3_x1_U", "Parent" : "862"},
	{"ID" : "1268", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_C_drain_IO_L1_out_0_2_x1_U", "Parent" : "862"},
	{"ID" : "1269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_C_drain_IO_L1_out_0_1_x1_U", "Parent" : "862"},
	{"ID" : "1270", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_C_drain_IO_L1_out_0_0_x1_U", "Parent" : "862"},
	{"ID" : "1271", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_C_drain_IO_L1_out_1_12_x1_U", "Parent" : "862"},
	{"ID" : "1272", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_C_drain_IO_L1_out_1_11_x1_U", "Parent" : "862"},
	{"ID" : "1273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_C_drain_IO_L1_out_1_10_x1_U", "Parent" : "862"},
	{"ID" : "1274", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_C_drain_IO_L1_out_1_9_x1_U", "Parent" : "862"},
	{"ID" : "1275", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_C_drain_IO_L1_out_1_8_x1_U", "Parent" : "862"},
	{"ID" : "1276", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_C_drain_IO_L1_out_1_7_x1_U", "Parent" : "862"},
	{"ID" : "1277", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_C_drain_IO_L1_out_1_6_x1_U", "Parent" : "862"},
	{"ID" : "1278", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_C_drain_IO_L1_out_1_5_x1_U", "Parent" : "862"},
	{"ID" : "1279", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_C_drain_IO_L1_out_1_4_x1_U", "Parent" : "862"},
	{"ID" : "1280", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_C_drain_IO_L1_out_1_3_x1_U", "Parent" : "862"},
	{"ID" : "1281", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_C_drain_IO_L1_out_1_2_x1_U", "Parent" : "862"},
	{"ID" : "1282", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_C_drain_IO_L1_out_1_1_x1_U", "Parent" : "862"},
	{"ID" : "1283", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_C_drain_IO_L1_out_1_0_x1_U", "Parent" : "862"},
	{"ID" : "1284", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_C_drain_IO_L2_out_1_x1_U", "Parent" : "862"},
	{"ID" : "1285", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel3_x1_fu_126.fifo_C_drain_C_drain_IO_L2_out_0_x1_U", "Parent" : "862"},
	{"ID" : "1286", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_cov_x0_fu_132", "Parent" : "0", "Child" : ["1287", "1288", "1289", "1290", "1291", "1292"],
		"CDFG" : "nondf_kernel_cov_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2454149", "EstimateLatencyMax" : "2454149",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "xout", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "xin", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1287", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_cov_x0_fu_132.mean_V_U", "Parent" : "1286"},
	{"ID" : "1288", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_cov_x0_fu_132.data_V_U", "Parent" : "1286"},
	{"ID" : "1289", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_cov_x0_fu_132.cov_V_U", "Parent" : "1286"},
	{"ID" : "1290", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_cov_x0_fu_132.add_512ns_512ns_512_2_1_U486", "Parent" : "1286"},
	{"ID" : "1291", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_cov_x0_fu_132.sub_512ns_512ns_512_2_1_U487", "Parent" : "1286"},
	{"ID" : "1292", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_cov_x0_fu_132.add_512ns_512ns_512_2_1_U490", "Parent" : "1286"},
	{"ID" : "1293", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_cov_x1_fu_138", "Parent" : "0", "Child" : ["1294", "1295", "1296", "1297", "1298", "1299"],
		"CDFG" : "nondf_kernel_cov_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2454149", "EstimateLatencyMax" : "2454149",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "xout", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "xin", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1294", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_cov_x1_fu_138.mean_V_U", "Parent" : "1293"},
	{"ID" : "1295", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_cov_x1_fu_138.data_V_U", "Parent" : "1293"},
	{"ID" : "1296", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_cov_x1_fu_138.cov_V_U", "Parent" : "1293"},
	{"ID" : "1297", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_cov_x1_fu_138.add_512ns_512ns_512_2_1_U969", "Parent" : "1293"},
	{"ID" : "1298", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_cov_x1_fu_138.sub_512ns_512ns_512_2_1_U970", "Parent" : "1293"},
	{"ID" : "1299", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_cov_x1_fu_138.add_512ns_512ns_512_2_1_U973", "Parent" : "1293"},
	{"ID" : "1300", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_512ns_514ns_1025_5_1_U1451", "Parent" : "0"},
	{"ID" : "1301", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_512s_512s_512_5_1_U1452", "Parent" : "0"}]}


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
	kernel3_x0_entry61 {
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
		C {Type I LastRead 0 FirstWrite -1}}
	kernel3_x1 {
		B {Type I LastRead 1 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 6}}
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
		fifo_C_drain_C_drain_IO_L2_out_0_x1135 {Type I LastRead 3 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 6}}
	nondf_kernel_cov_x0 {
		xout {Type I LastRead 2 FirstWrite -1}
		xin {Type O LastRead -1 FirstWrite 8}}
	nondf_kernel_cov_x1 {
		xout {Type I LastRead 2 FirstWrite -1}
		xin {Type O LastRead -1 FirstWrite 8}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "17605858", "Max" : "17605858"}
	, {"Name" : "Interval", "Min" : "17605859", "Max" : "17605859"}
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
