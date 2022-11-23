// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module top_A_IO_L3_in_x0 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        m_axi_gmem_A_AWVALID,
        m_axi_gmem_A_AWREADY,
        m_axi_gmem_A_AWADDR,
        m_axi_gmem_A_AWID,
        m_axi_gmem_A_AWLEN,
        m_axi_gmem_A_AWSIZE,
        m_axi_gmem_A_AWBURST,
        m_axi_gmem_A_AWLOCK,
        m_axi_gmem_A_AWCACHE,
        m_axi_gmem_A_AWPROT,
        m_axi_gmem_A_AWQOS,
        m_axi_gmem_A_AWREGION,
        m_axi_gmem_A_AWUSER,
        m_axi_gmem_A_WVALID,
        m_axi_gmem_A_WREADY,
        m_axi_gmem_A_WDATA,
        m_axi_gmem_A_WSTRB,
        m_axi_gmem_A_WLAST,
        m_axi_gmem_A_WID,
        m_axi_gmem_A_WUSER,
        m_axi_gmem_A_ARVALID,
        m_axi_gmem_A_ARREADY,
        m_axi_gmem_A_ARADDR,
        m_axi_gmem_A_ARID,
        m_axi_gmem_A_ARLEN,
        m_axi_gmem_A_ARSIZE,
        m_axi_gmem_A_ARBURST,
        m_axi_gmem_A_ARLOCK,
        m_axi_gmem_A_ARCACHE,
        m_axi_gmem_A_ARPROT,
        m_axi_gmem_A_ARQOS,
        m_axi_gmem_A_ARREGION,
        m_axi_gmem_A_ARUSER,
        m_axi_gmem_A_RVALID,
        m_axi_gmem_A_RREADY,
        m_axi_gmem_A_RDATA,
        m_axi_gmem_A_RLAST,
        m_axi_gmem_A_RID,
        m_axi_gmem_A_RUSER,
        m_axi_gmem_A_RRESP,
        m_axi_gmem_A_BVALID,
        m_axi_gmem_A_BREADY,
        m_axi_gmem_A_BRESP,
        m_axi_gmem_A_BID,
        m_axi_gmem_A_BUSER,
        fifo_A_local_out_din,
        fifo_A_local_out_full_n,
        fifo_A_local_out_write,
        A_dout,
        A_empty_n,
        A_read
);

parameter    ap_ST_fsm_state1 = 74'd1;
parameter    ap_ST_fsm_state2 = 74'd2;
parameter    ap_ST_fsm_state3 = 74'd4;
parameter    ap_ST_fsm_state4 = 74'd8;
parameter    ap_ST_fsm_state5 = 74'd16;
parameter    ap_ST_fsm_state6 = 74'd32;
parameter    ap_ST_fsm_state7 = 74'd64;
parameter    ap_ST_fsm_state8 = 74'd128;
parameter    ap_ST_fsm_state9 = 74'd256;
parameter    ap_ST_fsm_state10 = 74'd512;
parameter    ap_ST_fsm_state11 = 74'd1024;
parameter    ap_ST_fsm_state12 = 74'd2048;
parameter    ap_ST_fsm_state13 = 74'd4096;
parameter    ap_ST_fsm_state14 = 74'd8192;
parameter    ap_ST_fsm_state15 = 74'd16384;
parameter    ap_ST_fsm_state16 = 74'd32768;
parameter    ap_ST_fsm_state17 = 74'd65536;
parameter    ap_ST_fsm_state18 = 74'd131072;
parameter    ap_ST_fsm_state19 = 74'd262144;
parameter    ap_ST_fsm_state20 = 74'd524288;
parameter    ap_ST_fsm_state21 = 74'd1048576;
parameter    ap_ST_fsm_state22 = 74'd2097152;
parameter    ap_ST_fsm_state23 = 74'd4194304;
parameter    ap_ST_fsm_state24 = 74'd8388608;
parameter    ap_ST_fsm_state25 = 74'd16777216;
parameter    ap_ST_fsm_state26 = 74'd33554432;
parameter    ap_ST_fsm_state27 = 74'd67108864;
parameter    ap_ST_fsm_state28 = 74'd134217728;
parameter    ap_ST_fsm_state29 = 74'd268435456;
parameter    ap_ST_fsm_state30 = 74'd536870912;
parameter    ap_ST_fsm_state31 = 74'd1073741824;
parameter    ap_ST_fsm_state32 = 74'd2147483648;
parameter    ap_ST_fsm_state33 = 74'd4294967296;
parameter    ap_ST_fsm_state34 = 74'd8589934592;
parameter    ap_ST_fsm_state35 = 74'd17179869184;
parameter    ap_ST_fsm_state36 = 74'd34359738368;
parameter    ap_ST_fsm_state37 = 74'd68719476736;
parameter    ap_ST_fsm_state38 = 74'd137438953472;
parameter    ap_ST_fsm_state39 = 74'd274877906944;
parameter    ap_ST_fsm_state40 = 74'd549755813888;
parameter    ap_ST_fsm_state41 = 74'd1099511627776;
parameter    ap_ST_fsm_state42 = 74'd2199023255552;
parameter    ap_ST_fsm_state43 = 74'd4398046511104;
parameter    ap_ST_fsm_state44 = 74'd8796093022208;
parameter    ap_ST_fsm_state45 = 74'd17592186044416;
parameter    ap_ST_fsm_state46 = 74'd35184372088832;
parameter    ap_ST_fsm_state47 = 74'd70368744177664;
parameter    ap_ST_fsm_state48 = 74'd140737488355328;
parameter    ap_ST_fsm_state49 = 74'd281474976710656;
parameter    ap_ST_fsm_state50 = 74'd562949953421312;
parameter    ap_ST_fsm_state51 = 74'd1125899906842624;
parameter    ap_ST_fsm_state52 = 74'd2251799813685248;
parameter    ap_ST_fsm_state53 = 74'd4503599627370496;
parameter    ap_ST_fsm_state54 = 74'd9007199254740992;
parameter    ap_ST_fsm_state55 = 74'd18014398509481984;
parameter    ap_ST_fsm_state56 = 74'd36028797018963968;
parameter    ap_ST_fsm_state57 = 74'd72057594037927936;
parameter    ap_ST_fsm_state58 = 74'd144115188075855872;
parameter    ap_ST_fsm_state59 = 74'd288230376151711744;
parameter    ap_ST_fsm_state60 = 74'd576460752303423488;
parameter    ap_ST_fsm_state61 = 74'd1152921504606846976;
parameter    ap_ST_fsm_state62 = 74'd2305843009213693952;
parameter    ap_ST_fsm_state63 = 74'd4611686018427387904;
parameter    ap_ST_fsm_state64 = 74'd9223372036854775808;
parameter    ap_ST_fsm_state65 = 74'd18446744073709551616;
parameter    ap_ST_fsm_state66 = 74'd36893488147419103232;
parameter    ap_ST_fsm_state67 = 74'd73786976294838206464;
parameter    ap_ST_fsm_state68 = 74'd147573952589676412928;
parameter    ap_ST_fsm_state69 = 74'd295147905179352825856;
parameter    ap_ST_fsm_state70 = 74'd590295810358705651712;
parameter    ap_ST_fsm_state71 = 74'd1180591620717411303424;
parameter    ap_ST_fsm_pp0_stage0 = 74'd2361183241434822606848;
parameter    ap_ST_fsm_pp0_stage1 = 74'd4722366482869645213696;
parameter    ap_ST_fsm_state76 = 74'd9444732965739290427392;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   m_axi_gmem_A_AWVALID;
input   m_axi_gmem_A_AWREADY;
output  [63:0] m_axi_gmem_A_AWADDR;
output  [0:0] m_axi_gmem_A_AWID;
output  [31:0] m_axi_gmem_A_AWLEN;
output  [2:0] m_axi_gmem_A_AWSIZE;
output  [1:0] m_axi_gmem_A_AWBURST;
output  [1:0] m_axi_gmem_A_AWLOCK;
output  [3:0] m_axi_gmem_A_AWCACHE;
output  [2:0] m_axi_gmem_A_AWPROT;
output  [3:0] m_axi_gmem_A_AWQOS;
output  [3:0] m_axi_gmem_A_AWREGION;
output  [0:0] m_axi_gmem_A_AWUSER;
output   m_axi_gmem_A_WVALID;
input   m_axi_gmem_A_WREADY;
output  [511:0] m_axi_gmem_A_WDATA;
output  [63:0] m_axi_gmem_A_WSTRB;
output   m_axi_gmem_A_WLAST;
output  [0:0] m_axi_gmem_A_WID;
output  [0:0] m_axi_gmem_A_WUSER;
output   m_axi_gmem_A_ARVALID;
input   m_axi_gmem_A_ARREADY;
output  [63:0] m_axi_gmem_A_ARADDR;
output  [0:0] m_axi_gmem_A_ARID;
output  [31:0] m_axi_gmem_A_ARLEN;
output  [2:0] m_axi_gmem_A_ARSIZE;
output  [1:0] m_axi_gmem_A_ARBURST;
output  [1:0] m_axi_gmem_A_ARLOCK;
output  [3:0] m_axi_gmem_A_ARCACHE;
output  [2:0] m_axi_gmem_A_ARPROT;
output  [3:0] m_axi_gmem_A_ARQOS;
output  [3:0] m_axi_gmem_A_ARREGION;
output  [0:0] m_axi_gmem_A_ARUSER;
input   m_axi_gmem_A_RVALID;
output   m_axi_gmem_A_RREADY;
input  [511:0] m_axi_gmem_A_RDATA;
input   m_axi_gmem_A_RLAST;
input  [0:0] m_axi_gmem_A_RID;
input  [0:0] m_axi_gmem_A_RUSER;
input  [1:0] m_axi_gmem_A_RRESP;
input   m_axi_gmem_A_BVALID;
output   m_axi_gmem_A_BREADY;
input  [1:0] m_axi_gmem_A_BRESP;
input  [0:0] m_axi_gmem_A_BID;
input  [0:0] m_axi_gmem_A_BUSER;
output  [255:0] fifo_A_local_out_din;
input   fifo_A_local_out_full_n;
output   fifo_A_local_out_write;
input  [63:0] A_dout;
input   A_empty_n;
output   A_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg m_axi_gmem_A_ARVALID;
reg m_axi_gmem_A_RREADY;
reg[255:0] fifo_A_local_out_din;
reg fifo_A_local_out_write;
reg A_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [73:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    gmem_A_blk_n_AR;
wire    ap_CS_fsm_state2;
reg    gmem_A_blk_n_R;
wire    ap_CS_fsm_pp0_stage1;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage1;
reg   [0:0] icmp_ln878_reg_168;
reg    fifo_A_local_out_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln878_reg_168_pp0_iter1_reg;
reg    A_blk_n;
reg   [10:0] i_V_reg_95;
reg   [57:0] trunc_ln_reg_152;
wire   [10:0] i_V_6_fu_126_p2;
reg   [10:0] i_V_6_reg_163;
wire    ap_block_state72_pp0_stage0_iter0;
reg    ap_block_state74_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln878_fu_132_p2;
wire   [255:0] trunc_ln674_fu_138_p1;
reg   [255:0] trunc_ln674_reg_172;
reg    ap_block_state73_pp0_stage1_iter0;
reg    ap_block_state75_pp0_stage1_iter1;
reg    ap_block_pp0_stage1_11001;
reg   [255:0] p_Result_1_i_reg_177;
wire    ap_CS_fsm_state71;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state72;
reg    ap_block_pp0_stage1_subdone;
reg   [10:0] ap_phi_mux_i_V_phi_fu_99_p4;
wire  signed [63:0] sext_ln68_fu_116_p1;
reg    ap_block_state1;
reg    ap_block_pp0_stage0_01001;
reg    ap_block_pp0_stage1_01001;
wire    ap_CS_fsm_state76;
reg   [73:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_763;
reg    ap_condition_767;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 74'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state76)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp0_exit_iter0_state72) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state71)) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if ((1'b1 == ap_CS_fsm_state71)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln878_reg_168 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_V_reg_95 <= i_V_6_reg_163;
    end else if ((1'b1 == ap_CS_fsm_state71)) begin
        i_V_reg_95 <= 11'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        i_V_6_reg_163 <= i_V_6_fu_126_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln878_reg_168 <= icmp_ln878_fu_132_p2;
        icmp_ln878_reg_168_pp0_iter1_reg <= icmp_ln878_reg_168;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln878_reg_168 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        p_Result_1_i_reg_177 <= {{m_axi_gmem_A_RDATA[511:256]}};
        trunc_ln674_reg_172 <= trunc_ln674_fu_138_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        trunc_ln_reg_152 <= {{A_dout[63:6]}};
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        A_blk_n = A_empty_n;
    end else begin
        A_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0) | (1'b0 == A_empty_n)) & (1'b1 == ap_CS_fsm_state1))) begin
        A_read = 1'b1;
    end else begin
        A_read = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln878_fu_132_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state72 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state72 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state76)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln878_reg_168 == 1'd0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_i_V_phi_fu_99_p4 = i_V_6_reg_163;
    end else begin
        ap_phi_mux_i_V_phi_fu_99_p4 = i_V_reg_95;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state76)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln878_reg_168_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln878_reg_168 == 1'd0) & (1'b0 == ap_block_pp0_stage0)))) begin
        fifo_A_local_out_blk_n = fifo_A_local_out_full_n;
    end else begin
        fifo_A_local_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_767)) begin
            fifo_A_local_out_din = p_Result_1_i_reg_177;
        end else if ((1'b1 == ap_condition_763)) begin
            fifo_A_local_out_din = trunc_ln674_reg_172;
        end else begin
            fifo_A_local_out_din = 'bx;
        end
    end else begin
        fifo_A_local_out_din = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln878_reg_168_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln878_reg_168 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        fifo_A_local_out_write = 1'b1;
    end else begin
        fifo_A_local_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        gmem_A_blk_n_AR = m_axi_gmem_A_ARREADY;
    end else begin
        gmem_A_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln878_reg_168 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        gmem_A_blk_n_R = m_axi_gmem_A_RVALID;
    end else begin
        gmem_A_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (m_axi_gmem_A_ARREADY == 1'b1))) begin
        m_axi_gmem_A_ARVALID = 1'b1;
    end else begin
        m_axi_gmem_A_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln878_reg_168 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        m_axi_gmem_A_RREADY = 1'b1;
    end else begin
        m_axi_gmem_A_RREADY = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0) | (1'b0 == A_empty_n)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (m_axi_gmem_A_ARREADY == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state30;
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state31;
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        ap_ST_fsm_state32 : begin
            ap_NS_fsm = ap_ST_fsm_state33;
        end
        ap_ST_fsm_state33 : begin
            ap_NS_fsm = ap_ST_fsm_state34;
        end
        ap_ST_fsm_state34 : begin
            ap_NS_fsm = ap_ST_fsm_state35;
        end
        ap_ST_fsm_state35 : begin
            ap_NS_fsm = ap_ST_fsm_state36;
        end
        ap_ST_fsm_state36 : begin
            ap_NS_fsm = ap_ST_fsm_state37;
        end
        ap_ST_fsm_state37 : begin
            ap_NS_fsm = ap_ST_fsm_state38;
        end
        ap_ST_fsm_state38 : begin
            ap_NS_fsm = ap_ST_fsm_state39;
        end
        ap_ST_fsm_state39 : begin
            ap_NS_fsm = ap_ST_fsm_state40;
        end
        ap_ST_fsm_state40 : begin
            ap_NS_fsm = ap_ST_fsm_state41;
        end
        ap_ST_fsm_state41 : begin
            ap_NS_fsm = ap_ST_fsm_state42;
        end
        ap_ST_fsm_state42 : begin
            ap_NS_fsm = ap_ST_fsm_state43;
        end
        ap_ST_fsm_state43 : begin
            ap_NS_fsm = ap_ST_fsm_state44;
        end
        ap_ST_fsm_state44 : begin
            ap_NS_fsm = ap_ST_fsm_state45;
        end
        ap_ST_fsm_state45 : begin
            ap_NS_fsm = ap_ST_fsm_state46;
        end
        ap_ST_fsm_state46 : begin
            ap_NS_fsm = ap_ST_fsm_state47;
        end
        ap_ST_fsm_state47 : begin
            ap_NS_fsm = ap_ST_fsm_state48;
        end
        ap_ST_fsm_state48 : begin
            ap_NS_fsm = ap_ST_fsm_state49;
        end
        ap_ST_fsm_state49 : begin
            ap_NS_fsm = ap_ST_fsm_state50;
        end
        ap_ST_fsm_state50 : begin
            ap_NS_fsm = ap_ST_fsm_state51;
        end
        ap_ST_fsm_state51 : begin
            ap_NS_fsm = ap_ST_fsm_state52;
        end
        ap_ST_fsm_state52 : begin
            ap_NS_fsm = ap_ST_fsm_state53;
        end
        ap_ST_fsm_state53 : begin
            ap_NS_fsm = ap_ST_fsm_state54;
        end
        ap_ST_fsm_state54 : begin
            ap_NS_fsm = ap_ST_fsm_state55;
        end
        ap_ST_fsm_state55 : begin
            ap_NS_fsm = ap_ST_fsm_state56;
        end
        ap_ST_fsm_state56 : begin
            ap_NS_fsm = ap_ST_fsm_state57;
        end
        ap_ST_fsm_state57 : begin
            ap_NS_fsm = ap_ST_fsm_state58;
        end
        ap_ST_fsm_state58 : begin
            ap_NS_fsm = ap_ST_fsm_state59;
        end
        ap_ST_fsm_state59 : begin
            ap_NS_fsm = ap_ST_fsm_state60;
        end
        ap_ST_fsm_state60 : begin
            ap_NS_fsm = ap_ST_fsm_state61;
        end
        ap_ST_fsm_state61 : begin
            ap_NS_fsm = ap_ST_fsm_state62;
        end
        ap_ST_fsm_state62 : begin
            ap_NS_fsm = ap_ST_fsm_state63;
        end
        ap_ST_fsm_state63 : begin
            ap_NS_fsm = ap_ST_fsm_state64;
        end
        ap_ST_fsm_state64 : begin
            ap_NS_fsm = ap_ST_fsm_state65;
        end
        ap_ST_fsm_state65 : begin
            ap_NS_fsm = ap_ST_fsm_state66;
        end
        ap_ST_fsm_state66 : begin
            ap_NS_fsm = ap_ST_fsm_state67;
        end
        ap_ST_fsm_state67 : begin
            ap_NS_fsm = ap_ST_fsm_state68;
        end
        ap_ST_fsm_state68 : begin
            ap_NS_fsm = ap_ST_fsm_state69;
        end
        ap_ST_fsm_state69 : begin
            ap_NS_fsm = ap_ST_fsm_state70;
        end
        ap_ST_fsm_state70 : begin
            ap_NS_fsm = ap_ST_fsm_state71;
        end
        ap_ST_fsm_state71 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((icmp_ln878_fu_132_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if (((icmp_ln878_fu_132_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state76;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((~((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0)) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state76;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_state76 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd71];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd72];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state71 = ap_CS_fsm[32'd70];

assign ap_CS_fsm_state76 = ap_CS_fsm[32'd73];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln878_reg_168 == 1'd0) & (fifo_A_local_out_full_n == 1'b0));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln878_reg_168 == 1'd0) & (fifo_A_local_out_full_n == 1'b0));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln878_reg_168 == 1'd0) & (fifo_A_local_out_full_n == 1'b0));
end

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage1_01001 = (((icmp_ln878_reg_168_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (fifo_A_local_out_full_n == 1'b0)) | ((icmp_ln878_reg_168 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (m_axi_gmem_A_RVALID == 1'b0)));
end

always @ (*) begin
    ap_block_pp0_stage1_11001 = (((icmp_ln878_reg_168_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (fifo_A_local_out_full_n == 1'b0)) | ((icmp_ln878_reg_168 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (m_axi_gmem_A_RVALID == 1'b0)));
end

always @ (*) begin
    ap_block_pp0_stage1_subdone = (((icmp_ln878_reg_168_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (fifo_A_local_out_full_n == 1'b0)) | ((icmp_ln878_reg_168 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (m_axi_gmem_A_RVALID == 1'b0)));
end

always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0) | (1'b0 == A_empty_n));
end

assign ap_block_state72_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state73_pp0_stage1_iter0 = ((icmp_ln878_reg_168 == 1'd0) & (m_axi_gmem_A_RVALID == 1'b0));
end

always @ (*) begin
    ap_block_state74_pp0_stage0_iter1 = ((icmp_ln878_reg_168 == 1'd0) & (fifo_A_local_out_full_n == 1'b0));
end

always @ (*) begin
    ap_block_state75_pp0_stage1_iter1 = ((icmp_ln878_reg_168_pp0_iter1_reg == 1'd0) & (fifo_A_local_out_full_n == 1'b0));
end

always @ (*) begin
    ap_condition_763 = ((1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln878_reg_168 == 1'd0) & (1'b0 == ap_block_pp0_stage0_01001));
end

always @ (*) begin
    ap_condition_767 = ((icmp_ln878_reg_168_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_01001));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign i_V_6_fu_126_p2 = (ap_phi_mux_i_V_phi_fu_99_p4 + 11'd1);

assign icmp_ln878_fu_132_p2 = ((ap_phi_mux_i_V_phi_fu_99_p4 == 11'd1024) ? 1'b1 : 1'b0);

assign m_axi_gmem_A_ARADDR = sext_ln68_fu_116_p1;

assign m_axi_gmem_A_ARBURST = 2'd0;

assign m_axi_gmem_A_ARCACHE = 4'd0;

assign m_axi_gmem_A_ARID = 1'd0;

assign m_axi_gmem_A_ARLEN = 32'd1024;

assign m_axi_gmem_A_ARLOCK = 2'd0;

assign m_axi_gmem_A_ARPROT = 3'd0;

assign m_axi_gmem_A_ARQOS = 4'd0;

assign m_axi_gmem_A_ARREGION = 4'd0;

assign m_axi_gmem_A_ARSIZE = 3'd0;

assign m_axi_gmem_A_ARUSER = 1'd0;

assign m_axi_gmem_A_AWADDR = 64'd0;

assign m_axi_gmem_A_AWBURST = 2'd0;

assign m_axi_gmem_A_AWCACHE = 4'd0;

assign m_axi_gmem_A_AWID = 1'd0;

assign m_axi_gmem_A_AWLEN = 32'd0;

assign m_axi_gmem_A_AWLOCK = 2'd0;

assign m_axi_gmem_A_AWPROT = 3'd0;

assign m_axi_gmem_A_AWQOS = 4'd0;

assign m_axi_gmem_A_AWREGION = 4'd0;

assign m_axi_gmem_A_AWSIZE = 3'd0;

assign m_axi_gmem_A_AWUSER = 1'd0;

assign m_axi_gmem_A_AWVALID = 1'b0;

assign m_axi_gmem_A_BREADY = 1'b0;

assign m_axi_gmem_A_WDATA = 512'd0;

assign m_axi_gmem_A_WID = 1'd0;

assign m_axi_gmem_A_WLAST = 1'b0;

assign m_axi_gmem_A_WSTRB = 64'd0;

assign m_axi_gmem_A_WUSER = 1'd0;

assign m_axi_gmem_A_WVALID = 1'b0;

assign sext_ln68_fu_116_p1 = $signed(trunc_ln_reg_152);

assign trunc_ln674_fu_138_p1 = m_axi_gmem_A_RDATA[255:0];

endmodule //top_A_IO_L3_in_x0
