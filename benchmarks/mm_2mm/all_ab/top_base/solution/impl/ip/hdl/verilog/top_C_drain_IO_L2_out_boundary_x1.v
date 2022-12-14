// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module top_C_drain_IO_L2_out_boundary_x1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        fifo_C_drain_C_drain_IO_L2_out_7_x1299_din,
        fifo_C_drain_C_drain_IO_L2_out_7_x1299_full_n,
        fifo_C_drain_C_drain_IO_L2_out_7_x1299_write,
        fifo_C_drain_C_drain_IO_L1_out_7_0_x1284_dout,
        fifo_C_drain_C_drain_IO_L1_out_7_0_x1284_empty_n,
        fifo_C_drain_C_drain_IO_L1_out_7_0_x1284_read
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [127:0] fifo_C_drain_C_drain_IO_L2_out_7_x1299_din;
input   fifo_C_drain_C_drain_IO_L2_out_7_x1299_full_n;
output   fifo_C_drain_C_drain_IO_L2_out_7_x1299_write;
input  [127:0] fifo_C_drain_C_drain_IO_L1_out_7_0_x1284_dout;
input   fifo_C_drain_C_drain_IO_L1_out_7_0_x1284_empty_n;
output   fifo_C_drain_C_drain_IO_L1_out_7_0_x1284_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg fifo_C_drain_C_drain_IO_L2_out_7_x1299_write;
reg fifo_C_drain_C_drain_IO_L1_out_7_0_x1284_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    fifo_C_drain_C_drain_IO_L2_out_7_x1299_blk_n;
wire    ap_CS_fsm_state6;
reg    fifo_C_drain_C_drain_IO_L1_out_7_0_x1284_blk_n;
wire   [4:0] add_ln691_fu_110_p2;
reg   [4:0] add_ln691_reg_158;
wire    ap_CS_fsm_state2;
wire   [4:0] add_ln691_490_fu_122_p2;
reg   [4:0] add_ln691_490_reg_166;
wire    ap_CS_fsm_state3;
wire   [3:0] add_ln691_491_fu_134_p2;
reg   [3:0] add_ln691_491_reg_174;
wire    ap_CS_fsm_state4;
wire   [3:0] add_ln691_492_fu_146_p2;
reg   [3:0] add_ln691_492_reg_182;
wire    ap_CS_fsm_state5;
reg   [4:0] c0_V_reg_66;
wire   [0:0] icmp_ln890_458_fu_128_p2;
reg    ap_block_state1;
reg   [4:0] c1_V_reg_77;
wire   [0:0] icmp_ln890_459_fu_140_p2;
wire   [0:0] icmp_ln890_fu_116_p2;
reg   [3:0] c4_V_reg_88;
wire   [0:0] icmp_ln890_460_fu_152_p2;
reg   [3:0] c5_V_reg_99;
reg    ap_block_state6;
reg   [5:0] ap_NS_fsm;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 6'd1;
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
        end else if (((icmp_ln890_fu_116_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        c0_V_reg_66 <= 5'd0;
    end else if (((icmp_ln890_458_fu_128_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        c0_V_reg_66 <= add_ln691_reg_158;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_fu_116_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        c1_V_reg_77 <= 5'd0;
    end else if (((icmp_ln890_459_fu_140_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        c1_V_reg_77 <= add_ln691_490_reg_166;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_458_fu_128_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        c4_V_reg_88 <= 4'd0;
    end else if (((icmp_ln890_460_fu_152_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        c4_V_reg_88 <= add_ln691_491_reg_174;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_459_fu_140_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        c5_V_reg_99 <= 4'd0;
    end else if ((~((fifo_C_drain_C_drain_IO_L1_out_7_0_x1284_empty_n == 1'b0) | (fifo_C_drain_C_drain_IO_L2_out_7_x1299_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state6))) begin
        c5_V_reg_99 <= add_ln691_492_reg_182;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln691_490_reg_166 <= add_ln691_490_fu_122_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        add_ln691_491_reg_174 <= add_ln691_491_fu_134_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        add_ln691_492_reg_182 <= add_ln691_492_fu_146_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln691_reg_158 <= add_ln691_fu_110_p2;
    end
end

always @ (*) begin
    if (((icmp_ln890_fu_116_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln890_fu_116_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        fifo_C_drain_C_drain_IO_L1_out_7_0_x1284_blk_n = fifo_C_drain_C_drain_IO_L1_out_7_0_x1284_empty_n;
    end else begin
        fifo_C_drain_C_drain_IO_L1_out_7_0_x1284_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((fifo_C_drain_C_drain_IO_L1_out_7_0_x1284_empty_n == 1'b0) | (fifo_C_drain_C_drain_IO_L2_out_7_x1299_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state6))) begin
        fifo_C_drain_C_drain_IO_L1_out_7_0_x1284_read = 1'b1;
    end else begin
        fifo_C_drain_C_drain_IO_L1_out_7_0_x1284_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        fifo_C_drain_C_drain_IO_L2_out_7_x1299_blk_n = fifo_C_drain_C_drain_IO_L2_out_7_x1299_full_n;
    end else begin
        fifo_C_drain_C_drain_IO_L2_out_7_x1299_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((fifo_C_drain_C_drain_IO_L1_out_7_0_x1284_empty_n == 1'b0) | (fifo_C_drain_C_drain_IO_L2_out_7_x1299_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state6))) begin
        fifo_C_drain_C_drain_IO_L2_out_7_x1299_write = 1'b1;
    end else begin
        fifo_C_drain_C_drain_IO_L2_out_7_x1299_write = 1'b0;
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
            if (((icmp_ln890_fu_116_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln890_458_fu_128_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln890_459_fu_140_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((icmp_ln890_460_fu_152_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            if ((~((fifo_C_drain_C_drain_IO_L1_out_7_0_x1284_empty_n == 1'b0) | (fifo_C_drain_C_drain_IO_L2_out_7_x1299_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln691_490_fu_122_p2 = (c1_V_reg_77 + 5'd1);

assign add_ln691_491_fu_134_p2 = (c4_V_reg_88 + 4'd1);

assign add_ln691_492_fu_146_p2 = (c5_V_reg_99 + 4'd1);

assign add_ln691_fu_110_p2 = (c0_V_reg_66 + 5'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

always @ (*) begin
    ap_block_state6 = ((fifo_C_drain_C_drain_IO_L1_out_7_0_x1284_empty_n == 1'b0) | (fifo_C_drain_C_drain_IO_L2_out_7_x1299_full_n == 1'b0));
end

assign fifo_C_drain_C_drain_IO_L2_out_7_x1299_din = fifo_C_drain_C_drain_IO_L1_out_7_0_x1284_dout;

assign icmp_ln890_458_fu_128_p2 = ((c1_V_reg_77 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln890_459_fu_140_p2 = ((c4_V_reg_88 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln890_460_fu_152_p2 = ((c5_V_reg_99 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln890_fu_116_p2 = ((c0_V_reg_66 == 5'd16) ? 1'b1 : 1'b0);

endmodule //top_C_drain_IO_L2_out_boundary_x1
