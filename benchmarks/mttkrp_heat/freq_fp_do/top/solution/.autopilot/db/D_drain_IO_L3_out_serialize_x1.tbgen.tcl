set moduleName D_drain_IO_L3_out_serialize_x1
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
set C_modelName {D_drain_IO_L3_out_serialize_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem_D int 512 regular {axi_master 1}  }
	{ fifo_D_drain_local_in int 128 regular {fifo 0 volatile }  }
	{ D int 64 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem_D", "interface" : "axi_master", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_D_drain_local_in", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "D", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 58
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem_D_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_D_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_D_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_D_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_D_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_D_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_D_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_D_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_D_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_D_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_D_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_D_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_D_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_D_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_D_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_D_WDATA sc_out sc_lv 512 signal 0 } 
	{ m_axi_gmem_D_WSTRB sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_D_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_D_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_D_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_D_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_D_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_D_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_D_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_D_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_D_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_D_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_D_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_D_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_D_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_D_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_D_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_D_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_D_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_D_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_D_RDATA sc_in sc_lv 512 signal 0 } 
	{ m_axi_gmem_D_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_D_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_D_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_D_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_D_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_D_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_D_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_D_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_D_BUSER sc_in sc_lv 1 signal 0 } 
	{ fifo_D_drain_local_in_dout sc_in sc_lv 128 signal 1 } 
	{ fifo_D_drain_local_in_empty_n sc_in sc_logic 1 signal 1 } 
	{ fifo_D_drain_local_in_read sc_out sc_logic 1 signal 1 } 
	{ D_dout sc_in sc_lv 64 signal 2 } 
	{ D_empty_n sc_in sc_logic 1 signal 2 } 
	{ D_read sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
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
 	{ "name": "fifo_D_drain_local_in_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_D_drain_local_in", "role": "dout" }} , 
 	{ "name": "fifo_D_drain_local_in_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_local_in", "role": "empty_n" }} , 
 	{ "name": "fifo_D_drain_local_in_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_local_in", "role": "read" }} , 
 	{ "name": "D_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "D", "role": "dout" }} , 
 	{ "name": "D_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D", "role": "empty_n" }} , 
 	{ "name": "D_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
			{"Name" : "fifo_D_drain_local_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_local_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "D", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "29", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "D_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mem_data_split_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	D_drain_IO_L3_out_serialize_x1 {
		gmem_D {Type O LastRead 3 FirstWrite 6}
		fifo_D_drain_local_in {Type I LastRead 4 FirstWrite -1}
		D {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13382", "Max" : "13382"}
	, {"Name" : "Interval", "Min" : "13382", "Max" : "13382"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem_D { m_axi {  { m_axi_gmem_D_AWVALID VALID 1 1 }  { m_axi_gmem_D_AWREADY READY 0 1 }  { m_axi_gmem_D_AWADDR ADDR 1 64 }  { m_axi_gmem_D_AWID ID 1 1 }  { m_axi_gmem_D_AWLEN LEN 1 32 }  { m_axi_gmem_D_AWSIZE SIZE 1 3 }  { m_axi_gmem_D_AWBURST BURST 1 2 }  { m_axi_gmem_D_AWLOCK LOCK 1 2 }  { m_axi_gmem_D_AWCACHE CACHE 1 4 }  { m_axi_gmem_D_AWPROT PROT 1 3 }  { m_axi_gmem_D_AWQOS QOS 1 4 }  { m_axi_gmem_D_AWREGION REGION 1 4 }  { m_axi_gmem_D_AWUSER USER 1 1 }  { m_axi_gmem_D_WVALID VALID 1 1 }  { m_axi_gmem_D_WREADY READY 0 1 }  { m_axi_gmem_D_WDATA DATA 1 512 }  { m_axi_gmem_D_WSTRB STRB 1 64 }  { m_axi_gmem_D_WLAST LAST 1 1 }  { m_axi_gmem_D_WID ID 1 1 }  { m_axi_gmem_D_WUSER USER 1 1 }  { m_axi_gmem_D_ARVALID VALID 1 1 }  { m_axi_gmem_D_ARREADY READY 0 1 }  { m_axi_gmem_D_ARADDR ADDR 1 64 }  { m_axi_gmem_D_ARID ID 1 1 }  { m_axi_gmem_D_ARLEN LEN 1 32 }  { m_axi_gmem_D_ARSIZE SIZE 1 3 }  { m_axi_gmem_D_ARBURST BURST 1 2 }  { m_axi_gmem_D_ARLOCK LOCK 1 2 }  { m_axi_gmem_D_ARCACHE CACHE 1 4 }  { m_axi_gmem_D_ARPROT PROT 1 3 }  { m_axi_gmem_D_ARQOS QOS 1 4 }  { m_axi_gmem_D_ARREGION REGION 1 4 }  { m_axi_gmem_D_ARUSER USER 1 1 }  { m_axi_gmem_D_RVALID VALID 0 1 }  { m_axi_gmem_D_RREADY READY 1 1 }  { m_axi_gmem_D_RDATA DATA 0 512 }  { m_axi_gmem_D_RLAST LAST 0 1 }  { m_axi_gmem_D_RID ID 0 1 }  { m_axi_gmem_D_RUSER USER 0 1 }  { m_axi_gmem_D_RRESP RESP 0 2 }  { m_axi_gmem_D_BVALID VALID 0 1 }  { m_axi_gmem_D_BREADY READY 1 1 }  { m_axi_gmem_D_BRESP RESP 0 2 }  { m_axi_gmem_D_BID ID 0 1 }  { m_axi_gmem_D_BUSER USER 0 1 } } }
	fifo_D_drain_local_in { ap_fifo {  { fifo_D_drain_local_in_dout fifo_data 0 128 }  { fifo_D_drain_local_in_empty_n fifo_status 0 1 }  { fifo_D_drain_local_in_read fifo_update 1 1 } } }
	D { ap_fifo {  { D_dout fifo_data 0 64 }  { D_empty_n fifo_status 0 1 }  { D_read fifo_update 1 1 } } }
}
set moduleName D_drain_IO_L3_out_serialize_x1
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
set C_modelName {D_drain_IO_L3_out_serialize_x1}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem_D int 512 regular {axi_master 1}  }
	{ fifo_D_drain_local_in int 128 regular {fifo 0 volatile }  }
	{ D int 64 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem_D", "interface" : "axi_master", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_D_drain_local_in", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "D", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 58
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem_D_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_D_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_D_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_D_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_D_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_D_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_D_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_D_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_D_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_D_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_D_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_D_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_D_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_D_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_D_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_D_WDATA sc_out sc_lv 512 signal 0 } 
	{ m_axi_gmem_D_WSTRB sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_D_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_D_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_D_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_D_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_D_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_D_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_D_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_D_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_D_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_D_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_D_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_D_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_D_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_D_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_D_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_D_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_D_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_D_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_D_RDATA sc_in sc_lv 512 signal 0 } 
	{ m_axi_gmem_D_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_D_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_D_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_D_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_D_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_D_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_D_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_D_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_D_BUSER sc_in sc_lv 1 signal 0 } 
	{ fifo_D_drain_local_in_dout sc_in sc_lv 128 signal 1 } 
	{ fifo_D_drain_local_in_empty_n sc_in sc_logic 1 signal 1 } 
	{ fifo_D_drain_local_in_read sc_out sc_logic 1 signal 1 } 
	{ D_dout sc_in sc_lv 64 signal 2 } 
	{ D_empty_n sc_in sc_logic 1 signal 2 } 
	{ D_read sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
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
 	{ "name": "fifo_D_drain_local_in_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_D_drain_local_in", "role": "dout" }} , 
 	{ "name": "fifo_D_drain_local_in_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_local_in", "role": "empty_n" }} , 
 	{ "name": "fifo_D_drain_local_in_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_D_drain_local_in", "role": "read" }} , 
 	{ "name": "D_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "D", "role": "dout" }} , 
 	{ "name": "D_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D", "role": "empty_n" }} , 
 	{ "name": "D_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
			{"Name" : "fifo_D_drain_local_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fifo_D_drain_local_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "D", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "29", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "D_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	D_drain_IO_L3_out_serialize_x1 {
		gmem_D {Type O LastRead 3 FirstWrite 7}
		fifo_D_drain_local_in {Type I LastRead 6 FirstWrite -1}
		D {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4167", "Max" : "4167"}
	, {"Name" : "Interval", "Min" : "4167", "Max" : "4167"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	gmem_D { m_axi {  { m_axi_gmem_D_AWVALID VALID 1 1 }  { m_axi_gmem_D_AWREADY READY 0 1 }  { m_axi_gmem_D_AWADDR ADDR 1 64 }  { m_axi_gmem_D_AWID ID 1 1 }  { m_axi_gmem_D_AWLEN LEN 1 32 }  { m_axi_gmem_D_AWSIZE SIZE 1 3 }  { m_axi_gmem_D_AWBURST BURST 1 2 }  { m_axi_gmem_D_AWLOCK LOCK 1 2 }  { m_axi_gmem_D_AWCACHE CACHE 1 4 }  { m_axi_gmem_D_AWPROT PROT 1 3 }  { m_axi_gmem_D_AWQOS QOS 1 4 }  { m_axi_gmem_D_AWREGION REGION 1 4 }  { m_axi_gmem_D_AWUSER USER 1 1 }  { m_axi_gmem_D_WVALID VALID 1 1 }  { m_axi_gmem_D_WREADY READY 0 1 }  { m_axi_gmem_D_WDATA DATA 1 512 }  { m_axi_gmem_D_WSTRB STRB 1 64 }  { m_axi_gmem_D_WLAST LAST 1 1 }  { m_axi_gmem_D_WID ID 1 1 }  { m_axi_gmem_D_WUSER USER 1 1 }  { m_axi_gmem_D_ARVALID VALID 1 1 }  { m_axi_gmem_D_ARREADY READY 0 1 }  { m_axi_gmem_D_ARADDR ADDR 1 64 }  { m_axi_gmem_D_ARID ID 1 1 }  { m_axi_gmem_D_ARLEN LEN 1 32 }  { m_axi_gmem_D_ARSIZE SIZE 1 3 }  { m_axi_gmem_D_ARBURST BURST 1 2 }  { m_axi_gmem_D_ARLOCK LOCK 1 2 }  { m_axi_gmem_D_ARCACHE CACHE 1 4 }  { m_axi_gmem_D_ARPROT PROT 1 3 }  { m_axi_gmem_D_ARQOS QOS 1 4 }  { m_axi_gmem_D_ARREGION REGION 1 4 }  { m_axi_gmem_D_ARUSER USER 1 1 }  { m_axi_gmem_D_RVALID VALID 0 1 }  { m_axi_gmem_D_RREADY READY 1 1 }  { m_axi_gmem_D_RDATA DATA 0 512 }  { m_axi_gmem_D_RLAST LAST 0 1 }  { m_axi_gmem_D_RID ID 0 1 }  { m_axi_gmem_D_RUSER USER 0 1 }  { m_axi_gmem_D_RRESP RESP 0 2 }  { m_axi_gmem_D_BVALID VALID 0 1 }  { m_axi_gmem_D_BREADY READY 1 1 }  { m_axi_gmem_D_BRESP RESP 0 2 }  { m_axi_gmem_D_BID ID 0 1 }  { m_axi_gmem_D_BUSER USER 0 1 } } }
	fifo_D_drain_local_in { ap_fifo {  { fifo_D_drain_local_in_dout fifo_data 0 128 }  { fifo_D_drain_local_in_empty_n fifo_status 0 1 }  { fifo_D_drain_local_in_read fifo_update 1 1 } } }
	D { ap_fifo {  { D_dout fifo_data 0 64 }  { D_empty_n fifo_status 0 1 }  { D_read fifo_update 1 1 } } }
}
