// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module top_B_PE_dummy_0_x1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        fifo_B_PE_13_0_x168_dout,
        fifo_B_PE_13_0_x168_empty_n,
        fifo_B_PE_13_0_x168_read
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
input  [255:0] fifo_B_PE_13_0_x168_dout;
input   fifo_B_PE_13_0_x168_empty_n;
output   fifo_B_PE_13_0_x168_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg fifo_B_PE_13_0_x168_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    fifo_B_PE_13_0_x168_blk_n;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln890_287_fu_115_p2;
wire   [5:0] add_ln691_fu_85_p2;
reg   [5:0] add_ln691_reg_121;
wire    ap_CS_fsm_state2;
wire   [6:0] add_ln691_389_fu_97_p2;
reg   [6:0] add_ln691_389_reg_129;
wire    ap_CS_fsm_state3;
wire   [4:0] add_ln691_390_fu_109_p2;
reg    ap_block_state4;
reg   [5:0] c5_V_reg_52;
wire   [0:0] icmp_ln890_286_fu_103_p2;
reg    ap_block_state1;
reg   [6:0] c6_V_reg_63;
wire   [0:0] icmp_ln890_fu_91_p2;
reg   [4:0] c7_V_reg_74;
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
        end else if (((icmp_ln890_fu_91_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        c5_V_reg_52 <= 6'd0;
    end else if (((icmp_ln890_286_fu_103_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        c5_V_reg_52 <= add_ln691_reg_121;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_fu_91_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        c6_V_reg_63 <= 7'd0;
    end else if ((~((icmp_ln890_287_fu_115_p2 == 1'd0) & (fifo_B_PE_13_0_x168_empty_n == 1'b0)) & (icmp_ln890_287_fu_115_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        c6_V_reg_63 <= add_ln691_389_reg_129;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_286_fu_103_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        c7_V_reg_74 <= 5'd0;
    end else if ((~((icmp_ln890_287_fu_115_p2 == 1'd0) & (fifo_B_PE_13_0_x168_empty_n == 1'b0)) & (icmp_ln890_287_fu_115_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        c7_V_reg_74 <= add_ln691_390_fu_109_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln691_389_reg_129 <= add_ln691_389_fu_97_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln691_reg_121 <= add_ln691_fu_85_p2;
    end
end

always @ (*) begin
    if (((icmp_ln890_fu_91_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln890_fu_91_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln890_287_fu_115_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        fifo_B_PE_13_0_x168_blk_n = fifo_B_PE_13_0_x168_empty_n;
    end else begin
        fifo_B_PE_13_0_x168_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((icmp_ln890_287_fu_115_p2 == 1'd0) & (fifo_B_PE_13_0_x168_empty_n == 1'b0)) & (icmp_ln890_287_fu_115_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        fifo_B_PE_13_0_x168_read = 1'b1;
    end else begin
        fifo_B_PE_13_0_x168_read = 1'b0;
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
            if (((icmp_ln890_fu_91_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln890_286_fu_103_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if ((~((icmp_ln890_287_fu_115_p2 == 1'd0) & (fifo_B_PE_13_0_x168_empty_n == 1'b0)) & (icmp_ln890_287_fu_115_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else if ((~((icmp_ln890_287_fu_115_p2 == 1'd0) & (fifo_B_PE_13_0_x168_empty_n == 1'b0)) & (icmp_ln890_287_fu_115_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
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

assign add_ln691_389_fu_97_p2 = (c6_V_reg_63 + 7'd1);

assign add_ln691_390_fu_109_p2 = (c7_V_reg_74 + 5'd1);

assign add_ln691_fu_85_p2 = (c5_V_reg_52 + 6'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state4 = ((icmp_ln890_287_fu_115_p2 == 1'd0) & (fifo_B_PE_13_0_x168_empty_n == 1'b0));
end

assign icmp_ln890_286_fu_103_p2 = ((c6_V_reg_63 == 7'd64) ? 1'b1 : 1'b0);

assign icmp_ln890_287_fu_115_p2 = ((c7_V_reg_74 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln890_fu_91_p2 = ((c5_V_reg_52 == 6'd32) ? 1'b1 : 1'b0);

endmodule //top_B_PE_dummy_0_x1
