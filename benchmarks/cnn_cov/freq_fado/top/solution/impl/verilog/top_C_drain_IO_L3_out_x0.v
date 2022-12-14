// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module top_C_drain_IO_L3_out_x0 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        fifo_C_drain_C_drain_IO_L2_out_0_x0135_dout,
        fifo_C_drain_C_drain_IO_L2_out_0_x0135_empty_n,
        fifo_C_drain_C_drain_IO_L2_out_0_x0135_read,
        C_address0,
        C_ce0,
        C_we0,
        C_d0
);

parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_pp0_stage0 = 10'd2;
parameter    ap_ST_fsm_pp0_stage1 = 10'd4;
parameter    ap_ST_fsm_pp0_stage2 = 10'd8;
parameter    ap_ST_fsm_pp0_stage3 = 10'd16;
parameter    ap_ST_fsm_pp0_stage4 = 10'd32;
parameter    ap_ST_fsm_pp0_stage5 = 10'd64;
parameter    ap_ST_fsm_pp0_stage6 = 10'd128;
parameter    ap_ST_fsm_pp0_stage7 = 10'd256;
parameter    ap_ST_fsm_state12 = 10'd512;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [63:0] fifo_C_drain_C_drain_IO_L2_out_0_x0135_dout;
input   fifo_C_drain_C_drain_IO_L2_out_0_x0135_empty_n;
output   fifo_C_drain_C_drain_IO_L2_out_0_x0135_read;
output  [11:0] C_address0;
output   C_ce0;
output   C_we0;
output  [511:0] C_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg fifo_C_drain_C_drain_IO_L2_out_0_x0135_read;
reg C_ce0;
reg C_we0;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    fifo_C_drain_C_drain_IO_L2_out_0_x0135_blk_n;
wire    ap_CS_fsm_pp0_stage1;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage1;
reg   [0:0] icmp_ln5357_reg_97;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [11:0] i_V_reg_55;
reg   [11:0] i_V_reg_55_pp0_iter1_reg;
wire    ap_block_state2_pp0_stage0_iter0;
reg    ap_block_state10_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln5357_fu_67_p2;
reg   [0:0] icmp_ln5357_reg_97_pp0_iter1_reg;
reg   [63:0] v2_V_reg_101;
reg    ap_block_state3_pp0_stage1_iter0;
wire    ap_block_state11_pp0_stage1_iter1;
reg    ap_block_pp0_stage1_11001;
reg   [63:0] v2_V_1134_reg_106;
reg    ap_block_state4_pp0_stage2_iter0;
reg    ap_block_pp0_stage2_11001;
reg   [63:0] v2_V_1135_reg_111;
reg    ap_block_state5_pp0_stage3_iter0;
reg    ap_block_pp0_stage3_11001;
reg   [63:0] v2_V_1136_reg_116;
reg    ap_block_state6_pp0_stage4_iter0;
reg    ap_block_pp0_stage4_11001;
reg   [63:0] v2_V_1137_reg_121;
reg    ap_block_state7_pp0_stage5_iter0;
reg    ap_block_pp0_stage5_11001;
reg   [63:0] v2_V_1138_reg_126;
reg    ap_block_state8_pp0_stage6_iter0;
reg    ap_block_pp0_stage6_11001;
wire   [11:0] i_V_3_fu_73_p2;
reg   [11:0] i_V_3_reg_131;
reg    ap_block_state9_pp0_stage7_iter0;
reg    ap_block_pp0_stage7_11001;
reg   [63:0] v2_V_1139_reg_136;
reg   [63:0] v1_V_reg_141;
reg    ap_block_state1;
reg    ap_block_pp0_stage7_subdone;
reg    ap_condition_pp0_exit_iter0_state9;
reg   [11:0] ap_phi_mux_i_V_phi_fu_59_p4;
wire   [63:0] zext_ln534_fu_92_p1;
wire    ap_CS_fsm_state12;
reg   [9:0] ap_NS_fsm;
reg    ap_block_pp0_stage0_subdone;
reg    ap_block_pp0_stage1_subdone;
reg    ap_block_pp0_stage2_subdone;
reg    ap_block_pp0_stage3_subdone;
reg    ap_block_pp0_stage4_subdone;
reg    ap_block_pp0_stage5_subdone;
reg    ap_block_pp0_stage6_subdone;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 10'd1;
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
        end else if ((1'b1 == ap_CS_fsm_state12)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state9) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state9) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state9);
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln5357_reg_97 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        i_V_reg_55 <= i_V_3_reg_131;
    end else if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_V_reg_55 <= 12'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        i_V_3_reg_131 <= i_V_3_fu_73_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_V_reg_55_pp0_iter1_reg <= i_V_reg_55;
        icmp_ln5357_reg_97 <= icmp_ln5357_fu_67_p2;
        icmp_ln5357_reg_97_pp0_iter1_reg <= icmp_ln5357_reg_97;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln5357_reg_97 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        v1_V_reg_141 <= fifo_C_drain_C_drain_IO_L2_out_0_x0135_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln5357_reg_97 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_V_1134_reg_106 <= fifo_C_drain_C_drain_IO_L2_out_0_x0135_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln5357_reg_97 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_V_1135_reg_111 <= fifo_C_drain_C_drain_IO_L2_out_0_x0135_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln5357_reg_97 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_V_1136_reg_116 <= fifo_C_drain_C_drain_IO_L2_out_0_x0135_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln5357_reg_97 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v2_V_1137_reg_121 <= fifo_C_drain_C_drain_IO_L2_out_0_x0135_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln5357_reg_97 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_V_1138_reg_126 <= fifo_C_drain_C_drain_IO_L2_out_0_x0135_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln5357_reg_97 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v2_V_1139_reg_136 <= fifo_C_drain_C_drain_IO_L2_out_0_x0135_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln5357_reg_97 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_V_reg_101 <= fifo_C_drain_C_drain_IO_L2_out_0_x0135_dout;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        C_ce0 = 1'b1;
    end else begin
        C_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln5357_reg_97_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        C_we0 = 1'b1;
    end else begin
        C_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln5357_reg_97 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state9 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state9 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
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
    if (((icmp_ln5357_reg_97 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ap_phi_mux_i_V_phi_fu_59_p4 = i_V_3_reg_131;
    end else begin
        ap_phi_mux_i_V_phi_fu_59_p4 = i_V_reg_55;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln5357_reg_97 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((icmp_ln5357_reg_97 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln5357_reg_97 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln5357_reg_97 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln5357_reg_97 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((icmp_ln5357_reg_97 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln5357_reg_97 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln5357_reg_97 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        fifo_C_drain_C_drain_IO_L2_out_0_x0135_blk_n = fifo_C_drain_C_drain_IO_L2_out_0_x0135_empty_n;
    end else begin
        fifo_C_drain_C_drain_IO_L2_out_0_x0135_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((icmp_ln5357_reg_97 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln5357_reg_97 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln5357_reg_97 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln5357_reg_97 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((icmp_ln5357_reg_97 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln5357_reg_97 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln5357_reg_97 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln5357_reg_97 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1)))) begin
        fifo_C_drain_C_drain_IO_L2_out_0_x0135_read = 1'b1;
    end else begin
        fifo_C_drain_C_drain_IO_L2_out_0_x0135_read = 1'b0;
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
            if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((~((icmp_ln5357_reg_97 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1)) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((icmp_ln5357_reg_97 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign C_address0 = zext_ln534_fu_92_p1;

assign C_d0 = {{{{{{{{v1_V_reg_141}, {v2_V_1139_reg_136}}, {v2_V_1138_reg_126}}, {v2_V_1137_reg_121}}, {v2_V_1136_reg_116}}, {v2_V_1135_reg_111}}, {v2_V_1134_reg_106}}, {v2_V_reg_101}};

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd8];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd9];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((icmp_ln5357_reg_97 == 1'd0) & (fifo_C_drain_C_drain_IO_L2_out_0_x0135_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((icmp_ln5357_reg_97 == 1'd0) & (fifo_C_drain_C_drain_IO_L2_out_0_x0135_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage1_11001 = ((icmp_ln5357_reg_97 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (fifo_C_drain_C_drain_IO_L2_out_0_x0135_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_pp0_stage1_subdone = ((icmp_ln5357_reg_97 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (fifo_C_drain_C_drain_IO_L2_out_0_x0135_empty_n == 1'b0));
end

assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage2_11001 = ((icmp_ln5357_reg_97 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (fifo_C_drain_C_drain_IO_L2_out_0_x0135_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_pp0_stage2_subdone = ((icmp_ln5357_reg_97 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (fifo_C_drain_C_drain_IO_L2_out_0_x0135_empty_n == 1'b0));
end

assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage3_11001 = ((icmp_ln5357_reg_97 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (fifo_C_drain_C_drain_IO_L2_out_0_x0135_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_pp0_stage3_subdone = ((icmp_ln5357_reg_97 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (fifo_C_drain_C_drain_IO_L2_out_0_x0135_empty_n == 1'b0));
end

assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage4_11001 = ((icmp_ln5357_reg_97 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (fifo_C_drain_C_drain_IO_L2_out_0_x0135_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_pp0_stage4_subdone = ((icmp_ln5357_reg_97 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (fifo_C_drain_C_drain_IO_L2_out_0_x0135_empty_n == 1'b0));
end

assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage5_11001 = ((icmp_ln5357_reg_97 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (fifo_C_drain_C_drain_IO_L2_out_0_x0135_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_pp0_stage5_subdone = ((icmp_ln5357_reg_97 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (fifo_C_drain_C_drain_IO_L2_out_0_x0135_empty_n == 1'b0));
end

assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage6_11001 = ((icmp_ln5357_reg_97 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (fifo_C_drain_C_drain_IO_L2_out_0_x0135_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_pp0_stage6_subdone = ((icmp_ln5357_reg_97 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (fifo_C_drain_C_drain_IO_L2_out_0_x0135_empty_n == 1'b0));
end

assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage7_11001 = ((icmp_ln5357_reg_97 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (fifo_C_drain_C_drain_IO_L2_out_0_x0135_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_pp0_stage7_subdone = ((icmp_ln5357_reg_97 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (fifo_C_drain_C_drain_IO_L2_out_0_x0135_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

always @ (*) begin
    ap_block_state10_pp0_stage0_iter1 = ((icmp_ln5357_reg_97 == 1'd0) & (fifo_C_drain_C_drain_IO_L2_out_0_x0135_empty_n == 1'b0));
end

assign ap_block_state11_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_pp0_stage1_iter0 = ((icmp_ln5357_reg_97 == 1'd0) & (fifo_C_drain_C_drain_IO_L2_out_0_x0135_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state4_pp0_stage2_iter0 = ((icmp_ln5357_reg_97 == 1'd0) & (fifo_C_drain_C_drain_IO_L2_out_0_x0135_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state5_pp0_stage3_iter0 = ((icmp_ln5357_reg_97 == 1'd0) & (fifo_C_drain_C_drain_IO_L2_out_0_x0135_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state6_pp0_stage4_iter0 = ((icmp_ln5357_reg_97 == 1'd0) & (fifo_C_drain_C_drain_IO_L2_out_0_x0135_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state7_pp0_stage5_iter0 = ((icmp_ln5357_reg_97 == 1'd0) & (fifo_C_drain_C_drain_IO_L2_out_0_x0135_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state8_pp0_stage6_iter0 = ((icmp_ln5357_reg_97 == 1'd0) & (fifo_C_drain_C_drain_IO_L2_out_0_x0135_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state9_pp0_stage7_iter0 = ((icmp_ln5357_reg_97 == 1'd0) & (fifo_C_drain_C_drain_IO_L2_out_0_x0135_empty_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign i_V_3_fu_73_p2 = (i_V_reg_55 + 12'd1);

assign icmp_ln5357_fu_67_p2 = ((ap_phi_mux_i_V_phi_fu_59_p4 == 12'd2048) ? 1'b1 : 1'b0);

assign zext_ln534_fu_92_p1 = i_V_reg_55_pp0_iter1_reg;

endmodule //top_C_drain_IO_L3_out_x0
