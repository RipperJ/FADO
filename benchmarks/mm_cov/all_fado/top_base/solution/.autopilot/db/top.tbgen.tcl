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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "902", "908"],
		"CDFG" : "top",
		"Protocol" : "ap_ctrl_chain",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "131307040", "EstimateLatencyMax" : "131307040",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "gmem_A", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "902", "SubInstance" : "grp_nondf_kernel_cov_x0_fu_99", "Port" : "gmem_A"}]},
			{"Name" : "gmem_B", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "908", "SubInstance" : "grp_nondf_kernel_cov_x1_fu_107", "Port" : "gmem_B"}]},
			{"Name" : "gmem_C", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_kernel0_x0_fu_90", "Port" : "gmem_C"}]},
			{"Name" : "A", "Type" : "None", "Direction" : "I"},
			{"Name" : "B", "Type" : "None", "Direction" : "I"},
			{"Name" : "C", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_A_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_B_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_C_m_axi_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_A1_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_B1_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90", "Parent" : "0", "Child" : ["8", "9", "10", "11", "12", "15", "18", "21", "24", "27", "30", "33", "36", "37", "38", "41", "44", "47", "50", "53", "56", "59", "62", "67", "72", "77", "82", "87", "92", "97", "102", "107", "112", "117", "122", "127", "132", "137", "142", "147", "152", "157", "162", "167", "172", "177", "182", "187", "192", "197", "202", "207", "212", "217", "222", "227", "232", "237", "242", "247", "252", "257", "262", "267", "272", "277", "282", "287", "292", "297", "302", "307", "312", "317", "322", "327", "332", "337", "342", "347", "352", "357", "362", "367", "372", "377", "382", "383", "384", "385", "386", "387", "388", "389", "390", "391", "392", "393", "394", "395", "396", "397", "398", "401", "404", "407", "410", "413", "416", "419", "422", "425", "428", "431", "434", "437", "440", "443", "446", "449", "452", "455", "458", "461", "464", "467", "470", "473", "476", "479", "482", "485", "488", "491", "494", "497", "500", "503", "506", "509", "512", "515", "518", "521", "524", "527", "530", "533", "536", "539", "542", "545", "548", "551", "554", "557", "560", "563", "566", "569", "572", "575", "578", "581", "584", "587", "590", "591", "592", "593", "594", "595", "596", "597", "598", "599", "601", "602", "603", "604", "605", "606", "607", "608", "609", "610", "611", "612", "613", "614", "615", "616", "617", "618", "619", "620", "621", "622", "623", "624", "625", "626", "627", "628", "629", "630", "631", "632", "633", "634", "635", "636", "637", "638", "639", "640", "641", "642", "643", "644", "645", "646", "647", "648", "649", "650", "651", "652", "653", "654", "655", "656", "657", "658", "659", "660", "661", "662", "663", "664", "665", "666", "667", "668", "669", "670", "671", "672", "673", "674", "675", "676", "677", "678", "679", "680", "681", "682", "683", "684", "685", "686", "687", "688", "689", "690", "691", "692", "693", "694", "695", "696", "697", "698", "699", "700", "701", "702", "703", "704", "705", "706", "707", "708", "709", "710", "711", "712", "713", "714", "715", "716", "717", "718", "719", "720", "721", "722", "723", "724", "725", "726", "727", "728", "729", "730", "731", "732", "733", "734", "735", "736", "737", "738", "739", "740", "741", "742", "743", "744", "745", "746", "747", "748", "749", "750", "751", "752", "753", "754", "755", "756", "757", "758", "759", "760", "761", "762", "763", "764", "765", "766", "767", "768", "769", "770", "771", "772", "773", "774", "775", "776", "777", "778", "779", "780", "781", "782", "783", "784", "785", "786", "787", "788", "789", "790", "791", "792", "793", "794", "795", "796", "797", "798", "799", "800", "801", "802", "803", "804", "805", "806", "807", "808", "809", "810", "811", "812", "813", "814", "815", "816", "817", "818", "819", "820", "821", "822", "823", "824", "825", "826", "827", "828", "829", "830", "831", "832", "833", "834", "835", "836", "837", "838", "839", "840", "841", "842", "843", "844", "845", "846", "847", "848", "849", "850", "851", "852", "853", "854", "855", "856", "857", "858", "859", "860", "861", "862", "863", "864", "865", "866", "867", "868", "869", "870", "871", "872", "873", "874", "875", "876", "877", "878", "879", "880", "881", "882", "883", "884", "885", "886", "887", "888", "889", "890", "891", "892", "893", "894", "895", "896", "897", "898", "899", "900", "901"],
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
			{"ID" : "8", "Name" : "kernel0_x0_entry5_U0"},
			{"ID" : "10", "Name" : "A_IO_L3_in_serialize_x0_U0"},
			{"ID" : "36", "Name" : "B_IO_L3_in_serialize_x0_U0"}],
		"OutputProcess" : [
			{"ID" : "382", "Name" : "A_PE_dummy_in_0_x0_U0"},
			{"ID" : "383", "Name" : "A_PE_dummy_in_1_x0_U0"},
			{"ID" : "384", "Name" : "A_PE_dummy_in_2_x0_U0"},
			{"ID" : "385", "Name" : "A_PE_dummy_in_3_x0_U0"},
			{"ID" : "386", "Name" : "A_PE_dummy_in_4_x0_U0"},
			{"ID" : "387", "Name" : "A_PE_dummy_in_5_x0_U0"},
			{"ID" : "388", "Name" : "A_PE_dummy_in_6_x0_U0"},
			{"ID" : "389", "Name" : "A_PE_dummy_in_7_x0_U0"},
			{"ID" : "390", "Name" : "B_PE_dummy_in_0_x0_U0"},
			{"ID" : "391", "Name" : "B_PE_dummy_in_1_x0_U0"},
			{"ID" : "392", "Name" : "B_PE_dummy_in_2_x0_U0"},
			{"ID" : "393", "Name" : "B_PE_dummy_in_3_x0_U0"},
			{"ID" : "394", "Name" : "B_PE_dummy_in_4_x0_U0"},
			{"ID" : "395", "Name" : "B_PE_dummy_in_5_x0_U0"},
			{"ID" : "396", "Name" : "B_PE_dummy_in_6_x0_U0"},
			{"ID" : "397", "Name" : "B_PE_dummy_in_7_x0_U0"},
			{"ID" : "599", "Name" : "C_drain_IO_L3_out_serialize_x0_U0"}],
		"Port" : [
			{"Name" : "gmem_C", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "599", "SubInstance" : "C_drain_IO_L3_out_serialize_x0_U0", "Port" : "gmem_C"}]},
			{"Name" : "A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "A_IO_L3_in_serialize_x0_U0", "Port" : "A"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "B_IO_L3_in_serialize_x0_U0", "Port" : "B"}]},
			{"Name" : "C", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.kernel0_x0_entry5_U0", "Parent" : "7",
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
			{"Name" : "C_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "601", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.kernel0_x0_entry12_U0", "Parent" : "7",
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
			{"Name" : "C", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "601", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "C_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "599", "DependentChan" : "602", "DependentChanDepth" : "37", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.A_IO_L3_in_serialize_x0_U0", "Parent" : "7",
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
			{"Name" : "fifo_A_A_IO_L3_in_serialize_x01", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "603", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L3_in_serialize_x01_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.A_IO_L3_in_x0_U0", "Parent" : "7",
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
			{"Name" : "fifo_A_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "603", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_local_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "12", "DependentChan" : "604", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_local_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.A_IO_L2_in_0_x0_U0", "Parent" : "7", "Child" : ["13", "14"],
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
			{"Name" : "fifo_A_A_IO_L2_in_0_x04", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "604", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_0_x04_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_1_x05", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "605", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x05_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_0_x020", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "62", "DependentChan" : "606", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x020_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.A_IO_L2_in_0_x0_U0.local_A_ping_V_0_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.A_IO_L2_in_0_x0_U0.local_A_pong_V_0_U", "Parent" : "12"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.A_IO_L2_in_1_x0_U0", "Parent" : "7", "Child" : ["16", "17"],
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
			{"Name" : "fifo_A_A_IO_L2_in_1_x05", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "605", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_1_x05_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_2_x06", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "607", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x06_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_0_x029", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "102", "DependentChan" : "608", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x029_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.A_IO_L2_in_1_x0_U0.local_A_ping_V_0_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.A_IO_L2_in_1_x0_U0.local_A_pong_V_0_U", "Parent" : "15"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.A_IO_L2_in_2_x0_U0", "Parent" : "7", "Child" : ["19", "20"],
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
			{"Name" : "fifo_A_A_IO_L2_in_2_x06", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "607", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_2_x06_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_3_x07", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "21", "DependentChan" : "609", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x07_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_0_x038", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "142", "DependentChan" : "610", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x038_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.A_IO_L2_in_2_x0_U0.local_A_ping_V_0_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.A_IO_L2_in_2_x0_U0.local_A_pong_V_0_U", "Parent" : "18"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.A_IO_L2_in_3_x0_U0", "Parent" : "7", "Child" : ["22", "23"],
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
			{"Name" : "fifo_A_A_IO_L2_in_3_x07", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "609", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_3_x07_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_4_x08", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "611", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_4_x08_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_0_x047", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "182", "DependentChan" : "612", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x047_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.A_IO_L2_in_3_x0_U0.local_A_ping_V_0_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.A_IO_L2_in_3_x0_U0.local_A_pong_V_0_U", "Parent" : "21"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.A_IO_L2_in_4_x0_U0", "Parent" : "7", "Child" : ["25", "26"],
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
			{"Name" : "fifo_A_A_IO_L2_in_4_x08", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "611", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_4_x08_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_5_x09", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "27", "DependentChan" : "613", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_5_x09_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_0_x056", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "222", "DependentChan" : "614", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_0_x056_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.A_IO_L2_in_4_x0_U0.local_A_ping_V_0_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.A_IO_L2_in_4_x0_U0.local_A_pong_V_0_U", "Parent" : "24"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.A_IO_L2_in_5_x0_U0", "Parent" : "7", "Child" : ["28", "29"],
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
			{"Name" : "fifo_A_A_IO_L2_in_5_x09", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "613", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_5_x09_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_6_x010", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "30", "DependentChan" : "615", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_6_x010_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_0_x065", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "262", "DependentChan" : "616", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_0_x065_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.A_IO_L2_in_5_x0_U0.local_A_ping_V_0_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.A_IO_L2_in_5_x0_U0.local_A_pong_V_0_U", "Parent" : "27"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.A_IO_L2_in_6_x0_U0", "Parent" : "7", "Child" : ["31", "32"],
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
			{"Name" : "fifo_A_A_IO_L2_in_6_x010", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "615", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_6_x010_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_7_x011", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "33", "DependentChan" : "617", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_7_x011_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_0_x074", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "302", "DependentChan" : "618", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_0_x074_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.A_IO_L2_in_6_x0_U0.local_A_ping_V_0_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.A_IO_L2_in_6_x0_U0.local_A_pong_V_0_U", "Parent" : "30"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.A_IO_L2_in_boundary_x0_U0", "Parent" : "7", "Child" : ["34", "35"],
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
			{"Name" : "fifo_A_A_IO_L2_in_7_x011", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "30", "DependentChan" : "617", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_7_x011_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_0_x083", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "342", "DependentChan" : "619", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_0_x083_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.A_IO_L2_in_boundary_x0_U0.local_A_ping_V_0_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.A_IO_L2_in_boundary_x0_U0.local_A_pong_V_0_U", "Parent" : "33"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.B_IO_L3_in_serialize_x0_U0", "Parent" : "7",
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
			{"Name" : "fifo_B_B_IO_L3_in_serialize_x02", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "620", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L3_in_serialize_x02_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.B_IO_L3_in_x0_U0", "Parent" : "7",
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
			{"Name" : "fifo_B_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "36", "DependentChan" : "620", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_local_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "38", "DependentChan" : "621", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_local_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.B_IO_L2_in_0_x0_U0", "Parent" : "7", "Child" : ["39", "40"],
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
			{"Name" : "fifo_B_B_IO_L2_in_0_x012", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "37", "DependentChan" : "621", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_0_x012_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_1_x013", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "41", "DependentChan" : "622", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x013_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x092", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "62", "DependentChan" : "623", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x092_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.B_IO_L2_in_0_x0_U0.local_B_ping_V_0_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.B_IO_L2_in_0_x0_U0.local_B_pong_V_0_U", "Parent" : "38"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.B_IO_L2_in_1_x0_U0", "Parent" : "7", "Child" : ["42", "43"],
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
			{"Name" : "fifo_B_B_IO_L2_in_1_x013", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "622", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_1_x013_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_2_x014", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "44", "DependentChan" : "624", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_2_x014_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x0101", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "67", "DependentChan" : "625", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x0101_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.B_IO_L2_in_1_x0_U0.local_B_ping_V_0_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.B_IO_L2_in_1_x0_U0.local_B_pong_V_0_U", "Parent" : "41"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.B_IO_L2_in_2_x0_U0", "Parent" : "7", "Child" : ["45", "46"],
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
			{"Name" : "fifo_B_B_IO_L2_in_2_x014", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "41", "DependentChan" : "624", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_2_x014_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_3_x015", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "47", "DependentChan" : "626", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_3_x015_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_2_x0110", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "72", "DependentChan" : "627", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_2_x0110_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.B_IO_L2_in_2_x0_U0.local_B_ping_V_0_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.B_IO_L2_in_2_x0_U0.local_B_pong_V_0_U", "Parent" : "44"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.B_IO_L2_in_3_x0_U0", "Parent" : "7", "Child" : ["48", "49"],
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
			{"Name" : "fifo_B_B_IO_L2_in_3_x015", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "44", "DependentChan" : "626", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_3_x015_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_4_x016", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "628", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_4_x016_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_3_x0119", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "77", "DependentChan" : "629", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_3_x0119_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.B_IO_L2_in_3_x0_U0.local_B_ping_V_0_U", "Parent" : "47"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.B_IO_L2_in_3_x0_U0.local_B_pong_V_0_U", "Parent" : "47"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.B_IO_L2_in_4_x0_U0", "Parent" : "7", "Child" : ["51", "52"],
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
			{"Name" : "fifo_B_B_IO_L2_in_4_x016", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "628", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_4_x016_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_5_x017", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "53", "DependentChan" : "630", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_5_x017_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_4_x0128", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "82", "DependentChan" : "631", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_4_x0128_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.B_IO_L2_in_4_x0_U0.local_B_ping_V_0_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.B_IO_L2_in_4_x0_U0.local_B_pong_V_0_U", "Parent" : "50"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.B_IO_L2_in_5_x0_U0", "Parent" : "7", "Child" : ["54", "55"],
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
			{"Name" : "fifo_B_B_IO_L2_in_5_x017", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "50", "DependentChan" : "630", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_5_x017_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_6_x018", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "56", "DependentChan" : "632", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_6_x018_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_5_x0137", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "87", "DependentChan" : "633", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_5_x0137_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.B_IO_L2_in_5_x0_U0.local_B_ping_V_0_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.B_IO_L2_in_5_x0_U0.local_B_pong_V_0_U", "Parent" : "53"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.B_IO_L2_in_6_x0_U0", "Parent" : "7", "Child" : ["57", "58"],
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
			{"Name" : "fifo_B_B_IO_L2_in_6_x018", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "53", "DependentChan" : "632", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_6_x018_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_7_x019", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "59", "DependentChan" : "634", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_7_x019_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_6_x0146", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "92", "DependentChan" : "635", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_6_x0146_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.B_IO_L2_in_6_x0_U0.local_B_ping_V_0_U", "Parent" : "56"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.B_IO_L2_in_6_x0_U0.local_B_pong_V_0_U", "Parent" : "56"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.B_IO_L2_in_boundary_x0_U0", "Parent" : "7", "Child" : ["60", "61"],
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
			{"Name" : "fifo_B_B_IO_L2_in_7_x019", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "56", "DependentChan" : "634", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_7_x019_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_7_x0155", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "97", "DependentChan" : "636", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_7_x0155_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.B_IO_L2_in_boundary_x0_U0.local_B_ping_V_0_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.B_IO_L2_in_boundary_x0_U0.local_B_pong_V_0_U", "Parent" : "59"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_0_0_x0_U0", "Parent" : "7", "Child" : ["63", "64", "65", "66"],
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
			{"Name" : "fifo_A_PE_0_0_x020", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "606", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_0_x020_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_1_x021", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "67", "DependentChan" : "637", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x021_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_0_x092", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "623", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_0_x092_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x093", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "102", "DependentChan" : "638", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x093_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_0_x0164", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "419", "DependentChan" : "639", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_0_x0164_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_0_0_x0_U0.local_A_0_U", "Parent" : "62"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_0_0_x0_U0.local_B_0_U", "Parent" : "62"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_0_0_x0_U0.local_C_U", "Parent" : "62"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_0_0_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U75", "Parent" : "62"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_0_1_x0_U0", "Parent" : "7", "Child" : ["68", "69", "70", "71"],
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
			{"Name" : "fifo_A_PE_0_1_x021", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "62", "DependentChan" : "637", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_1_x021_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_2_x022", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "72", "DependentChan" : "640", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x022_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_1_x0101", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "41", "DependentChan" : "625", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_1_x0101_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x0102", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "107", "DependentChan" : "641", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x0102_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_1_x0172", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "443", "DependentChan" : "642", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_1_x0172_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_0_1_x0_U0.local_A_0_U", "Parent" : "67"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_0_1_x0_U0.local_B_0_U", "Parent" : "67"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_0_1_x0_U0.local_C_U", "Parent" : "67"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_0_1_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U84", "Parent" : "67"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_0_2_x0_U0", "Parent" : "7", "Child" : ["73", "74", "75", "76"],
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
			{"Name" : "fifo_A_PE_0_2_x022", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "67", "DependentChan" : "640", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_2_x022_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_3_x023", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "77", "DependentChan" : "643", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_3_x023_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_2_x0110", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "44", "DependentChan" : "627", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_2_x0110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_2_x0111", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "112", "DependentChan" : "644", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_2_x0111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_2_x0180", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "467", "DependentChan" : "645", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_2_x0180_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_0_2_x0_U0.local_A_0_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_0_2_x0_U0.local_B_0_U", "Parent" : "72"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_0_2_x0_U0.local_C_U", "Parent" : "72"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_0_2_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U90", "Parent" : "72"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_0_3_x0_U0", "Parent" : "7", "Child" : ["78", "79", "80", "81"],
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
			{"Name" : "fifo_A_PE_0_3_x023", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "72", "DependentChan" : "643", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_3_x023_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_4_x024", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "82", "DependentChan" : "646", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_4_x024_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_3_x0119", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "629", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_3_x0119_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_3_x0120", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "117", "DependentChan" : "647", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_3_x0120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_3_x0188", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "491", "DependentChan" : "648", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_3_x0188_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_0_3_x0_U0.local_A_0_U", "Parent" : "77"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_0_3_x0_U0.local_B_0_U", "Parent" : "77"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_0_3_x0_U0.local_C_U", "Parent" : "77"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_0_3_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U96", "Parent" : "77"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_0_4_x0_U0", "Parent" : "7", "Child" : ["83", "84", "85", "86"],
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
			{"Name" : "fifo_A_PE_0_4_x024", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "77", "DependentChan" : "646", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_4_x024_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_5_x025", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "87", "DependentChan" : "649", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_5_x025_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_4_x0128", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "50", "DependentChan" : "631", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_4_x0128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_4_x0129", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "122", "DependentChan" : "650", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_4_x0129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_4_x0196", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "515", "DependentChan" : "651", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_4_x0196_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_0_4_x0_U0.local_A_0_U", "Parent" : "82"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_0_4_x0_U0.local_B_0_U", "Parent" : "82"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_0_4_x0_U0.local_C_U", "Parent" : "82"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_0_4_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U102", "Parent" : "82"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_0_5_x0_U0", "Parent" : "7", "Child" : ["88", "89", "90", "91"],
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
			{"Name" : "fifo_A_PE_0_5_x025", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "82", "DependentChan" : "649", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_5_x025_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_6_x026", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "92", "DependentChan" : "652", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_6_x026_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_5_x0137", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "53", "DependentChan" : "633", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_5_x0137_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_5_x0138", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "127", "DependentChan" : "653", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_5_x0138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_5_x0204", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "539", "DependentChan" : "654", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_5_x0204_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_0_5_x0_U0.local_A_0_U", "Parent" : "87"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_0_5_x0_U0.local_B_0_U", "Parent" : "87"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_0_5_x0_U0.local_C_U", "Parent" : "87"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_0_5_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U108", "Parent" : "87"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_0_6_x0_U0", "Parent" : "7", "Child" : ["93", "94", "95", "96"],
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
			{"Name" : "fifo_A_PE_0_6_x026", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "87", "DependentChan" : "652", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_6_x026_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_7_x027", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "97", "DependentChan" : "655", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_7_x027_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_6_x0146", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "56", "DependentChan" : "635", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_6_x0146_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_6_x0147", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "132", "DependentChan" : "656", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_6_x0147_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_6_x0212", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "563", "DependentChan" : "657", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_6_x0212_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_0_6_x0_U0.local_A_0_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_0_6_x0_U0.local_B_0_U", "Parent" : "92"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_0_6_x0_U0.local_C_U", "Parent" : "92"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_0_6_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U114", "Parent" : "92"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_0_7_x0_U0", "Parent" : "7", "Child" : ["98", "99", "100", "101"],
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
			{"Name" : "fifo_A_PE_0_7_x027", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "655", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_7_x027_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_8_x028", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "382", "DependentChan" : "658", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_8_x028_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_7_x0155", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "59", "DependentChan" : "636", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_7_x0155_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_7_x0156", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "137", "DependentChan" : "659", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_7_x0156_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_7_x0220", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "587", "DependentChan" : "660", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_7_x0220_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_0_7_x0_U0.local_A_0_U", "Parent" : "97"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_0_7_x0_U0.local_B_0_U", "Parent" : "97"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_0_7_x0_U0.local_C_U", "Parent" : "97"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_0_7_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U120", "Parent" : "97"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_1_0_x0_U0", "Parent" : "7", "Child" : ["103", "104", "105", "106"],
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
			{"Name" : "fifo_A_PE_1_0_x029", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "608", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_0_x029_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_1_x030", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "107", "DependentChan" : "661", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x030_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_0_x093", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "62", "DependentChan" : "638", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_0_x093_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x094", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "142", "DependentChan" : "662", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x094_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_0_x0165", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "416", "DependentChan" : "663", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_0_x0165_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_1_0_x0_U0.local_A_0_U", "Parent" : "102"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_1_0_x0_U0.local_B_0_U", "Parent" : "102"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_1_0_x0_U0.local_C_U", "Parent" : "102"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_1_0_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U126", "Parent" : "102"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_1_1_x0_U0", "Parent" : "7", "Child" : ["108", "109", "110", "111"],
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
			{"Name" : "fifo_A_PE_1_1_x030", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "102", "DependentChan" : "661", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_1_x030_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_2_x031", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "112", "DependentChan" : "664", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x031_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_1_x0102", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "67", "DependentChan" : "641", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_1_x0102_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x0103", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "147", "DependentChan" : "665", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x0103_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_1_x0173", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "440", "DependentChan" : "666", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_1_x0173_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_1_1_x0_U0.local_A_0_U", "Parent" : "107"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_1_1_x0_U0.local_B_0_U", "Parent" : "107"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_1_1_x0_U0.local_C_U", "Parent" : "107"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_1_1_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U132", "Parent" : "107"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_1_2_x0_U0", "Parent" : "7", "Child" : ["113", "114", "115", "116"],
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
			{"Name" : "fifo_A_PE_1_2_x031", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "107", "DependentChan" : "664", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_2_x031_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_3_x032", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "117", "DependentChan" : "667", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_3_x032_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_2_x0111", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "72", "DependentChan" : "644", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_2_x0111_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_2_x0112", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "152", "DependentChan" : "668", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_2_x0112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_2_x0181", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "464", "DependentChan" : "669", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_2_x0181_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_1_2_x0_U0.local_A_0_U", "Parent" : "112"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_1_2_x0_U0.local_B_0_U", "Parent" : "112"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_1_2_x0_U0.local_C_U", "Parent" : "112"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_1_2_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U138", "Parent" : "112"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_1_3_x0_U0", "Parent" : "7", "Child" : ["118", "119", "120", "121"],
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
			{"Name" : "fifo_A_PE_1_3_x032", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "112", "DependentChan" : "667", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_3_x032_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_4_x033", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "122", "DependentChan" : "670", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_4_x033_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_3_x0120", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "77", "DependentChan" : "647", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_3_x0120_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_3_x0121", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "157", "DependentChan" : "671", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_3_x0121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_3_x0189", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "488", "DependentChan" : "672", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_3_x0189_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_1_3_x0_U0.local_A_0_U", "Parent" : "117"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_1_3_x0_U0.local_B_0_U", "Parent" : "117"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_1_3_x0_U0.local_C_U", "Parent" : "117"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_1_3_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U144", "Parent" : "117"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_1_4_x0_U0", "Parent" : "7", "Child" : ["123", "124", "125", "126"],
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
			{"Name" : "fifo_A_PE_1_4_x033", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "117", "DependentChan" : "670", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_4_x033_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_5_x034", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "127", "DependentChan" : "673", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_5_x034_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_4_x0129", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "82", "DependentChan" : "650", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_4_x0129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_4_x0130", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "162", "DependentChan" : "674", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_4_x0130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_4_x0197", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "512", "DependentChan" : "675", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_4_x0197_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_1_4_x0_U0.local_A_0_U", "Parent" : "122"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_1_4_x0_U0.local_B_0_U", "Parent" : "122"},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_1_4_x0_U0.local_C_U", "Parent" : "122"},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_1_4_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U150", "Parent" : "122"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_1_5_x0_U0", "Parent" : "7", "Child" : ["128", "129", "130", "131"],
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
			{"Name" : "fifo_A_PE_1_5_x034", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "122", "DependentChan" : "673", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_5_x034_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_6_x035", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "132", "DependentChan" : "676", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_6_x035_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_5_x0138", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "87", "DependentChan" : "653", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_5_x0138_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_5_x0139", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "167", "DependentChan" : "677", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_5_x0139_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_5_x0205", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "536", "DependentChan" : "678", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_5_x0205_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_1_5_x0_U0.local_A_0_U", "Parent" : "127"},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_1_5_x0_U0.local_B_0_U", "Parent" : "127"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_1_5_x0_U0.local_C_U", "Parent" : "127"},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_1_5_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U156", "Parent" : "127"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_1_6_x0_U0", "Parent" : "7", "Child" : ["133", "134", "135", "136"],
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
			{"Name" : "fifo_A_PE_1_6_x035", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "127", "DependentChan" : "676", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_6_x035_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_7_x036", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "137", "DependentChan" : "679", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_7_x036_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_6_x0147", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "656", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_6_x0147_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_6_x0148", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "172", "DependentChan" : "680", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_6_x0148_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_6_x0213", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "560", "DependentChan" : "681", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_6_x0213_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_1_6_x0_U0.local_A_0_U", "Parent" : "132"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_1_6_x0_U0.local_B_0_U", "Parent" : "132"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_1_6_x0_U0.local_C_U", "Parent" : "132"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_1_6_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U162", "Parent" : "132"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_1_7_x0_U0", "Parent" : "7", "Child" : ["138", "139", "140", "141"],
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
			{"Name" : "fifo_A_PE_1_7_x036", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "132", "DependentChan" : "679", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_7_x036_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_1_8_x037", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "383", "DependentChan" : "682", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_8_x037_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_7_x0156", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "97", "DependentChan" : "659", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_7_x0156_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_7_x0157", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "177", "DependentChan" : "683", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_7_x0157_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_7_x0221", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "584", "DependentChan" : "684", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_7_x0221_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_1_7_x0_U0.local_A_0_U", "Parent" : "137"},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_1_7_x0_U0.local_B_0_U", "Parent" : "137"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_1_7_x0_U0.local_C_U", "Parent" : "137"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_1_7_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U168", "Parent" : "137"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_2_0_x0_U0", "Parent" : "7", "Child" : ["143", "144", "145", "146"],
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
			{"Name" : "fifo_A_PE_2_0_x038", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "610", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_0_x038_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_1_x039", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "147", "DependentChan" : "685", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x039_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_0_x094", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "102", "DependentChan" : "662", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_0_x094_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x095", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "182", "DependentChan" : "686", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x095_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_0_x0166", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "413", "DependentChan" : "687", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_0_x0166_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_2_0_x0_U0.local_A_0_U", "Parent" : "142"},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_2_0_x0_U0.local_B_0_U", "Parent" : "142"},
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_2_0_x0_U0.local_C_U", "Parent" : "142"},
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_2_0_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U174", "Parent" : "142"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_2_1_x0_U0", "Parent" : "7", "Child" : ["148", "149", "150", "151"],
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
			{"Name" : "fifo_A_PE_2_1_x039", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "142", "DependentChan" : "685", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_1_x039_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_2_x040", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "152", "DependentChan" : "688", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x040_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_1_x0103", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "107", "DependentChan" : "665", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_1_x0103_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x0104", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "187", "DependentChan" : "689", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x0104_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_1_x0174", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "437", "DependentChan" : "690", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_1_x0174_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "148", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_2_1_x0_U0.local_A_0_U", "Parent" : "147"},
	{"ID" : "149", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_2_1_x0_U0.local_B_0_U", "Parent" : "147"},
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_2_1_x0_U0.local_C_U", "Parent" : "147"},
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_2_1_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U180", "Parent" : "147"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_2_2_x0_U0", "Parent" : "7", "Child" : ["153", "154", "155", "156"],
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
			{"Name" : "fifo_A_PE_2_2_x040", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "147", "DependentChan" : "688", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_2_x040_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_3_x041", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "157", "DependentChan" : "691", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_3_x041_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_2_x0112", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "112", "DependentChan" : "668", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_2_x0112_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_2_x0113", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "192", "DependentChan" : "692", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_2_x0113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_2_x0182", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "461", "DependentChan" : "693", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_2_x0182_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_2_2_x0_U0.local_A_0_U", "Parent" : "152"},
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_2_2_x0_U0.local_B_0_U", "Parent" : "152"},
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_2_2_x0_U0.local_C_U", "Parent" : "152"},
	{"ID" : "156", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_2_2_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U186", "Parent" : "152"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_2_3_x0_U0", "Parent" : "7", "Child" : ["158", "159", "160", "161"],
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
			{"Name" : "fifo_A_PE_2_3_x041", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "152", "DependentChan" : "691", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_3_x041_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_4_x042", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "162", "DependentChan" : "694", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_4_x042_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_3_x0121", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "117", "DependentChan" : "671", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_3_x0121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_3_x0122", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "197", "DependentChan" : "695", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_3_x0122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_3_x0190", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "485", "DependentChan" : "696", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_3_x0190_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "158", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_2_3_x0_U0.local_A_0_U", "Parent" : "157"},
	{"ID" : "159", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_2_3_x0_U0.local_B_0_U", "Parent" : "157"},
	{"ID" : "160", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_2_3_x0_U0.local_C_U", "Parent" : "157"},
	{"ID" : "161", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_2_3_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U192", "Parent" : "157"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_2_4_x0_U0", "Parent" : "7", "Child" : ["163", "164", "165", "166"],
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
			{"Name" : "fifo_A_PE_2_4_x042", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "157", "DependentChan" : "694", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_4_x042_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_5_x043", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "167", "DependentChan" : "697", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_5_x043_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_4_x0130", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "122", "DependentChan" : "674", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_4_x0130_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_4_x0131", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "202", "DependentChan" : "698", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_4_x0131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_4_x0198", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "509", "DependentChan" : "699", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_4_x0198_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "163", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_2_4_x0_U0.local_A_0_U", "Parent" : "162"},
	{"ID" : "164", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_2_4_x0_U0.local_B_0_U", "Parent" : "162"},
	{"ID" : "165", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_2_4_x0_U0.local_C_U", "Parent" : "162"},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_2_4_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U198", "Parent" : "162"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_2_5_x0_U0", "Parent" : "7", "Child" : ["168", "169", "170", "171"],
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
			{"Name" : "fifo_A_PE_2_5_x043", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "162", "DependentChan" : "697", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_5_x043_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_6_x044", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "172", "DependentChan" : "700", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_6_x044_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_5_x0139", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "127", "DependentChan" : "677", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_5_x0139_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_5_x0140", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "207", "DependentChan" : "701", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_5_x0140_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_5_x0206", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "533", "DependentChan" : "702", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_5_x0206_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_2_5_x0_U0.local_A_0_U", "Parent" : "167"},
	{"ID" : "169", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_2_5_x0_U0.local_B_0_U", "Parent" : "167"},
	{"ID" : "170", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_2_5_x0_U0.local_C_U", "Parent" : "167"},
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_2_5_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U204", "Parent" : "167"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_2_6_x0_U0", "Parent" : "7", "Child" : ["173", "174", "175", "176"],
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
			{"Name" : "fifo_A_PE_2_6_x044", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "167", "DependentChan" : "700", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_6_x044_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_7_x045", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "177", "DependentChan" : "703", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_7_x045_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_6_x0148", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "132", "DependentChan" : "680", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_6_x0148_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_6_x0149", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "212", "DependentChan" : "704", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_6_x0149_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_6_x0214", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "557", "DependentChan" : "705", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_6_x0214_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "173", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_2_6_x0_U0.local_A_0_U", "Parent" : "172"},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_2_6_x0_U0.local_B_0_U", "Parent" : "172"},
	{"ID" : "175", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_2_6_x0_U0.local_C_U", "Parent" : "172"},
	{"ID" : "176", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_2_6_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U210", "Parent" : "172"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_2_7_x0_U0", "Parent" : "7", "Child" : ["178", "179", "180", "181"],
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
			{"Name" : "fifo_A_PE_2_7_x045", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "172", "DependentChan" : "703", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_7_x045_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_2_8_x046", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "384", "DependentChan" : "706", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_8_x046_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_2_7_x0157", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "137", "DependentChan" : "683", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_2_7_x0157_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_7_x0158", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "217", "DependentChan" : "707", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_7_x0158_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_7_x0222", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "581", "DependentChan" : "708", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_7_x0222_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_2_7_x0_U0.local_A_0_U", "Parent" : "177"},
	{"ID" : "179", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_2_7_x0_U0.local_B_0_U", "Parent" : "177"},
	{"ID" : "180", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_2_7_x0_U0.local_C_U", "Parent" : "177"},
	{"ID" : "181", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_2_7_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U216", "Parent" : "177"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_3_0_x0_U0", "Parent" : "7", "Child" : ["183", "184", "185", "186"],
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
			{"Name" : "fifo_A_PE_3_0_x047", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "612", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_0_x047_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_1_x048", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "187", "DependentChan" : "709", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x048_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_0_x095", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "142", "DependentChan" : "686", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_0_x095_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x096", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "222", "DependentChan" : "710", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x096_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_0_x0167", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "410", "DependentChan" : "711", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_0_x0167_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "183", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_3_0_x0_U0.local_A_0_U", "Parent" : "182"},
	{"ID" : "184", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_3_0_x0_U0.local_B_0_U", "Parent" : "182"},
	{"ID" : "185", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_3_0_x0_U0.local_C_U", "Parent" : "182"},
	{"ID" : "186", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_3_0_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U222", "Parent" : "182"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_3_1_x0_U0", "Parent" : "7", "Child" : ["188", "189", "190", "191"],
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
			{"Name" : "fifo_A_PE_3_1_x048", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "182", "DependentChan" : "709", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_1_x048_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_2_x049", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "192", "DependentChan" : "712", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x049_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_1_x0104", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "147", "DependentChan" : "689", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_1_x0104_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x0105", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "227", "DependentChan" : "713", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x0105_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_1_x0175", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "434", "DependentChan" : "714", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_1_x0175_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "188", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_3_1_x0_U0.local_A_0_U", "Parent" : "187"},
	{"ID" : "189", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_3_1_x0_U0.local_B_0_U", "Parent" : "187"},
	{"ID" : "190", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_3_1_x0_U0.local_C_U", "Parent" : "187"},
	{"ID" : "191", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_3_1_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U228", "Parent" : "187"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_3_2_x0_U0", "Parent" : "7", "Child" : ["193", "194", "195", "196"],
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
			{"Name" : "fifo_A_PE_3_2_x049", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "187", "DependentChan" : "712", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_2_x049_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_3_x050", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "197", "DependentChan" : "715", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_3_x050_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_2_x0113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "152", "DependentChan" : "692", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_2_x0113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_2_x0114", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "232", "DependentChan" : "716", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_2_x0114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_2_x0183", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "458", "DependentChan" : "717", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_2_x0183_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "193", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_3_2_x0_U0.local_A_0_U", "Parent" : "192"},
	{"ID" : "194", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_3_2_x0_U0.local_B_0_U", "Parent" : "192"},
	{"ID" : "195", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_3_2_x0_U0.local_C_U", "Parent" : "192"},
	{"ID" : "196", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_3_2_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U234", "Parent" : "192"},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_3_3_x0_U0", "Parent" : "7", "Child" : ["198", "199", "200", "201"],
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
			{"Name" : "fifo_A_PE_3_3_x050", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "192", "DependentChan" : "715", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_3_x050_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_4_x051", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "202", "DependentChan" : "718", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_4_x051_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_3_x0122", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "157", "DependentChan" : "695", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_3_x0122_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_3_x0123", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "237", "DependentChan" : "719", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_3_x0123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_3_x0191", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "482", "DependentChan" : "720", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_3_x0191_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "198", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_3_3_x0_U0.local_A_0_U", "Parent" : "197"},
	{"ID" : "199", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_3_3_x0_U0.local_B_0_U", "Parent" : "197"},
	{"ID" : "200", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_3_3_x0_U0.local_C_U", "Parent" : "197"},
	{"ID" : "201", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_3_3_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U240", "Parent" : "197"},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_3_4_x0_U0", "Parent" : "7", "Child" : ["203", "204", "205", "206"],
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
			{"Name" : "fifo_A_PE_3_4_x051", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "197", "DependentChan" : "718", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_4_x051_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_5_x052", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "207", "DependentChan" : "721", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_5_x052_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_4_x0131", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "162", "DependentChan" : "698", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_4_x0131_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_4_x0132", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "242", "DependentChan" : "722", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_4_x0132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_4_x0199", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "506", "DependentChan" : "723", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_4_x0199_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "203", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_3_4_x0_U0.local_A_0_U", "Parent" : "202"},
	{"ID" : "204", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_3_4_x0_U0.local_B_0_U", "Parent" : "202"},
	{"ID" : "205", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_3_4_x0_U0.local_C_U", "Parent" : "202"},
	{"ID" : "206", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_3_4_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U246", "Parent" : "202"},
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_3_5_x0_U0", "Parent" : "7", "Child" : ["208", "209", "210", "211"],
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
			{"Name" : "fifo_A_PE_3_5_x052", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "202", "DependentChan" : "721", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_5_x052_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_6_x053", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "212", "DependentChan" : "724", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_6_x053_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_5_x0140", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "167", "DependentChan" : "701", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_5_x0140_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_5_x0141", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "247", "DependentChan" : "725", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_5_x0141_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_5_x0207", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "530", "DependentChan" : "726", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_5_x0207_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "208", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_3_5_x0_U0.local_A_0_U", "Parent" : "207"},
	{"ID" : "209", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_3_5_x0_U0.local_B_0_U", "Parent" : "207"},
	{"ID" : "210", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_3_5_x0_U0.local_C_U", "Parent" : "207"},
	{"ID" : "211", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_3_5_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U252", "Parent" : "207"},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_3_6_x0_U0", "Parent" : "7", "Child" : ["213", "214", "215", "216"],
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
			{"Name" : "fifo_A_PE_3_6_x053", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "207", "DependentChan" : "724", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_6_x053_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_7_x054", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "217", "DependentChan" : "727", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_7_x054_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_6_x0149", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "172", "DependentChan" : "704", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_6_x0149_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_6_x0150", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "252", "DependentChan" : "728", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_6_x0150_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_6_x0215", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "554", "DependentChan" : "729", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_6_x0215_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "213", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_3_6_x0_U0.local_A_0_U", "Parent" : "212"},
	{"ID" : "214", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_3_6_x0_U0.local_B_0_U", "Parent" : "212"},
	{"ID" : "215", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_3_6_x0_U0.local_C_U", "Parent" : "212"},
	{"ID" : "216", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_3_6_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U258", "Parent" : "212"},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_3_7_x0_U0", "Parent" : "7", "Child" : ["218", "219", "220", "221"],
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
			{"Name" : "fifo_A_PE_3_7_x054", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "212", "DependentChan" : "727", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_7_x054_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_3_8_x055", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "385", "DependentChan" : "730", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_8_x055_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_3_7_x0158", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "177", "DependentChan" : "707", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_3_7_x0158_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_7_x0159", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "257", "DependentChan" : "731", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_7_x0159_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_7_x0223", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "578", "DependentChan" : "732", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_7_x0223_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "218", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_3_7_x0_U0.local_A_0_U", "Parent" : "217"},
	{"ID" : "219", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_3_7_x0_U0.local_B_0_U", "Parent" : "217"},
	{"ID" : "220", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_3_7_x0_U0.local_C_U", "Parent" : "217"},
	{"ID" : "221", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_3_7_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U264", "Parent" : "217"},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_4_0_x0_U0", "Parent" : "7", "Child" : ["223", "224", "225", "226"],
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
			{"Name" : "fifo_A_PE_4_0_x056", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "614", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_0_x056_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_1_x057", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "227", "DependentChan" : "733", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x057_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_0_x096", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "182", "DependentChan" : "710", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_0_x096_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x097", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "262", "DependentChan" : "734", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x097_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_0_x0168", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "407", "DependentChan" : "735", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_0_x0168_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "223", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_4_0_x0_U0.local_A_0_U", "Parent" : "222"},
	{"ID" : "224", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_4_0_x0_U0.local_B_0_U", "Parent" : "222"},
	{"ID" : "225", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_4_0_x0_U0.local_C_U", "Parent" : "222"},
	{"ID" : "226", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_4_0_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U270", "Parent" : "222"},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_4_1_x0_U0", "Parent" : "7", "Child" : ["228", "229", "230", "231"],
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
			{"Name" : "fifo_A_PE_4_1_x057", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "222", "DependentChan" : "733", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_1_x057_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_2_x058", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "232", "DependentChan" : "736", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_2_x058_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_1_x0105", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "187", "DependentChan" : "713", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_1_x0105_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_1_x0106", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "267", "DependentChan" : "737", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_1_x0106_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_1_x0176", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "431", "DependentChan" : "738", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_1_x0176_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "228", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_4_1_x0_U0.local_A_0_U", "Parent" : "227"},
	{"ID" : "229", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_4_1_x0_U0.local_B_0_U", "Parent" : "227"},
	{"ID" : "230", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_4_1_x0_U0.local_C_U", "Parent" : "227"},
	{"ID" : "231", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_4_1_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U276", "Parent" : "227"},
	{"ID" : "232", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_4_2_x0_U0", "Parent" : "7", "Child" : ["233", "234", "235", "236"],
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
			{"Name" : "fifo_A_PE_4_2_x058", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "227", "DependentChan" : "736", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_2_x058_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_3_x059", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "237", "DependentChan" : "739", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_3_x059_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_2_x0114", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "192", "DependentChan" : "716", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_2_x0114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_2_x0115", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "272", "DependentChan" : "740", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_2_x0115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_2_x0184", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "455", "DependentChan" : "741", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_2_x0184_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "233", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_4_2_x0_U0.local_A_0_U", "Parent" : "232"},
	{"ID" : "234", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_4_2_x0_U0.local_B_0_U", "Parent" : "232"},
	{"ID" : "235", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_4_2_x0_U0.local_C_U", "Parent" : "232"},
	{"ID" : "236", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_4_2_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U282", "Parent" : "232"},
	{"ID" : "237", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_4_3_x0_U0", "Parent" : "7", "Child" : ["238", "239", "240", "241"],
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
			{"Name" : "fifo_A_PE_4_3_x059", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "232", "DependentChan" : "739", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_3_x059_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_4_x060", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "242", "DependentChan" : "742", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_4_x060_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_3_x0123", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "197", "DependentChan" : "719", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_3_x0123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_3_x0124", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "277", "DependentChan" : "743", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_3_x0124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_3_x0192", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "479", "DependentChan" : "744", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_3_x0192_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "238", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_4_3_x0_U0.local_A_0_U", "Parent" : "237"},
	{"ID" : "239", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_4_3_x0_U0.local_B_0_U", "Parent" : "237"},
	{"ID" : "240", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_4_3_x0_U0.local_C_U", "Parent" : "237"},
	{"ID" : "241", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_4_3_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U288", "Parent" : "237"},
	{"ID" : "242", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_4_4_x0_U0", "Parent" : "7", "Child" : ["243", "244", "245", "246"],
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
			{"Name" : "fifo_A_PE_4_4_x060", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "237", "DependentChan" : "742", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_4_x060_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_5_x061", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "247", "DependentChan" : "745", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_5_x061_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_4_x0132", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "202", "DependentChan" : "722", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_4_x0132_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_4_x0133", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "282", "DependentChan" : "746", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_4_x0133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_4_x0200", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "503", "DependentChan" : "747", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_4_x0200_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "243", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_4_4_x0_U0.local_A_0_U", "Parent" : "242"},
	{"ID" : "244", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_4_4_x0_U0.local_B_0_U", "Parent" : "242"},
	{"ID" : "245", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_4_4_x0_U0.local_C_U", "Parent" : "242"},
	{"ID" : "246", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_4_4_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U294", "Parent" : "242"},
	{"ID" : "247", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_4_5_x0_U0", "Parent" : "7", "Child" : ["248", "249", "250", "251"],
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
			{"Name" : "fifo_A_PE_4_5_x061", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "242", "DependentChan" : "745", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_5_x061_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_6_x062", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "252", "DependentChan" : "748", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_6_x062_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_5_x0141", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "207", "DependentChan" : "725", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_5_x0141_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_5_x0142", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "287", "DependentChan" : "749", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_5_x0142_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_5_x0208", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "527", "DependentChan" : "750", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_5_x0208_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "248", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_4_5_x0_U0.local_A_0_U", "Parent" : "247"},
	{"ID" : "249", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_4_5_x0_U0.local_B_0_U", "Parent" : "247"},
	{"ID" : "250", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_4_5_x0_U0.local_C_U", "Parent" : "247"},
	{"ID" : "251", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_4_5_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U300", "Parent" : "247"},
	{"ID" : "252", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_4_6_x0_U0", "Parent" : "7", "Child" : ["253", "254", "255", "256"],
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
			{"Name" : "fifo_A_PE_4_6_x062", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "247", "DependentChan" : "748", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_6_x062_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_7_x063", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "257", "DependentChan" : "751", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_7_x063_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_6_x0150", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "212", "DependentChan" : "728", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_6_x0150_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_6_x0151", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "292", "DependentChan" : "752", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_6_x0151_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_6_x0216", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "551", "DependentChan" : "753", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_6_x0216_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "253", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_4_6_x0_U0.local_A_0_U", "Parent" : "252"},
	{"ID" : "254", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_4_6_x0_U0.local_B_0_U", "Parent" : "252"},
	{"ID" : "255", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_4_6_x0_U0.local_C_U", "Parent" : "252"},
	{"ID" : "256", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_4_6_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U306", "Parent" : "252"},
	{"ID" : "257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_4_7_x0_U0", "Parent" : "7", "Child" : ["258", "259", "260", "261"],
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
			{"Name" : "fifo_A_PE_4_7_x063", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "252", "DependentChan" : "751", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_7_x063_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_4_8_x064", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "386", "DependentChan" : "754", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_8_x064_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_4_7_x0159", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "217", "DependentChan" : "731", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_4_7_x0159_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_7_x0160", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "297", "DependentChan" : "755", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_7_x0160_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_7_x0224", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "575", "DependentChan" : "756", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_7_x0224_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "258", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_4_7_x0_U0.local_A_0_U", "Parent" : "257"},
	{"ID" : "259", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_4_7_x0_U0.local_B_0_U", "Parent" : "257"},
	{"ID" : "260", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_4_7_x0_U0.local_C_U", "Parent" : "257"},
	{"ID" : "261", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_4_7_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U312", "Parent" : "257"},
	{"ID" : "262", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_5_0_x0_U0", "Parent" : "7", "Child" : ["263", "264", "265", "266"],
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
			{"Name" : "fifo_A_PE_5_0_x065", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "616", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_0_x065_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_1_x066", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "267", "DependentChan" : "757", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_1_x066_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_0_x097", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "222", "DependentChan" : "734", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_0_x097_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_0_x098", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "302", "DependentChan" : "758", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_0_x098_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_0_x0169", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "404", "DependentChan" : "759", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_0_x0169_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "263", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_5_0_x0_U0.local_A_0_U", "Parent" : "262"},
	{"ID" : "264", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_5_0_x0_U0.local_B_0_U", "Parent" : "262"},
	{"ID" : "265", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_5_0_x0_U0.local_C_U", "Parent" : "262"},
	{"ID" : "266", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_5_0_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U318", "Parent" : "262"},
	{"ID" : "267", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_5_1_x0_U0", "Parent" : "7", "Child" : ["268", "269", "270", "271"],
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
			{"Name" : "fifo_A_PE_5_1_x066", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "262", "DependentChan" : "757", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_1_x066_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_2_x067", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "272", "DependentChan" : "760", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_2_x067_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_1_x0106", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "227", "DependentChan" : "737", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_1_x0106_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x0107", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "307", "DependentChan" : "761", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x0107_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_1_x0177", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "428", "DependentChan" : "762", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_1_x0177_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "268", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_5_1_x0_U0.local_A_0_U", "Parent" : "267"},
	{"ID" : "269", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_5_1_x0_U0.local_B_0_U", "Parent" : "267"},
	{"ID" : "270", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_5_1_x0_U0.local_C_U", "Parent" : "267"},
	{"ID" : "271", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_5_1_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U324", "Parent" : "267"},
	{"ID" : "272", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_5_2_x0_U0", "Parent" : "7", "Child" : ["273", "274", "275", "276"],
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
			{"Name" : "fifo_A_PE_5_2_x067", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "267", "DependentChan" : "760", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_2_x067_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_3_x068", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "277", "DependentChan" : "763", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_3_x068_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_2_x0115", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "232", "DependentChan" : "740", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_2_x0115_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_2_x0116", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "312", "DependentChan" : "764", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_2_x0116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_2_x0185", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "452", "DependentChan" : "765", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_2_x0185_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "273", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_5_2_x0_U0.local_A_0_U", "Parent" : "272"},
	{"ID" : "274", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_5_2_x0_U0.local_B_0_U", "Parent" : "272"},
	{"ID" : "275", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_5_2_x0_U0.local_C_U", "Parent" : "272"},
	{"ID" : "276", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_5_2_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U330", "Parent" : "272"},
	{"ID" : "277", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_5_3_x0_U0", "Parent" : "7", "Child" : ["278", "279", "280", "281"],
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
			{"Name" : "fifo_A_PE_5_3_x068", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "272", "DependentChan" : "763", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_3_x068_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_4_x069", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "282", "DependentChan" : "766", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_4_x069_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_3_x0124", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "237", "DependentChan" : "743", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_3_x0124_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_3_x0125", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "317", "DependentChan" : "767", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_3_x0125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_3_x0193", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "476", "DependentChan" : "768", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_3_x0193_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "278", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_5_3_x0_U0.local_A_0_U", "Parent" : "277"},
	{"ID" : "279", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_5_3_x0_U0.local_B_0_U", "Parent" : "277"},
	{"ID" : "280", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_5_3_x0_U0.local_C_U", "Parent" : "277"},
	{"ID" : "281", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_5_3_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U336", "Parent" : "277"},
	{"ID" : "282", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_5_4_x0_U0", "Parent" : "7", "Child" : ["283", "284", "285", "286"],
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
			{"Name" : "fifo_A_PE_5_4_x069", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "277", "DependentChan" : "766", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_4_x069_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_5_x070", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "287", "DependentChan" : "769", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_5_x070_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_4_x0133", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "242", "DependentChan" : "746", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_4_x0133_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_4_x0134", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "322", "DependentChan" : "770", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_4_x0134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_4_x0201", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "500", "DependentChan" : "771", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_4_x0201_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "283", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_5_4_x0_U0.local_A_0_U", "Parent" : "282"},
	{"ID" : "284", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_5_4_x0_U0.local_B_0_U", "Parent" : "282"},
	{"ID" : "285", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_5_4_x0_U0.local_C_U", "Parent" : "282"},
	{"ID" : "286", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_5_4_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U342", "Parent" : "282"},
	{"ID" : "287", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_5_5_x0_U0", "Parent" : "7", "Child" : ["288", "289", "290", "291"],
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
			{"Name" : "fifo_A_PE_5_5_x070", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "282", "DependentChan" : "769", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_5_x070_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_6_x071", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "292", "DependentChan" : "772", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_6_x071_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_5_x0142", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "247", "DependentChan" : "749", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_5_x0142_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_5_x0143", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "327", "DependentChan" : "773", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_5_x0143_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_5_x0209", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "524", "DependentChan" : "774", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_5_x0209_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "288", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_5_5_x0_U0.local_A_0_U", "Parent" : "287"},
	{"ID" : "289", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_5_5_x0_U0.local_B_0_U", "Parent" : "287"},
	{"ID" : "290", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_5_5_x0_U0.local_C_U", "Parent" : "287"},
	{"ID" : "291", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_5_5_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U348", "Parent" : "287"},
	{"ID" : "292", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_5_6_x0_U0", "Parent" : "7", "Child" : ["293", "294", "295", "296"],
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
			{"Name" : "fifo_A_PE_5_6_x071", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "287", "DependentChan" : "772", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_6_x071_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_7_x072", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "297", "DependentChan" : "775", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_7_x072_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_6_x0151", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "252", "DependentChan" : "752", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_6_x0151_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_6_x0152", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "332", "DependentChan" : "776", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_6_x0152_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_6_x0217", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "548", "DependentChan" : "777", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_6_x0217_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "293", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_5_6_x0_U0.local_A_0_U", "Parent" : "292"},
	{"ID" : "294", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_5_6_x0_U0.local_B_0_U", "Parent" : "292"},
	{"ID" : "295", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_5_6_x0_U0.local_C_U", "Parent" : "292"},
	{"ID" : "296", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_5_6_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U354", "Parent" : "292"},
	{"ID" : "297", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_5_7_x0_U0", "Parent" : "7", "Child" : ["298", "299", "300", "301"],
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
			{"Name" : "fifo_A_PE_5_7_x072", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "292", "DependentChan" : "775", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_7_x072_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_5_8_x073", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "387", "DependentChan" : "778", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_8_x073_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_5_7_x0160", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "257", "DependentChan" : "755", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_5_7_x0160_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_7_x0161", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "337", "DependentChan" : "779", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_7_x0161_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_7_x0225", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "572", "DependentChan" : "780", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_7_x0225_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "298", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_5_7_x0_U0.local_A_0_U", "Parent" : "297"},
	{"ID" : "299", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_5_7_x0_U0.local_B_0_U", "Parent" : "297"},
	{"ID" : "300", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_5_7_x0_U0.local_C_U", "Parent" : "297"},
	{"ID" : "301", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_5_7_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U360", "Parent" : "297"},
	{"ID" : "302", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_6_0_x0_U0", "Parent" : "7", "Child" : ["303", "304", "305", "306"],
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
			{"Name" : "fifo_A_PE_6_0_x074", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "30", "DependentChan" : "618", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_0_x074_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_1_x075", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "307", "DependentChan" : "781", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_1_x075_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_0_x098", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "262", "DependentChan" : "758", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_0_x098_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_0_x099", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "342", "DependentChan" : "782", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_0_x099_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_0_x0170", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "401", "DependentChan" : "783", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_0_x0170_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "303", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_6_0_x0_U0.local_A_0_U", "Parent" : "302"},
	{"ID" : "304", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_6_0_x0_U0.local_B_0_U", "Parent" : "302"},
	{"ID" : "305", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_6_0_x0_U0.local_C_U", "Parent" : "302"},
	{"ID" : "306", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_6_0_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U366", "Parent" : "302"},
	{"ID" : "307", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_6_1_x0_U0", "Parent" : "7", "Child" : ["308", "309", "310", "311"],
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
			{"Name" : "fifo_A_PE_6_1_x075", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "302", "DependentChan" : "781", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_1_x075_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_2_x076", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "312", "DependentChan" : "784", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x076_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_1_x0107", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "267", "DependentChan" : "761", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_1_x0107_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_1_x0108", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "347", "DependentChan" : "785", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_1_x0108_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x0178", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "425", "DependentChan" : "786", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x0178_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "308", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_6_1_x0_U0.local_A_0_U", "Parent" : "307"},
	{"ID" : "309", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_6_1_x0_U0.local_B_0_U", "Parent" : "307"},
	{"ID" : "310", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_6_1_x0_U0.local_C_U", "Parent" : "307"},
	{"ID" : "311", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_6_1_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U372", "Parent" : "307"},
	{"ID" : "312", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_6_2_x0_U0", "Parent" : "7", "Child" : ["313", "314", "315", "316"],
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
			{"Name" : "fifo_A_PE_6_2_x076", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "307", "DependentChan" : "784", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_2_x076_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_3_x077", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "317", "DependentChan" : "787", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_3_x077_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_2_x0116", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "272", "DependentChan" : "764", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_2_x0116_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_2_x0117", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "352", "DependentChan" : "788", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_2_x0117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_2_x0186", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "449", "DependentChan" : "789", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_2_x0186_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "313", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_6_2_x0_U0.local_A_0_U", "Parent" : "312"},
	{"ID" : "314", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_6_2_x0_U0.local_B_0_U", "Parent" : "312"},
	{"ID" : "315", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_6_2_x0_U0.local_C_U", "Parent" : "312"},
	{"ID" : "316", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_6_2_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U378", "Parent" : "312"},
	{"ID" : "317", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_6_3_x0_U0", "Parent" : "7", "Child" : ["318", "319", "320", "321"],
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
			{"Name" : "fifo_A_PE_6_3_x077", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "312", "DependentChan" : "787", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_3_x077_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_4_x078", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "322", "DependentChan" : "790", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_4_x078_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_3_x0125", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "277", "DependentChan" : "767", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_3_x0125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_3_x0126", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "357", "DependentChan" : "791", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_3_x0126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_3_x0194", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "473", "DependentChan" : "792", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_3_x0194_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "318", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_6_3_x0_U0.local_A_0_U", "Parent" : "317"},
	{"ID" : "319", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_6_3_x0_U0.local_B_0_U", "Parent" : "317"},
	{"ID" : "320", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_6_3_x0_U0.local_C_U", "Parent" : "317"},
	{"ID" : "321", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_6_3_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U384", "Parent" : "317"},
	{"ID" : "322", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_6_4_x0_U0", "Parent" : "7", "Child" : ["323", "324", "325", "326"],
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
			{"Name" : "fifo_A_PE_6_4_x078", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "317", "DependentChan" : "790", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_4_x078_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_5_x079", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "327", "DependentChan" : "793", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_5_x079_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_4_x0134", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "282", "DependentChan" : "770", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_4_x0134_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_4_x0135", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "362", "DependentChan" : "794", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_4_x0135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_4_x0202", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "497", "DependentChan" : "795", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_4_x0202_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "323", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_6_4_x0_U0.local_A_0_U", "Parent" : "322"},
	{"ID" : "324", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_6_4_x0_U0.local_B_0_U", "Parent" : "322"},
	{"ID" : "325", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_6_4_x0_U0.local_C_U", "Parent" : "322"},
	{"ID" : "326", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_6_4_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U390", "Parent" : "322"},
	{"ID" : "327", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_6_5_x0_U0", "Parent" : "7", "Child" : ["328", "329", "330", "331"],
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
			{"Name" : "fifo_A_PE_6_5_x079", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "322", "DependentChan" : "793", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_5_x079_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_6_x080", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "332", "DependentChan" : "796", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_6_x080_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_5_x0143", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "287", "DependentChan" : "773", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_5_x0143_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_5_x0144", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "367", "DependentChan" : "797", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_5_x0144_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_5_x0210", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "521", "DependentChan" : "798", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_5_x0210_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "328", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_6_5_x0_U0.local_A_0_U", "Parent" : "327"},
	{"ID" : "329", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_6_5_x0_U0.local_B_0_U", "Parent" : "327"},
	{"ID" : "330", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_6_5_x0_U0.local_C_U", "Parent" : "327"},
	{"ID" : "331", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_6_5_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U396", "Parent" : "327"},
	{"ID" : "332", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_6_6_x0_U0", "Parent" : "7", "Child" : ["333", "334", "335", "336"],
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
			{"Name" : "fifo_A_PE_6_6_x080", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "327", "DependentChan" : "796", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_6_x080_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_7_x081", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "337", "DependentChan" : "799", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_7_x081_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_6_x0152", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "292", "DependentChan" : "776", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_6_x0152_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_6_x0153", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "372", "DependentChan" : "800", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_6_x0153_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_6_x0218", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "545", "DependentChan" : "801", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_6_x0218_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "333", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_6_6_x0_U0.local_A_0_U", "Parent" : "332"},
	{"ID" : "334", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_6_6_x0_U0.local_B_0_U", "Parent" : "332"},
	{"ID" : "335", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_6_6_x0_U0.local_C_U", "Parent" : "332"},
	{"ID" : "336", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_6_6_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U402", "Parent" : "332"},
	{"ID" : "337", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_6_7_x0_U0", "Parent" : "7", "Child" : ["338", "339", "340", "341"],
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
			{"Name" : "fifo_A_PE_6_7_x081", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "332", "DependentChan" : "799", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_7_x081_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_6_8_x082", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "388", "DependentChan" : "802", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_8_x082_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_6_7_x0161", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "297", "DependentChan" : "779", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_6_7_x0161_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_7_x0162", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "377", "DependentChan" : "803", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_7_x0162_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_7_x0226", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "569", "DependentChan" : "804", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_7_x0226_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "338", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_6_7_x0_U0.local_A_0_U", "Parent" : "337"},
	{"ID" : "339", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_6_7_x0_U0.local_B_0_U", "Parent" : "337"},
	{"ID" : "340", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_6_7_x0_U0.local_C_U", "Parent" : "337"},
	{"ID" : "341", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_6_7_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U408", "Parent" : "337"},
	{"ID" : "342", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_7_0_x0_U0", "Parent" : "7", "Child" : ["343", "344", "345", "346"],
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
			{"Name" : "fifo_A_PE_7_0_x083", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "619", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_0_x083_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_1_x084", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "347", "DependentChan" : "805", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_1_x084_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_0_x099", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "302", "DependentChan" : "782", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_0_x099_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_0_x0100", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "390", "DependentChan" : "806", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_0_x0100_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_0_x0171", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "398", "DependentChan" : "807", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_0_x0171_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "343", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_7_0_x0_U0.local_A_0_U", "Parent" : "342"},
	{"ID" : "344", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_7_0_x0_U0.local_B_0_U", "Parent" : "342"},
	{"ID" : "345", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_7_0_x0_U0.local_C_U", "Parent" : "342"},
	{"ID" : "346", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_7_0_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U414", "Parent" : "342"},
	{"ID" : "347", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_7_1_x0_U0", "Parent" : "7", "Child" : ["348", "349", "350", "351"],
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
			{"Name" : "fifo_A_PE_7_1_x084", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "342", "DependentChan" : "805", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_1_x084_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_2_x085", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "352", "DependentChan" : "808", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_2_x085_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_1_x0108", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "307", "DependentChan" : "785", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_1_x0108_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_1_x0109", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "391", "DependentChan" : "809", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_1_x0109_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_1_x0179", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "422", "DependentChan" : "810", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_1_x0179_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "348", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_7_1_x0_U0.local_A_0_U", "Parent" : "347"},
	{"ID" : "349", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_7_1_x0_U0.local_B_0_U", "Parent" : "347"},
	{"ID" : "350", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_7_1_x0_U0.local_C_U", "Parent" : "347"},
	{"ID" : "351", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_7_1_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U420", "Parent" : "347"},
	{"ID" : "352", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_7_2_x0_U0", "Parent" : "7", "Child" : ["353", "354", "355", "356"],
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
			{"Name" : "fifo_A_PE_7_2_x085", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "347", "DependentChan" : "808", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_2_x085_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_3_x086", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "357", "DependentChan" : "811", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_3_x086_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_2_x0117", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "312", "DependentChan" : "788", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_2_x0117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_2_x0118", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "392", "DependentChan" : "812", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_2_x0118_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_2_x0187", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "446", "DependentChan" : "813", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_2_x0187_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "353", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_7_2_x0_U0.local_A_0_U", "Parent" : "352"},
	{"ID" : "354", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_7_2_x0_U0.local_B_0_U", "Parent" : "352"},
	{"ID" : "355", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_7_2_x0_U0.local_C_U", "Parent" : "352"},
	{"ID" : "356", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_7_2_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U426", "Parent" : "352"},
	{"ID" : "357", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_7_3_x0_U0", "Parent" : "7", "Child" : ["358", "359", "360", "361"],
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
			{"Name" : "fifo_A_PE_7_3_x086", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "352", "DependentChan" : "811", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_3_x086_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_4_x087", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "362", "DependentChan" : "814", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_4_x087_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_3_x0126", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "317", "DependentChan" : "791", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_3_x0126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_3_x0127", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "393", "DependentChan" : "815", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_3_x0127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_3_x0195", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "470", "DependentChan" : "816", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_3_x0195_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "358", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_7_3_x0_U0.local_A_0_U", "Parent" : "357"},
	{"ID" : "359", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_7_3_x0_U0.local_B_0_U", "Parent" : "357"},
	{"ID" : "360", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_7_3_x0_U0.local_C_U", "Parent" : "357"},
	{"ID" : "361", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_7_3_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U432", "Parent" : "357"},
	{"ID" : "362", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_7_4_x0_U0", "Parent" : "7", "Child" : ["363", "364", "365", "366"],
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
			{"Name" : "fifo_A_PE_7_4_x087", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "357", "DependentChan" : "814", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_4_x087_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_5_x088", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "367", "DependentChan" : "817", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_5_x088_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_4_x0135", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "322", "DependentChan" : "794", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_4_x0135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_4_x0136", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "394", "DependentChan" : "818", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_4_x0136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_4_x0203", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "494", "DependentChan" : "819", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_4_x0203_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "363", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_7_4_x0_U0.local_A_0_U", "Parent" : "362"},
	{"ID" : "364", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_7_4_x0_U0.local_B_0_U", "Parent" : "362"},
	{"ID" : "365", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_7_4_x0_U0.local_C_U", "Parent" : "362"},
	{"ID" : "366", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_7_4_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U438", "Parent" : "362"},
	{"ID" : "367", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_7_5_x0_U0", "Parent" : "7", "Child" : ["368", "369", "370", "371"],
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
			{"Name" : "fifo_A_PE_7_5_x088", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "362", "DependentChan" : "817", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_5_x088_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_6_x089", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "372", "DependentChan" : "820", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_6_x089_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_5_x0144", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "327", "DependentChan" : "797", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_5_x0144_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_5_x0145", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "395", "DependentChan" : "821", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_5_x0145_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_5_x0211", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "518", "DependentChan" : "822", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_5_x0211_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "368", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_7_5_x0_U0.local_A_0_U", "Parent" : "367"},
	{"ID" : "369", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_7_5_x0_U0.local_B_0_U", "Parent" : "367"},
	{"ID" : "370", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_7_5_x0_U0.local_C_U", "Parent" : "367"},
	{"ID" : "371", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_7_5_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U444", "Parent" : "367"},
	{"ID" : "372", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_7_6_x0_U0", "Parent" : "7", "Child" : ["373", "374", "375", "376"],
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
			{"Name" : "fifo_A_PE_7_6_x089", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "367", "DependentChan" : "820", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_6_x089_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_7_x090", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "377", "DependentChan" : "823", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_7_x090_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_6_x0153", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "332", "DependentChan" : "800", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_6_x0153_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_6_x0154", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "396", "DependentChan" : "824", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_6_x0154_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_6_x0219", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "542", "DependentChan" : "825", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_6_x0219_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "373", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_7_6_x0_U0.local_A_0_U", "Parent" : "372"},
	{"ID" : "374", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_7_6_x0_U0.local_B_0_U", "Parent" : "372"},
	{"ID" : "375", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_7_6_x0_U0.local_C_U", "Parent" : "372"},
	{"ID" : "376", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_7_6_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U450", "Parent" : "372"},
	{"ID" : "377", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_7_7_x0_U0", "Parent" : "7", "Child" : ["378", "379", "380", "381"],
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
			{"Name" : "fifo_A_PE_7_7_x090", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "372", "DependentChan" : "823", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_7_x090_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_7_8_x091", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "389", "DependentChan" : "826", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_8_x091_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_7_7_x0162", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "337", "DependentChan" : "803", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_7_7_x0162_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_8_7_x0163", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "397", "DependentChan" : "827", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_7_x0163_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_7_x0227", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "566", "DependentChan" : "828", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_7_x0227_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "378", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_7_7_x0_U0.local_A_0_U", "Parent" : "377"},
	{"ID" : "379", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_7_7_x0_U0.local_B_0_U", "Parent" : "377"},
	{"ID" : "380", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_7_7_x0_U0.local_C_U", "Parent" : "377"},
	{"ID" : "381", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.PE_wrapper_7_7_x0_U0.mac_muladd_16s_16s_16ns_16_4_1_U456", "Parent" : "377"},
	{"ID" : "382", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.A_PE_dummy_in_0_x0_U0", "Parent" : "7",
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
			{"Name" : "fifo_A_PE_0_8_x028", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "97", "DependentChan" : "658", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_8_x028_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "383", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.A_PE_dummy_in_1_x0_U0", "Parent" : "7",
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
			{"Name" : "fifo_A_PE_1_8_x037", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "137", "DependentChan" : "682", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_8_x037_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "384", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.A_PE_dummy_in_2_x0_U0", "Parent" : "7",
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
			{"Name" : "fifo_A_PE_2_8_x046", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "177", "DependentChan" : "706", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_2_8_x046_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "385", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.A_PE_dummy_in_3_x0_U0", "Parent" : "7",
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
			{"Name" : "fifo_A_PE_3_8_x055", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "217", "DependentChan" : "730", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_3_8_x055_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "386", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.A_PE_dummy_in_4_x0_U0", "Parent" : "7",
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
			{"Name" : "fifo_A_PE_4_8_x064", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "257", "DependentChan" : "754", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_4_8_x064_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "387", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.A_PE_dummy_in_5_x0_U0", "Parent" : "7",
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
			{"Name" : "fifo_A_PE_5_8_x073", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "297", "DependentChan" : "778", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_5_8_x073_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "388", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.A_PE_dummy_in_6_x0_U0", "Parent" : "7",
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
			{"Name" : "fifo_A_PE_6_8_x082", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "337", "DependentChan" : "802", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_6_8_x082_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "389", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.A_PE_dummy_in_7_x0_U0", "Parent" : "7",
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
			{"Name" : "fifo_A_PE_7_8_x091", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "377", "DependentChan" : "826", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_7_8_x091_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "390", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.B_PE_dummy_in_0_x0_U0", "Parent" : "7",
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
			{"Name" : "fifo_B_PE_8_0_x0100", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "342", "DependentChan" : "806", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_0_x0100_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "391", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.B_PE_dummy_in_1_x0_U0", "Parent" : "7",
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
			{"Name" : "fifo_B_PE_8_1_x0109", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "347", "DependentChan" : "809", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_1_x0109_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "392", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.B_PE_dummy_in_2_x0_U0", "Parent" : "7",
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
			{"Name" : "fifo_B_PE_8_2_x0118", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "352", "DependentChan" : "812", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_2_x0118_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "393", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.B_PE_dummy_in_3_x0_U0", "Parent" : "7",
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
			{"Name" : "fifo_B_PE_8_3_x0127", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "357", "DependentChan" : "815", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_3_x0127_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "394", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.B_PE_dummy_in_4_x0_U0", "Parent" : "7",
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
			{"Name" : "fifo_B_PE_8_4_x0136", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "362", "DependentChan" : "818", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_4_x0136_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "395", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.B_PE_dummy_in_5_x0_U0", "Parent" : "7",
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
			{"Name" : "fifo_B_PE_8_5_x0145", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "367", "DependentChan" : "821", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_5_x0145_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "396", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.B_PE_dummy_in_6_x0_U0", "Parent" : "7",
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
			{"Name" : "fifo_B_PE_8_6_x0154", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "372", "DependentChan" : "824", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_6_x0154_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "397", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.B_PE_dummy_in_7_x0_U0", "Parent" : "7",
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
			{"Name" : "fifo_B_PE_8_7_x0163", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "377", "DependentChan" : "827", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_8_7_x0163_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "398", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_boundary_wrapper_0_x0_U0", "Parent" : "7", "Child" : ["399", "400"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x0235", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "401", "DependentChan" : "829", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x0235_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_0_x0171", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "342", "DependentChan" : "807", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_0_x0171_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "399", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_boundary_wrapper_0_x0_U0.local_C_V_0_U", "Parent" : "398"},
	{"ID" : "400", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_boundary_wrapper_0_x0_U0.data_split_V_U", "Parent" : "398"},
	{"ID" : "401", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_0_6_x0_U0", "Parent" : "7", "Child" : ["402", "403"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x0235", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "398", "DependentChan" : "829", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_7_x0235_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x0234", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "404", "DependentChan" : "830", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x0234_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_0_x0170", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "302", "DependentChan" : "783", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_0_x0170_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "402", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_0_6_x0_U0.local_C_V_0_U", "Parent" : "401"},
	{"ID" : "403", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_0_6_x0_U0.data_split_V_U", "Parent" : "401"},
	{"ID" : "404", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_0_5_x0_U0", "Parent" : "7", "Child" : ["405", "406"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x0234", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "401", "DependentChan" : "830", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_6_x0234_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x0233", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "407", "DependentChan" : "831", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x0233_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_0_x0169", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "262", "DependentChan" : "759", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_0_x0169_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "405", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_0_5_x0_U0.local_C_V_0_U", "Parent" : "404"},
	{"ID" : "406", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_0_5_x0_U0.data_split_V_U", "Parent" : "404"},
	{"ID" : "407", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_0_4_x0_U0", "Parent" : "7", "Child" : ["408", "409"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x0233", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "404", "DependentChan" : "831", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_5_x0233_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x0232", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "410", "DependentChan" : "832", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x0232_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_0_x0168", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "222", "DependentChan" : "735", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_0_x0168_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "408", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_0_4_x0_U0.local_C_V_0_U", "Parent" : "407"},
	{"ID" : "409", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_0_4_x0_U0.data_split_V_U", "Parent" : "407"},
	{"ID" : "410", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_0_3_x0_U0", "Parent" : "7", "Child" : ["411", "412"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x0232", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "407", "DependentChan" : "832", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_4_x0232_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x0231", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "413", "DependentChan" : "833", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x0231_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_0_x0167", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "182", "DependentChan" : "711", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_0_x0167_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "411", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_0_3_x0_U0.local_C_V_0_U", "Parent" : "410"},
	{"ID" : "412", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_0_3_x0_U0.data_split_V_U", "Parent" : "410"},
	{"ID" : "413", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_0_2_x0_U0", "Parent" : "7", "Child" : ["414", "415"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x0231", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "410", "DependentChan" : "833", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_3_x0231_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x0230", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "416", "DependentChan" : "834", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x0230_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_0_x0166", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "142", "DependentChan" : "687", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_0_x0166_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "414", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_0_2_x0_U0.local_C_V_0_U", "Parent" : "413"},
	{"ID" : "415", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_0_2_x0_U0.data_split_V_U", "Parent" : "413"},
	{"ID" : "416", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_0_1_x0_U0", "Parent" : "7", "Child" : ["417", "418"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x0230", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "413", "DependentChan" : "834", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_2_x0230_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x0229", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "419", "DependentChan" : "835", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x0229_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_0_x0165", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "102", "DependentChan" : "663", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_0_x0165_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "417", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_0_1_x0_U0.local_C_V_0_U", "Parent" : "416"},
	{"ID" : "418", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_0_1_x0_U0.data_split_V_U", "Parent" : "416"},
	{"ID" : "419", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_0_0_x0_U0", "Parent" : "7", "Child" : ["420", "421"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x0229", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "416", "DependentChan" : "835", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_1_x0229_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x0228", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "597", "DependentChan" : "836", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x0228_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_0_x0164", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "62", "DependentChan" : "639", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_0_x0164_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "420", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_0_0_x0_U0.local_C_V_0_U", "Parent" : "419"},
	{"ID" : "421", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_0_0_x0_U0.data_split_V_U", "Parent" : "419"},
	{"ID" : "422", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_boundary_wrapper_1_x0_U0", "Parent" : "7", "Child" : ["423", "424"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x0243", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "425", "DependentChan" : "837", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x0243_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_1_x0179", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "347", "DependentChan" : "810", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_1_x0179_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "423", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_boundary_wrapper_1_x0_U0.local_C_V_0_U", "Parent" : "422"},
	{"ID" : "424", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_boundary_wrapper_1_x0_U0.data_split_V_U", "Parent" : "422"},
	{"ID" : "425", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_1_6_x0_U0", "Parent" : "7", "Child" : ["426", "427"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x0243", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "422", "DependentChan" : "837", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_7_x0243_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x0242", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "428", "DependentChan" : "838", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x0242_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_1_x0178", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "307", "DependentChan" : "786", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_1_x0178_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "426", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_1_6_x0_U0.local_C_V_0_U", "Parent" : "425"},
	{"ID" : "427", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_1_6_x0_U0.data_split_V_U", "Parent" : "425"},
	{"ID" : "428", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_1_5_x0_U0", "Parent" : "7", "Child" : ["429", "430"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x0242", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "425", "DependentChan" : "838", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_6_x0242_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x0241", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "431", "DependentChan" : "839", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x0241_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_1_x0177", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "267", "DependentChan" : "762", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_1_x0177_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "429", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_1_5_x0_U0.local_C_V_0_U", "Parent" : "428"},
	{"ID" : "430", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_1_5_x0_U0.data_split_V_U", "Parent" : "428"},
	{"ID" : "431", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_1_4_x0_U0", "Parent" : "7", "Child" : ["432", "433"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x0241", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "428", "DependentChan" : "839", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_5_x0241_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x0240", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "434", "DependentChan" : "840", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x0240_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_1_x0176", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "227", "DependentChan" : "738", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_1_x0176_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "432", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_1_4_x0_U0.local_C_V_0_U", "Parent" : "431"},
	{"ID" : "433", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_1_4_x0_U0.data_split_V_U", "Parent" : "431"},
	{"ID" : "434", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_1_3_x0_U0", "Parent" : "7", "Child" : ["435", "436"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x0240", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "431", "DependentChan" : "840", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_4_x0240_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x0239", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "437", "DependentChan" : "841", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x0239_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_1_x0175", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "187", "DependentChan" : "714", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_1_x0175_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "435", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_1_3_x0_U0.local_C_V_0_U", "Parent" : "434"},
	{"ID" : "436", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_1_3_x0_U0.data_split_V_U", "Parent" : "434"},
	{"ID" : "437", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_1_2_x0_U0", "Parent" : "7", "Child" : ["438", "439"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x0239", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "434", "DependentChan" : "841", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_3_x0239_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x0238", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "440", "DependentChan" : "842", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x0238_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_1_x0174", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "147", "DependentChan" : "690", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_1_x0174_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "438", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_1_2_x0_U0.local_C_V_0_U", "Parent" : "437"},
	{"ID" : "439", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_1_2_x0_U0.data_split_V_U", "Parent" : "437"},
	{"ID" : "440", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_1_1_x0_U0", "Parent" : "7", "Child" : ["441", "442"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x0238", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "437", "DependentChan" : "842", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_2_x0238_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x0237", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "443", "DependentChan" : "843", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x0237_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_1_x0173", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "107", "DependentChan" : "666", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_1_x0173_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "441", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_1_1_x0_U0.local_C_V_0_U", "Parent" : "440"},
	{"ID" : "442", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_1_1_x0_U0.data_split_V_U", "Parent" : "440"},
	{"ID" : "443", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_1_0_x0_U0", "Parent" : "7", "Child" : ["444", "445"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x0237", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "440", "DependentChan" : "843", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_1_x0237_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x0236", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "596", "DependentChan" : "844", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x0236_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_1_x0172", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "67", "DependentChan" : "642", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_1_x0172_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "444", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_1_0_x0_U0.local_C_V_0_U", "Parent" : "443"},
	{"ID" : "445", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_1_0_x0_U0.data_split_V_U", "Parent" : "443"},
	{"ID" : "446", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_boundary_wrapper_2_x0_U0", "Parent" : "7", "Child" : ["447", "448"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_7_x0251", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "449", "DependentChan" : "845", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_7_x0251_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_2_x0187", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "352", "DependentChan" : "813", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_2_x0187_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "447", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_boundary_wrapper_2_x0_U0.local_C_V_0_U", "Parent" : "446"},
	{"ID" : "448", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_boundary_wrapper_2_x0_U0.data_split_V_U", "Parent" : "446"},
	{"ID" : "449", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_2_6_x0_U0", "Parent" : "7", "Child" : ["450", "451"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_7_x0251", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "446", "DependentChan" : "845", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_7_x0251_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_6_x0250", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "452", "DependentChan" : "846", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_6_x0250_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_2_x0186", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "312", "DependentChan" : "789", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_2_x0186_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "450", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_2_6_x0_U0.local_C_V_0_U", "Parent" : "449"},
	{"ID" : "451", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_2_6_x0_U0.data_split_V_U", "Parent" : "449"},
	{"ID" : "452", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_2_5_x0_U0", "Parent" : "7", "Child" : ["453", "454"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_6_x0250", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "449", "DependentChan" : "846", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_6_x0250_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_5_x0249", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "455", "DependentChan" : "847", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_5_x0249_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_2_x0185", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "272", "DependentChan" : "765", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_2_x0185_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "453", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_2_5_x0_U0.local_C_V_0_U", "Parent" : "452"},
	{"ID" : "454", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_2_5_x0_U0.data_split_V_U", "Parent" : "452"},
	{"ID" : "455", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_2_4_x0_U0", "Parent" : "7", "Child" : ["456", "457"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_5_x0249", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "452", "DependentChan" : "847", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_5_x0249_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_4_x0248", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "458", "DependentChan" : "848", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_4_x0248_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_2_x0184", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "232", "DependentChan" : "741", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_2_x0184_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "456", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_2_4_x0_U0.local_C_V_0_U", "Parent" : "455"},
	{"ID" : "457", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_2_4_x0_U0.data_split_V_U", "Parent" : "455"},
	{"ID" : "458", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_2_3_x0_U0", "Parent" : "7", "Child" : ["459", "460"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_4_x0248", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "455", "DependentChan" : "848", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_4_x0248_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_3_x0247", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "461", "DependentChan" : "849", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_3_x0247_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_2_x0183", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "192", "DependentChan" : "717", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_2_x0183_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "459", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_2_3_x0_U0.local_C_V_0_U", "Parent" : "458"},
	{"ID" : "460", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_2_3_x0_U0.data_split_V_U", "Parent" : "458"},
	{"ID" : "461", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_2_2_x0_U0", "Parent" : "7", "Child" : ["462", "463"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_3_x0247", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "458", "DependentChan" : "849", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_3_x0247_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_2_x0246", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "464", "DependentChan" : "850", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_2_x0246_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_2_x0182", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "152", "DependentChan" : "693", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_2_x0182_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "462", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_2_2_x0_U0.local_C_V_0_U", "Parent" : "461"},
	{"ID" : "463", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_2_2_x0_U0.data_split_V_U", "Parent" : "461"},
	{"ID" : "464", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_2_1_x0_U0", "Parent" : "7", "Child" : ["465", "466"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_2_x0246", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "461", "DependentChan" : "850", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_2_x0246_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_1_x0245", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "467", "DependentChan" : "851", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_1_x0245_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_2_x0181", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "112", "DependentChan" : "669", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_2_x0181_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "465", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_2_1_x0_U0.local_C_V_0_U", "Parent" : "464"},
	{"ID" : "466", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_2_1_x0_U0.data_split_V_U", "Parent" : "464"},
	{"ID" : "467", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_2_0_x0_U0", "Parent" : "7", "Child" : ["468", "469"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_1_x0245", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "464", "DependentChan" : "851", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_1_x0245_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_0_x0244", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "595", "DependentChan" : "852", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_0_x0244_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_2_x0180", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "72", "DependentChan" : "645", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_2_x0180_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "468", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_2_0_x0_U0.local_C_V_0_U", "Parent" : "467"},
	{"ID" : "469", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_2_0_x0_U0.data_split_V_U", "Parent" : "467"},
	{"ID" : "470", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_boundary_wrapper_3_x0_U0", "Parent" : "7", "Child" : ["471", "472"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_7_x0259", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "473", "DependentChan" : "853", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_7_x0259_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_3_x0195", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "357", "DependentChan" : "816", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_3_x0195_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "471", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_boundary_wrapper_3_x0_U0.local_C_V_0_U", "Parent" : "470"},
	{"ID" : "472", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_boundary_wrapper_3_x0_U0.data_split_V_U", "Parent" : "470"},
	{"ID" : "473", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_3_6_x0_U0", "Parent" : "7", "Child" : ["474", "475"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_7_x0259", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "470", "DependentChan" : "853", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_7_x0259_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_6_x0258", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "476", "DependentChan" : "854", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_6_x0258_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_3_x0194", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "317", "DependentChan" : "792", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_3_x0194_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "474", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_3_6_x0_U0.local_C_V_0_U", "Parent" : "473"},
	{"ID" : "475", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_3_6_x0_U0.data_split_V_U", "Parent" : "473"},
	{"ID" : "476", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_3_5_x0_U0", "Parent" : "7", "Child" : ["477", "478"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_6_x0258", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "473", "DependentChan" : "854", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_6_x0258_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_5_x0257", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "479", "DependentChan" : "855", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_5_x0257_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_3_x0193", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "277", "DependentChan" : "768", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_3_x0193_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "477", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_3_5_x0_U0.local_C_V_0_U", "Parent" : "476"},
	{"ID" : "478", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_3_5_x0_U0.data_split_V_U", "Parent" : "476"},
	{"ID" : "479", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_3_4_x0_U0", "Parent" : "7", "Child" : ["480", "481"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_5_x0257", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "476", "DependentChan" : "855", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_5_x0257_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_4_x0256", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "482", "DependentChan" : "856", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_4_x0256_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_3_x0192", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "237", "DependentChan" : "744", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_3_x0192_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "480", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_3_4_x0_U0.local_C_V_0_U", "Parent" : "479"},
	{"ID" : "481", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_3_4_x0_U0.data_split_V_U", "Parent" : "479"},
	{"ID" : "482", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_3_3_x0_U0", "Parent" : "7", "Child" : ["483", "484"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_4_x0256", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "479", "DependentChan" : "856", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_4_x0256_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_3_x0255", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "485", "DependentChan" : "857", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_3_x0255_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_3_x0191", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "197", "DependentChan" : "720", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_3_x0191_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "483", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_3_3_x0_U0.local_C_V_0_U", "Parent" : "482"},
	{"ID" : "484", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_3_3_x0_U0.data_split_V_U", "Parent" : "482"},
	{"ID" : "485", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_3_2_x0_U0", "Parent" : "7", "Child" : ["486", "487"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_3_x0255", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "482", "DependentChan" : "857", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_3_x0255_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_2_x0254", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "488", "DependentChan" : "858", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_2_x0254_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_3_x0190", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "157", "DependentChan" : "696", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_3_x0190_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "486", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_3_2_x0_U0.local_C_V_0_U", "Parent" : "485"},
	{"ID" : "487", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_3_2_x0_U0.data_split_V_U", "Parent" : "485"},
	{"ID" : "488", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_3_1_x0_U0", "Parent" : "7", "Child" : ["489", "490"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_2_x0254", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "485", "DependentChan" : "858", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_2_x0254_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_1_x0253", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "491", "DependentChan" : "859", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_1_x0253_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_3_x0189", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "117", "DependentChan" : "672", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_3_x0189_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "489", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_3_1_x0_U0.local_C_V_0_U", "Parent" : "488"},
	{"ID" : "490", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_3_1_x0_U0.data_split_V_U", "Parent" : "488"},
	{"ID" : "491", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_3_0_x0_U0", "Parent" : "7", "Child" : ["492", "493"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_1_x0253", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "488", "DependentChan" : "859", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_1_x0253_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_0_x0252", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "594", "DependentChan" : "860", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_0_x0252_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_3_x0188", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "77", "DependentChan" : "648", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_3_x0188_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "492", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_3_0_x0_U0.local_C_V_0_U", "Parent" : "491"},
	{"ID" : "493", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_3_0_x0_U0.data_split_V_U", "Parent" : "491"},
	{"ID" : "494", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_boundary_wrapper_4_x0_U0", "Parent" : "7", "Child" : ["495", "496"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_7_x0267", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "497", "DependentChan" : "861", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_7_x0267_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_4_x0203", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "362", "DependentChan" : "819", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_4_x0203_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "495", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_boundary_wrapper_4_x0_U0.local_C_V_0_U", "Parent" : "494"},
	{"ID" : "496", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_boundary_wrapper_4_x0_U0.data_split_V_U", "Parent" : "494"},
	{"ID" : "497", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_4_6_x0_U0", "Parent" : "7", "Child" : ["498", "499"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_7_x0267", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "494", "DependentChan" : "861", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_7_x0267_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_6_x0266", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "500", "DependentChan" : "862", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_6_x0266_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_4_x0202", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "322", "DependentChan" : "795", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_4_x0202_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "498", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_4_6_x0_U0.local_C_V_0_U", "Parent" : "497"},
	{"ID" : "499", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_4_6_x0_U0.data_split_V_U", "Parent" : "497"},
	{"ID" : "500", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_4_5_x0_U0", "Parent" : "7", "Child" : ["501", "502"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_6_x0266", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "497", "DependentChan" : "862", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_6_x0266_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_5_x0265", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "503", "DependentChan" : "863", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_5_x0265_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_4_x0201", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "282", "DependentChan" : "771", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_4_x0201_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "501", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_4_5_x0_U0.local_C_V_0_U", "Parent" : "500"},
	{"ID" : "502", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_4_5_x0_U0.data_split_V_U", "Parent" : "500"},
	{"ID" : "503", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_4_4_x0_U0", "Parent" : "7", "Child" : ["504", "505"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_5_x0265", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "500", "DependentChan" : "863", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_5_x0265_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_4_x0264", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "506", "DependentChan" : "864", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_4_x0264_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_4_x0200", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "242", "DependentChan" : "747", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_4_x0200_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "504", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_4_4_x0_U0.local_C_V_0_U", "Parent" : "503"},
	{"ID" : "505", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_4_4_x0_U0.data_split_V_U", "Parent" : "503"},
	{"ID" : "506", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_4_3_x0_U0", "Parent" : "7", "Child" : ["507", "508"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_4_x0264", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "503", "DependentChan" : "864", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_4_x0264_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_3_x0263", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "509", "DependentChan" : "865", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_3_x0263_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_4_x0199", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "202", "DependentChan" : "723", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_4_x0199_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "507", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_4_3_x0_U0.local_C_V_0_U", "Parent" : "506"},
	{"ID" : "508", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_4_3_x0_U0.data_split_V_U", "Parent" : "506"},
	{"ID" : "509", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_4_2_x0_U0", "Parent" : "7", "Child" : ["510", "511"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_3_x0263", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "506", "DependentChan" : "865", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_3_x0263_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_2_x0262", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "512", "DependentChan" : "866", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_2_x0262_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_4_x0198", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "162", "DependentChan" : "699", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_4_x0198_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "510", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_4_2_x0_U0.local_C_V_0_U", "Parent" : "509"},
	{"ID" : "511", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_4_2_x0_U0.data_split_V_U", "Parent" : "509"},
	{"ID" : "512", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_4_1_x0_U0", "Parent" : "7", "Child" : ["513", "514"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_2_x0262", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "509", "DependentChan" : "866", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_2_x0262_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_1_x0261", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "515", "DependentChan" : "867", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_1_x0261_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_4_x0197", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "122", "DependentChan" : "675", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_4_x0197_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "513", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_4_1_x0_U0.local_C_V_0_U", "Parent" : "512"},
	{"ID" : "514", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_4_1_x0_U0.data_split_V_U", "Parent" : "512"},
	{"ID" : "515", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_4_0_x0_U0", "Parent" : "7", "Child" : ["516", "517"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_1_x0261", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "512", "DependentChan" : "867", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_1_x0261_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_0_x0260", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "593", "DependentChan" : "868", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_0_x0260_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_4_x0196", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "82", "DependentChan" : "651", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_4_x0196_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "516", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_4_0_x0_U0.local_C_V_0_U", "Parent" : "515"},
	{"ID" : "517", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_4_0_x0_U0.data_split_V_U", "Parent" : "515"},
	{"ID" : "518", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_boundary_wrapper_5_x0_U0", "Parent" : "7", "Child" : ["519", "520"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_7_x0275", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "521", "DependentChan" : "869", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_7_x0275_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_5_x0211", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "367", "DependentChan" : "822", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_5_x0211_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "519", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_boundary_wrapper_5_x0_U0.local_C_V_0_U", "Parent" : "518"},
	{"ID" : "520", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_boundary_wrapper_5_x0_U0.data_split_V_U", "Parent" : "518"},
	{"ID" : "521", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_5_6_x0_U0", "Parent" : "7", "Child" : ["522", "523"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_7_x0275", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "518", "DependentChan" : "869", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_7_x0275_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_6_x0274", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "524", "DependentChan" : "870", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_6_x0274_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_5_x0210", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "327", "DependentChan" : "798", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_5_x0210_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "522", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_5_6_x0_U0.local_C_V_0_U", "Parent" : "521"},
	{"ID" : "523", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_5_6_x0_U0.data_split_V_U", "Parent" : "521"},
	{"ID" : "524", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_5_5_x0_U0", "Parent" : "7", "Child" : ["525", "526"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_6_x0274", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "521", "DependentChan" : "870", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_6_x0274_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_5_x0273", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "527", "DependentChan" : "871", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_5_x0273_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_5_x0209", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "287", "DependentChan" : "774", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_5_x0209_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "525", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_5_5_x0_U0.local_C_V_0_U", "Parent" : "524"},
	{"ID" : "526", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_5_5_x0_U0.data_split_V_U", "Parent" : "524"},
	{"ID" : "527", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_5_4_x0_U0", "Parent" : "7", "Child" : ["528", "529"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_5_x0273", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "524", "DependentChan" : "871", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_5_x0273_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_4_x0272", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "530", "DependentChan" : "872", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_4_x0272_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_5_x0208", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "247", "DependentChan" : "750", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_5_x0208_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "528", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_5_4_x0_U0.local_C_V_0_U", "Parent" : "527"},
	{"ID" : "529", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_5_4_x0_U0.data_split_V_U", "Parent" : "527"},
	{"ID" : "530", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_5_3_x0_U0", "Parent" : "7", "Child" : ["531", "532"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_4_x0272", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "527", "DependentChan" : "872", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_4_x0272_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_3_x0271", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "533", "DependentChan" : "873", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_3_x0271_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_5_x0207", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "207", "DependentChan" : "726", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_5_x0207_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "531", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_5_3_x0_U0.local_C_V_0_U", "Parent" : "530"},
	{"ID" : "532", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_5_3_x0_U0.data_split_V_U", "Parent" : "530"},
	{"ID" : "533", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_5_2_x0_U0", "Parent" : "7", "Child" : ["534", "535"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_3_x0271", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "530", "DependentChan" : "873", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_3_x0271_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_2_x0270", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "536", "DependentChan" : "874", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_2_x0270_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_5_x0206", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "167", "DependentChan" : "702", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_5_x0206_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "534", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_5_2_x0_U0.local_C_V_0_U", "Parent" : "533"},
	{"ID" : "535", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_5_2_x0_U0.data_split_V_U", "Parent" : "533"},
	{"ID" : "536", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_5_1_x0_U0", "Parent" : "7", "Child" : ["537", "538"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_2_x0270", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "533", "DependentChan" : "874", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_2_x0270_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_1_x0269", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "539", "DependentChan" : "875", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_1_x0269_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_5_x0205", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "127", "DependentChan" : "678", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_5_x0205_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "537", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_5_1_x0_U0.local_C_V_0_U", "Parent" : "536"},
	{"ID" : "538", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_5_1_x0_U0.data_split_V_U", "Parent" : "536"},
	{"ID" : "539", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_5_0_x0_U0", "Parent" : "7", "Child" : ["540", "541"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_1_x0269", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "536", "DependentChan" : "875", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_1_x0269_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_0_x0268", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "592", "DependentChan" : "876", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_0_x0268_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_5_x0204", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "87", "DependentChan" : "654", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_5_x0204_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "540", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_5_0_x0_U0.local_C_V_0_U", "Parent" : "539"},
	{"ID" : "541", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_5_0_x0_U0.data_split_V_U", "Parent" : "539"},
	{"ID" : "542", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_boundary_wrapper_6_x0_U0", "Parent" : "7", "Child" : ["543", "544"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_7_x0283", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "545", "DependentChan" : "877", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_7_x0283_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_6_x0219", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "372", "DependentChan" : "825", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_6_x0219_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "543", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_boundary_wrapper_6_x0_U0.local_C_V_0_U", "Parent" : "542"},
	{"ID" : "544", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_boundary_wrapper_6_x0_U0.data_split_V_U", "Parent" : "542"},
	{"ID" : "545", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_6_6_x0_U0", "Parent" : "7", "Child" : ["546", "547"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_7_x0283", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "542", "DependentChan" : "877", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_7_x0283_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_6_x0282", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "548", "DependentChan" : "878", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_6_x0282_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_6_x0218", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "332", "DependentChan" : "801", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_6_x0218_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "546", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_6_6_x0_U0.local_C_V_0_U", "Parent" : "545"},
	{"ID" : "547", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_6_6_x0_U0.data_split_V_U", "Parent" : "545"},
	{"ID" : "548", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_6_5_x0_U0", "Parent" : "7", "Child" : ["549", "550"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_6_x0282", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "545", "DependentChan" : "878", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_6_x0282_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_5_x0281", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "551", "DependentChan" : "879", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_5_x0281_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_6_x0217", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "292", "DependentChan" : "777", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_6_x0217_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "549", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_6_5_x0_U0.local_C_V_0_U", "Parent" : "548"},
	{"ID" : "550", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_6_5_x0_U0.data_split_V_U", "Parent" : "548"},
	{"ID" : "551", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_6_4_x0_U0", "Parent" : "7", "Child" : ["552", "553"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_5_x0281", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "548", "DependentChan" : "879", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_5_x0281_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_4_x0280", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "554", "DependentChan" : "880", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_4_x0280_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_6_x0216", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "252", "DependentChan" : "753", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_6_x0216_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "552", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_6_4_x0_U0.local_C_V_0_U", "Parent" : "551"},
	{"ID" : "553", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_6_4_x0_U0.data_split_V_U", "Parent" : "551"},
	{"ID" : "554", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_6_3_x0_U0", "Parent" : "7", "Child" : ["555", "556"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_4_x0280", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "551", "DependentChan" : "880", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_4_x0280_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_3_x0279", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "557", "DependentChan" : "881", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_3_x0279_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_6_x0215", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "212", "DependentChan" : "729", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_6_x0215_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "555", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_6_3_x0_U0.local_C_V_0_U", "Parent" : "554"},
	{"ID" : "556", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_6_3_x0_U0.data_split_V_U", "Parent" : "554"},
	{"ID" : "557", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_6_2_x0_U0", "Parent" : "7", "Child" : ["558", "559"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_3_x0279", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "554", "DependentChan" : "881", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_3_x0279_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_2_x0278", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "560", "DependentChan" : "882", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_2_x0278_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_6_x0214", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "172", "DependentChan" : "705", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_6_x0214_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "558", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_6_2_x0_U0.local_C_V_0_U", "Parent" : "557"},
	{"ID" : "559", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_6_2_x0_U0.data_split_V_U", "Parent" : "557"},
	{"ID" : "560", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_6_1_x0_U0", "Parent" : "7", "Child" : ["561", "562"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_2_x0278", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "557", "DependentChan" : "882", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_2_x0278_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_1_x0277", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "563", "DependentChan" : "883", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_1_x0277_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_6_x0213", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "132", "DependentChan" : "681", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_6_x0213_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "561", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_6_1_x0_U0.local_C_V_0_U", "Parent" : "560"},
	{"ID" : "562", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_6_1_x0_U0.data_split_V_U", "Parent" : "560"},
	{"ID" : "563", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_6_0_x0_U0", "Parent" : "7", "Child" : ["564", "565"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_1_x0277", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "560", "DependentChan" : "883", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_1_x0277_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_0_x0276", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "591", "DependentChan" : "884", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_0_x0276_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_6_x0212", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "657", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_6_x0212_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "564", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_6_0_x0_U0.local_C_V_0_U", "Parent" : "563"},
	{"ID" : "565", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_6_0_x0_U0.data_split_V_U", "Parent" : "563"},
	{"ID" : "566", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_boundary_wrapper_7_x0_U0", "Parent" : "7", "Child" : ["567", "568"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_7_x0291", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "569", "DependentChan" : "885", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_7_x0291_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_7_7_x0227", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "377", "DependentChan" : "828", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_7_7_x0227_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "567", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_boundary_wrapper_7_x0_U0.local_C_V_0_U", "Parent" : "566"},
	{"ID" : "568", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_boundary_wrapper_7_x0_U0.data_split_V_U", "Parent" : "566"},
	{"ID" : "569", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_7_6_x0_U0", "Parent" : "7", "Child" : ["570", "571"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_7_x0291", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "566", "DependentChan" : "885", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_7_x0291_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_6_x0290", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "572", "DependentChan" : "886", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_6_x0290_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_6_7_x0226", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "337", "DependentChan" : "804", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_6_7_x0226_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "570", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_7_6_x0_U0.local_C_V_0_U", "Parent" : "569"},
	{"ID" : "571", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_7_6_x0_U0.data_split_V_U", "Parent" : "569"},
	{"ID" : "572", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_7_5_x0_U0", "Parent" : "7", "Child" : ["573", "574"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_6_x0290", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "569", "DependentChan" : "886", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_6_x0290_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_5_x0289", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "575", "DependentChan" : "887", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_5_x0289_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_5_7_x0225", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "297", "DependentChan" : "780", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_5_7_x0225_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "573", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_7_5_x0_U0.local_C_V_0_U", "Parent" : "572"},
	{"ID" : "574", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_7_5_x0_U0.data_split_V_U", "Parent" : "572"},
	{"ID" : "575", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_7_4_x0_U0", "Parent" : "7", "Child" : ["576", "577"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_5_x0289", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "572", "DependentChan" : "887", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_5_x0289_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_4_x0288", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "578", "DependentChan" : "888", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_4_x0288_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_4_7_x0224", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "257", "DependentChan" : "756", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_4_7_x0224_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "576", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_7_4_x0_U0.local_C_V_0_U", "Parent" : "575"},
	{"ID" : "577", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_7_4_x0_U0.data_split_V_U", "Parent" : "575"},
	{"ID" : "578", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_7_3_x0_U0", "Parent" : "7", "Child" : ["579", "580"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_4_x0288", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "575", "DependentChan" : "888", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_4_x0288_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_3_x0287", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "581", "DependentChan" : "889", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_3_x0287_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_3_7_x0223", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "217", "DependentChan" : "732", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_3_7_x0223_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "579", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_7_3_x0_U0.local_C_V_0_U", "Parent" : "578"},
	{"ID" : "580", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_7_3_x0_U0.data_split_V_U", "Parent" : "578"},
	{"ID" : "581", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_7_2_x0_U0", "Parent" : "7", "Child" : ["582", "583"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_3_x0287", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "578", "DependentChan" : "889", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_3_x0287_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_2_x0286", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "584", "DependentChan" : "890", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_2_x0286_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_2_7_x0222", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "177", "DependentChan" : "708", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_2_7_x0222_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "582", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_7_2_x0_U0.local_C_V_0_U", "Parent" : "581"},
	{"ID" : "583", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_7_2_x0_U0.data_split_V_U", "Parent" : "581"},
	{"ID" : "584", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_7_1_x0_U0", "Parent" : "7", "Child" : ["585", "586"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_2_x0286", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "581", "DependentChan" : "890", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_2_x0286_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_1_x0285", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "587", "DependentChan" : "891", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_1_x0285_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_1_7_x0221", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "137", "DependentChan" : "684", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_1_7_x0221_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "585", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_7_1_x0_U0.local_C_V_0_U", "Parent" : "584"},
	{"ID" : "586", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_7_1_x0_U0.data_split_V_U", "Parent" : "584"},
	{"ID" : "587", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_7_0_x0_U0", "Parent" : "7", "Child" : ["588", "589"],
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_1_x0285", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "584", "DependentChan" : "891", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_1_x0285_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_0_x0284", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "590", "DependentChan" : "892", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_0_x0284_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_7_x0220", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "97", "DependentChan" : "660", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_7_x0220_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "588", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_7_0_x0_U0.local_C_V_0_U", "Parent" : "587"},
	{"ID" : "589", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L1_out_wrapper_7_0_x0_U0.data_split_V_U", "Parent" : "587"},
	{"ID" : "590", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L2_out_boundary_x0_U0", "Parent" : "7",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_7_x0299", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "591", "DependentChan" : "893", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_7_x0299_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_0_x0284", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "587", "DependentChan" : "892", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_7_0_x0284_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "591", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L2_out_6_x0_U0", "Parent" : "7",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_7_x0299", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "590", "DependentChan" : "893", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_7_x0299_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_6_x0298", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "592", "DependentChan" : "894", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_6_x0298_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_0_x0276", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "563", "DependentChan" : "884", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_6_0_x0276_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "592", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L2_out_5_x0_U0", "Parent" : "7",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_6_x0298", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "591", "DependentChan" : "894", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_6_x0298_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_5_x0297", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "593", "DependentChan" : "895", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_5_x0297_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_0_x0268", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "539", "DependentChan" : "876", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_5_0_x0268_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "593", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L2_out_4_x0_U0", "Parent" : "7",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_5_x0297", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "592", "DependentChan" : "895", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_5_x0297_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_4_x0296", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "594", "DependentChan" : "896", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_4_x0296_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_0_x0260", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "515", "DependentChan" : "868", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_4_0_x0260_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "594", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L2_out_3_x0_U0", "Parent" : "7",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_4_x0296", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "593", "DependentChan" : "896", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_4_x0296_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_3_x0295", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "595", "DependentChan" : "897", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_3_x0295_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_0_x0252", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "491", "DependentChan" : "860", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_3_0_x0252_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "595", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L2_out_2_x0_U0", "Parent" : "7",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_3_x0295", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "594", "DependentChan" : "897", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_3_x0295_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_2_x0294", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "596", "DependentChan" : "898", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_2_x0294_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_0_x0244", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "467", "DependentChan" : "852", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_2_0_x0244_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "596", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L2_out_1_x0_U0", "Parent" : "7",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_2_x0294", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "595", "DependentChan" : "898", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_2_x0294_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x0293", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "597", "DependentChan" : "899", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x0293_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x0236", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "443", "DependentChan" : "844", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_1_0_x0236_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "597", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L2_out_0_x0_U0", "Parent" : "7",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x0293", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "596", "DependentChan" : "899", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_1_x0293_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x0292", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "598", "DependentChan" : "900", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_0_x0292_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x0228", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "419", "DependentChan" : "836", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_0_x0228_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "598", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L3_out_x0_U0", "Parent" : "7",
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
			{"Name" : "fifo_C_drain_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "599", "DependentChan" : "901", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_local_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "597", "DependentChan" : "900", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_local_in_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "599", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L3_out_serialize_x0_U0", "Parent" : "7", "Child" : ["600"],
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
			{"Name" : "fifo_C_drain_local_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "598", "DependentChan" : "901", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_local_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "C", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "602", "DependentChanDepth" : "37", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "C_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "600", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_drain_IO_L3_out_serialize_x0_U0.mem_data_split_V_U", "Parent" : "599"},
	{"ID" : "601", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_c1_U", "Parent" : "7"},
	{"ID" : "602", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.C_c_U", "Parent" : "7"},
	{"ID" : "603", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_A_IO_L3_in_serialize_x0_U", "Parent" : "7"},
	{"ID" : "604", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_A_IO_L2_in_0_x0_U", "Parent" : "7"},
	{"ID" : "605", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_A_IO_L2_in_1_x0_U", "Parent" : "7"},
	{"ID" : "606", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_0_0_x0_U", "Parent" : "7"},
	{"ID" : "607", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_A_IO_L2_in_2_x0_U", "Parent" : "7"},
	{"ID" : "608", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_1_0_x0_U", "Parent" : "7"},
	{"ID" : "609", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_A_IO_L2_in_3_x0_U", "Parent" : "7"},
	{"ID" : "610", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_2_0_x0_U", "Parent" : "7"},
	{"ID" : "611", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_A_IO_L2_in_4_x0_U", "Parent" : "7"},
	{"ID" : "612", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_3_0_x0_U", "Parent" : "7"},
	{"ID" : "613", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_A_IO_L2_in_5_x0_U", "Parent" : "7"},
	{"ID" : "614", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_4_0_x0_U", "Parent" : "7"},
	{"ID" : "615", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_A_IO_L2_in_6_x0_U", "Parent" : "7"},
	{"ID" : "616", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_5_0_x0_U", "Parent" : "7"},
	{"ID" : "617", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_A_IO_L2_in_7_x0_U", "Parent" : "7"},
	{"ID" : "618", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_6_0_x0_U", "Parent" : "7"},
	{"ID" : "619", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_7_0_x0_U", "Parent" : "7"},
	{"ID" : "620", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_B_IO_L3_in_serialize_x0_U", "Parent" : "7"},
	{"ID" : "621", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_B_IO_L2_in_0_x0_U", "Parent" : "7"},
	{"ID" : "622", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_B_IO_L2_in_1_x0_U", "Parent" : "7"},
	{"ID" : "623", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_0_0_x0_U", "Parent" : "7"},
	{"ID" : "624", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_B_IO_L2_in_2_x0_U", "Parent" : "7"},
	{"ID" : "625", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_0_1_x0_U", "Parent" : "7"},
	{"ID" : "626", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_B_IO_L2_in_3_x0_U", "Parent" : "7"},
	{"ID" : "627", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_0_2_x0_U", "Parent" : "7"},
	{"ID" : "628", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_B_IO_L2_in_4_x0_U", "Parent" : "7"},
	{"ID" : "629", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_0_3_x0_U", "Parent" : "7"},
	{"ID" : "630", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_B_IO_L2_in_5_x0_U", "Parent" : "7"},
	{"ID" : "631", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_0_4_x0_U", "Parent" : "7"},
	{"ID" : "632", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_B_IO_L2_in_6_x0_U", "Parent" : "7"},
	{"ID" : "633", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_0_5_x0_U", "Parent" : "7"},
	{"ID" : "634", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_B_IO_L2_in_7_x0_U", "Parent" : "7"},
	{"ID" : "635", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_0_6_x0_U", "Parent" : "7"},
	{"ID" : "636", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_0_7_x0_U", "Parent" : "7"},
	{"ID" : "637", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_0_1_x0_U", "Parent" : "7"},
	{"ID" : "638", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_1_0_x0_U", "Parent" : "7"},
	{"ID" : "639", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_0_0_x0_U", "Parent" : "7"},
	{"ID" : "640", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_0_2_x0_U", "Parent" : "7"},
	{"ID" : "641", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_1_1_x0_U", "Parent" : "7"},
	{"ID" : "642", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_0_1_x0_U", "Parent" : "7"},
	{"ID" : "643", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_0_3_x0_U", "Parent" : "7"},
	{"ID" : "644", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_1_2_x0_U", "Parent" : "7"},
	{"ID" : "645", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_0_2_x0_U", "Parent" : "7"},
	{"ID" : "646", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_0_4_x0_U", "Parent" : "7"},
	{"ID" : "647", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_1_3_x0_U", "Parent" : "7"},
	{"ID" : "648", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_0_3_x0_U", "Parent" : "7"},
	{"ID" : "649", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_0_5_x0_U", "Parent" : "7"},
	{"ID" : "650", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_1_4_x0_U", "Parent" : "7"},
	{"ID" : "651", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_0_4_x0_U", "Parent" : "7"},
	{"ID" : "652", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_0_6_x0_U", "Parent" : "7"},
	{"ID" : "653", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_1_5_x0_U", "Parent" : "7"},
	{"ID" : "654", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_0_5_x0_U", "Parent" : "7"},
	{"ID" : "655", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_0_7_x0_U", "Parent" : "7"},
	{"ID" : "656", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_1_6_x0_U", "Parent" : "7"},
	{"ID" : "657", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_0_6_x0_U", "Parent" : "7"},
	{"ID" : "658", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_0_8_x0_U", "Parent" : "7"},
	{"ID" : "659", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_1_7_x0_U", "Parent" : "7"},
	{"ID" : "660", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_0_7_x0_U", "Parent" : "7"},
	{"ID" : "661", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_1_1_x0_U", "Parent" : "7"},
	{"ID" : "662", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_2_0_x0_U", "Parent" : "7"},
	{"ID" : "663", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_1_0_x0_U", "Parent" : "7"},
	{"ID" : "664", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_1_2_x0_U", "Parent" : "7"},
	{"ID" : "665", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_2_1_x0_U", "Parent" : "7"},
	{"ID" : "666", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_1_1_x0_U", "Parent" : "7"},
	{"ID" : "667", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_1_3_x0_U", "Parent" : "7"},
	{"ID" : "668", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_2_2_x0_U", "Parent" : "7"},
	{"ID" : "669", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_1_2_x0_U", "Parent" : "7"},
	{"ID" : "670", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_1_4_x0_U", "Parent" : "7"},
	{"ID" : "671", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_2_3_x0_U", "Parent" : "7"},
	{"ID" : "672", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_1_3_x0_U", "Parent" : "7"},
	{"ID" : "673", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_1_5_x0_U", "Parent" : "7"},
	{"ID" : "674", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_2_4_x0_U", "Parent" : "7"},
	{"ID" : "675", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_1_4_x0_U", "Parent" : "7"},
	{"ID" : "676", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_1_6_x0_U", "Parent" : "7"},
	{"ID" : "677", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_2_5_x0_U", "Parent" : "7"},
	{"ID" : "678", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_1_5_x0_U", "Parent" : "7"},
	{"ID" : "679", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_1_7_x0_U", "Parent" : "7"},
	{"ID" : "680", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_2_6_x0_U", "Parent" : "7"},
	{"ID" : "681", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_1_6_x0_U", "Parent" : "7"},
	{"ID" : "682", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_1_8_x0_U", "Parent" : "7"},
	{"ID" : "683", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_2_7_x0_U", "Parent" : "7"},
	{"ID" : "684", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_1_7_x0_U", "Parent" : "7"},
	{"ID" : "685", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_2_1_x0_U", "Parent" : "7"},
	{"ID" : "686", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_3_0_x0_U", "Parent" : "7"},
	{"ID" : "687", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_2_0_x0_U", "Parent" : "7"},
	{"ID" : "688", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_2_2_x0_U", "Parent" : "7"},
	{"ID" : "689", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_3_1_x0_U", "Parent" : "7"},
	{"ID" : "690", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_2_1_x0_U", "Parent" : "7"},
	{"ID" : "691", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_2_3_x0_U", "Parent" : "7"},
	{"ID" : "692", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_3_2_x0_U", "Parent" : "7"},
	{"ID" : "693", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_2_2_x0_U", "Parent" : "7"},
	{"ID" : "694", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_2_4_x0_U", "Parent" : "7"},
	{"ID" : "695", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_3_3_x0_U", "Parent" : "7"},
	{"ID" : "696", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_2_3_x0_U", "Parent" : "7"},
	{"ID" : "697", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_2_5_x0_U", "Parent" : "7"},
	{"ID" : "698", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_3_4_x0_U", "Parent" : "7"},
	{"ID" : "699", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_2_4_x0_U", "Parent" : "7"},
	{"ID" : "700", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_2_6_x0_U", "Parent" : "7"},
	{"ID" : "701", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_3_5_x0_U", "Parent" : "7"},
	{"ID" : "702", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_2_5_x0_U", "Parent" : "7"},
	{"ID" : "703", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_2_7_x0_U", "Parent" : "7"},
	{"ID" : "704", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_3_6_x0_U", "Parent" : "7"},
	{"ID" : "705", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_2_6_x0_U", "Parent" : "7"},
	{"ID" : "706", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_2_8_x0_U", "Parent" : "7"},
	{"ID" : "707", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_3_7_x0_U", "Parent" : "7"},
	{"ID" : "708", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_2_7_x0_U", "Parent" : "7"},
	{"ID" : "709", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_3_1_x0_U", "Parent" : "7"},
	{"ID" : "710", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_4_0_x0_U", "Parent" : "7"},
	{"ID" : "711", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_3_0_x0_U", "Parent" : "7"},
	{"ID" : "712", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_3_2_x0_U", "Parent" : "7"},
	{"ID" : "713", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_4_1_x0_U", "Parent" : "7"},
	{"ID" : "714", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_3_1_x0_U", "Parent" : "7"},
	{"ID" : "715", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_3_3_x0_U", "Parent" : "7"},
	{"ID" : "716", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_4_2_x0_U", "Parent" : "7"},
	{"ID" : "717", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_3_2_x0_U", "Parent" : "7"},
	{"ID" : "718", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_3_4_x0_U", "Parent" : "7"},
	{"ID" : "719", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_4_3_x0_U", "Parent" : "7"},
	{"ID" : "720", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_3_3_x0_U", "Parent" : "7"},
	{"ID" : "721", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_3_5_x0_U", "Parent" : "7"},
	{"ID" : "722", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_4_4_x0_U", "Parent" : "7"},
	{"ID" : "723", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_3_4_x0_U", "Parent" : "7"},
	{"ID" : "724", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_3_6_x0_U", "Parent" : "7"},
	{"ID" : "725", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_4_5_x0_U", "Parent" : "7"},
	{"ID" : "726", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_3_5_x0_U", "Parent" : "7"},
	{"ID" : "727", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_3_7_x0_U", "Parent" : "7"},
	{"ID" : "728", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_4_6_x0_U", "Parent" : "7"},
	{"ID" : "729", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_3_6_x0_U", "Parent" : "7"},
	{"ID" : "730", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_3_8_x0_U", "Parent" : "7"},
	{"ID" : "731", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_4_7_x0_U", "Parent" : "7"},
	{"ID" : "732", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_3_7_x0_U", "Parent" : "7"},
	{"ID" : "733", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_4_1_x0_U", "Parent" : "7"},
	{"ID" : "734", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_5_0_x0_U", "Parent" : "7"},
	{"ID" : "735", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_4_0_x0_U", "Parent" : "7"},
	{"ID" : "736", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_4_2_x0_U", "Parent" : "7"},
	{"ID" : "737", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_5_1_x0_U", "Parent" : "7"},
	{"ID" : "738", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_4_1_x0_U", "Parent" : "7"},
	{"ID" : "739", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_4_3_x0_U", "Parent" : "7"},
	{"ID" : "740", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_5_2_x0_U", "Parent" : "7"},
	{"ID" : "741", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_4_2_x0_U", "Parent" : "7"},
	{"ID" : "742", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_4_4_x0_U", "Parent" : "7"},
	{"ID" : "743", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_5_3_x0_U", "Parent" : "7"},
	{"ID" : "744", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_4_3_x0_U", "Parent" : "7"},
	{"ID" : "745", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_4_5_x0_U", "Parent" : "7"},
	{"ID" : "746", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_5_4_x0_U", "Parent" : "7"},
	{"ID" : "747", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_4_4_x0_U", "Parent" : "7"},
	{"ID" : "748", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_4_6_x0_U", "Parent" : "7"},
	{"ID" : "749", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_5_5_x0_U", "Parent" : "7"},
	{"ID" : "750", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_4_5_x0_U", "Parent" : "7"},
	{"ID" : "751", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_4_7_x0_U", "Parent" : "7"},
	{"ID" : "752", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_5_6_x0_U", "Parent" : "7"},
	{"ID" : "753", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_4_6_x0_U", "Parent" : "7"},
	{"ID" : "754", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_4_8_x0_U", "Parent" : "7"},
	{"ID" : "755", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_5_7_x0_U", "Parent" : "7"},
	{"ID" : "756", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_4_7_x0_U", "Parent" : "7"},
	{"ID" : "757", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_5_1_x0_U", "Parent" : "7"},
	{"ID" : "758", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_6_0_x0_U", "Parent" : "7"},
	{"ID" : "759", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_5_0_x0_U", "Parent" : "7"},
	{"ID" : "760", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_5_2_x0_U", "Parent" : "7"},
	{"ID" : "761", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_6_1_x0_U", "Parent" : "7"},
	{"ID" : "762", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_5_1_x0_U", "Parent" : "7"},
	{"ID" : "763", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_5_3_x0_U", "Parent" : "7"},
	{"ID" : "764", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_6_2_x0_U", "Parent" : "7"},
	{"ID" : "765", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_5_2_x0_U", "Parent" : "7"},
	{"ID" : "766", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_5_4_x0_U", "Parent" : "7"},
	{"ID" : "767", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_6_3_x0_U", "Parent" : "7"},
	{"ID" : "768", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_5_3_x0_U", "Parent" : "7"},
	{"ID" : "769", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_5_5_x0_U", "Parent" : "7"},
	{"ID" : "770", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_6_4_x0_U", "Parent" : "7"},
	{"ID" : "771", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_5_4_x0_U", "Parent" : "7"},
	{"ID" : "772", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_5_6_x0_U", "Parent" : "7"},
	{"ID" : "773", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_6_5_x0_U", "Parent" : "7"},
	{"ID" : "774", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_5_5_x0_U", "Parent" : "7"},
	{"ID" : "775", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_5_7_x0_U", "Parent" : "7"},
	{"ID" : "776", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_6_6_x0_U", "Parent" : "7"},
	{"ID" : "777", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_5_6_x0_U", "Parent" : "7"},
	{"ID" : "778", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_5_8_x0_U", "Parent" : "7"},
	{"ID" : "779", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_6_7_x0_U", "Parent" : "7"},
	{"ID" : "780", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_5_7_x0_U", "Parent" : "7"},
	{"ID" : "781", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_6_1_x0_U", "Parent" : "7"},
	{"ID" : "782", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_7_0_x0_U", "Parent" : "7"},
	{"ID" : "783", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_6_0_x0_U", "Parent" : "7"},
	{"ID" : "784", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_6_2_x0_U", "Parent" : "7"},
	{"ID" : "785", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_7_1_x0_U", "Parent" : "7"},
	{"ID" : "786", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_6_1_x0_U", "Parent" : "7"},
	{"ID" : "787", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_6_3_x0_U", "Parent" : "7"},
	{"ID" : "788", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_7_2_x0_U", "Parent" : "7"},
	{"ID" : "789", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_6_2_x0_U", "Parent" : "7"},
	{"ID" : "790", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_6_4_x0_U", "Parent" : "7"},
	{"ID" : "791", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_7_3_x0_U", "Parent" : "7"},
	{"ID" : "792", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_6_3_x0_U", "Parent" : "7"},
	{"ID" : "793", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_6_5_x0_U", "Parent" : "7"},
	{"ID" : "794", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_7_4_x0_U", "Parent" : "7"},
	{"ID" : "795", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_6_4_x0_U", "Parent" : "7"},
	{"ID" : "796", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_6_6_x0_U", "Parent" : "7"},
	{"ID" : "797", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_7_5_x0_U", "Parent" : "7"},
	{"ID" : "798", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_6_5_x0_U", "Parent" : "7"},
	{"ID" : "799", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_6_7_x0_U", "Parent" : "7"},
	{"ID" : "800", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_7_6_x0_U", "Parent" : "7"},
	{"ID" : "801", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_6_6_x0_U", "Parent" : "7"},
	{"ID" : "802", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_6_8_x0_U", "Parent" : "7"},
	{"ID" : "803", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_7_7_x0_U", "Parent" : "7"},
	{"ID" : "804", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_6_7_x0_U", "Parent" : "7"},
	{"ID" : "805", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_7_1_x0_U", "Parent" : "7"},
	{"ID" : "806", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_8_0_x0_U", "Parent" : "7"},
	{"ID" : "807", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_7_0_x0_U", "Parent" : "7"},
	{"ID" : "808", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_7_2_x0_U", "Parent" : "7"},
	{"ID" : "809", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_8_1_x0_U", "Parent" : "7"},
	{"ID" : "810", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_7_1_x0_U", "Parent" : "7"},
	{"ID" : "811", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_7_3_x0_U", "Parent" : "7"},
	{"ID" : "812", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_8_2_x0_U", "Parent" : "7"},
	{"ID" : "813", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_7_2_x0_U", "Parent" : "7"},
	{"ID" : "814", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_7_4_x0_U", "Parent" : "7"},
	{"ID" : "815", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_8_3_x0_U", "Parent" : "7"},
	{"ID" : "816", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_7_3_x0_U", "Parent" : "7"},
	{"ID" : "817", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_7_5_x0_U", "Parent" : "7"},
	{"ID" : "818", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_8_4_x0_U", "Parent" : "7"},
	{"ID" : "819", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_7_4_x0_U", "Parent" : "7"},
	{"ID" : "820", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_7_6_x0_U", "Parent" : "7"},
	{"ID" : "821", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_8_5_x0_U", "Parent" : "7"},
	{"ID" : "822", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_7_5_x0_U", "Parent" : "7"},
	{"ID" : "823", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_7_7_x0_U", "Parent" : "7"},
	{"ID" : "824", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_8_6_x0_U", "Parent" : "7"},
	{"ID" : "825", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_7_6_x0_U", "Parent" : "7"},
	{"ID" : "826", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_A_PE_7_8_x0_U", "Parent" : "7"},
	{"ID" : "827", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_B_PE_8_7_x0_U", "Parent" : "7"},
	{"ID" : "828", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_PE_7_7_x0_U", "Parent" : "7"},
	{"ID" : "829", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_0_7_x0_U", "Parent" : "7"},
	{"ID" : "830", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_0_6_x0_U", "Parent" : "7"},
	{"ID" : "831", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_0_5_x0_U", "Parent" : "7"},
	{"ID" : "832", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_0_4_x0_U", "Parent" : "7"},
	{"ID" : "833", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_0_3_x0_U", "Parent" : "7"},
	{"ID" : "834", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_0_2_x0_U", "Parent" : "7"},
	{"ID" : "835", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_0_1_x0_U", "Parent" : "7"},
	{"ID" : "836", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_0_0_x0_U", "Parent" : "7"},
	{"ID" : "837", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_1_7_x0_U", "Parent" : "7"},
	{"ID" : "838", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_1_6_x0_U", "Parent" : "7"},
	{"ID" : "839", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_1_5_x0_U", "Parent" : "7"},
	{"ID" : "840", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_1_4_x0_U", "Parent" : "7"},
	{"ID" : "841", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_1_3_x0_U", "Parent" : "7"},
	{"ID" : "842", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_1_2_x0_U", "Parent" : "7"},
	{"ID" : "843", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_1_1_x0_U", "Parent" : "7"},
	{"ID" : "844", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_1_0_x0_U", "Parent" : "7"},
	{"ID" : "845", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_2_7_x0_U", "Parent" : "7"},
	{"ID" : "846", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_2_6_x0_U", "Parent" : "7"},
	{"ID" : "847", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_2_5_x0_U", "Parent" : "7"},
	{"ID" : "848", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_2_4_x0_U", "Parent" : "7"},
	{"ID" : "849", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_2_3_x0_U", "Parent" : "7"},
	{"ID" : "850", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_2_2_x0_U", "Parent" : "7"},
	{"ID" : "851", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_2_1_x0_U", "Parent" : "7"},
	{"ID" : "852", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_2_0_x0_U", "Parent" : "7"},
	{"ID" : "853", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_3_7_x0_U", "Parent" : "7"},
	{"ID" : "854", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_3_6_x0_U", "Parent" : "7"},
	{"ID" : "855", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_3_5_x0_U", "Parent" : "7"},
	{"ID" : "856", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_3_4_x0_U", "Parent" : "7"},
	{"ID" : "857", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_3_3_x0_U", "Parent" : "7"},
	{"ID" : "858", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_3_2_x0_U", "Parent" : "7"},
	{"ID" : "859", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_3_1_x0_U", "Parent" : "7"},
	{"ID" : "860", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_3_0_x0_U", "Parent" : "7"},
	{"ID" : "861", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_4_7_x0_U", "Parent" : "7"},
	{"ID" : "862", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_4_6_x0_U", "Parent" : "7"},
	{"ID" : "863", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_4_5_x0_U", "Parent" : "7"},
	{"ID" : "864", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_4_4_x0_U", "Parent" : "7"},
	{"ID" : "865", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_4_3_x0_U", "Parent" : "7"},
	{"ID" : "866", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_4_2_x0_U", "Parent" : "7"},
	{"ID" : "867", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_4_1_x0_U", "Parent" : "7"},
	{"ID" : "868", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_4_0_x0_U", "Parent" : "7"},
	{"ID" : "869", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_5_7_x0_U", "Parent" : "7"},
	{"ID" : "870", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_5_6_x0_U", "Parent" : "7"},
	{"ID" : "871", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_5_5_x0_U", "Parent" : "7"},
	{"ID" : "872", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_5_4_x0_U", "Parent" : "7"},
	{"ID" : "873", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_5_3_x0_U", "Parent" : "7"},
	{"ID" : "874", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_5_2_x0_U", "Parent" : "7"},
	{"ID" : "875", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_5_1_x0_U", "Parent" : "7"},
	{"ID" : "876", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_5_0_x0_U", "Parent" : "7"},
	{"ID" : "877", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_6_7_x0_U", "Parent" : "7"},
	{"ID" : "878", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_6_6_x0_U", "Parent" : "7"},
	{"ID" : "879", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_6_5_x0_U", "Parent" : "7"},
	{"ID" : "880", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_6_4_x0_U", "Parent" : "7"},
	{"ID" : "881", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_6_3_x0_U", "Parent" : "7"},
	{"ID" : "882", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_6_2_x0_U", "Parent" : "7"},
	{"ID" : "883", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_6_1_x0_U", "Parent" : "7"},
	{"ID" : "884", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_6_0_x0_U", "Parent" : "7"},
	{"ID" : "885", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_7_7_x0_U", "Parent" : "7"},
	{"ID" : "886", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_7_6_x0_U", "Parent" : "7"},
	{"ID" : "887", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_7_5_x0_U", "Parent" : "7"},
	{"ID" : "888", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_7_4_x0_U", "Parent" : "7"},
	{"ID" : "889", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_7_3_x0_U", "Parent" : "7"},
	{"ID" : "890", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_7_2_x0_U", "Parent" : "7"},
	{"ID" : "891", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_7_1_x0_U", "Parent" : "7"},
	{"ID" : "892", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L1_out_7_0_x0_U", "Parent" : "7"},
	{"ID" : "893", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L2_out_7_x0_U", "Parent" : "7"},
	{"ID" : "894", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L2_out_6_x0_U", "Parent" : "7"},
	{"ID" : "895", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L2_out_5_x0_U", "Parent" : "7"},
	{"ID" : "896", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L2_out_4_x0_U", "Parent" : "7"},
	{"ID" : "897", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L2_out_3_x0_U", "Parent" : "7"},
	{"ID" : "898", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L2_out_2_x0_U", "Parent" : "7"},
	{"ID" : "899", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L2_out_1_x0_U", "Parent" : "7"},
	{"ID" : "900", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L2_out_0_x0_U", "Parent" : "7"},
	{"ID" : "901", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kernel0_x0_fu_90.fifo_C_drain_C_drain_IO_L3_out_serialize_x0_U", "Parent" : "7"},
	{"ID" : "902", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_cov_x0_fu_99", "Parent" : "0", "Child" : ["903", "904", "905", "906", "907"],
		"CDFG" : "nondf_kernel_cov_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2183882", "EstimateLatencyMax" : "2183882",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "gmem_A", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_A_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_A_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "xout", "Type" : "None", "Direction" : "I"},
			{"Name" : "xin", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "903", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_cov_x0_fu_99.mean_V_U", "Parent" : "902"},
	{"ID" : "904", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_cov_x0_fu_99.data_V_U", "Parent" : "902"},
	{"ID" : "905", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_cov_x0_fu_99.cov_V_U", "Parent" : "902"},
	{"ID" : "906", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_cov_x0_fu_99.mul_128ns_130ns_257_5_1_U1", "Parent" : "902"},
	{"ID" : "907", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_cov_x0_fu_99.mul_128s_128s_128_5_1_U2", "Parent" : "902"},
	{"ID" : "908", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_cov_x1_fu_107", "Parent" : "0", "Child" : ["909", "910", "911", "912", "913"],
		"CDFG" : "nondf_kernel_cov_x1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2183882", "EstimateLatencyMax" : "2183882",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "gmem_B", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_B_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_B_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "xout", "Type" : "None", "Direction" : "I"},
			{"Name" : "xin", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "909", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_cov_x1_fu_107.mean_V_U", "Parent" : "908"},
	{"ID" : "910", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_cov_x1_fu_107.data_V_U", "Parent" : "908"},
	{"ID" : "911", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_cov_x1_fu_107.cov_V_U", "Parent" : "908"},
	{"ID" : "912", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_cov_x1_fu_107.mul_128ns_130ns_257_5_1_U11", "Parent" : "908"},
	{"ID" : "913", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nondf_kernel_cov_x1_fu_107.mul_128s_128s_128_5_1_U12", "Parent" : "908"}]}


set ArgLastReadFirstWriteLatency {
	top {
		gmem_A {Type I LastRead 72 FirstWrite -1}
		gmem_B {Type I LastRead 72 FirstWrite -1}
		gmem_C {Type O LastRead 3 FirstWrite 6}
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}
		C {Type I LastRead 0 FirstWrite -1}}
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
		C {Type I LastRead 0 FirstWrite -1}}
	nondf_kernel_cov_x0 {
		gmem_A {Type I LastRead 72 FirstWrite -1}
		xout {Type I LastRead 0 FirstWrite -1}
		xin {Type O LastRead -1 FirstWrite 77}}
	nondf_kernel_cov_x1 {
		gmem_B {Type I LastRead 72 FirstWrite -1}
		xout {Type I LastRead 0 FirstWrite -1}
		xin {Type O LastRead -1 FirstWrite 77}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "131307040", "Max" : "131307040"}
	, {"Name" : "Interval", "Min" : "131307041", "Max" : "131307041"}
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
