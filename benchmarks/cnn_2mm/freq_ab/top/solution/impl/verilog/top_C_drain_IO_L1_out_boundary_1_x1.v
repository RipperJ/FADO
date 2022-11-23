// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module top_C_drain_IO_L1_out_boundary_1_x1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        fifo_C_drain_C_drain_IO_L1_out_1_12_x1134_din,
        fifo_C_drain_C_drain_IO_L1_out_1_12_x1134_full_n,
        fifo_C_drain_C_drain_IO_L1_out_1_12_x1134_write,
        fifo_C_drain_PE_12_1_x1108_dout,
        fifo_C_drain_PE_12_1_x1108_empty_n,
        fifo_C_drain_PE_12_1_x1108_read
);

parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_state5 = 10'd16;
parameter    ap_ST_fsm_state6 = 10'd32;
parameter    ap_ST_fsm_state7 = 10'd64;
parameter    ap_ST_fsm_state8 = 10'd128;
parameter    ap_ST_fsm_state9 = 10'd256;
parameter    ap_ST_fsm_state10 = 10'd512;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [63:0] fifo_C_drain_C_drain_IO_L1_out_1_12_x1134_din;
input   fifo_C_drain_C_drain_IO_L1_out_1_12_x1134_full_n;
output   fifo_C_drain_C_drain_IO_L1_out_1_12_x1134_write;
input  [31:0] fifo_C_drain_PE_12_1_x1108_dout;
input   fifo_C_drain_PE_12_1_x1108_empty_n;
output   fifo_C_drain_PE_12_1_x1108_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg fifo_C_drain_C_drain_IO_L1_out_1_12_x1134_write;
reg fifo_C_drain_PE_12_1_x1108_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    fifo_C_drain_C_drain_IO_L1_out_1_12_x1134_blk_n;
wire    ap_CS_fsm_state10;
reg    fifo_C_drain_PE_12_1_x1108_blk_n;
wire    ap_CS_fsm_state5;
wire   [0:0] icmp_ln878_fu_306_p2;
wire   [6:0] add_ln691_fu_240_p2;
reg   [6:0] add_ln691_reg_400;
wire    ap_CS_fsm_state2;
reg   [4:0] div_i_i113_udiv_reg_408;
wire   [0:0] icmp_ln890_fu_246_p2;
reg   [0:0] buf_data_split_V_addr_2_reg_413;
wire   [4:0] add_ln691_222_fu_271_p2;
reg   [4:0] add_ln691_222_reg_418;
wire    ap_CS_fsm_state3;
reg   [8:0] local_C_V_addr_reg_423;
wire   [63:0] local_C_V_q0;
wire    ap_CS_fsm_state4;
wire   [1:0] add_ln691_223_fu_295_p2;
reg    ap_block_state5;
wire   [63:0] zext_ln1497_fu_327_p1;
wire   [4:0] add_ln691_220_fu_340_p2;
reg   [4:0] add_ln691_220_reg_450;
wire    ap_CS_fsm_state8;
wire   [8:0] tmp_114_cast_fu_350_p3;
reg   [8:0] tmp_114_cast_reg_455;
wire   [5:0] add_ln691_221_fu_364_p2;
reg   [5:0] add_ln691_221_reg_463;
wire    ap_CS_fsm_state9;
reg   [8:0] local_C_V_address0;
reg    local_C_V_ce0;
reg    local_C_V_ce1;
reg    local_C_V_we1;
wire   [63:0] local_C_V_d1;
reg   [0:0] buf_data_split_V_address0;
reg    buf_data_split_V_ce0;
reg    buf_data_split_V_we0;
reg   [31:0] buf_data_split_V_d0;
wire   [31:0] buf_data_split_V_q0;
wire   [0:0] buf_data_split_V_address1;
reg    buf_data_split_V_ce1;
wire   [31:0] buf_data_split_V_q1;
reg   [6:0] c6_V_reg_176;
wire   [0:0] icmp_ln890_169_fu_289_p2;
reg    ap_block_state1;
reg   [4:0] c7_V_reg_187;
wire    ap_CS_fsm_state7;
reg   [1:0] n_V_reg_198;
reg   [63:0] p_Val2_s_reg_209;
reg   [4:0] c5_V_reg_218;
wire   [0:0] icmp_ln890_170_fu_384_p2;
reg   [5:0] c6_V_53_reg_229;
wire   [0:0] icmp_ln890_168_fu_358_p2;
wire   [63:0] idxprom_fu_266_p1;
wire   [63:0] zext_ln11632_fu_284_p1;
wire   [63:0] zext_ln878_fu_301_p1;
wire   [63:0] zext_ln11658_1_fu_379_p1;
wire   [31:0] trunc_ln674_fu_312_p1;
wire    ap_CS_fsm_state6;
wire   [0:0] empty_fu_262_p1;
wire   [9:0] tmp_s_fu_277_p3;
wire   [31:0] r_fu_317_p4;
wire   [3:0] trunc_ln11658_fu_346_p1;
wire   [8:0] zext_ln11658_fu_370_p1;
wire   [8:0] add_ln11658_fu_374_p2;
reg   [9:0] ap_NS_fsm;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 10'd1;
end

top_C_drain_IO_L1_out_boundary_0_x0_local_C_V #(
    .DataWidth( 64 ),
    .AddressRange( 512 ),
    .AddressWidth( 9 ))
local_C_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(local_C_V_address0),
    .ce0(local_C_V_ce0),
    .q0(local_C_V_q0),
    .address1(local_C_V_addr_reg_423),
    .ce1(local_C_V_ce1),
    .we1(local_C_V_we1),
    .d1(local_C_V_d1)
);

top_C_drain_IO_L1_out_boundary_0_x0_buf_data_split_V #(
    .DataWidth( 32 ),
    .AddressRange( 2 ),
    .AddressWidth( 1 ))
buf_data_split_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(buf_data_split_V_address0),
    .ce0(buf_data_split_V_ce0),
    .we0(buf_data_split_V_we0),
    .d0(buf_data_split_V_d0),
    .q0(buf_data_split_V_q0),
    .address1(buf_data_split_V_address1),
    .ce1(buf_data_split_V_ce1),
    .q1(buf_data_split_V_q1)
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
        end else if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln890_168_fu_358_p2 == 1'd1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_fu_246_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        c5_V_reg_218 <= 5'd0;
    end else if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln890_170_fu_384_p2 == 1'd1))) begin
        c5_V_reg_218 <= add_ln691_220_reg_450;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln890_168_fu_358_p2 == 1'd0))) begin
        c6_V_53_reg_229 <= 6'd0;
    end else if (((fifo_C_drain_C_drain_IO_L1_out_1_12_x1134_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        c6_V_53_reg_229 <= add_ln691_221_reg_463;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        c6_V_reg_176 <= 7'd0;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln890_169_fu_289_p2 == 1'd1))) begin
        c6_V_reg_176 <= add_ln691_reg_400;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_fu_246_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        c7_V_reg_187 <= 5'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        c7_V_reg_187 <= add_ln691_222_reg_418;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        n_V_reg_198 <= 2'd0;
    end else if ((~((icmp_ln878_fu_306_p2 == 1'd1) & (fifo_C_drain_PE_12_1_x1108_empty_n == 1'b0)) & (icmp_ln878_fu_306_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        n_V_reg_198 <= add_ln691_223_fu_295_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        p_Val2_s_reg_209 <= local_C_V_q0;
    end else if ((~((icmp_ln878_fu_306_p2 == 1'd1) & (fifo_C_drain_PE_12_1_x1108_empty_n == 1'b0)) & (icmp_ln878_fu_306_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        p_Val2_s_reg_209 <= zext_ln1497_fu_327_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        add_ln691_220_reg_450 <= add_ln691_220_fu_340_p2;
        tmp_114_cast_reg_455[8 : 5] <= tmp_114_cast_fu_350_p3[8 : 5];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        add_ln691_221_reg_463 <= add_ln691_221_fu_364_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln691_222_reg_418 <= add_ln691_222_fu_271_p2;
        local_C_V_addr_reg_423 <= zext_ln11632_fu_284_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln691_reg_400 <= add_ln691_fu_240_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_fu_246_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        buf_data_split_V_addr_2_reg_413 <= idxprom_fu_266_p1;
        div_i_i113_udiv_reg_408 <= {{c6_V_reg_176[5:1]}};
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln890_168_fu_358_p2 == 1'd1))) begin
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
    if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln890_168_fu_358_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_data_split_V_address0 = 64'd1;
    end else if (((icmp_ln878_fu_306_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        buf_data_split_V_address0 = buf_data_split_V_addr_2_reg_413;
    end else if (((icmp_ln878_fu_306_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        buf_data_split_V_address0 = zext_ln878_fu_301_p1;
    end else begin
        buf_data_split_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (~((icmp_ln878_fu_306_p2 == 1'd1) & (fifo_C_drain_PE_12_1_x1108_empty_n == 1'b0)) & (icmp_ln878_fu_306_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | (~((icmp_ln878_fu_306_p2 == 1'd1) & (fifo_C_drain_PE_12_1_x1108_empty_n == 1'b0)) & (icmp_ln878_fu_306_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        buf_data_split_V_ce0 = 1'b1;
    end else begin
        buf_data_split_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_data_split_V_ce1 = 1'b1;
    end else begin
        buf_data_split_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        if ((icmp_ln878_fu_306_p2 == 1'd1)) begin
            buf_data_split_V_d0 = fifo_C_drain_PE_12_1_x1108_dout;
        end else if ((icmp_ln878_fu_306_p2 == 1'd0)) begin
            buf_data_split_V_d0 = trunc_ln674_fu_312_p1;
        end else begin
            buf_data_split_V_d0 = 'bx;
        end
    end else begin
        buf_data_split_V_d0 = 'bx;
    end
end

always @ (*) begin
    if (((~((icmp_ln878_fu_306_p2 == 1'd1) & (fifo_C_drain_PE_12_1_x1108_empty_n == 1'b0)) & (icmp_ln878_fu_306_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | (~((icmp_ln878_fu_306_p2 == 1'd1) & (fifo_C_drain_PE_12_1_x1108_empty_n == 1'b0)) & (icmp_ln878_fu_306_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        buf_data_split_V_we0 = 1'b1;
    end else begin
        buf_data_split_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        fifo_C_drain_C_drain_IO_L1_out_1_12_x1134_blk_n = fifo_C_drain_C_drain_IO_L1_out_1_12_x1134_full_n;
    end else begin
        fifo_C_drain_C_drain_IO_L1_out_1_12_x1134_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((fifo_C_drain_C_drain_IO_L1_out_1_12_x1134_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        fifo_C_drain_C_drain_IO_L1_out_1_12_x1134_write = 1'b1;
    end else begin
        fifo_C_drain_C_drain_IO_L1_out_1_12_x1134_write = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln878_fu_306_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        fifo_C_drain_PE_12_1_x1108_blk_n = fifo_C_drain_PE_12_1_x1108_empty_n;
    end else begin
        fifo_C_drain_PE_12_1_x1108_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((icmp_ln878_fu_306_p2 == 1'd1) & (fifo_C_drain_PE_12_1_x1108_empty_n == 1'b0)) & (icmp_ln878_fu_306_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        fifo_C_drain_PE_12_1_x1108_read = 1'b1;
    end else begin
        fifo_C_drain_PE_12_1_x1108_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        local_C_V_address0 = zext_ln11658_1_fu_379_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        local_C_V_address0 = zext_ln11632_fu_284_p1;
    end else begin
        local_C_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state9))) begin
        local_C_V_ce0 = 1'b1;
    end else begin
        local_C_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        local_C_V_ce1 = 1'b1;
    end else begin
        local_C_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        local_C_V_we1 = 1'b1;
    end else begin
        local_C_V_we1 = 1'b0;
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
            if (((icmp_ln890_fu_246_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln890_169_fu_289_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if ((~((icmp_ln878_fu_306_p2 == 1'd1) & (fifo_C_drain_PE_12_1_x1108_empty_n == 1'b0)) & (icmp_ln878_fu_306_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else if ((~((icmp_ln878_fu_306_p2 == 1'd1) & (fifo_C_drain_PE_12_1_x1108_empty_n == 1'b0)) & (icmp_ln878_fu_306_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln890_168_fu_358_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln890_170_fu_384_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state10 : begin
            if (((fifo_C_drain_C_drain_IO_L1_out_1_12_x1134_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln11658_fu_374_p2 = (tmp_114_cast_reg_455 + zext_ln11658_fu_370_p1);

assign add_ln691_220_fu_340_p2 = (c5_V_reg_218 + 5'd1);

assign add_ln691_221_fu_364_p2 = (c6_V_53_reg_229 + 6'd1);

assign add_ln691_222_fu_271_p2 = (c7_V_reg_187 + 5'd1);

assign add_ln691_223_fu_295_p2 = (n_V_reg_198 + 2'd1);

assign add_ln691_fu_240_p2 = (c6_V_reg_176 + 7'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

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
    ap_block_state5 = ((icmp_ln878_fu_306_p2 == 1'd1) & (fifo_C_drain_PE_12_1_x1108_empty_n == 1'b0));
end

assign buf_data_split_V_address1 = 64'd0;

assign empty_fu_262_p1 = c6_V_reg_176[0:0];

assign fifo_C_drain_C_drain_IO_L1_out_1_12_x1134_din = local_C_V_q0;

assign icmp_ln878_fu_306_p2 = ((n_V_reg_198 == 2'd2) ? 1'b1 : 1'b0);

assign icmp_ln890_168_fu_358_p2 = ((c5_V_reg_218 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln890_169_fu_289_p2 = ((c7_V_reg_187 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln890_170_fu_384_p2 = ((c6_V_53_reg_229 == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln890_fu_246_p2 = ((c6_V_reg_176 == 7'd64) ? 1'b1 : 1'b0);

assign idxprom_fu_266_p1 = empty_fu_262_p1;

assign local_C_V_d1 = {{buf_data_split_V_q0}, {buf_data_split_V_q1}};

assign r_fu_317_p4 = {{p_Val2_s_reg_209[63:32]}};

assign tmp_114_cast_fu_350_p3 = {{trunc_ln11658_fu_346_p1}, {5'd0}};

assign tmp_s_fu_277_p3 = {{c7_V_reg_187}, {div_i_i113_udiv_reg_408}};

assign trunc_ln11658_fu_346_p1 = c5_V_reg_218[3:0];

assign trunc_ln674_fu_312_p1 = p_Val2_s_reg_209[31:0];

assign zext_ln11632_fu_284_p1 = tmp_s_fu_277_p3;

assign zext_ln11658_1_fu_379_p1 = add_ln11658_fu_374_p2;

assign zext_ln11658_fu_370_p1 = c6_V_53_reg_229;

assign zext_ln1497_fu_327_p1 = r_fu_317_p4;

assign zext_ln878_fu_301_p1 = n_V_reg_198;

always @ (posedge ap_clk) begin
    tmp_114_cast_reg_455[4:0] <= 5'b00000;
end

endmodule //top_C_drain_IO_L1_out_boundary_1_x1
