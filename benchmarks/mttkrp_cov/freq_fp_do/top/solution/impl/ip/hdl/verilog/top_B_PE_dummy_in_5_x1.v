// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module top_B_PE_dummy_in_5_x1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        fifo_B_PE_4_5_x190_dout,
        fifo_B_PE_4_5_x190_empty_n,
        fifo_B_PE_4_5_x190_read
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state5 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] fifo_B_PE_4_5_x190_dout;
input   fifo_B_PE_4_5_x190_empty_n;
output   fifo_B_PE_4_5_x190_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg fifo_B_PE_4_5_x190_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    fifo_B_PE_4_5_x190_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln23072_reg_195;
reg   [20:0] indvar_flatten59_reg_98;
wire   [4:0] add_ln890_fu_109_p2;
reg   [4:0] add_ln890_reg_172;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln890_fu_115_p2;
wire   [2:0] select_ln23067_fu_127_p3;
reg   [2:0] select_ln23067_reg_181;
wire   [0:0] icmp_ln890_1231_fu_149_p2;
wire   [20:0] add_ln23072_fu_155_p2;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_state3_pp0_stage0_iter0;
reg    ap_block_state4_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln23072_fu_161_p2;
wire   [2:0] add_ln691_fu_167_p2;
wire    ap_CS_fsm_state5;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
reg   [4:0] indvar_flatten67_reg_76;
reg    ap_block_state1;
reg   [2:0] c1_V_reg_87;
wire   [0:0] icmp_ln89074_fu_121_p2;
wire   [5:0] ret_226_fu_135_p3;
wire   [5:0] ret_fu_143_p2;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
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
        end else if (((icmp_ln890_fu_115_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((icmp_ln890_1231_fu_149_p2 == 1'd1) & (icmp_ln890_fu_115_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state3))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state3);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((icmp_ln890_1231_fu_149_p2 == 1'd1) & (icmp_ln890_fu_115_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        c1_V_reg_87 <= add_ln691_fu_167_p2;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        c1_V_reg_87 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_1231_fu_149_p2 == 1'd1) & (icmp_ln890_fu_115_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        indvar_flatten59_reg_98 <= 21'd0;
    end else if (((icmp_ln23072_fu_161_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten59_reg_98 <= add_ln23072_fu_155_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        indvar_flatten67_reg_76 <= add_ln890_reg_172;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten67_reg_76 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln890_reg_172 <= add_ln890_fu_109_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln23072_reg_195 <= icmp_ln23072_fu_161_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_fu_115_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        select_ln23067_reg_181 <= select_ln23067_fu_127_p3;
    end
end

always @ (*) begin
    if ((icmp_ln23072_fu_161_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln890_fu_115_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln890_fu_115_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln23072_reg_195 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fifo_B_PE_4_5_x190_blk_n = fifo_B_PE_4_5_x190_empty_n;
    end else begin
        fifo_B_PE_4_5_x190_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln23072_reg_195 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fifo_B_PE_4_5_x190_read = 1'b1;
    end else begin
        fifo_B_PE_4_5_x190_read = 1'b0;
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
            if (((icmp_ln890_fu_115_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((icmp_ln890_1231_fu_149_p2 == 1'd1) & (icmp_ln890_fu_115_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((icmp_ln23072_fu_161_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((icmp_ln23072_fu_161_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln23072_fu_155_p2 = (indvar_flatten59_reg_98 + 21'd1);

assign add_ln691_fu_167_p2 = (select_ln23067_reg_181 + 3'd1);

assign add_ln890_fu_109_p2 = (indvar_flatten67_reg_76 + 5'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((icmp_ln23072_reg_195 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (fifo_B_PE_4_5_x190_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((icmp_ln23072_reg_195 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (fifo_B_PE_4_5_x190_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_pp0_stage0_iter1 = ((icmp_ln23072_reg_195 == 1'd0) & (fifo_B_PE_4_5_x190_empty_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign icmp_ln23072_fu_161_p2 = ((indvar_flatten59_reg_98 == 21'd1048576) ? 1'b1 : 1'b0);

assign icmp_ln89074_fu_121_p2 = ((c1_V_reg_87 == 3'd6) ? 1'b1 : 1'b0);

assign icmp_ln890_1231_fu_149_p2 = ((ret_fu_143_p2 < 6'd42) ? 1'b1 : 1'b0);

assign icmp_ln890_fu_115_p2 = ((indvar_flatten67_reg_76 == 5'd24) ? 1'b1 : 1'b0);

assign ret_226_fu_135_p3 = {{select_ln23067_fu_127_p3}, {3'd0}};

assign ret_fu_143_p2 = (ret_226_fu_135_p3 | 6'd4);

assign select_ln23067_fu_127_p3 = ((icmp_ln89074_fu_121_p2[0:0] == 1'b1) ? 3'd0 : c1_V_reg_87);

endmodule //top_B_PE_dummy_in_5_x1
