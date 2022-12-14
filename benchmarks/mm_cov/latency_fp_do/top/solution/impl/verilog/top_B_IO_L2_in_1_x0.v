// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module top_B_IO_L2_in_1_x0 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        fifo_B_B_IO_L2_in_1_x013_dout,
        fifo_B_B_IO_L2_in_1_x013_empty_n,
        fifo_B_B_IO_L2_in_1_x013_read,
        fifo_B_B_IO_L2_in_2_x014_din,
        fifo_B_B_IO_L2_in_2_x014_full_n,
        fifo_B_B_IO_L2_in_2_x014_write,
        fifo_B_PE_0_1_x0101_din,
        fifo_B_PE_0_1_x0101_full_n,
        fifo_B_PE_0_1_x0101_write
);

parameter    ap_ST_fsm_state1 = 22'd1;
parameter    ap_ST_fsm_state2 = 22'd2;
parameter    ap_ST_fsm_state3 = 22'd4;
parameter    ap_ST_fsm_state4 = 22'd8;
parameter    ap_ST_fsm_state5 = 22'd16;
parameter    ap_ST_fsm_state6 = 22'd32;
parameter    ap_ST_fsm_state7 = 22'd64;
parameter    ap_ST_fsm_state8 = 22'd128;
parameter    ap_ST_fsm_state9 = 22'd256;
parameter    ap_ST_fsm_state10 = 22'd512;
parameter    ap_ST_fsm_state11 = 22'd1024;
parameter    ap_ST_fsm_state12 = 22'd2048;
parameter    ap_ST_fsm_state13 = 22'd4096;
parameter    ap_ST_fsm_state14 = 22'd8192;
parameter    ap_ST_fsm_state15 = 22'd16384;
parameter    ap_ST_fsm_state16 = 22'd32768;
parameter    ap_ST_fsm_state17 = 22'd65536;
parameter    ap_ST_fsm_state18 = 22'd131072;
parameter    ap_ST_fsm_state19 = 22'd262144;
parameter    ap_ST_fsm_state20 = 22'd524288;
parameter    ap_ST_fsm_state21 = 22'd1048576;
parameter    ap_ST_fsm_state22 = 22'd2097152;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [511:0] fifo_B_B_IO_L2_in_1_x013_dout;
input   fifo_B_B_IO_L2_in_1_x013_empty_n;
output   fifo_B_B_IO_L2_in_1_x013_read;
output  [511:0] fifo_B_B_IO_L2_in_2_x014_din;
input   fifo_B_B_IO_L2_in_2_x014_full_n;
output   fifo_B_B_IO_L2_in_2_x014_write;
output  [511:0] fifo_B_PE_0_1_x0101_din;
input   fifo_B_PE_0_1_x0101_full_n;
output   fifo_B_PE_0_1_x0101_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg fifo_B_B_IO_L2_in_1_x013_read;
reg fifo_B_B_IO_L2_in_2_x014_write;
reg[511:0] fifo_B_PE_0_1_x0101_din;
reg fifo_B_PE_0_1_x0101_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [21:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    fifo_B_B_IO_L2_in_1_x013_blk_n;
wire    ap_CS_fsm_state9;
reg   [0:0] icmp_ln870_6_reg_646;
reg   [0:0] icmp_ln890_864_reg_663;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state17;
reg   [0:0] icmp_ln870_reg_714;
reg   [0:0] icmp_ln890_861_reg_731;
wire    ap_CS_fsm_state15;
reg    fifo_B_B_IO_L2_in_2_x014_blk_n;
reg    fifo_B_PE_0_1_x0101_blk_n;
wire    ap_CS_fsm_state12;
wire   [0:0] icmp_ln890_867_fu_525_p2;
wire    ap_CS_fsm_state19;
wire   [0:0] icmp_ln890_866_fu_584_p2;
wire    ap_CS_fsm_state22;
wire   [0:0] icmp_ln890_856_fu_613_p2;
wire   [511:0] local_B_ping_V_0_q0;
reg   [511:0] reg_391;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state21;
wire   [4:0] add_ln691_fu_396_p2;
reg   [4:0] add_ln691_reg_619;
wire    ap_CS_fsm_state2;
wire   [4:0] add_ln691_1050_fu_408_p2;
reg   [4:0] add_ln691_1050_reg_627;
wire    ap_CS_fsm_state3;
wire   [5:0] add_ln691_1055_fu_420_p2;
reg   [5:0] add_ln691_1055_reg_635;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln870_6_fu_438_p2;
wire    ap_CS_fsm_state5;
wire   [0:0] icmp_ln890_859_fu_432_p2;
wire   [3:0] add_ln691_1054_fu_444_p2;
reg   [3:0] add_ln691_1054_reg_650;
wire    ap_CS_fsm_state6;
wire   [3:0] add_ln691_1053_fu_456_p2;
reg   [3:0] add_ln691_1053_reg_658;
wire    ap_CS_fsm_state8;
wire   [0:0] icmp_ln890_864_fu_462_p2;
wire   [3:0] add_ln691_1057_fu_473_p2;
wire   [3:0] add_ln691_1060_fu_479_p2;
reg   [3:0] add_ln691_1060_reg_672;
wire    ap_CS_fsm_state10;
reg   [0:0] arb_7_reg_243;
reg   [0:0] intra_trans_en_14_reg_230;
wire   [0:0] icmp_ln890_863_fu_490_p2;
wire   [3:0] add_ln691_1058_fu_496_p2;
reg   [3:0] add_ln691_1058_reg_685;
wire   [0:0] icmp_ln890_860_fu_507_p2;
wire   [0:0] arb_fu_513_p2;
wire   [3:0] add_ln691_1061_fu_519_p2;
reg    ap_block_state12;
wire   [0:0] icmp_ln870_fu_537_p2;
wire    ap_CS_fsm_state13;
wire   [0:0] icmp_ln890_858_fu_531_p2;
wire   [3:0] add_ln691_1052_fu_543_p2;
reg   [3:0] add_ln691_1052_reg_718;
wire    ap_CS_fsm_state14;
wire   [3:0] add_ln691_1051_fu_555_p2;
reg   [3:0] add_ln691_1051_reg_726;
wire    ap_CS_fsm_state16;
wire   [0:0] icmp_ln890_861_fu_561_p2;
wire   [3:0] add_ln691_1056_fu_572_p2;
wire   [511:0] local_B_pong_V_0_q0;
reg   [511:0] local_B_pong_V_0_load_reg_740;
wire    ap_CS_fsm_state18;
wire   [3:0] add_ln691_1059_fu_578_p2;
reg    ap_block_state19;
wire   [3:0] add_ln691_1048_fu_590_p2;
reg   [3:0] add_ln691_1048_reg_753;
wire    ap_CS_fsm_state20;
wire   [0:0] icmp_ln890_854_fu_601_p2;
wire   [3:0] add_ln691_1049_fu_607_p2;
reg    ap_block_state22;
reg   [2:0] local_B_ping_V_0_address0;
reg    local_B_ping_V_0_ce0;
reg    local_B_ping_V_0_we0;
reg   [2:0] local_B_pong_V_0_address0;
reg    local_B_pong_V_0_ce0;
reg    local_B_pong_V_0_we0;
reg   [4:0] c0_V_reg_170;
wire   [0:0] icmp_ln890_855_fu_414_p2;
reg    ap_block_state1;
reg   [0:0] intra_trans_en_reg_181;
reg   [4:0] c1_V_reg_195;
wire   [0:0] icmp_ln890_857_fu_426_p2;
wire   [0:0] icmp_ln890_fu_402_p2;
reg   [0:0] intra_trans_en_13_reg_206;
reg   [5:0] c2_V_reg_219;
wire   [0:0] ap_phi_mux_arb_7_phi_fu_247_p4;
reg   [3:0] c3_V_6_reg_255;
reg    ap_predicate_op90_read_state9;
reg    ap_block_state9;
reg   [3:0] c4_V_26_reg_267;
reg    ap_block_state7;
reg   [3:0] c4_V_25_reg_278;
reg   [3:0] c6_V_14_reg_290;
reg   [3:0] c6_V_13_reg_301;
reg   [3:0] c7_V_14_reg_312;
reg   [3:0] c3_V_reg_323;
reg    ap_predicate_op157_read_state17;
reg    ap_block_state17;
reg   [3:0] c4_V_24_reg_335;
reg    ap_block_state15;
reg   [3:0] c4_V_reg_346;
reg   [3:0] c7_V_13_reg_358;
reg   [3:0] c6_V_reg_369;
reg   [3:0] c7_V_reg_380;
wire   [63:0] zext_ln890_156_fu_468_p1;
wire   [63:0] zext_ln890_155_fu_485_p1;
wire   [63:0] zext_ln890_153_fu_502_p1;
wire   [63:0] zext_ln890_154_fu_567_p1;
wire   [63:0] zext_ln890_fu_596_p1;
wire   [0:0] icmp_ln890_865_fu_450_p2;
wire   [0:0] icmp_ln890_862_fu_549_p2;
reg   [21:0] ap_NS_fsm;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 22'd1;
end

top_A_IO_L2_in_0_x0_local_A_ping_V_0 #(
    .DataWidth( 512 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
local_B_ping_V_0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(local_B_ping_V_0_address0),
    .ce0(local_B_ping_V_0_ce0),
    .we0(local_B_ping_V_0_we0),
    .d0(fifo_B_B_IO_L2_in_1_x013_dout),
    .q0(local_B_ping_V_0_q0)
);

top_A_IO_L2_in_0_x0_local_A_ping_V_0 #(
    .DataWidth( 512 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
local_B_pong_V_0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(local_B_pong_V_0_address0),
    .ce0(local_B_pong_V_0_ce0),
    .we0(local_B_pong_V_0_we0),
    .d0(fifo_B_B_IO_L2_in_1_x013_dout),
    .q0(local_B_pong_V_0_q0)
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
        end else if (((icmp_ln890_854_fu_601_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state20))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (((intra_trans_en_14_reg_230 == 1'd0) | ((icmp_ln890_860_fu_507_p2 == 1'd1) & (arb_7_reg_243 == 1'd1))) | ((icmp_ln890_863_fu_490_p2 == 1'd1) & (arb_7_reg_243 == 1'd0))))) begin
        arb_7_reg_243 <= arb_fu_513_p2;
    end else if (((icmp_ln890_855_fu_414_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        arb_7_reg_243 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        c0_V_reg_170 <= 5'd0;
    end else if (((icmp_ln890_855_fu_414_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        c0_V_reg_170 <= add_ln691_reg_619;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_fu_402_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        c1_V_reg_195 <= 5'd0;
    end else if (((icmp_ln890_857_fu_426_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        c1_V_reg_195 <= add_ln691_1050_reg_627;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (((intra_trans_en_14_reg_230 == 1'd0) | ((icmp_ln890_860_fu_507_p2 == 1'd1) & (arb_7_reg_243 == 1'd1))) | ((icmp_ln890_863_fu_490_p2 == 1'd1) & (arb_7_reg_243 == 1'd0))))) begin
        c2_V_reg_219 <= add_ln691_1055_reg_635;
    end else if (((icmp_ln890_855_fu_414_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        c2_V_reg_219 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_phi_mux_arb_7_phi_fu_247_p4 == 1'd0) & (icmp_ln890_857_fu_426_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        c3_V_6_reg_255 <= 4'd1;
    end else if ((~((fifo_B_B_IO_L2_in_1_x013_empty_n == 1'b0) & (ap_predicate_op90_read_state9 == 1'b1)) & (1'b1 == ap_CS_fsm_state9) & ((icmp_ln890_864_reg_663 == 1'd1) | (icmp_ln870_6_reg_646 == 1'd0)))) begin
        c3_V_6_reg_255 <= add_ln691_1057_fu_473_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_phi_mux_arb_7_phi_fu_247_p4 == 1'd1) & (icmp_ln890_857_fu_426_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        c3_V_reg_323 <= 4'd1;
    end else if ((~((fifo_B_B_IO_L2_in_1_x013_empty_n == 1'b0) & (ap_predicate_op157_read_state17 == 1'b1)) & (1'b1 == ap_CS_fsm_state17) & ((icmp_ln890_861_reg_731 == 1'd1) | (icmp_ln870_reg_714 == 1'd0)))) begin
        c3_V_reg_323 <= add_ln691_1056_fu_572_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_858_fu_531_p2 == 1'd0) & (icmp_ln870_fu_537_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state13))) begin
        c4_V_24_reg_335 <= 4'd0;
    end else if ((~((fifo_B_B_IO_L2_in_2_x014_full_n == 1'b0) | (fifo_B_B_IO_L2_in_1_x013_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state15))) begin
        c4_V_24_reg_335 <= add_ln691_1052_reg_718;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln890_859_fu_432_p2 == 1'd0) & (icmp_ln870_6_fu_438_p2 == 1'd1))) begin
        c4_V_25_reg_278 <= 4'd0;
    end else if ((~((fifo_B_B_IO_L2_in_1_x013_empty_n == 1'b0) & (ap_predicate_op90_read_state9 == 1'b1)) & (icmp_ln890_864_reg_663 == 1'd0) & (icmp_ln870_6_reg_646 == 1'd1) & (1'b1 == ap_CS_fsm_state9))) begin
        c4_V_25_reg_278 <= add_ln691_1053_reg_658;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln890_859_fu_432_p2 == 1'd0) & (icmp_ln870_6_fu_438_p2 == 1'd0))) begin
        c4_V_26_reg_267 <= 4'd0;
    end else if ((~((fifo_B_B_IO_L2_in_2_x014_full_n == 1'b0) | (fifo_B_B_IO_L2_in_1_x013_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state7))) begin
        c4_V_26_reg_267 <= add_ln691_1054_reg_650;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_858_fu_531_p2 == 1'd0) & (icmp_ln870_fu_537_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state13))) begin
        c4_V_reg_346 <= 4'd0;
    end else if ((~((fifo_B_B_IO_L2_in_1_x013_empty_n == 1'b0) & (ap_predicate_op157_read_state17 == 1'b1)) & (icmp_ln890_861_reg_731 == 1'd0) & (icmp_ln870_reg_714 == 1'd1) & (1'b1 == ap_CS_fsm_state17))) begin
        c4_V_reg_346 <= add_ln691_1051_reg_726;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_858_fu_531_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state13) & (intra_trans_en_14_reg_230 == 1'd1))) begin
        c6_V_13_reg_301 <= 4'd0;
    end else if ((~((fifo_B_PE_0_1_x0101_full_n == 1'b0) & (icmp_ln890_866_fu_584_p2 == 1'd0)) & (1'b1 == ap_CS_fsm_state19) & (icmp_ln890_866_fu_584_p2 == 1'd1))) begin
        c6_V_13_reg_301 <= add_ln691_1058_reg_685;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (intra_trans_en_14_reg_230 == 1'd1) & (icmp_ln890_859_fu_432_p2 == 1'd1))) begin
        c6_V_14_reg_290 <= 4'd0;
    end else if ((~((fifo_B_PE_0_1_x0101_full_n == 1'b0) & (icmp_ln890_867_fu_525_p2 == 1'd0)) & (1'b1 == ap_CS_fsm_state12) & (icmp_ln890_867_fu_525_p2 == 1'd1))) begin
        c6_V_14_reg_290 <= add_ln691_1060_reg_672;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_fu_402_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        c6_V_reg_369 <= 4'd0;
    end else if ((~((fifo_B_PE_0_1_x0101_full_n == 1'b0) & (icmp_ln890_856_fu_613_p2 == 1'd0)) & (1'b1 == ap_CS_fsm_state22) & (icmp_ln890_856_fu_613_p2 == 1'd1))) begin
        c6_V_reg_369 <= add_ln691_1048_reg_753;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        c7_V_13_reg_358 <= 4'd0;
    end else if ((~((fifo_B_PE_0_1_x0101_full_n == 1'b0) & (icmp_ln890_866_fu_584_p2 == 1'd0)) & (1'b1 == ap_CS_fsm_state19) & (icmp_ln890_866_fu_584_p2 == 1'd0))) begin
        c7_V_13_reg_358 <= add_ln691_1059_fu_578_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        c7_V_14_reg_312 <= 4'd0;
    end else if ((~((fifo_B_PE_0_1_x0101_full_n == 1'b0) & (icmp_ln890_867_fu_525_p2 == 1'd0)) & (1'b1 == ap_CS_fsm_state12) & (icmp_ln890_867_fu_525_p2 == 1'd0))) begin
        c7_V_14_reg_312 <= add_ln691_1061_fu_519_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        c7_V_reg_380 <= 4'd0;
    end else if ((~((fifo_B_PE_0_1_x0101_full_n == 1'b0) & (icmp_ln890_856_fu_613_p2 == 1'd0)) & (1'b1 == ap_CS_fsm_state22) & (icmp_ln890_856_fu_613_p2 == 1'd0))) begin
        c7_V_reg_380 <= add_ln691_1049_fu_607_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_fu_402_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        intra_trans_en_13_reg_206 <= intra_trans_en_reg_181;
    end else if (((icmp_ln890_857_fu_426_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        intra_trans_en_13_reg_206 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (((intra_trans_en_14_reg_230 == 1'd0) | ((icmp_ln890_860_fu_507_p2 == 1'd1) & (arb_7_reg_243 == 1'd1))) | ((icmp_ln890_863_fu_490_p2 == 1'd1) & (arb_7_reg_243 == 1'd0))))) begin
        intra_trans_en_14_reg_230 <= 1'd1;
    end else if (((icmp_ln890_855_fu_414_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        intra_trans_en_14_reg_230 <= intra_trans_en_13_reg_206;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        intra_trans_en_reg_181 <= 1'd0;
    end else if (((icmp_ln890_855_fu_414_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        intra_trans_en_reg_181 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        add_ln691_1048_reg_753 <= add_ln691_1048_fu_590_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln691_1050_reg_627 <= add_ln691_1050_fu_408_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        add_ln691_1051_reg_726 <= add_ln691_1051_fu_555_p2;
        icmp_ln890_861_reg_731 <= icmp_ln890_861_fu_561_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        add_ln691_1052_reg_718 <= add_ln691_1052_fu_543_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        add_ln691_1053_reg_658 <= add_ln691_1053_fu_456_p2;
        icmp_ln890_864_reg_663 <= icmp_ln890_864_fu_462_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        add_ln691_1054_reg_650 <= add_ln691_1054_fu_444_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        add_ln691_1055_reg_635 <= add_ln691_1055_fu_420_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (intra_trans_en_14_reg_230 == 1'd1) & (arb_7_reg_243 == 1'd1))) begin
        add_ln691_1058_reg_685 <= add_ln691_1058_fu_496_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (intra_trans_en_14_reg_230 == 1'd1) & (arb_7_reg_243 == 1'd0))) begin
        add_ln691_1060_reg_672 <= add_ln691_1060_fu_479_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln691_reg_619 <= add_ln691_fu_396_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln890_859_fu_432_p2 == 1'd0))) begin
        icmp_ln870_6_reg_646 <= icmp_ln870_6_fu_438_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_858_fu_531_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state13))) begin
        icmp_ln870_reg_714 <= icmp_ln870_fu_537_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        local_B_pong_V_0_load_reg_740 <= local_B_pong_V_0_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state11))) begin
        reg_391 <= local_B_ping_V_0_q0;
    end
end

always @ (*) begin
    if (((icmp_ln890_854_fu_601_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state20))) begin
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
    if (((icmp_ln890_854_fu_601_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state20))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state7) | ((icmp_ln890_861_reg_731 == 1'd0) & (icmp_ln870_reg_714 == 1'd1) & (1'b1 == ap_CS_fsm_state17)) | ((icmp_ln890_864_reg_663 == 1'd0) & (icmp_ln870_6_reg_646 == 1'd1) & (1'b1 == ap_CS_fsm_state9)))) begin
        fifo_B_B_IO_L2_in_1_x013_blk_n = fifo_B_B_IO_L2_in_1_x013_empty_n;
    end else begin
        fifo_B_B_IO_L2_in_1_x013_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((~((fifo_B_B_IO_L2_in_1_x013_empty_n == 1'b0) & (ap_predicate_op157_read_state17 == 1'b1)) & (ap_predicate_op157_read_state17 == 1'b1) & (1'b1 == ap_CS_fsm_state17)) | (~((fifo_B_B_IO_L2_in_2_x014_full_n == 1'b0) | (fifo_B_B_IO_L2_in_1_x013_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state15)) | (~((fifo_B_B_IO_L2_in_2_x014_full_n == 1'b0) | (fifo_B_B_IO_L2_in_1_x013_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state7)) | (~((fifo_B_B_IO_L2_in_1_x013_empty_n == 1'b0) & (ap_predicate_op90_read_state9 == 1'b1)) & (ap_predicate_op90_read_state9 == 1'b1) & (1'b1 == ap_CS_fsm_state9)))) begin
        fifo_B_B_IO_L2_in_1_x013_read = 1'b1;
    end else begin
        fifo_B_B_IO_L2_in_1_x013_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state7))) begin
        fifo_B_B_IO_L2_in_2_x014_blk_n = fifo_B_B_IO_L2_in_2_x014_full_n;
    end else begin
        fifo_B_B_IO_L2_in_2_x014_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((~((fifo_B_B_IO_L2_in_2_x014_full_n == 1'b0) | (fifo_B_B_IO_L2_in_1_x013_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state15)) | (~((fifo_B_B_IO_L2_in_2_x014_full_n == 1'b0) | (fifo_B_B_IO_L2_in_1_x013_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state7)))) begin
        fifo_B_B_IO_L2_in_2_x014_write = 1'b1;
    end else begin
        fifo_B_B_IO_L2_in_2_x014_write = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state22) & (icmp_ln890_856_fu_613_p2 == 1'd0)) | ((1'b1 == ap_CS_fsm_state19) & (icmp_ln890_866_fu_584_p2 == 1'd0)) | ((1'b1 == ap_CS_fsm_state12) & (icmp_ln890_867_fu_525_p2 == 1'd0)))) begin
        fifo_B_PE_0_1_x0101_blk_n = fifo_B_PE_0_1_x0101_full_n;
    end else begin
        fifo_B_PE_0_1_x0101_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((fifo_B_PE_0_1_x0101_full_n == 1'b0) & (icmp_ln890_866_fu_584_p2 == 1'd0)) & (1'b1 == ap_CS_fsm_state19) & (icmp_ln890_866_fu_584_p2 == 1'd0))) begin
        fifo_B_PE_0_1_x0101_din = local_B_pong_V_0_load_reg_740;
    end else if (((~((fifo_B_PE_0_1_x0101_full_n == 1'b0) & (icmp_ln890_856_fu_613_p2 == 1'd0)) & (1'b1 == ap_CS_fsm_state22) & (icmp_ln890_856_fu_613_p2 == 1'd0)) | (~((fifo_B_PE_0_1_x0101_full_n == 1'b0) & (icmp_ln890_867_fu_525_p2 == 1'd0)) & (1'b1 == ap_CS_fsm_state12) & (icmp_ln890_867_fu_525_p2 == 1'd0)))) begin
        fifo_B_PE_0_1_x0101_din = reg_391;
    end else begin
        fifo_B_PE_0_1_x0101_din = 'bx;
    end
end

always @ (*) begin
    if (((~((fifo_B_PE_0_1_x0101_full_n == 1'b0) & (icmp_ln890_856_fu_613_p2 == 1'd0)) & (1'b1 == ap_CS_fsm_state22) & (icmp_ln890_856_fu_613_p2 == 1'd0)) | (~((fifo_B_PE_0_1_x0101_full_n == 1'b0) & (icmp_ln890_866_fu_584_p2 == 1'd0)) & (1'b1 == ap_CS_fsm_state19) & (icmp_ln890_866_fu_584_p2 == 1'd0)) | (~((fifo_B_PE_0_1_x0101_full_n == 1'b0) & (icmp_ln890_867_fu_525_p2 == 1'd0)) & (1'b1 == ap_CS_fsm_state12) & (icmp_ln890_867_fu_525_p2 == 1'd0)))) begin
        fifo_B_PE_0_1_x0101_write = 1'b1;
    end else begin
        fifo_B_PE_0_1_x0101_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        local_B_ping_V_0_address0 = zext_ln890_fu_596_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        local_B_ping_V_0_address0 = zext_ln890_154_fu_567_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        local_B_ping_V_0_address0 = zext_ln890_155_fu_485_p1;
    end else begin
        local_B_ping_V_0_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state10) | (~((fifo_B_B_IO_L2_in_1_x013_empty_n == 1'b0) & (ap_predicate_op157_read_state17 == 1'b1)) & (1'b1 == ap_CS_fsm_state17)))) begin
        local_B_ping_V_0_ce0 = 1'b1;
    end else begin
        local_B_ping_V_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((fifo_B_B_IO_L2_in_1_x013_empty_n == 1'b0) & (ap_predicate_op157_read_state17 == 1'b1)) & (icmp_ln890_861_reg_731 == 1'd0) & (icmp_ln870_reg_714 == 1'd1) & (1'b1 == ap_CS_fsm_state17))) begin
        local_B_ping_V_0_we0 = 1'b1;
    end else begin
        local_B_ping_V_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        local_B_pong_V_0_address0 = zext_ln890_153_fu_502_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        local_B_pong_V_0_address0 = zext_ln890_156_fu_468_p1;
    end else begin
        local_B_pong_V_0_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (~((fifo_B_B_IO_L2_in_1_x013_empty_n == 1'b0) & (ap_predicate_op90_read_state9 == 1'b1)) & (1'b1 == ap_CS_fsm_state9)))) begin
        local_B_pong_V_0_ce0 = 1'b1;
    end else begin
        local_B_pong_V_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((fifo_B_B_IO_L2_in_1_x013_empty_n == 1'b0) & (ap_predicate_op90_read_state9 == 1'b1)) & (icmp_ln890_864_reg_663 == 1'd0) & (icmp_ln870_6_reg_646 == 1'd1) & (1'b1 == ap_CS_fsm_state9))) begin
        local_B_pong_V_0_we0 = 1'b1;
    end else begin
        local_B_pong_V_0_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln890_fu_402_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln890_855_fu_414_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln890_857_fu_426_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else if (((ap_phi_mux_arb_7_phi_fu_247_p4 == 1'd1) & (icmp_ln890_857_fu_426_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln890_859_fu_432_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln890_859_fu_432_p2 == 1'd0) & (icmp_ln870_6_fu_438_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((icmp_ln890_865_fu_450_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            if ((~((fifo_B_B_IO_L2_in_2_x014_full_n == 1'b0) | (fifo_B_B_IO_L2_in_1_x013_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            if ((~((fifo_B_B_IO_L2_in_1_x013_empty_n == 1'b0) & (ap_predicate_op90_read_state9 == 1'b1)) & (1'b1 == ap_CS_fsm_state9) & ((icmp_ln890_864_reg_663 == 1'd1) | (icmp_ln870_6_reg_646 == 1'd0)))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else if ((~((fifo_B_B_IO_L2_in_1_x013_empty_n == 1'b0) & (ap_predicate_op90_read_state9 == 1'b1)) & (icmp_ln890_864_reg_663 == 1'd0) & (icmp_ln870_6_reg_646 == 1'd1) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            if (((1'b1 == ap_CS_fsm_state10) & (((intra_trans_en_14_reg_230 == 1'd0) | ((icmp_ln890_860_fu_507_p2 == 1'd1) & (arb_7_reg_243 == 1'd1))) | ((icmp_ln890_863_fu_490_p2 == 1'd1) & (arb_7_reg_243 == 1'd0))))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else if (((icmp_ln890_860_fu_507_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10) & (intra_trans_en_14_reg_230 == 1'd1) & (arb_7_reg_243 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            if ((~((fifo_B_PE_0_1_x0101_full_n == 1'b0) & (icmp_ln890_867_fu_525_p2 == 1'd0)) & (1'b1 == ap_CS_fsm_state12) & (icmp_ln890_867_fu_525_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else if ((~((fifo_B_PE_0_1_x0101_full_n == 1'b0) & (icmp_ln890_867_fu_525_p2 == 1'd0)) & (1'b1 == ap_CS_fsm_state12) & (icmp_ln890_867_fu_525_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state13 : begin
            if (((icmp_ln890_858_fu_531_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else if (((icmp_ln890_858_fu_531_p2 == 1'd0) & (icmp_ln870_fu_537_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state14 : begin
            if (((icmp_ln890_862_fu_549_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        ap_ST_fsm_state15 : begin
            if ((~((fifo_B_B_IO_L2_in_2_x014_full_n == 1'b0) | (fifo_B_B_IO_L2_in_1_x013_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state15))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            if ((~((fifo_B_B_IO_L2_in_1_x013_empty_n == 1'b0) & (ap_predicate_op157_read_state17 == 1'b1)) & (1'b1 == ap_CS_fsm_state17) & ((icmp_ln890_861_reg_731 == 1'd1) | (icmp_ln870_reg_714 == 1'd0)))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else if ((~((fifo_B_B_IO_L2_in_1_x013_empty_n == 1'b0) & (ap_predicate_op157_read_state17 == 1'b1)) & (icmp_ln890_861_reg_731 == 1'd0) & (icmp_ln870_reg_714 == 1'd1) & (1'b1 == ap_CS_fsm_state17))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            if ((~((fifo_B_PE_0_1_x0101_full_n == 1'b0) & (icmp_ln890_866_fu_584_p2 == 1'd0)) & (1'b1 == ap_CS_fsm_state19) & (icmp_ln890_866_fu_584_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else if ((~((fifo_B_PE_0_1_x0101_full_n == 1'b0) & (icmp_ln890_866_fu_584_p2 == 1'd0)) & (1'b1 == ap_CS_fsm_state19) & (icmp_ln890_866_fu_584_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end
        end
        ap_ST_fsm_state20 : begin
            if (((icmp_ln890_854_fu_601_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state20))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            if ((~((fifo_B_PE_0_1_x0101_full_n == 1'b0) & (icmp_ln890_856_fu_613_p2 == 1'd0)) & (1'b1 == ap_CS_fsm_state22) & (icmp_ln890_856_fu_613_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state20;
            end else if ((~((fifo_B_PE_0_1_x0101_full_n == 1'b0) & (icmp_ln890_856_fu_613_p2 == 1'd0)) & (1'b1 == ap_CS_fsm_state22) & (icmp_ln890_856_fu_613_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln691_1048_fu_590_p2 = (c6_V_reg_369 + 4'd1);

assign add_ln691_1049_fu_607_p2 = (c7_V_reg_380 + 4'd1);

assign add_ln691_1050_fu_408_p2 = (c1_V_reg_195 + 5'd1);

assign add_ln691_1051_fu_555_p2 = (c4_V_reg_346 + 4'd1);

assign add_ln691_1052_fu_543_p2 = (c4_V_24_reg_335 + 4'd1);

assign add_ln691_1053_fu_456_p2 = (c4_V_25_reg_278 + 4'd1);

assign add_ln691_1054_fu_444_p2 = (c4_V_26_reg_267 + 4'd1);

assign add_ln691_1055_fu_420_p2 = (c2_V_reg_219 + 6'd1);

assign add_ln691_1056_fu_572_p2 = (c3_V_reg_323 + 4'd1);

assign add_ln691_1057_fu_473_p2 = (c3_V_6_reg_255 + 4'd1);

assign add_ln691_1058_fu_496_p2 = (c6_V_13_reg_301 + 4'd1);

assign add_ln691_1059_fu_578_p2 = (c7_V_13_reg_358 + 4'd1);

assign add_ln691_1060_fu_479_p2 = (c6_V_14_reg_290 + 4'd1);

assign add_ln691_1061_fu_519_p2 = (c7_V_14_reg_312 + 4'd1);

assign add_ln691_fu_396_p2 = (c0_V_reg_170 + 5'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];

assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];

assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];

assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

always @ (*) begin
    ap_block_state12 = ((fifo_B_PE_0_1_x0101_full_n == 1'b0) & (icmp_ln890_867_fu_525_p2 == 1'd0));
end

always @ (*) begin
    ap_block_state15 = ((fifo_B_B_IO_L2_in_2_x014_full_n == 1'b0) | (fifo_B_B_IO_L2_in_1_x013_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state17 = ((fifo_B_B_IO_L2_in_1_x013_empty_n == 1'b0) & (ap_predicate_op157_read_state17 == 1'b1));
end

always @ (*) begin
    ap_block_state19 = ((fifo_B_PE_0_1_x0101_full_n == 1'b0) & (icmp_ln890_866_fu_584_p2 == 1'd0));
end

always @ (*) begin
    ap_block_state22 = ((fifo_B_PE_0_1_x0101_full_n == 1'b0) & (icmp_ln890_856_fu_613_p2 == 1'd0));
end

always @ (*) begin
    ap_block_state7 = ((fifo_B_B_IO_L2_in_2_x014_full_n == 1'b0) | (fifo_B_B_IO_L2_in_1_x013_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state9 = ((fifo_B_B_IO_L2_in_1_x013_empty_n == 1'b0) & (ap_predicate_op90_read_state9 == 1'b1));
end

assign ap_phi_mux_arb_7_phi_fu_247_p4 = arb_7_reg_243;

always @ (*) begin
    ap_predicate_op157_read_state17 = ((icmp_ln890_861_reg_731 == 1'd0) & (icmp_ln870_reg_714 == 1'd1));
end

always @ (*) begin
    ap_predicate_op90_read_state9 = ((icmp_ln890_864_reg_663 == 1'd0) & (icmp_ln870_6_reg_646 == 1'd1));
end

assign arb_fu_513_p2 = (arb_7_reg_243 ^ 1'd1);

assign fifo_B_B_IO_L2_in_2_x014_din = fifo_B_B_IO_L2_in_1_x013_dout;

assign icmp_ln870_6_fu_438_p2 = ((c3_V_6_reg_255 == 4'd1) ? 1'b1 : 1'b0);

assign icmp_ln870_fu_537_p2 = ((c3_V_reg_323 == 4'd1) ? 1'b1 : 1'b0);

assign icmp_ln890_854_fu_601_p2 = ((c6_V_reg_369 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln890_855_fu_414_p2 = ((c1_V_reg_195 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln890_856_fu_613_p2 = ((c7_V_reg_380 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln890_857_fu_426_p2 = ((c2_V_reg_219 == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln890_858_fu_531_p2 = ((c3_V_reg_323 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln890_859_fu_432_p2 = ((c3_V_6_reg_255 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln890_860_fu_507_p2 = ((c6_V_13_reg_301 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln890_861_fu_561_p2 = ((c4_V_reg_346 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln890_862_fu_549_p2 = ((c4_V_24_reg_335 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln890_863_fu_490_p2 = ((c6_V_14_reg_290 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln890_864_fu_462_p2 = ((c4_V_25_reg_278 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln890_865_fu_450_p2 = ((c4_V_26_reg_267 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln890_866_fu_584_p2 = ((c7_V_13_reg_358 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln890_867_fu_525_p2 = ((c7_V_14_reg_312 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln890_fu_402_p2 = ((c0_V_reg_170 == 5'd16) ? 1'b1 : 1'b0);

assign zext_ln890_153_fu_502_p1 = c6_V_13_reg_301;

assign zext_ln890_154_fu_567_p1 = c4_V_reg_346;

assign zext_ln890_155_fu_485_p1 = c6_V_14_reg_290;

assign zext_ln890_156_fu_468_p1 = c4_V_25_reg_278;

assign zext_ln890_fu_596_p1 = c6_V_reg_369;

endmodule //top_B_IO_L2_in_1_x0
