// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module top_B_IO_L2_in_boundary_x1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        fifo_B_B_IO_L2_in_1_x115_dout,
        fifo_B_B_IO_L2_in_1_x115_empty_n,
        fifo_B_B_IO_L2_in_1_x115_read,
        fifo_B_PE_0_1_x169_din,
        fifo_B_PE_0_1_x169_full_n,
        fifo_B_PE_0_1_x169_write
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_pp0_stage0 = 5'd2;
parameter    ap_ST_fsm_state4 = 5'd4;
parameter    ap_ST_fsm_pp1_stage0 = 5'd8;
parameter    ap_ST_fsm_state8 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [255:0] fifo_B_B_IO_L2_in_1_x115_dout;
input   fifo_B_B_IO_L2_in_1_x115_empty_n;
output   fifo_B_B_IO_L2_in_1_x115_read;
output  [255:0] fifo_B_PE_0_1_x169_din;
input   fifo_B_PE_0_1_x169_full_n;
output   fifo_B_PE_0_1_x169_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg fifo_B_B_IO_L2_in_1_x115_read;
reg fifo_B_PE_0_1_x169_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    fifo_B_B_IO_L2_in_1_x115_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln890_reg_460;
reg    fifo_B_PE_0_1_x169_blk_n;
reg    ap_enable_reg_pp1_iter2;
wire    ap_block_pp1_stage0;
reg   [0:0] icmp_ln890_300_reg_489;
reg   [0:0] icmp_ln890_300_reg_489_pp1_iter1_reg;
reg   [11:0] indvar_flatten_reg_126;
reg   [6:0] c4_V_reg_137;
reg   [5:0] c5_V_3_reg_148;
reg   [15:0] indvar_flatten26_reg_159;
reg   [5:0] c5_V_reg_170;
reg   [11:0] indvar_flatten8_reg_181;
reg   [6:0] c6_V_reg_192;
reg   [4:0] c7_V_reg_203;
wire   [11:0] add_ln890_fu_214_p2;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_state2_pp0_stage0_iter0;
reg    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln890_fu_220_p2;
wire   [6:0] select_ln890_363_fu_246_p3;
reg   [6:0] select_ln890_363_reg_464;
wire   [10:0] add_ln7191_fu_270_p2;
reg   [10:0] add_ln7191_reg_469;
wire   [5:0] add_ln691_405_fu_276_p2;
wire   [15:0] add_ln890_154_fu_286_p2;
wire    ap_CS_fsm_pp1_stage0;
reg    ap_enable_reg_pp1_iter0;
wire    ap_block_state5_pp1_stage0_iter0;
wire    ap_block_state6_pp1_stage0_iter1;
reg    ap_block_state7_pp1_stage0_iter2;
reg    ap_block_pp1_stage0_11001;
wire   [10:0] empty_805_fu_308_p2;
reg   [10:0] empty_805_reg_484;
wire   [0:0] icmp_ln890_300_fu_314_p2;
wire   [5:0] add_ln691_406_fu_320_p2;
reg   [5:0] add_ln691_406_reg_493;
wire   [0:0] icmp_ln890_301_fu_326_p2;
reg   [0:0] icmp_ln890_301_reg_498;
wire   [5:0] select_ln890_365_fu_340_p3;
reg   [5:0] select_ln890_365_reg_503;
wire   [0:0] and_ln890_fu_360_p2;
reg   [0:0] and_ln890_reg_509;
wire   [5:0] empty_806_fu_372_p1;
reg   [5:0] empty_806_reg_514;
wire   [6:0] select_ln890_368_fu_376_p3;
wire   [4:0] select_ln691_fu_396_p3;
wire   [11:0] select_ln890_369_fu_410_p3;
reg    ap_block_state1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
wire    ap_CS_fsm_state4;
reg    ap_block_pp1_stage0_subdone;
reg    ap_condition_pp1_exit_iter0_state5;
reg    ap_enable_reg_pp1_iter1;
wire   [10:0] local_B_pong_V_address0;
reg    local_B_pong_V_ce0;
wire   [255:0] local_B_pong_V_q0;
wire   [10:0] local_B_pong_V_address1;
reg    local_B_pong_V_ce1;
reg    local_B_pong_V_we1;
reg   [6:0] ap_phi_mux_c4_V_phi_fu_141_p4;
reg   [5:0] ap_phi_mux_c5_V_phi_fu_174_p4;
wire   [63:0] zext_ln7191_1_fu_282_p1;
wire   [63:0] select_ln890_422_cast_fu_450_p1;
reg    ap_block_pp1_stage0_01001;
wire   [0:0] icmp_ln89039_fu_232_p2;
wire   [6:0] add_ln691_fu_226_p2;
wire   [5:0] trunc_ln7191_fu_254_p1;
wire   [5:0] select_ln890_fu_238_p3;
wire   [10:0] tmp_1474_cast_fu_258_p3;
wire   [10:0] zext_ln7191_fu_266_p1;
wire   [5:0] empty_fu_296_p1;
wire   [10:0] tmp_cast_fu_300_p3;
wire   [10:0] zext_ln7195_fu_292_p1;
wire   [0:0] icmp_ln890_302_fu_354_p2;
wire   [0:0] xor_ln890_fu_348_p2;
wire   [6:0] select_ln890_364_fu_332_p3;
wire   [6:0] add_ln691_407_fu_366_p2;
wire   [0:0] or_ln691_fu_390_p2;
wire   [4:0] add_ln691_408_fu_384_p2;
wire   [11:0] add_ln890_153_fu_404_p2;
wire   [10:0] zext_ln890_fu_418_p1;
wire   [10:0] tmp_1475_cast_fu_430_p3;
wire   [10:0] zext_ln7197_fu_421_p1;
wire   [10:0] empty_807_fu_437_p2;
wire   [10:0] select_ln890_366_fu_424_p3;
wire   [10:0] select_ln890_367_fu_443_p3;
wire    ap_CS_fsm_state8;
reg   [4:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_idle_pp1;
wire    ap_enable_pp1;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 5'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp1_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp1_iter0 = 1'b0;
#0 ap_enable_reg_pp1_iter1 = 1'b0;
end

top_B_IO_L2_in_x0_local_B_pong_V #(
    .DataWidth( 256 ),
    .AddressRange( 2048 ),
    .AddressWidth( 11 ))
local_B_pong_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(local_B_pong_V_address0),
    .ce0(local_B_pong_V_ce0),
    .q0(local_B_pong_V_q0),
    .address1(local_B_pong_V_address1),
    .ce1(local_B_pong_V_ce1),
    .we1(local_B_pong_V_we1),
    .d1(fifo_B_B_IO_L2_in_1_x115_dout)
);

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
        end else if ((1'b1 == ap_CS_fsm_state8)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp1_stage0_subdone) & (1'b1 == ap_condition_pp1_exit_iter0_state5) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
            ap_enable_reg_pp1_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state4)) begin
            ap_enable_reg_pp1_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp1_exit_iter0_state5)) begin
                ap_enable_reg_pp1_iter1 <= (1'b1 ^ ap_condition_pp1_exit_iter0_state5);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp1_iter1 <= ap_enable_reg_pp1_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            ap_enable_reg_pp1_iter2 <= ap_enable_reg_pp1_iter1;
        end else if ((1'b1 == ap_CS_fsm_state4)) begin
            ap_enable_reg_pp1_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_reg_460 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c4_V_reg_137 <= select_ln890_363_reg_464;
    end else if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        c4_V_reg_137 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_fu_220_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c5_V_3_reg_148 <= add_ln691_405_fu_276_p2;
    end else if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        c5_V_3_reg_148 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c5_V_reg_170 <= 6'd0;
    end else if (((icmp_ln890_300_reg_489 == 1'd0) & (1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1))) begin
        c5_V_reg_170 <= select_ln890_365_reg_503;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c6_V_reg_192 <= 7'd0;
    end else if (((1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0) & (icmp_ln890_300_fu_314_p2 == 1'd0) & (ap_enable_reg_pp1_iter0 == 1'b1))) begin
        c6_V_reg_192 <= select_ln890_368_fu_376_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c7_V_reg_203 <= 5'd0;
    end else if (((1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0) & (icmp_ln890_300_fu_314_p2 == 1'd0) & (ap_enable_reg_pp1_iter0 == 1'b1))) begin
        c7_V_reg_203 <= select_ln691_fu_396_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        indvar_flatten26_reg_159 <= 16'd0;
    end else if (((1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0) & (icmp_ln890_300_fu_314_p2 == 1'd0) & (ap_enable_reg_pp1_iter0 == 1'b1))) begin
        indvar_flatten26_reg_159 <= add_ln890_154_fu_286_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        indvar_flatten8_reg_181 <= 12'd0;
    end else if (((1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0) & (icmp_ln890_300_fu_314_p2 == 1'd0) & (ap_enable_reg_pp1_iter0 == 1'b1))) begin
        indvar_flatten8_reg_181 <= select_ln890_369_fu_410_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_fu_220_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_reg_126 <= add_ln890_fu_214_p2;
    end else if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten_reg_126 <= 12'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0) & (icmp_ln890_300_fu_314_p2 == 1'd0))) begin
        add_ln691_406_reg_493 <= add_ln691_406_fu_320_p2;
        and_ln890_reg_509 <= and_ln890_fu_360_p2;
        empty_806_reg_514 <= empty_806_fu_372_p1;
        icmp_ln890_301_reg_498 <= icmp_ln890_301_fu_326_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_fu_220_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln7191_reg_469 <= add_ln7191_fu_270_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        empty_805_reg_484 <= empty_805_fu_308_p2;
        icmp_ln890_300_reg_489 <= icmp_ln890_300_fu_314_p2;
        icmp_ln890_300_reg_489_pp1_iter1_reg <= icmp_ln890_300_reg_489;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln890_reg_460 <= icmp_ln890_fu_220_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_fu_220_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln890_363_reg_464 <= select_ln890_363_fu_246_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0) & (icmp_ln890_300_fu_314_p2 == 1'd0) & (ap_enable_reg_pp1_iter0 == 1'b1))) begin
        select_ln890_365_reg_503 <= select_ln890_365_fu_340_p3;
    end
end

always @ (*) begin
    if ((icmp_ln890_fu_220_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln890_300_fu_314_p2 == 1'd1)) begin
        ap_condition_pp1_exit_iter0_state5 = 1'b1;
    end else begin
        ap_condition_pp1_exit_iter0_state5 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter2 == 1'b0) & (ap_enable_reg_pp1_iter1 == 1'b0) & (ap_enable_reg_pp1_iter0 == 1'b0))) begin
        ap_idle_pp1 = 1'b1;
    end else begin
        ap_idle_pp1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln890_reg_460 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_c4_V_phi_fu_141_p4 = select_ln890_363_reg_464;
    end else begin
        ap_phi_mux_c4_V_phi_fu_141_p4 = c4_V_reg_137;
    end
end

always @ (*) begin
    if (((icmp_ln890_300_reg_489 == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1))) begin
        ap_phi_mux_c5_V_phi_fu_174_p4 = select_ln890_365_reg_503;
    end else begin
        ap_phi_mux_c5_V_phi_fu_174_p4 = c5_V_reg_170;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln890_reg_460 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fifo_B_B_IO_L2_in_1_x115_blk_n = fifo_B_B_IO_L2_in_1_x115_empty_n;
    end else begin
        fifo_B_B_IO_L2_in_1_x115_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln890_reg_460 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fifo_B_B_IO_L2_in_1_x115_read = 1'b1;
    end else begin
        fifo_B_B_IO_L2_in_1_x115_read = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln890_300_reg_489_pp1_iter1_reg == 1'd0) & (ap_enable_reg_pp1_iter2 == 1'b1) & (1'b0 == ap_block_pp1_stage0))) begin
        fifo_B_PE_0_1_x169_blk_n = fifo_B_PE_0_1_x169_full_n;
    end else begin
        fifo_B_PE_0_1_x169_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln890_300_reg_489_pp1_iter1_reg == 1'd0) & (ap_enable_reg_pp1_iter2 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        fifo_B_PE_0_1_x169_write = 1'b1;
    end else begin
        fifo_B_PE_0_1_x169_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1))) begin
        local_B_pong_V_ce0 = 1'b1;
    end else begin
        local_B_pong_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        local_B_pong_V_ce1 = 1'b1;
    end else begin
        local_B_pong_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln890_reg_460 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        local_B_pong_V_we1 = 1'b1;
    end else begin
        local_B_pong_V_we1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((icmp_ln890_fu_220_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((icmp_ln890_fu_220_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_pp1_stage0;
        end
        ap_ST_fsm_pp1_stage0 : begin
            if ((~((1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter1 == 1'b0) & (icmp_ln890_300_fu_314_p2 == 1'd1) & (ap_enable_reg_pp1_iter0 == 1'b1)) & ~((ap_enable_reg_pp1_iter2 == 1'b1) & (1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end else if ((((ap_enable_reg_pp1_iter2 == 1'b1) & (1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter1 == 1'b0)) | ((1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter1 == 1'b0) & (icmp_ln890_300_fu_314_p2 == 1'd1) & (ap_enable_reg_pp1_iter0 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln691_405_fu_276_p2 = (select_ln890_fu_238_p3 + 6'd1);

assign add_ln691_406_fu_320_p2 = (ap_phi_mux_c5_V_phi_fu_174_p4 + 6'd1);

assign add_ln691_407_fu_366_p2 = (select_ln890_364_fu_332_p3 + 7'd1);

assign add_ln691_408_fu_384_p2 = (c7_V_reg_203 + 5'd1);

assign add_ln691_fu_226_p2 = (ap_phi_mux_c4_V_phi_fu_141_p4 + 7'd1);

assign add_ln7191_fu_270_p2 = (tmp_1474_cast_fu_258_p3 + zext_ln7191_fu_266_p1);

assign add_ln890_153_fu_404_p2 = (indvar_flatten8_reg_181 + 12'd1);

assign add_ln890_154_fu_286_p2 = (indvar_flatten26_reg_159 + 16'd1);

assign add_ln890_fu_214_p2 = (indvar_flatten_reg_126 + 12'd1);

assign and_ln890_fu_360_p2 = (xor_ln890_fu_348_p2 & icmp_ln890_302_fu_354_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp1_stage0 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd4];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((icmp_ln890_reg_460 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (fifo_B_B_IO_L2_in_1_x115_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((icmp_ln890_reg_460 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (fifo_B_B_IO_L2_in_1_x115_empty_n == 1'b0));
end

assign ap_block_pp1_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp1_stage0_01001 = ((icmp_ln890_300_reg_489_pp1_iter1_reg == 1'd0) & (ap_enable_reg_pp1_iter2 == 1'b1) & (fifo_B_PE_0_1_x169_full_n == 1'b0));
end

always @ (*) begin
    ap_block_pp1_stage0_11001 = ((icmp_ln890_300_reg_489_pp1_iter1_reg == 1'd0) & (ap_enable_reg_pp1_iter2 == 1'b1) & (fifo_B_PE_0_1_x169_full_n == 1'b0));
end

always @ (*) begin
    ap_block_pp1_stage0_subdone = ((icmp_ln890_300_reg_489_pp1_iter1_reg == 1'd0) & (ap_enable_reg_pp1_iter2 == 1'b1) & (fifo_B_PE_0_1_x169_full_n == 1'b0));
end

always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = ((icmp_ln890_reg_460 == 1'd0) & (fifo_B_B_IO_L2_in_1_x115_empty_n == 1'b0));
end

assign ap_block_state5_pp1_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp1_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state7_pp1_stage0_iter2 = ((icmp_ln890_300_reg_489_pp1_iter1_reg == 1'd0) & (fifo_B_PE_0_1_x169_full_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_pp1 = (ap_idle_pp1 ^ 1'b1);

assign empty_805_fu_308_p2 = (tmp_cast_fu_300_p3 + zext_ln7195_fu_292_p1);

assign empty_806_fu_372_p1 = add_ln691_407_fu_366_p2[5:0];

assign empty_807_fu_437_p2 = (tmp_1475_cast_fu_430_p3 + zext_ln7197_fu_421_p1);

assign empty_fu_296_p1 = c6_V_reg_192[5:0];

assign fifo_B_PE_0_1_x169_din = local_B_pong_V_q0;

assign icmp_ln89039_fu_232_p2 = ((c5_V_3_reg_148 == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln890_300_fu_314_p2 = ((indvar_flatten26_reg_159 == 16'd32768) ? 1'b1 : 1'b0);

assign icmp_ln890_301_fu_326_p2 = ((indvar_flatten8_reg_181 == 12'd1024) ? 1'b1 : 1'b0);

assign icmp_ln890_302_fu_354_p2 = ((c7_V_reg_203 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln890_fu_220_p2 = ((indvar_flatten_reg_126 == 12'd2048) ? 1'b1 : 1'b0);

assign local_B_pong_V_address0 = select_ln890_422_cast_fu_450_p1;

assign local_B_pong_V_address1 = zext_ln7191_1_fu_282_p1;

assign or_ln691_fu_390_p2 = (icmp_ln890_301_fu_326_p2 | and_ln890_fu_360_p2);

assign select_ln691_fu_396_p3 = ((or_ln691_fu_390_p2[0:0] == 1'b1) ? 5'd1 : add_ln691_408_fu_384_p2);

assign select_ln890_363_fu_246_p3 = ((icmp_ln89039_fu_232_p2[0:0] == 1'b1) ? add_ln691_fu_226_p2 : ap_phi_mux_c4_V_phi_fu_141_p4);

assign select_ln890_364_fu_332_p3 = ((icmp_ln890_301_fu_326_p2[0:0] == 1'b1) ? 7'd0 : c6_V_reg_192);

assign select_ln890_365_fu_340_p3 = ((icmp_ln890_301_fu_326_p2[0:0] == 1'b1) ? add_ln691_406_fu_320_p2 : ap_phi_mux_c5_V_phi_fu_174_p4);

assign select_ln890_366_fu_424_p3 = ((icmp_ln890_301_reg_498[0:0] == 1'b1) ? zext_ln890_fu_418_p1 : empty_805_reg_484);

assign select_ln890_367_fu_443_p3 = ((and_ln890_reg_509[0:0] == 1'b1) ? empty_807_fu_437_p2 : select_ln890_366_fu_424_p3);

assign select_ln890_368_fu_376_p3 = ((and_ln890_fu_360_p2[0:0] == 1'b1) ? add_ln691_407_fu_366_p2 : select_ln890_364_fu_332_p3);

assign select_ln890_369_fu_410_p3 = ((icmp_ln890_301_fu_326_p2[0:0] == 1'b1) ? 12'd1 : add_ln890_153_fu_404_p2);

assign select_ln890_422_cast_fu_450_p1 = select_ln890_367_fu_443_p3;

assign select_ln890_fu_238_p3 = ((icmp_ln89039_fu_232_p2[0:0] == 1'b1) ? 6'd0 : c5_V_3_reg_148);

assign tmp_1474_cast_fu_258_p3 = {{trunc_ln7191_fu_254_p1}, {5'd0}};

assign tmp_1475_cast_fu_430_p3 = {{empty_806_reg_514}, {5'd0}};

assign tmp_cast_fu_300_p3 = {{empty_fu_296_p1}, {5'd0}};

assign trunc_ln7191_fu_254_p1 = select_ln890_363_fu_246_p3[5:0];

assign xor_ln890_fu_348_p2 = (icmp_ln890_301_fu_326_p2 ^ 1'd1);

assign zext_ln7191_1_fu_282_p1 = add_ln7191_reg_469;

assign zext_ln7191_fu_266_p1 = select_ln890_fu_238_p3;

assign zext_ln7195_fu_292_p1 = ap_phi_mux_c5_V_phi_fu_174_p4;

assign zext_ln7197_fu_421_p1 = select_ln890_365_reg_503;

assign zext_ln890_fu_418_p1 = add_ln691_406_reg_493;

endmodule //top_B_IO_L2_in_boundary_x1
