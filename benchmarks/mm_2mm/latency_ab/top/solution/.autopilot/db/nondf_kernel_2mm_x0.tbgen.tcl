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
