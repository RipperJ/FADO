// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module top_B_IO_L3_in_x1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        fifo_B_B_IO_L2_in_0_x114_din,
        fifo_B_B_IO_L2_in_0_x114_full_n,
        fifo_B_B_IO_L2_in_0_x114_write,
        B_address1,
        B_ce1,
        B_q1
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [255:0] fifo_B_B_IO_L2_in_0_x114_din;
input   fifo_B_B_IO_L2_in_0_x114_full_n;
output   fifo_B_B_IO_L2_in_0_x114_write;
output  [9:0] B_address1;
output   B_ce1;
input  [31:0] B_q1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg fifo_B_B_IO_L2_in_0_x114_write;
reg B_ce1;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    fifo_B_B_IO_L2_in_0_x114_blk_n;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln878_55_fu_138_p2;
wire   [10:0] i_V_3_fu_111_p2;
reg   [10:0] i_V_3_reg_165;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln878_fu_117_p2;
wire  signed [256:0] mem_data_V_cast_fu_128_p1;
wire    ap_CS_fsm_state3;
wire   [1:0] add_ln691_fu_132_p2;
reg    ap_block_state4;
wire   [256:0] select_ln0_fu_157_p3;
reg   [10:0] i_V_reg_80;
reg    ap_block_state1;
reg   [1:0] p_V_reg_91;
reg   [256:0] p_Val2_s_reg_102;
wire   [63:0] zext_ln534_fu_123_p1;
wire   [0:0] tmp_fu_149_p3;
reg   [3:0] ap_NS_fsm;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
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
        end else if (((icmp_ln878_fu_117_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((icmp_ln878_55_fu_138_p2 == 1'd0) & (fifo_B_B_IO_L2_in_0_x114_full_n == 1'b0)) & (icmp_ln878_55_fu_138_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        i_V_reg_80 <= i_V_3_reg_165;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_V_reg_80 <= 11'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        p_V_reg_91 <= 2'd0;
    end else if ((~((icmp_ln878_55_fu_138_p2 == 1'd0) & (fifo_B_B_IO_L2_in_0_x114_full_n == 1'b0)) & (icmp_ln878_55_fu_138_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        p_V_reg_91 <= add_ln691_fu_132_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        p_Val2_s_reg_102 <= mem_data_V_cast_fu_128_p1;
    end else if ((~((icmp_ln878_55_fu_138_p2 == 1'd0) & (fifo_B_B_IO_L2_in_0_x114_full_n == 1'b0)) & (icmp_ln878_55_fu_138_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        p_Val2_s_reg_102 <= select_ln0_fu_157_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_V_3_reg_165 <= i_V_3_fu_111_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        B_ce1 = 1'b1;
    end else begin
        B_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln878_fu_117_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln878_fu_117_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln878_55_fu_138_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        fifo_B_B_IO_L2_in_0_x114_blk_n = fifo_B_B_IO_L2_in_0_x114_full_n;
    end else begin
        fifo_B_B_IO_L2_in_0_x114_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((icmp_ln878_55_fu_138_p2 == 1'd0) & (fifo_B_B_IO_L2_in_0_x114_full_n == 1'b0)) & (icmp_ln878_55_fu_138_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        fifo_B_B_IO_L2_in_0_x114_write = 1'b1;
    end else begin
        fifo_B_B_IO_L2_in_0_x114_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln878_fu_117_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if ((~((icmp_ln878_55_fu_138_p2 == 1'd0) & (fifo_B_B_IO_L2_in_0_x114_full_n == 1'b0)) & (icmp_ln878_55_fu_138_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else if ((~((icmp_ln878_55_fu_138_p2 == 1'd0) & (fifo_B_B_IO_L2_in_0_x114_full_n == 1'b0)) & (icmp_ln878_55_fu_138_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign B_address1 = zext_ln534_fu_123_p1;

assign add_ln691_fu_132_p2 = (p_V_reg_91 + 2'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state4 = ((icmp_ln878_55_fu_138_p2 == 1'd0) & (fifo_B_B_IO_L2_in_0_x114_full_n == 1'b0));
end

assign fifo_B_B_IO_L2_in_0_x114_din = p_Val2_s_reg_102[255:0];

assign i_V_3_fu_111_p2 = (i_V_reg_80 + 11'd1);

assign icmp_ln878_55_fu_138_p2 = ((p_V_reg_91 == 2'd2) ? 1'b1 : 1'b0);

assign icmp_ln878_fu_117_p2 = ((i_V_reg_80 == 11'd1024) ? 1'b1 : 1'b0);

assign mem_data_V_cast_fu_128_p1 = $signed(B_q1);

assign select_ln0_fu_157_p3 = ((tmp_fu_149_p3[0:0] == 1'b1) ? 257'd115792089237316195423570985008687907853269984665640564039457584007913129639935 : 257'd0);

assign tmp_fu_149_p3 = p_Val2_s_reg_102[32'd256];

assign zext_ln534_fu_123_p1 = i_V_reg_80;

endmodule //top_B_IO_L3_in_x1
