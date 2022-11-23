set moduleName nondf_kernel_2mm_x0
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {nondf_kernel_2mm_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem_A int 512 regular {axi_master 0}  }
	{ xout int 64 regular  }
	{ xin int 32 regular {array 1024 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem_A", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "xout", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "xin", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 64
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
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
	{ xout sc_in sc_lv 64 signal 1 } 
	{ xin_address0 sc_out sc_lv 10 signal 2 } 
	{ xin_ce0 sc_out sc_logic 1 signal 2 } 
	{ xin_we0 sc_out sc_logic 1 signal 2 } 
	{ xin_d0 sc_out sc_lv 32 signal 2 } 
	{ grp_fu_142_p_din0 sc_out sc_lv 512 signal -1 } 
	{ grp_fu_142_p_din1 sc_out sc_lv 512 signal -1 } 
	{ grp_fu_142_p_dout0 sc_in sc_lv 512 signal -1 } 
	{ grp_fu_142_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_146_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_146_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_146_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_146_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
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
 	{ "name": "xout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "xout", "role": "default" }} , 
 	{ "name": "xin_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "xin", "role": "address0" }} , 
 	{ "name": "xin_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xin", "role": "ce0" }} , 
 	{ "name": "xin_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xin", "role": "we0" }} , 
 	{ "name": "xin_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xin", "role": "d0" }} , 
 	{ "name": "grp_fu_142_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "grp_fu_142_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_142_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "grp_fu_142_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_142_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "grp_fu_142_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_142_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_142_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_146_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_146_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_146_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_146_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_146_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_146_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_146_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_146_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"],
		"CDFG" : "nondf_kernel_2mm_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "469353", "EstimateLatencyMax" : "469353",
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_input_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_output_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_512ns_512ns_512_2_1_U2", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	nondf_kernel_2mm_x0 {
		gmem_A {Type I LastRead 72 FirstWrite -1}
		xout {Type I LastRead 0 FirstWrite -1}
		xin {Type O LastRead -1 FirstWrite 75}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "469353", "Max" : "469353"}
	, {"Name" : "Interval", "Min" : "469353", "Max" : "469353"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem_A { m_axi {  { m_axi_gmem_A_AWVALID VALID 1 1 }  { m_axi_gmem_A_AWREADY READY 0 1 }  { m_axi_gmem_A_AWADDR ADDR 1 64 }  { m_axi_gmem_A_AWID ID 1 1 }  { m_axi_gmem_A_AWLEN LEN 1 32 }  { m_axi_gmem_A_AWSIZE SIZE 1 3 }  { m_axi_gmem_A_AWBURST BURST 1 2 }  { m_axi_gmem_A_AWLOCK LOCK 1 2 }  { m_axi_gmem_A_AWCACHE CACHE 1 4 }  { m_axi_gmem_A_AWPROT PROT 1 3 }  { m_axi_gmem_A_AWQOS QOS 1 4 }  { m_axi_gmem_A_AWREGION REGION 1 4 }  { m_axi_gmem_A_AWUSER USER 1 1 }  { m_axi_gmem_A_WVALID VALID 1 1 }  { m_axi_gmem_A_WREADY READY 0 1 }  { m_axi_gmem_A_WDATA DATA 1 512 }  { m_axi_gmem_A_WSTRB STRB 1 64 }  { m_axi_gmem_A_WLAST LAST 1 1 }  { m_axi_gmem_A_WID ID 1 1 }  { m_axi_gmem_A_WUSER USER 1 1 }  { m_axi_gmem_A_ARVALID VALID 1 1 }  { m_axi_gmem_A_ARREADY READY 0 1 }  { m_axi_gmem_A_ARADDR ADDR 1 64 }  { m_axi_gmem_A_ARID ID 1 1 }  { m_axi_gmem_A_ARLEN LEN 1 32 }  { m_axi_gmem_A_ARSIZE SIZE 1 3 }  { m_axi_gmem_A_ARBURST BURST 1 2 }  { m_axi_gmem_A_ARLOCK LOCK 1 2 }  { m_axi_gmem_A_ARCACHE CACHE 1 4 }  { m_axi_gmem_A_ARPROT PROT 1 3 }  { m_axi_gmem_A_ARQOS QOS 1 4 }  { m_axi_gmem_A_ARREGION REGION 1 4 }  { m_axi_gmem_A_ARUSER USER 1 1 }  { m_axi_gmem_A_RVALID VALID 0 1 }  { m_axi_gmem_A_RREADY READY 1 1 }  { m_axi_gmem_A_RDATA DATA 0 512 }  { m_axi_gmem_A_RLAST LAST 0 1 }  { m_axi_gmem_A_RID ID 0 1 }  { m_axi_gmem_A_RUSER USER 0 1 }  { m_axi_gmem_A_RRESP RESP 0 2 }  { m_axi_gmem_A_BVALID VALID 0 1 }  { m_axi_gmem_A_BREADY READY 1 1 }  { m_axi_gmem_A_BRESP RESP 0 2 }  { m_axi_gmem_A_BID ID 0 1 }  { m_axi_gmem_A_BUSER USER 0 1 } } }
	xout { ap_none {  { xout in_data 0 64 } } }
	xin { ap_memory {  { xin_address0 mem_address 1 10 }  { xin_ce0 mem_ce 1 1 }  { xin_we0 mem_we 1 1 }  { xin_d0 mem_din 1 32 } } }
}
set moduleName nondf_kernel_2mm_x0
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {nondf_kernel_2mm_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem_A int 512 regular {axi_master 0}  }
	{ xout int 64 regular  }
	{ xin int 32 regular {array 1024 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem_A", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "xout", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "xin", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 64
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
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
	{ xout sc_in sc_lv 64 signal 1 } 
	{ xin_address0 sc_out sc_lv 10 signal 2 } 
	{ xin_ce0 sc_out sc_logic 1 signal 2 } 
	{ xin_we0 sc_out sc_logic 1 signal 2 } 
	{ xin_d0 sc_out sc_lv 32 signal 2 } 
	{ grp_fu_142_p_din0 sc_out sc_lv 512 signal -1 } 
	{ grp_fu_142_p_din1 sc_out sc_lv 512 signal -1 } 
	{ grp_fu_142_p_dout0 sc_in sc_lv 512 signal -1 } 
	{ grp_fu_142_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_146_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_146_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_146_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_146_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
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
 	{ "name": "xout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "xout", "role": "default" }} , 
 	{ "name": "xin_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "xin", "role": "address0" }} , 
 	{ "name": "xin_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xin", "role": "ce0" }} , 
 	{ "name": "xin_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xin", "role": "we0" }} , 
 	{ "name": "xin_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xin", "role": "d0" }} , 
 	{ "name": "grp_fu_142_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "grp_fu_142_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_142_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "grp_fu_142_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_142_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "grp_fu_142_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_142_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_142_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_146_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_146_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_146_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_146_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_146_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_146_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_146_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_146_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"],
		"CDFG" : "nondf_kernel_2mm_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "469353", "EstimateLatencyMax" : "469353",
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_input_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_output_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_512ns_512ns_512_2_1_U2", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	nondf_kernel_2mm_x0 {
		gmem_A {Type I LastRead 72 FirstWrite -1}
		xout {Type I LastRead 0 FirstWrite -1}
		xin {Type O LastRead -1 FirstWrite 75}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "469353", "Max" : "469353"}
	, {"Name" : "Interval", "Min" : "469353", "Max" : "469353"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem_A { m_axi {  { m_axi_gmem_A_AWVALID VALID 1 1 }  { m_axi_gmem_A_AWREADY READY 0 1 }  { m_axi_gmem_A_AWADDR ADDR 1 64 }  { m_axi_gmem_A_AWID ID 1 1 }  { m_axi_gmem_A_AWLEN LEN 1 32 }  { m_axi_gmem_A_AWSIZE SIZE 1 3 }  { m_axi_gmem_A_AWBURST BURST 1 2 }  { m_axi_gmem_A_AWLOCK LOCK 1 2 }  { m_axi_gmem_A_AWCACHE CACHE 1 4 }  { m_axi_gmem_A_AWPROT PROT 1 3 }  { m_axi_gmem_A_AWQOS QOS 1 4 }  { m_axi_gmem_A_AWREGION REGION 1 4 }  { m_axi_gmem_A_AWUSER USER 1 1 }  { m_axi_gmem_A_WVALID VALID 1 1 }  { m_axi_gmem_A_WREADY READY 0 1 }  { m_axi_gmem_A_WDATA DATA 1 512 }  { m_axi_gmem_A_WSTRB STRB 1 64 }  { m_axi_gmem_A_WLAST LAST 1 1 }  { m_axi_gmem_A_WID ID 1 1 }  { m_axi_gmem_A_WUSER USER 1 1 }  { m_axi_gmem_A_ARVALID VALID 1 1 }  { m_axi_gmem_A_ARREADY READY 0 1 }  { m_axi_gmem_A_ARADDR ADDR 1 64 }  { m_axi_gmem_A_ARID ID 1 1 }  { m_axi_gmem_A_ARLEN LEN 1 32 }  { m_axi_gmem_A_ARSIZE SIZE 1 3 }  { m_axi_gmem_A_ARBURST BURST 1 2 }  { m_axi_gmem_A_ARLOCK LOCK 1 2 }  { m_axi_gmem_A_ARCACHE CACHE 1 4 }  { m_axi_gmem_A_ARPROT PROT 1 3 }  { m_axi_gmem_A_ARQOS QOS 1 4 }  { m_axi_gmem_A_ARREGION REGION 1 4 }  { m_axi_gmem_A_ARUSER USER 1 1 }  { m_axi_gmem_A_RVALID VALID 0 1 }  { m_axi_gmem_A_RREADY READY 1 1 }  { m_axi_gmem_A_RDATA DATA 0 512 }  { m_axi_gmem_A_RLAST LAST 0 1 }  { m_axi_gmem_A_RID ID 0 1 }  { m_axi_gmem_A_RUSER USER 0 1 }  { m_axi_gmem_A_RRESP RESP 0 2 }  { m_axi_gmem_A_BVALID VALID 0 1 }  { m_axi_gmem_A_BREADY READY 1 1 }  { m_axi_gmem_A_BRESP RESP 0 2 }  { m_axi_gmem_A_BID ID 0 1 }  { m_axi_gmem_A_BUSER USER 0 1 } } }
	xout { ap_none {  { xout in_data 0 64 } } }
	xin { ap_memory {  { xin_address0 mem_address 1 10 }  { xin_ce0 mem_ce 1 1 }  { xin_we0 mem_we 1 1 }  { xin_d0 mem_din 1 32 } } }
}
set moduleName nondf_kernel_2mm_x0
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {nondf_kernel_2mm_x0}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem_A int 512 regular {axi_master 0}  }
	{ xout int 64 regular  }
	{ xin int 32 regular {array 1024 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem_A", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "xout", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "xin", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 248
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
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
	{ xout sc_in sc_lv 64 signal 1 } 
	{ xin_address0 sc_out sc_lv 10 signal 2 } 
	{ xin_ce0 sc_out sc_logic 1 signal 2 } 
	{ xin_we0 sc_out sc_logic 1 signal 2 } 
	{ xin_d0 sc_out sc_lv 32 signal 2 } 
	{ grp_fu_142_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_142_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_142_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_142_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_146_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_146_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_146_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_146_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_150_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_150_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_150_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_150_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_154_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_154_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_154_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_154_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_158_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_158_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_158_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_158_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_162_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_162_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_162_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_162_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_166_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_166_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_166_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_166_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_170_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_170_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_170_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_170_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_174_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_174_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_174_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_174_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_178_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_178_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_178_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_178_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_182_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_182_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_182_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_182_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_186_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_186_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_186_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_186_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_190_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_190_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_190_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_190_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_194_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_194_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_194_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_194_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_198_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_198_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_198_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_198_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_202_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_202_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_202_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_202_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_206_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_206_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_206_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_206_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_210_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_210_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_210_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_210_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_214_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_214_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_214_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_214_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_218_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_218_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_218_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_218_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_222_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_222_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_222_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_222_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_226_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_226_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_226_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_226_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_230_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_230_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_230_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_230_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_234_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_234_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_234_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_234_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_238_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_238_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_238_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_238_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_242_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_242_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_242_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_242_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_246_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_246_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_246_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_246_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_250_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_250_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_250_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_250_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_254_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_254_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_254_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_254_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_258_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_258_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_258_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_258_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_262_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_262_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_262_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_262_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_266_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_266_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_266_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_266_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_270_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_270_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_270_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_270_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_274_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_274_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_274_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_274_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_278_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_278_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_278_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_278_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_282_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_282_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_282_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_282_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_286_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_286_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_286_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_286_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_290_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_290_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_290_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_290_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_294_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_294_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_294_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_294_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_298_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_298_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_298_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_298_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_302_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_302_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_302_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_302_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_306_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_306_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_306_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_306_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_310_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_310_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_310_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_310_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_314_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_314_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_314_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_314_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_318_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_318_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_318_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_318_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_322_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_322_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_322_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_322_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_326_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_326_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_326_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_326_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_330_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_330_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_330_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_330_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
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
 	{ "name": "xout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "xout", "role": "default" }} , 
 	{ "name": "xin_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "xin", "role": "address0" }} , 
 	{ "name": "xin_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xin", "role": "ce0" }} , 
 	{ "name": "xin_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xin", "role": "we0" }} , 
 	{ "name": "xin_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xin", "role": "d0" }} , 
 	{ "name": "grp_fu_142_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_142_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_142_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_142_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_142_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_142_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_142_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_142_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_146_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_146_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_146_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_146_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_146_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_146_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_146_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_146_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_150_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_150_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_150_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_150_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_150_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_150_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_150_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_150_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_154_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_154_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_154_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_154_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_154_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_154_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_154_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_154_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_158_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_158_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_158_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_158_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_158_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_158_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_158_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_158_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_162_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_162_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_162_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_162_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_162_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_162_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_162_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_162_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_166_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_166_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_166_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_166_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_166_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_166_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_166_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_166_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_170_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_170_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_170_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_170_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_170_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_170_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_170_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_170_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_174_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_174_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_174_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_174_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_174_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_174_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_174_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_174_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_178_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_178_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_178_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_178_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_178_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_178_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_178_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_178_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_182_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_182_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_182_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_182_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_182_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_182_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_182_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_182_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_186_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_186_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_186_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_186_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_186_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_186_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_186_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_186_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_190_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_190_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_190_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_190_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_190_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_190_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_190_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_190_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_194_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_194_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_194_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_194_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_194_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_194_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_194_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_194_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_198_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_198_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_198_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_198_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_198_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_198_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_198_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_198_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_202_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_202_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_202_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_202_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_202_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_202_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_202_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_202_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_206_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_206_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_206_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_206_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_206_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_206_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_206_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_206_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_210_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_210_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_210_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_210_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_210_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_210_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_210_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_210_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_214_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_214_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_214_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_214_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_214_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_214_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_214_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_214_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_218_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_218_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_218_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_218_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_218_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_218_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_218_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_218_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_222_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_222_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_222_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_222_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_222_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_222_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_222_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_222_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_226_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_226_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_226_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_226_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_226_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_226_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_226_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_226_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_230_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_230_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_230_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_230_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_230_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_230_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_230_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_230_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_234_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_234_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_234_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_234_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_234_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_234_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_234_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_234_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_238_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_238_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_238_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_238_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_238_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_238_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_238_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_238_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_242_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_242_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_242_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_242_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_242_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_242_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_242_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_242_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_246_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_246_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_246_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_246_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_246_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_246_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_246_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_246_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_250_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_250_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_250_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_250_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_250_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_250_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_250_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_250_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_254_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_254_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_254_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_254_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_254_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_254_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_254_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_254_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_258_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_258_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_258_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_258_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_258_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_258_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_258_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_258_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_262_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_262_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_262_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_262_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_262_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_262_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_262_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_262_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_266_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_266_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_266_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_266_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_266_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_266_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_266_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_266_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_270_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_270_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_270_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_270_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_270_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_270_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_270_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_270_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_274_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_274_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_274_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_274_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_274_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_274_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_274_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_274_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_278_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_278_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_278_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_278_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_278_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_278_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_278_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_278_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_282_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_282_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_282_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_282_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_282_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_282_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_282_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_282_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_286_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_286_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_286_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_286_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_286_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_286_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_286_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_286_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_290_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_290_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_290_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_290_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_290_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_290_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_290_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_290_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_294_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_294_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_294_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_294_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_294_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_294_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_294_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_294_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_298_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_298_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_298_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_298_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_298_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_298_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_298_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_298_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_302_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_302_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_302_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_302_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_302_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_302_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_302_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_302_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_306_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_306_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_306_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_306_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_306_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_306_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_306_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_306_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_310_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_310_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_310_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_310_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_310_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_310_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_310_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_310_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_314_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_314_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_314_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_314_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_314_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_314_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_314_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_314_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_318_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_318_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_318_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_318_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_318_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_318_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_318_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_318_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_322_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_322_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_322_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_322_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_322_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_322_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_322_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_322_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_326_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_326_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_326_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_326_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_326_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_326_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_326_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_326_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_330_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_330_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_330_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_330_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_330_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_330_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_330_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_330_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98"],
		"CDFG" : "nondf_kernel_2mm_x0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33161", "EstimateLatencyMax" : "33161",
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_V_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_0_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_1_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_2_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_3_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_4_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_5_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_6_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_7_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_8_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_9_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_10_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_11_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_12_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_13_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_14_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_15_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_16_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_17_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_18_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_19_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_20_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_21_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_22_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_23_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_24_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_25_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_26_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_27_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_28_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_29_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_30_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_V_31_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_0_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_1_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_2_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_3_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_4_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_5_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_6_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_7_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_8_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_9_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_10_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_11_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_12_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_13_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_14_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_15_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_16_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_17_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_18_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_19_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_20_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_21_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_22_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_23_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_24_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_25_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_26_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_27_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_28_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_29_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_30_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_V_31_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_0_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_1_U", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_2_U", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_3_U", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_4_U", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_5_U", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_6_U", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_7_U", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_8_U", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_9_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_10_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_11_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_12_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_13_U", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_14_U", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_V_15_U", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_input_V_U", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_output_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	nondf_kernel_2mm_x0 {
		gmem_A {Type I LastRead 72 FirstWrite -1}
		xout {Type I LastRead 0 FirstWrite -1}
		xin {Type O LastRead -1 FirstWrite 75}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "33161", "Max" : "33161"}
	, {"Name" : "Interval", "Min" : "33161", "Max" : "33161"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem_A { m_axi {  { m_axi_gmem_A_AWVALID VALID 1 1 }  { m_axi_gmem_A_AWREADY READY 0 1 }  { m_axi_gmem_A_AWADDR ADDR 1 64 }  { m_axi_gmem_A_AWID ID 1 1 }  { m_axi_gmem_A_AWLEN LEN 1 32 }  { m_axi_gmem_A_AWSIZE SIZE 1 3 }  { m_axi_gmem_A_AWBURST BURST 1 2 }  { m_axi_gmem_A_AWLOCK LOCK 1 2 }  { m_axi_gmem_A_AWCACHE CACHE 1 4 }  { m_axi_gmem_A_AWPROT PROT 1 3 }  { m_axi_gmem_A_AWQOS QOS 1 4 }  { m_axi_gmem_A_AWREGION REGION 1 4 }  { m_axi_gmem_A_AWUSER USER 1 1 }  { m_axi_gmem_A_WVALID VALID 1 1 }  { m_axi_gmem_A_WREADY READY 0 1 }  { m_axi_gmem_A_WDATA DATA 1 512 }  { m_axi_gmem_A_WSTRB STRB 1 64 }  { m_axi_gmem_A_WLAST LAST 1 1 }  { m_axi_gmem_A_WID ID 1 1 }  { m_axi_gmem_A_WUSER USER 1 1 }  { m_axi_gmem_A_ARVALID VALID 1 1 }  { m_axi_gmem_A_ARREADY READY 0 1 }  { m_axi_gmem_A_ARADDR ADDR 1 64 }  { m_axi_gmem_A_ARID ID 1 1 }  { m_axi_gmem_A_ARLEN LEN 1 32 }  { m_axi_gmem_A_ARSIZE SIZE 1 3 }  { m_axi_gmem_A_ARBURST BURST 1 2 }  { m_axi_gmem_A_ARLOCK LOCK 1 2 }  { m_axi_gmem_A_ARCACHE CACHE 1 4 }  { m_axi_gmem_A_ARPROT PROT 1 3 }  { m_axi_gmem_A_ARQOS QOS 1 4 }  { m_axi_gmem_A_ARREGION REGION 1 4 }  { m_axi_gmem_A_ARUSER USER 1 1 }  { m_axi_gmem_A_RVALID VALID 0 1 }  { m_axi_gmem_A_RREADY READY 1 1 }  { m_axi_gmem_A_RDATA DATA 0 512 }  { m_axi_gmem_A_RLAST LAST 0 1 }  { m_axi_gmem_A_RID ID 0 1 }  { m_axi_gmem_A_RUSER USER 0 1 }  { m_axi_gmem_A_RRESP RESP 0 2 }  { m_axi_gmem_A_BVALID VALID 0 1 }  { m_axi_gmem_A_BREADY READY 1 1 }  { m_axi_gmem_A_BRESP RESP 0 2 }  { m_axi_gmem_A_BID ID 0 1 }  { m_axi_gmem_A_BUSER USER 0 1 } } }
	xout { ap_none {  { xout in_data 0 64 } } }
	xin { ap_memory {  { xin_address0 mem_address 1 10 }  { xin_ce0 mem_ce 1 1 }  { xin_we0 mem_we 1 1 }  { xin_d0 mem_din 1 32 } } }
}
