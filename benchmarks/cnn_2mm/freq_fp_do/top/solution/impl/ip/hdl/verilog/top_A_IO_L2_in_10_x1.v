// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module top_A_IO_L2_in_10_x1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        fifo_A_A_IO_L2_in_10_x111_dout,
        fifo_A_A_IO_L2_in_10_x111_empty_n,
        fifo_A_A_IO_L2_in_10_x111_read,
        fifo_A_A_IO_L2_in_11_x112_din,
        fifo_A_A_IO_L2_in_11_x112_full_n,
        fifo_A_A_IO_L2_in_11_x112_write,
        fifo_A_PE_10_0_x146_din,
        fifo_A_PE_10_0_x146_full_n,
        fifo_A_PE_10_0_x146_write
);

parameter    ap_ST_fsm_state1 = 23'd1;
parameter    ap_ST_fsm_state2 = 23'd2;
parameter    ap_ST_fsm_state3 = 23'd4;
parameter    ap_ST_fsm_state4 = 23'd8;
parameter    ap_ST_fsm_state5 = 23'd16;
parameter    ap_ST_fsm_state6 = 23'd32;
parameter    ap_ST_fsm_state7 = 23'd64;
parameter    ap_ST_fsm_state8 = 23'd128;
parameter    ap_ST_fsm_state9 = 23'd256;
parameter    ap_ST_fsm_state10 = 23'd512;
parameter    ap_ST_fsm_state11 = 23'd1024;
parameter    ap_ST_fsm_state12 = 23'd2048;
parameter    ap_ST_fsm_state13 = 23'd4096;
parameter    ap_ST_fsm_state14 = 23'd8192;
parameter    ap_ST_fsm_state15 = 23'd16384;
parameter    ap_ST_fsm_state16 = 23'd32768;
parameter    ap_ST_fsm_state17 = 23'd65536;
parameter    ap_ST_fsm_state18 = 23'd131072;
parameter    ap_ST_fsm_state19 = 23'd262144;
parameter    ap_ST_fsm_state20 = 23'd524288;
parameter    ap_ST_fsm_state21 = 23'd1048576;
parameter    ap_ST_fsm_state22 = 23'd2097152;
parameter    ap_ST_fsm_state23 = 23'd4194304;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [255:0] fifo_A_A_IO_L2_in_10_x111_dout;
input   fifo_A_A_IO_L2_in_10_x111_empty_n;
output   fifo_A_A_IO_L2_in_10_x111_read;
output  [255:0] fifo_A_A_IO_L2_in_11_x112_din;
input   fifo_A_A_IO_L2_in_11_x112_full_n;
output   fifo_A_A_IO_L2_in_11_x112_write;
output  [255:0] fifo_A_PE_10_0_x146_din;
input   fifo_A_PE_10_0_x146_full_n;
output   fifo_A_PE_10_0_x146_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg fifo_A_A_IO_L2_in_10_x111_read;
reg fifo_A_A_IO_L2_in_11_x112_write;
reg[255:0] fifo_A_PE_10_0_x146_din;
reg fifo_A_PE_10_0_x146_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [22:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    fifo_A_A_IO_L2_in_10_x111_blk_n;
wire    ap_CS_fsm_state5;
reg    fifo_A_A_IO_L2_in_11_x112_blk_n;
reg   [0:0] cmp_i_i72_reg_635;
reg    fifo_A_PE_10_0_x146_blk_n;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state19;
wire    ap_CS_fsm_state20;
wire    ap_CS_fsm_state21;
wire    ap_CS_fsm_state22;
wire   [255:0] local_A_pong_V_q0;
reg   [255:0] reg_337;
wire   [255:0] local_A_pong_V_q1;
reg   [255:0] reg_343;
reg   [255:0] reg_349;
reg   [255:0] reg_355;
wire   [0:0] icmp_ln890_fu_361_p2;
wire    ap_CS_fsm_state2;
wire   [0:0] cmp_i_i72_fu_367_p2;
wire   [4:0] add_ln691_575_fu_373_p2;
reg   [4:0] add_ln691_575_reg_639;
wire    ap_CS_fsm_state3;
wire   [8:0] tmp_456_cast_fu_383_p3;
reg   [8:0] tmp_456_cast_reg_644;
wire   [3:0] add_ln691_fu_397_p2;
wire   [0:0] icmp_ln890_427_fu_391_p2;
wire   [5:0] add_ln691_576_fu_403_p2;
reg   [5:0] add_ln691_576_reg_657;
wire    ap_CS_fsm_state4;
reg   [8:0] local_A_pong_V_addr_reg_662;
wire   [11:0] add_ln890_fu_429_p2;
reg   [11:0] add_ln890_reg_670;
wire    ap_CS_fsm_state6;
wire   [5:0] select_ln890_fu_453_p3;
reg   [5:0] select_ln890_reg_678;
wire   [0:0] icmp_ln890_426_fu_435_p2;
wire   [6:0] select_ln691_fu_481_p3;
reg   [6:0] select_ln691_reg_703;
wire   [7:0] zext_ln7016_1_fu_489_p1;
reg   [7:0] zext_ln7016_1_reg_708;
wire  signed [7:0] add_ln7016_2_fu_525_p2;
reg  signed [7:0] add_ln7016_2_reg_728;
wire   [8:0] zext_ln7016_fu_535_p1;
reg   [8:0] zext_ln7016_reg_738;
reg   [255:0] local_A_pong_V_load_9_reg_774;
reg   [255:0] local_A_pong_V_load_11_reg_789;
reg   [255:0] local_A_pong_V_load_13_reg_804;
reg   [255:0] local_A_pong_V_load_15_reg_809;
reg   [8:0] local_A_pong_V_address0;
reg    local_A_pong_V_ce0;
reg   [8:0] local_A_pong_V_address1;
reg    local_A_pong_V_ce1;
reg    local_A_pong_V_we1;
reg   [3:0] c3_V_reg_270;
reg    ap_block_state1;
reg   [4:0] c4_V_reg_282;
wire   [0:0] icmp_ln890_429_fu_423_p2;
reg   [5:0] c5_V_27_reg_293;
reg    ap_block_state5;
reg   [11:0] indvar_flatten_reg_304;
reg   [5:0] c5_V_reg_315;
reg   [6:0] c6_V_reg_326;
wire   [63:0] zext_ln6999_1_fu_418_p1;
wire   [63:0] zext_ln890_fu_461_p1;
wire   [63:0] tmp_s_fu_466_p3;
wire   [63:0] zext_ln7016_3_fu_501_p1;
wire   [63:0] zext_ln7016_4_fu_512_p1;
wire   [63:0] tmp_121_fu_517_p3;
wire   [63:0] zext_ln7016_5_fu_530_p1;
wire   [63:0] tmp_122_fu_538_p3;
wire   [63:0] zext_ln7016_6_fu_552_p1;
wire   [63:0] tmp_123_fu_557_p3;
wire   [63:0] zext_ln7016_7_fu_570_p1;
wire   [63:0] tmp_124_fu_575_p3;
wire   [63:0] zext_ln7016_8_fu_588_p1;
wire   [63:0] tmp_125_fu_593_p3;
wire   [63:0] zext_ln7016_9_fu_604_p1;
wire   [63:0] tmp_126_fu_609_p3;
wire   [63:0] zext_ln7016_10_fu_626_p1;
wire   [3:0] trunc_ln6999_fu_379_p1;
wire   [8:0] zext_ln6999_fu_409_p1;
wire   [8:0] add_ln6999_fu_413_p2;
wire   [0:0] icmp_ln890_428_fu_447_p2;
wire   [5:0] add_ln691_573_fu_441_p2;
wire   [6:0] add_ln691_574_fu_475_p2;
wire   [6:0] zext_ln7016_2_fu_492_p1;
wire   [6:0] add_ln7016_fu_495_p2;
wire   [7:0] add_ln7016_1_fu_506_p2;
wire   [8:0] add_ln7016_3_fu_546_p2;
wire   [8:0] add_ln7016_4_fu_565_p2;
wire   [8:0] add_ln7016_5_fu_583_p2;
wire  signed [8:0] sext_ln7016_fu_601_p1;
wire   [5:0] xor_ln7016_fu_617_p2;
wire  signed [8:0] sext_ln7016_1_fu_622_p1;
wire    ap_CS_fsm_state23;
reg   [22:0] ap_NS_fsm;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 23'd1;
end

top_A_IO_L2_in_0_x0_local_A_pong_V #(
    .DataWidth( 256 ),
    .AddressRange( 512 ),
    .AddressWidth( 9 ))
local_A_pong_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(local_A_pong_V_address0),
    .ce0(local_A_pong_V_ce0),
    .q0(local_A_pong_V_q0),
    .address1(local_A_pong_V_address1),
    .ce1(local_A_pong_V_ce1),
    .we1(local_A_pong_V_we1),
    .d1(fifo_A_A_IO_L2_in_10_x111_dout),
    .q1(local_A_pong_V_q1)
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
        end else if ((1'b1 == ap_CS_fsm_state23)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        c3_V_reg_270 <= 4'd10;
    end else if (((icmp_ln890_427_fu_391_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        c3_V_reg_270 <= add_ln691_fu_397_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln890_fu_361_p2 == 1'd0))) begin
        c4_V_reg_282 <= 5'd0;
    end else if (((icmp_ln890_429_fu_423_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        c4_V_reg_282 <= add_ln691_575_reg_639;
    end
end

always @ (posedge ap_clk) begin
    if ((~((fifo_A_A_IO_L2_in_10_x111_empty_n == 1'b0) | ((cmp_i_i72_reg_635 == 1'd0) & (fifo_A_A_IO_L2_in_11_x112_full_n == 1'b0))) & (1'b1 == ap_CS_fsm_state5))) begin
        c5_V_27_reg_293 <= add_ln691_576_reg_657;
    end else if (((icmp_ln890_427_fu_391_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        c5_V_27_reg_293 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln890_fu_361_p2 == 1'd1))) begin
        c5_V_reg_315 <= 6'd0;
    end else if (((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
        c5_V_reg_315 <= select_ln890_reg_678;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln890_fu_361_p2 == 1'd1))) begin
        c6_V_reg_326 <= 7'd0;
    end else if (((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
        c6_V_reg_326 <= select_ln691_reg_703;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln890_fu_361_p2 == 1'd1))) begin
        indvar_flatten_reg_304 <= 12'd0;
    end else if (((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
        indvar_flatten_reg_304 <= add_ln890_reg_670;
    end
end

always @ (posedge ap_clk) begin
    if ((((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state11)) | ((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state9)))) begin
        reg_337 <= local_A_pong_V_q1;
    end else if (((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state7))) begin
        reg_337 <= local_A_pong_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state10)) | ((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        reg_343 <= local_A_pong_V_q1;
    end else if (((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
        reg_343 <= local_A_pong_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((fifo_A_PE_10_0_x146_full_n == 1'b1)) begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            reg_349 <= local_A_pong_V_q1;
        end else if ((1'b1 == ap_CS_fsm_state9)) begin
            reg_349 <= local_A_pong_V_q0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((fifo_A_PE_10_0_x146_full_n == 1'b1)) begin
        if ((1'b1 == ap_CS_fsm_state14)) begin
            reg_355 <= local_A_pong_V_q1;
        end else if ((1'b1 == ap_CS_fsm_state10)) begin
            reg_355 <= local_A_pong_V_q0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln691_575_reg_639 <= add_ln691_575_fu_373_p2;
        tmp_456_cast_reg_644[8 : 5] <= tmp_456_cast_fu_383_p3[8 : 5];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        add_ln691_576_reg_657 <= add_ln691_576_fu_403_p2;
        local_A_pong_V_addr_reg_662 <= zext_ln6999_1_fu_418_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        add_ln7016_2_reg_728 <= add_ln7016_2_fu_525_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        add_ln890_reg_670 <= add_ln890_fu_429_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln890_fu_361_p2 == 1'd0))) begin
        cmp_i_i72_reg_635 <= cmp_i_i72_fu_367_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        local_A_pong_V_load_11_reg_789 <= local_A_pong_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        local_A_pong_V_load_13_reg_804 <= local_A_pong_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        local_A_pong_V_load_15_reg_809 <= local_A_pong_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        local_A_pong_V_load_9_reg_774 <= local_A_pong_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_426_fu_435_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        select_ln691_reg_703 <= select_ln691_fu_481_p3;
        select_ln890_reg_678 <= select_ln890_fu_453_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        zext_ln7016_1_reg_708[5 : 0] <= zext_ln7016_1_fu_489_p1[5 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        zext_ln7016_reg_738[5 : 0] <= zext_ln7016_fu_535_p1[5 : 0];
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
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
    if ((1'b1 == ap_CS_fsm_state23)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        fifo_A_A_IO_L2_in_10_x111_blk_n = fifo_A_A_IO_L2_in_10_x111_empty_n;
    end else begin
        fifo_A_A_IO_L2_in_10_x111_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((fifo_A_A_IO_L2_in_10_x111_empty_n == 1'b0) | ((cmp_i_i72_reg_635 == 1'd0) & (fifo_A_A_IO_L2_in_11_x112_full_n == 1'b0))) & (1'b1 == ap_CS_fsm_state5))) begin
        fifo_A_A_IO_L2_in_10_x111_read = 1'b1;
    end else begin
        fifo_A_A_IO_L2_in_10_x111_read = 1'b0;
    end
end

always @ (*) begin
    if (((cmp_i_i72_reg_635 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        fifo_A_A_IO_L2_in_11_x112_blk_n = fifo_A_A_IO_L2_in_11_x112_full_n;
    end else begin
        fifo_A_A_IO_L2_in_11_x112_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((fifo_A_A_IO_L2_in_10_x111_empty_n == 1'b0) | ((cmp_i_i72_reg_635 == 1'd0) & (fifo_A_A_IO_L2_in_11_x112_full_n == 1'b0))) & (cmp_i_i72_reg_635 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        fifo_A_A_IO_L2_in_11_x112_write = 1'b1;
    end else begin
        fifo_A_A_IO_L2_in_11_x112_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12))) begin
        fifo_A_PE_10_0_x146_blk_n = fifo_A_PE_10_0_x146_full_n;
    end else begin
        fifo_A_PE_10_0_x146_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
        fifo_A_PE_10_0_x146_din = local_A_pong_V_load_15_reg_809;
    end else if (((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state20))) begin
        fifo_A_PE_10_0_x146_din = local_A_pong_V_load_13_reg_804;
    end else if (((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state18))) begin
        fifo_A_PE_10_0_x146_din = local_A_pong_V_load_11_reg_789;
    end else if (((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state16))) begin
        fifo_A_PE_10_0_x146_din = local_A_pong_V_load_9_reg_774;
    end else if ((((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state21)) | ((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state14)))) begin
        fifo_A_PE_10_0_x146_din = reg_355;
    end else if ((((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state17)) | ((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state12)))) begin
        fifo_A_PE_10_0_x146_din = reg_349;
    end else if ((((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state10)) | ((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state19)) | ((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        fifo_A_PE_10_0_x146_din = reg_343;
    end else if ((((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state11)) | ((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state9)) | ((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state15)))) begin
        fifo_A_PE_10_0_x146_din = reg_337;
    end else if ((((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state8)) | ((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state7)))) begin
        fifo_A_PE_10_0_x146_din = local_A_pong_V_q1;
    end else begin
        fifo_A_PE_10_0_x146_din = 'bx;
    end
end

always @ (*) begin
    if ((((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state11)) | ((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state10)) | ((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state9)) | ((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state8)) | ((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state7)) | ((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state22)) | ((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state21)) | ((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state20)) | ((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state19)) | ((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state18)) | ((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state17)) | ((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state16)) | ((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state15)) | ((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state14)) | ((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state13)) | ((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state12)))) begin
        fifo_A_PE_10_0_x146_write = 1'b1;
    end else begin
        fifo_A_PE_10_0_x146_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        local_A_pong_V_address0 = zext_ln7016_10_fu_626_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        local_A_pong_V_address0 = zext_ln7016_9_fu_604_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        local_A_pong_V_address0 = zext_ln7016_8_fu_588_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        local_A_pong_V_address0 = zext_ln7016_7_fu_570_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        local_A_pong_V_address0 = zext_ln7016_6_fu_552_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        local_A_pong_V_address0 = zext_ln7016_5_fu_530_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        local_A_pong_V_address0 = zext_ln7016_4_fu_512_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        local_A_pong_V_address0 = tmp_s_fu_466_p3;
    end else begin
        local_A_pong_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        local_A_pong_V_address1 = tmp_126_fu_609_p3;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        local_A_pong_V_address1 = tmp_125_fu_593_p3;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        local_A_pong_V_address1 = tmp_124_fu_575_p3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        local_A_pong_V_address1 = tmp_123_fu_557_p3;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        local_A_pong_V_address1 = tmp_122_fu_538_p3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        local_A_pong_V_address1 = tmp_121_fu_517_p3;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        local_A_pong_V_address1 = zext_ln7016_3_fu_501_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        local_A_pong_V_address1 = zext_ln890_fu_461_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        local_A_pong_V_address1 = local_A_pong_V_addr_reg_662;
    end else begin
        local_A_pong_V_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | ((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state11)) | ((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state10)) | ((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state9)) | ((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state8)) | ((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state7)) | ((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state13)) | ((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state12)))) begin
        local_A_pong_V_ce0 = 1'b1;
    end else begin
        local_A_pong_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (~((fifo_A_A_IO_L2_in_10_x111_empty_n == 1'b0) | ((cmp_i_i72_reg_635 == 1'd0) & (fifo_A_A_IO_L2_in_11_x112_full_n == 1'b0))) & (1'b1 == ap_CS_fsm_state5)) | ((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state11)) | ((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state10)) | ((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state9)) | ((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state8)) | ((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state7)) | ((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state13)) | ((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state12)))) begin
        local_A_pong_V_ce1 = 1'b1;
    end else begin
        local_A_pong_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((~((fifo_A_A_IO_L2_in_10_x111_empty_n == 1'b0) | ((cmp_i_i72_reg_635 == 1'd0) & (fifo_A_A_IO_L2_in_11_x112_full_n == 1'b0))) & (cmp_i_i72_reg_635 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        local_A_pong_V_we1 = 1'b1;
    end else begin
        local_A_pong_V_we1 = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln890_fu_361_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln890_427_fu_391_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln890_429_fu_423_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if ((~((fifo_A_A_IO_L2_in_10_x111_empty_n == 1'b0) | ((cmp_i_i72_reg_635 == 1'd0) & (fifo_A_A_IO_L2_in_11_x112_full_n == 1'b0))) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((icmp_ln890_426_fu_435_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state23;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            if (((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            if (((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            if (((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state12 : begin
            if (((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state13 : begin
            if (((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state14 : begin
            if (((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state15 : begin
            if (((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state15))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        ap_ST_fsm_state16 : begin
            if (((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state16))) begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end
        end
        ap_ST_fsm_state17 : begin
            if (((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        ap_ST_fsm_state18 : begin
            if (((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state18))) begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end
        end
        ap_ST_fsm_state19 : begin
            if (((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state19))) begin
                ap_NS_fsm = ap_ST_fsm_state20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end
        end
        ap_ST_fsm_state20 : begin
            if (((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state20))) begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state20;
            end
        end
        ap_ST_fsm_state21 : begin
            if (((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state21))) begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end
        end
        ap_ST_fsm_state22 : begin
            if (((fifo_A_PE_10_0_x146_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln691_573_fu_441_p2 = (c5_V_reg_315 + 6'd1);

assign add_ln691_574_fu_475_p2 = (c6_V_reg_326 + 7'd1);

assign add_ln691_575_fu_373_p2 = (c4_V_reg_282 + 5'd1);

assign add_ln691_576_fu_403_p2 = (c5_V_27_reg_293 + 6'd1);

assign add_ln691_fu_397_p2 = (c3_V_reg_270 + 4'd1);

assign add_ln6999_fu_413_p2 = (tmp_456_cast_reg_644 + zext_ln6999_fu_409_p1);

assign add_ln7016_1_fu_506_p2 = (zext_ln7016_1_fu_489_p1 + 8'd96);

assign add_ln7016_2_fu_525_p2 = ($signed(zext_ln7016_1_reg_708) + $signed(8'd160));

assign add_ln7016_3_fu_546_p2 = (zext_ln7016_fu_535_p1 + 9'd224);

assign add_ln7016_4_fu_565_p2 = ($signed(zext_ln7016_reg_738) + $signed(9'd288));

assign add_ln7016_5_fu_583_p2 = ($signed(zext_ln7016_reg_738) + $signed(9'd352));

assign add_ln7016_fu_495_p2 = (zext_ln7016_2_fu_492_p1 + 7'd32);

assign add_ln890_fu_429_p2 = (indvar_flatten_reg_304 + 12'd1);

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

assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];

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
    ap_block_state5 = ((fifo_A_A_IO_L2_in_10_x111_empty_n == 1'b0) | ((cmp_i_i72_reg_635 == 1'd0) & (fifo_A_A_IO_L2_in_11_x112_full_n == 1'b0)));
end

assign cmp_i_i72_fu_367_p2 = ((c3_V_reg_270 == 4'd10) ? 1'b1 : 1'b0);

assign fifo_A_A_IO_L2_in_11_x112_din = fifo_A_A_IO_L2_in_10_x111_dout;

assign icmp_ln890_426_fu_435_p2 = ((indvar_flatten_reg_304 == 12'd2048) ? 1'b1 : 1'b0);

assign icmp_ln890_427_fu_391_p2 = ((c4_V_reg_282 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln890_428_fu_447_p2 = ((c6_V_reg_326 == 7'd64) ? 1'b1 : 1'b0);

assign icmp_ln890_429_fu_423_p2 = ((c5_V_27_reg_293 == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln890_fu_361_p2 = ((c3_V_reg_270 == 4'd13) ? 1'b1 : 1'b0);

assign select_ln691_fu_481_p3 = ((icmp_ln890_428_fu_447_p2[0:0] == 1'b1) ? 7'd1 : add_ln691_574_fu_475_p2);

assign select_ln890_fu_453_p3 = ((icmp_ln890_428_fu_447_p2[0:0] == 1'b1) ? add_ln691_573_fu_441_p2 : c5_V_reg_315);

assign sext_ln7016_1_fu_622_p1 = $signed(xor_ln7016_fu_617_p2);

assign sext_ln7016_fu_601_p1 = add_ln7016_2_reg_728;

assign tmp_121_fu_517_p3 = {{58'd2}, {select_ln890_reg_678}};

assign tmp_122_fu_538_p3 = {{58'd3}, {select_ln890_reg_678}};

assign tmp_123_fu_557_p3 = {{58'd4}, {select_ln890_reg_678}};

assign tmp_124_fu_575_p3 = {{58'd5}, {select_ln890_reg_678}};

assign tmp_125_fu_593_p3 = {{58'd6}, {select_ln890_reg_678}};

assign tmp_126_fu_609_p3 = {{58'd7}, {select_ln890_reg_678}};

assign tmp_456_cast_fu_383_p3 = {{trunc_ln6999_fu_379_p1}, {5'd0}};

assign tmp_s_fu_466_p3 = {{58'd1}, {select_ln890_fu_453_p3}};

assign trunc_ln6999_fu_379_p1 = c4_V_reg_282[3:0];

assign xor_ln7016_fu_617_p2 = (select_ln890_reg_678 ^ 6'd32);

assign zext_ln6999_1_fu_418_p1 = add_ln6999_fu_413_p2;

assign zext_ln6999_fu_409_p1 = c5_V_27_reg_293;

assign zext_ln7016_10_fu_626_p1 = $unsigned(sext_ln7016_1_fu_622_p1);

assign zext_ln7016_1_fu_489_p1 = select_ln890_reg_678;

assign zext_ln7016_2_fu_492_p1 = select_ln890_reg_678;

assign zext_ln7016_3_fu_501_p1 = add_ln7016_fu_495_p2;

assign zext_ln7016_4_fu_512_p1 = add_ln7016_1_fu_506_p2;

assign zext_ln7016_5_fu_530_p1 = $unsigned(add_ln7016_2_fu_525_p2);

assign zext_ln7016_6_fu_552_p1 = add_ln7016_3_fu_546_p2;

assign zext_ln7016_7_fu_570_p1 = add_ln7016_4_fu_565_p2;

assign zext_ln7016_8_fu_588_p1 = add_ln7016_5_fu_583_p2;

assign zext_ln7016_9_fu_604_p1 = $unsigned(sext_ln7016_fu_601_p1);

assign zext_ln7016_fu_535_p1 = select_ln890_reg_678;

assign zext_ln890_fu_461_p1 = select_ln890_fu_453_p3;

always @ (posedge ap_clk) begin
    tmp_456_cast_reg_644[4:0] <= 5'b00000;
    zext_ln7016_1_reg_708[7:6] <= 2'b00;
    zext_ln7016_reg_738[8:6] <= 3'b000;
end

endmodule //top_A_IO_L2_in_10_x1
