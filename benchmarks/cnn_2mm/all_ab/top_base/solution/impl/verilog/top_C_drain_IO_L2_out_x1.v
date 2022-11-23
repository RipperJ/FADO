// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module top_C_drain_IO_L2_out_x1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        fifo_C_drain_C_drain_IO_L2_out_1_x1136_dout,
        fifo_C_drain_C_drain_IO_L2_out_1_x1136_empty_n,
        fifo_C_drain_C_drain_IO_L2_out_1_x1136_read,
        fifo_C_drain_C_drain_IO_L2_out_0_x1135_din,
        fifo_C_drain_C_drain_IO_L2_out_0_x1135_full_n,
        fifo_C_drain_C_drain_IO_L2_out_0_x1135_write,
        fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_dout,
        fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_empty_n,
        fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_read
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
input  [63:0] fifo_C_drain_C_drain_IO_L2_out_1_x1136_dout;
input   fifo_C_drain_C_drain_IO_L2_out_1_x1136_empty_n;
output   fifo_C_drain_C_drain_IO_L2_out_1_x1136_read;
output  [63:0] fifo_C_drain_C_drain_IO_L2_out_0_x1135_din;
input   fifo_C_drain_C_drain_IO_L2_out_0_x1135_full_n;
output   fifo_C_drain_C_drain_IO_L2_out_0_x1135_write;
input  [63:0] fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_dout;
input   fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_empty_n;
output   fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg fifo_C_drain_C_drain_IO_L2_out_1_x1136_read;
reg fifo_C_drain_C_drain_IO_L2_out_0_x1135_write;
reg fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    fifo_C_drain_C_drain_IO_L2_out_1_x1136_blk_n;
wire    ap_CS_fsm_state5;
wire   [0:0] icmp_ln890_263_fu_183_p2;
reg   [0:0] cmp_i_i_reg_197;
reg    fifo_C_drain_C_drain_IO_L2_out_0_x1135_blk_n;
wire    ap_CS_fsm_state6;
reg    fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_blk_n;
wire   [1:0] add_ln691_fu_135_p2;
reg   [1:0] add_ln691_reg_189;
wire    ap_CS_fsm_state2;
wire   [0:0] cmp_i_i_fu_147_p2;
wire   [0:0] icmp_ln890_fu_141_p2;
wire   [3:0] add_ln691_365_fu_153_p2;
reg   [3:0] add_ln691_365_reg_201;
wire    ap_CS_fsm_state3;
wire   [4:0] add_ln691_366_fu_165_p2;
reg   [4:0] add_ln691_366_reg_209;
wire    ap_CS_fsm_state4;
wire   [5:0] add_ln691_367_fu_177_p2;
reg   [5:0] add_ln691_367_reg_217;
reg    ap_predicate_op43_read_state5;
reg    ap_predicate_op45_read_state5;
reg    ap_block_state5;
reg   [1:0] c3_V_reg_81;
wire   [0:0] icmp_ln890_261_fu_159_p2;
reg    ap_block_state1;
reg   [3:0] c4_V_reg_92;
wire   [0:0] icmp_ln890_262_fu_171_p2;
reg   [4:0] c5_V_reg_103;
reg   [5:0] c6_V_reg_114;
reg   [63:0] fifo_data_2_reg_125;
reg   [5:0] ap_NS_fsm;
reg    ap_condition_193;
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
        end else if (((icmp_ln890_fu_141_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        c3_V_reg_81 <= 2'd0;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln890_261_fu_159_p2 == 1'd1))) begin
        c3_V_reg_81 <= add_ln691_reg_189;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_fu_141_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        c4_V_reg_92 <= 4'd0;
    end else if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln890_262_fu_171_p2 == 1'd1))) begin
        c4_V_reg_92 <= add_ln691_365_reg_201;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln890_261_fu_159_p2 == 1'd0))) begin
        c5_V_reg_103 <= 5'd0;
    end else if ((~(((ap_predicate_op45_read_state5 == 1'b1) & (fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_empty_n == 1'b0)) | ((ap_predicate_op43_read_state5 == 1'b1) & (fifo_C_drain_C_drain_IO_L2_out_1_x1136_empty_n == 1'b0))) & (icmp_ln890_263_fu_183_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        c5_V_reg_103 <= add_ln691_366_reg_209;
    end
end

always @ (posedge ap_clk) begin
    if (((fifo_C_drain_C_drain_IO_L2_out_0_x1135_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        c6_V_reg_114 <= add_ln691_367_reg_217;
    end else if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln890_262_fu_171_p2 == 1'd0))) begin
        c6_V_reg_114 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_193)) begin
        if ((cmp_i_i_reg_197 == 1'd0)) begin
            fifo_data_2_reg_125 <= fifo_C_drain_C_drain_IO_L2_out_1_x1136_dout;
        end else if ((cmp_i_i_reg_197 == 1'd1)) begin
            fifo_data_2_reg_125 <= fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_dout;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln691_365_reg_201 <= add_ln691_365_fu_153_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        add_ln691_366_reg_209 <= add_ln691_366_fu_165_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((ap_predicate_op45_read_state5 == 1'b1) & (fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_empty_n == 1'b0)) | ((ap_predicate_op43_read_state5 == 1'b1) & (fifo_C_drain_C_drain_IO_L2_out_1_x1136_empty_n == 1'b0))) & (1'b1 == ap_CS_fsm_state5))) begin
        add_ln691_367_reg_217 <= add_ln691_367_fu_177_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln691_reg_189 <= add_ln691_fu_135_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_fu_141_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        cmp_i_i_reg_197 <= cmp_i_i_fu_147_p2;
    end
end

always @ (*) begin
    if (((icmp_ln890_fu_141_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln890_fu_141_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((cmp_i_i_reg_197 == 1'd1) & (icmp_ln890_263_fu_183_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_blk_n = fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_empty_n;
    end else begin
        fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((ap_predicate_op45_read_state5 == 1'b1) & (fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_empty_n == 1'b0)) | ((ap_predicate_op43_read_state5 == 1'b1) & (fifo_C_drain_C_drain_IO_L2_out_1_x1136_empty_n == 1'b0))) & (ap_predicate_op45_read_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_read = 1'b1;
    end else begin
        fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        fifo_C_drain_C_drain_IO_L2_out_0_x1135_blk_n = fifo_C_drain_C_drain_IO_L2_out_0_x1135_full_n;
    end else begin
        fifo_C_drain_C_drain_IO_L2_out_0_x1135_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((fifo_C_drain_C_drain_IO_L2_out_0_x1135_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        fifo_C_drain_C_drain_IO_L2_out_0_x1135_write = 1'b1;
    end else begin
        fifo_C_drain_C_drain_IO_L2_out_0_x1135_write = 1'b0;
    end
end

always @ (*) begin
    if (((cmp_i_i_reg_197 == 1'd0) & (icmp_ln890_263_fu_183_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        fifo_C_drain_C_drain_IO_L2_out_1_x1136_blk_n = fifo_C_drain_C_drain_IO_L2_out_1_x1136_empty_n;
    end else begin
        fifo_C_drain_C_drain_IO_L2_out_1_x1136_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((ap_predicate_op45_read_state5 == 1'b1) & (fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_empty_n == 1'b0)) | ((ap_predicate_op43_read_state5 == 1'b1) & (fifo_C_drain_C_drain_IO_L2_out_1_x1136_empty_n == 1'b0))) & (ap_predicate_op43_read_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        fifo_C_drain_C_drain_IO_L2_out_1_x1136_read = 1'b1;
    end else begin
        fifo_C_drain_C_drain_IO_L2_out_1_x1136_read = 1'b0;
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
            if (((icmp_ln890_fu_141_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln890_261_fu_159_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln890_262_fu_171_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if ((~(((ap_predicate_op45_read_state5 == 1'b1) & (fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_empty_n == 1'b0)) | ((ap_predicate_op43_read_state5 == 1'b1) & (fifo_C_drain_C_drain_IO_L2_out_1_x1136_empty_n == 1'b0))) & (icmp_ln890_263_fu_183_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else if ((~(((ap_predicate_op45_read_state5 == 1'b1) & (fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_empty_n == 1'b0)) | ((ap_predicate_op43_read_state5 == 1'b1) & (fifo_C_drain_C_drain_IO_L2_out_1_x1136_empty_n == 1'b0))) & (icmp_ln890_263_fu_183_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((fifo_C_drain_C_drain_IO_L2_out_0_x1135_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
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

assign add_ln691_365_fu_153_p2 = (c4_V_reg_92 + 4'd1);

assign add_ln691_366_fu_165_p2 = (c5_V_reg_103 + 5'd1);

assign add_ln691_367_fu_177_p2 = (c6_V_reg_114 + 6'd1);

assign add_ln691_fu_135_p2 = (c3_V_reg_81 + 2'd1);

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
    ap_block_state5 = (((ap_predicate_op45_read_state5 == 1'b1) & (fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_empty_n == 1'b0)) | ((ap_predicate_op43_read_state5 == 1'b1) & (fifo_C_drain_C_drain_IO_L2_out_1_x1136_empty_n == 1'b0)));
end

always @ (*) begin
    ap_condition_193 = (~(((ap_predicate_op45_read_state5 == 1'b1) & (fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_empty_n == 1'b0)) | ((ap_predicate_op43_read_state5 == 1'b1) & (fifo_C_drain_C_drain_IO_L2_out_1_x1136_empty_n == 1'b0))) & (icmp_ln890_263_fu_183_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5));
end

always @ (*) begin
    ap_predicate_op43_read_state5 = ((cmp_i_i_reg_197 == 1'd0) & (icmp_ln890_263_fu_183_p2 == 1'd0));
end

always @ (*) begin
    ap_predicate_op45_read_state5 = ((cmp_i_i_reg_197 == 1'd1) & (icmp_ln890_263_fu_183_p2 == 1'd0));
end

assign cmp_i_i_fu_147_p2 = ((c3_V_reg_81 == 2'd0) ? 1'b1 : 1'b0);

assign fifo_C_drain_C_drain_IO_L2_out_0_x1135_din = fifo_data_2_reg_125;

assign icmp_ln890_261_fu_159_p2 = ((c4_V_reg_92 == 4'd13) ? 1'b1 : 1'b0);

assign icmp_ln890_262_fu_171_p2 = ((c5_V_reg_103 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln890_263_fu_183_p2 = ((c6_V_reg_114 == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln890_fu_141_p2 = ((c3_V_reg_81 == 2'd2) ? 1'b1 : 1'b0);

endmodule //top_C_drain_IO_L2_out_x1
