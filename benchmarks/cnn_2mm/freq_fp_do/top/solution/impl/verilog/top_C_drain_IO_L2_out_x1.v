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

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state5 = 3'd4;

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
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    fifo_C_drain_C_drain_IO_L2_out_1_x1136_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln890_reg_181;
reg   [0:0] select_ln11675_reg_185;
reg    fifo_C_drain_C_drain_IO_L2_out_0_x1135_blk_n;
reg    ap_enable_reg_pp0_iter2;
reg   [0:0] icmp_ln890_reg_181_pp0_iter1_reg;
reg    fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_blk_n;
reg   [13:0] indvar_flatten31_reg_67;
reg   [1:0] c3_V_reg_78;
reg   [13:0] indvar_flatten11_reg_89;
wire   [13:0] add_ln890_105_fu_110_p2;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_state2_pp0_stage0_iter0;
reg    ap_predicate_op31_read_state3;
reg    ap_predicate_op33_read_state3;
reg    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_state4_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln890_fu_116_p2;
wire   [0:0] select_ln11675_fu_146_p3;
wire   [1:0] select_ln890_fu_154_p3;
wire   [13:0] select_ln890_261_fu_168_p3;
reg    ap_block_state1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
wire   [63:0] ap_phi_reg_pp0_iter0_fifo_data_2_reg_100;
reg   [63:0] ap_phi_reg_pp0_iter1_fifo_data_2_reg_100;
reg   [63:0] ap_phi_reg_pp0_iter2_fifo_data_2_reg_100;
reg    ap_block_pp0_stage0_01001;
wire   [1:0] add_ln691_fu_122_p2;
wire   [0:0] icmp_ln89038_fu_140_p2;
wire   [0:0] cmp_i_i_mid1_fu_128_p2;
wire   [0:0] cmp_i_i35_fu_134_p2;
wire   [13:0] add_ln890_fu_162_p2;
wire    ap_CS_fsm_state5;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_151;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
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
        end else if ((1'b1 == ap_CS_fsm_state5)) begin
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
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state2)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_151)) begin
        if (((select_ln11675_reg_185 == 1'd0) & (icmp_ln890_reg_181 == 1'd0))) begin
            ap_phi_reg_pp0_iter2_fifo_data_2_reg_100 <= fifo_C_drain_C_drain_IO_L2_out_1_x1136_dout;
        end else if (((select_ln11675_reg_185 == 1'd1) & (icmp_ln890_reg_181 == 1'd0))) begin
            ap_phi_reg_pp0_iter2_fifo_data_2_reg_100 <= fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_dout;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter2_fifo_data_2_reg_100 <= ap_phi_reg_pp0_iter1_fifo_data_2_reg_100;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln890_fu_116_p2 == 1'd0))) begin
        c3_V_reg_78 <= select_ln890_fu_154_p3;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        c3_V_reg_78 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln890_fu_116_p2 == 1'd0))) begin
        indvar_flatten11_reg_89 <= select_ln890_261_fu_168_p3;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten11_reg_89 <= 14'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln890_fu_116_p2 == 1'd0))) begin
        indvar_flatten31_reg_67 <= add_ln890_105_fu_110_p2;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten31_reg_67 <= 14'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_reg_pp0_iter1_fifo_data_2_reg_100 <= ap_phi_reg_pp0_iter0_fifo_data_2_reg_100;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln890_reg_181 <= icmp_ln890_fu_116_p2;
        icmp_ln890_reg_181_pp0_iter1_reg <= icmp_ln890_reg_181;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln890_fu_116_p2 == 1'd0))) begin
        select_ln11675_reg_185 <= select_ln11675_fu_146_p3;
    end
end

always @ (*) begin
    if ((icmp_ln890_fu_116_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
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
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((select_ln11675_reg_185 == 1'd1) & (icmp_ln890_reg_181 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_blk_n = fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_empty_n;
    end else begin
        fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op33_read_state3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_read = 1'b1;
    end else begin
        fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_read = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln890_reg_181_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        fifo_C_drain_C_drain_IO_L2_out_0_x1135_blk_n = fifo_C_drain_C_drain_IO_L2_out_0_x1135_full_n;
    end else begin
        fifo_C_drain_C_drain_IO_L2_out_0_x1135_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln890_reg_181_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        fifo_C_drain_C_drain_IO_L2_out_0_x1135_write = 1'b1;
    end else begin
        fifo_C_drain_C_drain_IO_L2_out_0_x1135_write = 1'b0;
    end
end

always @ (*) begin
    if (((select_ln11675_reg_185 == 1'd0) & (icmp_ln890_reg_181 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fifo_C_drain_C_drain_IO_L2_out_1_x1136_blk_n = fifo_C_drain_C_drain_IO_L2_out_1_x1136_empty_n;
    end else begin
        fifo_C_drain_C_drain_IO_L2_out_1_x1136_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op31_read_state3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fifo_C_drain_C_drain_IO_L2_out_1_x1136_read = 1'b1;
    end else begin
        fifo_C_drain_C_drain_IO_L2_out_1_x1136_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (icmp_ln890_fu_116_p2 == 1'd1)) & ~((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (icmp_ln890_fu_116_p2 == 1'd1)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln691_fu_122_p2 = (c3_V_reg_78 + 2'd1);

assign add_ln890_105_fu_110_p2 = (indvar_flatten31_reg_67 + 14'd1);

assign add_ln890_fu_162_p2 = (indvar_flatten11_reg_89 + 14'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((icmp_ln890_reg_181_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (fifo_C_drain_C_drain_IO_L2_out_0_x1135_full_n == 1'b0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ap_predicate_op33_read_state3 == 1'b1) & (fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_empty_n == 1'b0)) | ((ap_predicate_op31_read_state3 == 1'b1) & (fifo_C_drain_C_drain_IO_L2_out_1_x1136_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((icmp_ln890_reg_181_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (fifo_C_drain_C_drain_IO_L2_out_0_x1135_full_n == 1'b0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ap_predicate_op33_read_state3 == 1'b1) & (fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_empty_n == 1'b0)) | ((ap_predicate_op31_read_state3 == 1'b1) & (fifo_C_drain_C_drain_IO_L2_out_1_x1136_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((icmp_ln890_reg_181_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (fifo_C_drain_C_drain_IO_L2_out_0_x1135_full_n == 1'b0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ap_predicate_op33_read_state3 == 1'b1) & (fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_empty_n == 1'b0)) | ((ap_predicate_op31_read_state3 == 1'b1) & (fifo_C_drain_C_drain_IO_L2_out_1_x1136_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = (((ap_predicate_op33_read_state3 == 1'b1) & (fifo_C_drain_C_drain_IO_L1_out_0_0_x1109_empty_n == 1'b0)) | ((ap_predicate_op31_read_state3 == 1'b1) & (fifo_C_drain_C_drain_IO_L2_out_1_x1136_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state4_pp0_stage0_iter2 = ((icmp_ln890_reg_181_pp0_iter1_reg == 1'd0) & (fifo_C_drain_C_drain_IO_L2_out_0_x1135_full_n == 1'b0));
end

always @ (*) begin
    ap_condition_151 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_phi_reg_pp0_iter0_fifo_data_2_reg_100 = 'bx;

always @ (*) begin
    ap_predicate_op31_read_state3 = ((select_ln11675_reg_185 == 1'd0) & (icmp_ln890_reg_181 == 1'd0));
end

always @ (*) begin
    ap_predicate_op33_read_state3 = ((select_ln11675_reg_185 == 1'd1) & (icmp_ln890_reg_181 == 1'd0));
end

assign cmp_i_i35_fu_134_p2 = ((c3_V_reg_78 == 2'd0) ? 1'b1 : 1'b0);

assign cmp_i_i_mid1_fu_128_p2 = ((add_ln691_fu_122_p2 == 2'd0) ? 1'b1 : 1'b0);

assign fifo_C_drain_C_drain_IO_L2_out_0_x1135_din = ap_phi_reg_pp0_iter2_fifo_data_2_reg_100;

assign icmp_ln89038_fu_140_p2 = ((indvar_flatten11_reg_89 == 14'd6656) ? 1'b1 : 1'b0);

assign icmp_ln890_fu_116_p2 = ((indvar_flatten31_reg_67 == 14'd13312) ? 1'b1 : 1'b0);

assign select_ln11675_fu_146_p3 = ((icmp_ln89038_fu_140_p2[0:0] == 1'b1) ? cmp_i_i_mid1_fu_128_p2 : cmp_i_i35_fu_134_p2);

assign select_ln890_261_fu_168_p3 = ((icmp_ln89038_fu_140_p2[0:0] == 1'b1) ? 14'd1 : add_ln890_fu_162_p2);

assign select_ln890_fu_154_p3 = ((icmp_ln89038_fu_140_p2[0:0] == 1'b1) ? add_ln691_fu_122_p2 : c3_V_reg_78);

endmodule //top_C_drain_IO_L2_out_x1
