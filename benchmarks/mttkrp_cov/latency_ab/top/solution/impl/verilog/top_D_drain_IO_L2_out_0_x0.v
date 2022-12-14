// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module top_D_drain_IO_L2_out_0_x0 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        fifo_D_drain_D_drain_IO_L2_out_1_x0206_dout,
        fifo_D_drain_D_drain_IO_L2_out_1_x0206_empty_n,
        fifo_D_drain_D_drain_IO_L2_out_1_x0206_read,
        fifo_D_drain_D_drain_IO_L2_out_0_x0205_din,
        fifo_D_drain_D_drain_IO_L2_out_0_x0205_full_n,
        fifo_D_drain_D_drain_IO_L2_out_0_x0205_write,
        fifo_D_drain_D_drain_IO_L1_out_0_0_x0173_dout,
        fifo_D_drain_D_drain_IO_L1_out_0_0_x0173_empty_n,
        fifo_D_drain_D_drain_IO_L1_out_0_0_x0173_read
);

parameter    ap_ST_fsm_state1 = 11'd1;
parameter    ap_ST_fsm_state2 = 11'd2;
parameter    ap_ST_fsm_state3 = 11'd4;
parameter    ap_ST_fsm_state4 = 11'd8;
parameter    ap_ST_fsm_state5 = 11'd16;
parameter    ap_ST_fsm_state6 = 11'd32;
parameter    ap_ST_fsm_state7 = 11'd64;
parameter    ap_ST_fsm_state8 = 11'd128;
parameter    ap_ST_fsm_state9 = 11'd256;
parameter    ap_ST_fsm_state10 = 11'd512;
parameter    ap_ST_fsm_state11 = 11'd1024;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [127:0] fifo_D_drain_D_drain_IO_L2_out_1_x0206_dout;
input   fifo_D_drain_D_drain_IO_L2_out_1_x0206_empty_n;
output   fifo_D_drain_D_drain_IO_L2_out_1_x0206_read;
output  [127:0] fifo_D_drain_D_drain_IO_L2_out_0_x0205_din;
input   fifo_D_drain_D_drain_IO_L2_out_0_x0205_full_n;
output   fifo_D_drain_D_drain_IO_L2_out_0_x0205_write;
input  [127:0] fifo_D_drain_D_drain_IO_L1_out_0_0_x0173_dout;
input   fifo_D_drain_D_drain_IO_L1_out_0_0_x0173_empty_n;
output   fifo_D_drain_D_drain_IO_L1_out_0_0_x0173_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg fifo_D_drain_D_drain_IO_L2_out_1_x0206_read;
reg[127:0] fifo_D_drain_D_drain_IO_L2_out_0_x0205_din;
reg fifo_D_drain_D_drain_IO_L2_out_0_x0205_write;
reg fifo_D_drain_D_drain_IO_L1_out_0_0_x0173_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    fifo_D_drain_D_drain_IO_L2_out_1_x0206_blk_n;
wire    ap_CS_fsm_state8;
reg    fifo_D_drain_D_drain_IO_L2_out_0_x0205_blk_n;
wire    ap_CS_fsm_state11;
reg    fifo_D_drain_D_drain_IO_L1_out_0_0_x0173_blk_n;
wire   [2:0] add_ln691_fu_210_p2;
reg   [2:0] add_ln691_reg_347;
wire    ap_CS_fsm_state2;
wire   [2:0] add_ln691_814_fu_222_p2;
reg   [2:0] add_ln691_814_reg_355;
wire    ap_CS_fsm_state3;
wire   [5:0] add_i_i100_cast_fu_242_p2;
reg   [5:0] add_i_i100_cast_reg_363;
wire   [0:0] icmp_ln890_668_fu_228_p2;
wire   [3:0] c3_16_fu_254_p2;
reg   [3:0] c3_16_reg_371;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln12122_fu_269_p2;
reg   [0:0] icmp_ln12122_reg_379;
wire   [0:0] icmp_ln12117_fu_248_p2;
wire   [0:0] icmp_ln886_fu_264_p2;
wire   [2:0] add_ln691_816_fu_275_p2;
reg   [2:0] add_ln691_816_reg_383;
wire    ap_CS_fsm_state5;
wire   [2:0] add_ln691_815_fu_287_p2;
reg   [2:0] add_ln691_815_reg_391;
wire   [4:0] add_ln691_819_fu_299_p2;
reg   [4:0] add_ln691_819_reg_399;
wire    ap_CS_fsm_state6;
wire   [1:0] add_ln691_820_fu_311_p2;
reg   [1:0] add_ln691_820_reg_407;
wire    ap_CS_fsm_state7;
wire   [4:0] add_ln691_817_fu_323_p2;
reg   [4:0] add_ln691_817_reg_415;
wire    ap_CS_fsm_state9;
wire   [1:0] add_ln691_818_fu_335_p2;
reg   [1:0] add_ln691_818_reg_423;
wire    ap_CS_fsm_state10;
reg   [2:0] c0_V_reg_111;
reg    ap_block_state1;
reg   [2:0] c1_V_reg_122;
wire   [0:0] icmp_ln890_fu_216_p2;
reg   [3:0] c3_reg_133;
wire   [0:0] icmp_ln890_669_fu_293_p2;
wire   [0:0] icmp_ln890_670_fu_281_p2;
reg   [2:0] c4_V_14_reg_144;
wire   [0:0] icmp_ln890_672_fu_305_p2;
reg   [2:0] c4_V_reg_155;
wire   [0:0] icmp_ln890_671_fu_329_p2;
reg   [4:0] c5_V_14_reg_166;
wire   [0:0] icmp_ln890_674_fu_317_p2;
reg   [1:0] c6_V_78_reg_177;
reg    ap_block_state8;
reg   [4:0] c5_V_reg_188;
wire   [0:0] icmp_ln890_673_fu_341_p2;
reg   [1:0] c6_V_reg_199;
reg    ap_block_state11;
wire   [5:0] p_shl_fu_234_p3;
wire   [5:0] zext_ln886_fu_260_p1;
reg   [10:0] ap_NS_fsm;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 11'd1;
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
        end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln890_fu_216_p2 == 1'd1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        c0_V_reg_111 <= 3'd0;
    end else if (((icmp_ln890_668_fu_228_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        c0_V_reg_111 <= add_ln691_reg_347;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln890_fu_216_p2 == 1'd0))) begin
        c1_V_reg_122 <= 3'd0;
    end else if (((1'b1 == ap_CS_fsm_state4) & ((icmp_ln886_fu_264_p2 == 1'd1) | (icmp_ln12117_fu_248_p2 == 1'd1)))) begin
        c1_V_reg_122 <= add_ln691_814_reg_355;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (((icmp_ln12122_reg_379 == 1'd1) & (icmp_ln890_669_fu_293_p2 == 1'd1)) | ((icmp_ln12122_reg_379 == 1'd0) & (icmp_ln890_670_fu_281_p2 == 1'd1))))) begin
        c3_reg_133 <= c3_16_reg_371;
    end else if (((icmp_ln890_668_fu_228_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        c3_reg_133 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln886_fu_264_p2 == 1'd0) & (icmp_ln12117_fu_248_p2 == 1'd0) & (icmp_ln12122_fu_269_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        c4_V_14_reg_144 <= 3'd0;
    end else if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln890_672_fu_305_p2 == 1'd1))) begin
        c4_V_14_reg_144 <= add_ln691_816_reg_383;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln886_fu_264_p2 == 1'd0) & (icmp_ln12117_fu_248_p2 == 1'd0) & (icmp_ln12122_fu_269_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        c4_V_reg_155 <= 3'd0;
    end else if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln890_671_fu_329_p2 == 1'd1))) begin
        c4_V_reg_155 <= add_ln691_815_reg_391;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln12122_reg_379 == 1'd0) & (1'b1 == ap_CS_fsm_state5) & (icmp_ln890_670_fu_281_p2 == 1'd0))) begin
        c5_V_14_reg_166 <= 5'd0;
    end else if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln890_674_fu_317_p2 == 1'd1))) begin
        c5_V_14_reg_166 <= add_ln691_819_reg_399;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln12122_reg_379 == 1'd1) & (1'b1 == ap_CS_fsm_state5) & (icmp_ln890_669_fu_293_p2 == 1'd0))) begin
        c5_V_reg_188 <= 5'd0;
    end else if (((icmp_ln890_673_fu_341_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
        c5_V_reg_188 <= add_ln691_817_reg_415;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln890_672_fu_305_p2 == 1'd0))) begin
        c6_V_78_reg_177 <= 2'd0;
    end else if ((~((fifo_D_drain_D_drain_IO_L2_out_0_x0205_full_n == 1'b0) | (fifo_D_drain_D_drain_IO_L2_out_1_x0206_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state8))) begin
        c6_V_78_reg_177 <= add_ln691_820_reg_407;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln890_671_fu_329_p2 == 1'd0))) begin
        c6_V_reg_199 <= 2'd0;
    end else if ((~((fifo_D_drain_D_drain_IO_L1_out_0_0_x0173_empty_n == 1'b0) | (fifo_D_drain_D_drain_IO_L2_out_0_x0205_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state11))) begin
        c6_V_reg_199 <= add_ln691_818_reg_423;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_668_fu_228_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        add_i_i100_cast_reg_363[5 : 3] <= add_i_i100_cast_fu_242_p2[5 : 3];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln691_814_reg_355 <= add_ln691_814_fu_222_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln12122_reg_379 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        add_ln691_815_reg_391 <= add_ln691_815_fu_287_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln12122_reg_379 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        add_ln691_816_reg_383 <= add_ln691_816_fu_275_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        add_ln691_817_reg_415 <= add_ln691_817_fu_323_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        add_ln691_818_reg_423 <= add_ln691_818_fu_335_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        add_ln691_819_reg_399 <= add_ln691_819_fu_299_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        add_ln691_820_reg_407 <= add_ln691_820_fu_311_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln691_reg_347 <= add_ln691_fu_210_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c3_16_reg_371 <= c3_16_fu_254_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln886_fu_264_p2 == 1'd0) & (icmp_ln12117_fu_248_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        icmp_ln12122_reg_379 <= icmp_ln12122_fu_269_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln890_fu_216_p2 == 1'd1))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln890_fu_216_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        fifo_D_drain_D_drain_IO_L1_out_0_0_x0173_blk_n = fifo_D_drain_D_drain_IO_L1_out_0_0_x0173_empty_n;
    end else begin
        fifo_D_drain_D_drain_IO_L1_out_0_0_x0173_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((fifo_D_drain_D_drain_IO_L1_out_0_0_x0173_empty_n == 1'b0) | (fifo_D_drain_D_drain_IO_L2_out_0_x0205_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state11))) begin
        fifo_D_drain_D_drain_IO_L1_out_0_0_x0173_read = 1'b1;
    end else begin
        fifo_D_drain_D_drain_IO_L1_out_0_0_x0173_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state8))) begin
        fifo_D_drain_D_drain_IO_L2_out_0_x0205_blk_n = fifo_D_drain_D_drain_IO_L2_out_0_x0205_full_n;
    end else begin
        fifo_D_drain_D_drain_IO_L2_out_0_x0205_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((fifo_D_drain_D_drain_IO_L1_out_0_0_x0173_empty_n == 1'b0) | (fifo_D_drain_D_drain_IO_L2_out_0_x0205_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state11))) begin
        fifo_D_drain_D_drain_IO_L2_out_0_x0205_din = fifo_D_drain_D_drain_IO_L1_out_0_0_x0173_dout;
    end else if ((~((fifo_D_drain_D_drain_IO_L2_out_0_x0205_full_n == 1'b0) | (fifo_D_drain_D_drain_IO_L2_out_1_x0206_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state8))) begin
        fifo_D_drain_D_drain_IO_L2_out_0_x0205_din = fifo_D_drain_D_drain_IO_L2_out_1_x0206_dout;
    end else begin
        fifo_D_drain_D_drain_IO_L2_out_0_x0205_din = 'bx;
    end
end

always @ (*) begin
    if (((~((fifo_D_drain_D_drain_IO_L1_out_0_0_x0173_empty_n == 1'b0) | (fifo_D_drain_D_drain_IO_L2_out_0_x0205_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state11)) | (~((fifo_D_drain_D_drain_IO_L2_out_0_x0205_full_n == 1'b0) | (fifo_D_drain_D_drain_IO_L2_out_1_x0206_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state8)))) begin
        fifo_D_drain_D_drain_IO_L2_out_0_x0205_write = 1'b1;
    end else begin
        fifo_D_drain_D_drain_IO_L2_out_0_x0205_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        fifo_D_drain_D_drain_IO_L2_out_1_x0206_blk_n = fifo_D_drain_D_drain_IO_L2_out_1_x0206_empty_n;
    end else begin
        fifo_D_drain_D_drain_IO_L2_out_1_x0206_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((fifo_D_drain_D_drain_IO_L2_out_0_x0205_full_n == 1'b0) | (fifo_D_drain_D_drain_IO_L2_out_1_x0206_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state8))) begin
        fifo_D_drain_D_drain_IO_L2_out_1_x0206_read = 1'b1;
    end else begin
        fifo_D_drain_D_drain_IO_L2_out_1_x0206_read = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln890_fu_216_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln890_668_fu_228_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & ((icmp_ln886_fu_264_p2 == 1'd1) | (icmp_ln12117_fu_248_p2 == 1'd1)))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (((icmp_ln12122_reg_379 == 1'd1) & (icmp_ln890_669_fu_293_p2 == 1'd1)) | ((icmp_ln12122_reg_379 == 1'd0) & (icmp_ln890_670_fu_281_p2 == 1'd1))))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else if (((icmp_ln12122_reg_379 == 1'd1) & (1'b1 == ap_CS_fsm_state5) & (icmp_ln890_669_fu_293_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln890_672_fu_305_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln890_674_fu_317_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            if ((~((fifo_D_drain_D_drain_IO_L2_out_0_x0205_full_n == 1'b0) | (fifo_D_drain_D_drain_IO_L2_out_1_x0206_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln890_671_fu_329_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state10 : begin
            if (((icmp_ln890_673_fu_341_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state11 : begin
            if ((~((fifo_D_drain_D_drain_IO_L1_out_0_0_x0173_empty_n == 1'b0) | (fifo_D_drain_D_drain_IO_L2_out_0_x0205_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_i_i100_cast_fu_242_p2 = ($signed(6'd41) - $signed(p_shl_fu_234_p3));

assign add_ln691_814_fu_222_p2 = (c1_V_reg_122 + 3'd1);

assign add_ln691_815_fu_287_p2 = (c4_V_reg_155 + 3'd1);

assign add_ln691_816_fu_275_p2 = (c4_V_14_reg_144 + 3'd1);

assign add_ln691_817_fu_323_p2 = (c5_V_reg_188 + 5'd1);

assign add_ln691_818_fu_335_p2 = (c6_V_reg_199 + 2'd1);

assign add_ln691_819_fu_299_p2 = (c5_V_14_reg_166 + 5'd1);

assign add_ln691_820_fu_311_p2 = (c6_V_78_reg_177 + 2'd1);

assign add_ln691_fu_210_p2 = (c0_V_reg_111 + 3'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

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
    ap_block_state11 = ((fifo_D_drain_D_drain_IO_L1_out_0_0_x0173_empty_n == 1'b0) | (fifo_D_drain_D_drain_IO_L2_out_0_x0205_full_n == 1'b0));
end

always @ (*) begin
    ap_block_state8 = ((fifo_D_drain_D_drain_IO_L2_out_0_x0205_full_n == 1'b0) | (fifo_D_drain_D_drain_IO_L2_out_1_x0206_empty_n == 1'b0));
end

assign c3_16_fu_254_p2 = (c3_reg_133 + 4'd1);

assign icmp_ln12117_fu_248_p2 = ((c3_reg_133 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln12122_fu_269_p2 = ((c3_reg_133 == 4'd0) ? 1'b1 : 1'b0);

assign icmp_ln886_fu_264_p2 = ((zext_ln886_fu_260_p1 > add_i_i100_cast_reg_363) ? 1'b1 : 1'b0);

assign icmp_ln890_668_fu_228_p2 = ((c1_V_reg_122 == 3'd6) ? 1'b1 : 1'b0);

assign icmp_ln890_669_fu_293_p2 = ((c4_V_reg_155 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln890_670_fu_281_p2 = ((c4_V_14_reg_144 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln890_671_fu_329_p2 = ((c5_V_reg_188 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln890_672_fu_305_p2 = ((c5_V_14_reg_166 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln890_673_fu_341_p2 = ((c6_V_reg_199 == 2'd2) ? 1'b1 : 1'b0);

assign icmp_ln890_674_fu_317_p2 = ((c6_V_78_reg_177 == 2'd2) ? 1'b1 : 1'b0);

assign icmp_ln890_fu_216_p2 = ((c0_V_reg_111 == 3'd4) ? 1'b1 : 1'b0);

assign p_shl_fu_234_p3 = {{c1_V_reg_122}, {3'd0}};

assign zext_ln886_fu_260_p1 = c3_reg_133;

always @ (posedge ap_clk) begin
    add_i_i100_cast_reg_363[2:0] <= 3'b001;
end

endmodule //top_D_drain_IO_L2_out_0_x0
