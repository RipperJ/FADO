// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module top_C_drain_IO_L1_out_18_x0 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        fifo_C_drain_C_drain_IO_L1_out_1_6_x0128_dout,
        fifo_C_drain_C_drain_IO_L1_out_1_6_x0128_empty_n,
        fifo_C_drain_C_drain_IO_L1_out_1_6_x0128_read,
        fifo_C_drain_C_drain_IO_L1_out_1_5_x0127_din,
        fifo_C_drain_C_drain_IO_L1_out_1_5_x0127_full_n,
        fifo_C_drain_C_drain_IO_L1_out_1_5_x0127_write,
        fifo_C_drain_PE_5_1_x0101_dout,
        fifo_C_drain_PE_5_1_x0101_empty_n,
        fifo_C_drain_PE_5_1_x0101_read
);

parameter    ap_ST_fsm_state1 = 13'd1;
parameter    ap_ST_fsm_state2 = 13'd2;
parameter    ap_ST_fsm_state3 = 13'd4;
parameter    ap_ST_fsm_state4 = 13'd8;
parameter    ap_ST_fsm_state5 = 13'd16;
parameter    ap_ST_fsm_state6 = 13'd32;
parameter    ap_ST_fsm_state7 = 13'd64;
parameter    ap_ST_fsm_state8 = 13'd128;
parameter    ap_ST_fsm_state9 = 13'd256;
parameter    ap_ST_fsm_state10 = 13'd512;
parameter    ap_ST_fsm_state11 = 13'd1024;
parameter    ap_ST_fsm_state12 = 13'd2048;
parameter    ap_ST_fsm_state13 = 13'd4096;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [63:0] fifo_C_drain_C_drain_IO_L1_out_1_6_x0128_dout;
input   fifo_C_drain_C_drain_IO_L1_out_1_6_x0128_empty_n;
output   fifo_C_drain_C_drain_IO_L1_out_1_6_x0128_read;
output  [63:0] fifo_C_drain_C_drain_IO_L1_out_1_5_x0127_din;
input   fifo_C_drain_C_drain_IO_L1_out_1_5_x0127_full_n;
output   fifo_C_drain_C_drain_IO_L1_out_1_5_x0127_write;
input  [31:0] fifo_C_drain_PE_5_1_x0101_dout;
input   fifo_C_drain_PE_5_1_x0101_empty_n;
output   fifo_C_drain_PE_5_1_x0101_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg fifo_C_drain_C_drain_IO_L1_out_1_6_x0128_read;
reg fifo_C_drain_C_drain_IO_L1_out_1_5_x0127_write;
reg fifo_C_drain_PE_5_1_x0101_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [12:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    fifo_C_drain_C_drain_IO_L1_out_1_6_x0128_blk_n;
wire    ap_CS_fsm_state11;
reg    fifo_C_drain_C_drain_IO_L1_out_1_5_x0127_blk_n;
wire    ap_CS_fsm_state13;
reg    fifo_C_drain_PE_5_1_x0101_blk_n;
wire    ap_CS_fsm_state5;
wire   [0:0] icmp_ln878_fu_353_p2;
wire   [63:0] local_C_V_q0;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state12;
wire   [6:0] add_ln691_fu_287_p2;
reg   [6:0] add_ln691_reg_465;
wire    ap_CS_fsm_state2;
reg   [4:0] div_i_i120_udiv_reg_473;
wire   [0:0] icmp_ln890_fu_293_p2;
reg   [0:0] buf_data_split_V_addr_101_reg_478;
wire   [4:0] add_ln691_537_fu_318_p2;
reg   [4:0] add_ln691_537_reg_483;
wire    ap_CS_fsm_state3;
reg   [8:0] local_C_V_addr_reg_488;
wire   [1:0] add_ln691_538_fu_342_p2;
reg    ap_block_state5;
wire   [63:0] zext_ln1497_fu_374_p1;
wire   [0:0] cmp_i_i_fu_393_p2;
reg   [0:0] cmp_i_i_reg_513;
wire    ap_CS_fsm_state8;
wire   [0:0] icmp_ln890_399_fu_387_p2;
wire   [4:0] add_ln691_539_fu_399_p2;
reg   [4:0] add_ln691_539_reg_517;
wire    ap_CS_fsm_state9;
wire   [8:0] tmp_266_cast_fu_409_p3;
reg   [8:0] tmp_266_cast_reg_522;
wire   [3:0] add_ln691_536_fu_423_p2;
wire   [0:0] icmp_ln890_401_fu_417_p2;
wire   [5:0] add_ln691_540_fu_429_p2;
reg   [5:0] add_ln691_540_reg_535;
wire    ap_CS_fsm_state10;
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
reg   [6:0] c6_V_reg_195;
wire   [0:0] icmp_ln890_400_fu_336_p2;
reg    ap_block_state1;
reg   [4:0] c7_V_reg_206;
wire    ap_CS_fsm_state7;
reg   [1:0] n_V_reg_217;
reg   [63:0] p_Val2_s_reg_228;
reg   [3:0] c4_V_reg_237;
reg   [4:0] c5_V_reg_249;
wire   [0:0] icmp_ln890_402_fu_449_p2;
reg   [5:0] c6_V_86_reg_260;
reg   [63:0] fifo_data_34_reg_271;
wire   [63:0] idxprom_fu_313_p1;
wire   [63:0] zext_ln4828_fu_331_p1;
wire   [63:0] zext_ln878_fu_348_p1;
wire   [63:0] zext_ln4853_1_fu_444_p1;
wire   [31:0] trunc_ln674_fu_359_p1;
wire    ap_CS_fsm_state6;
wire   [0:0] empty_fu_309_p1;
wire   [9:0] tmp_s_fu_324_p3;
wire   [31:0] r_fu_364_p4;
wire   [3:0] trunc_ln4853_fu_405_p1;
wire   [8:0] zext_ln4853_fu_435_p1;
wire   [8:0] add_ln4853_fu_439_p2;
reg   [12:0] ap_NS_fsm;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 13'd1;
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
    .address1(local_C_V_addr_reg_488),
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
        end else if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln890_399_fu_387_p2 == 1'd1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_fu_293_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        c4_V_reg_237 <= 4'd5;
    end else if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln890_401_fu_417_p2 == 1'd1))) begin
        c4_V_reg_237 <= add_ln691_536_fu_423_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln890_399_fu_387_p2 == 1'd0))) begin
        c5_V_reg_249 <= 5'd0;
    end else if (((icmp_ln890_402_fu_449_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
        c5_V_reg_249 <= add_ln691_539_reg_517;
    end
end

always @ (posedge ap_clk) begin
    if (((fifo_C_drain_C_drain_IO_L1_out_1_5_x0127_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        c6_V_86_reg_260 <= add_ln691_540_reg_535;
    end else if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln890_401_fu_417_p2 == 1'd0))) begin
        c6_V_86_reg_260 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        c6_V_reg_195 <= 7'd0;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln890_400_fu_336_p2 == 1'd1))) begin
        c6_V_reg_195 <= add_ln691_reg_465;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_fu_293_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        c7_V_reg_206 <= 5'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        c7_V_reg_206 <= add_ln691_537_reg_483;
    end
end

always @ (posedge ap_clk) begin
    if (((fifo_C_drain_C_drain_IO_L1_out_1_6_x0128_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
        fifo_data_34_reg_271 <= fifo_C_drain_C_drain_IO_L1_out_1_6_x0128_dout;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        fifo_data_34_reg_271 <= local_C_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        n_V_reg_217 <= 2'd0;
    end else if ((~((icmp_ln878_fu_353_p2 == 1'd1) & (fifo_C_drain_PE_5_1_x0101_empty_n == 1'b0)) & (icmp_ln878_fu_353_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        n_V_reg_217 <= add_ln691_538_fu_342_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        p_Val2_s_reg_228 <= local_C_V_q0;
    end else if ((~((icmp_ln878_fu_353_p2 == 1'd1) & (fifo_C_drain_PE_5_1_x0101_empty_n == 1'b0)) & (icmp_ln878_fu_353_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        p_Val2_s_reg_228 <= zext_ln1497_fu_374_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln691_537_reg_483 <= add_ln691_537_fu_318_p2;
        local_C_V_addr_reg_488 <= zext_ln4828_fu_331_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        add_ln691_539_reg_517 <= add_ln691_539_fu_399_p2;
        tmp_266_cast_reg_522[8 : 5] <= tmp_266_cast_fu_409_p3[8 : 5];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        add_ln691_540_reg_535 <= add_ln691_540_fu_429_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln691_reg_465 <= add_ln691_fu_287_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_fu_293_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        buf_data_split_V_addr_101_reg_478 <= idxprom_fu_313_p1;
        div_i_i120_udiv_reg_473 <= {{c6_V_reg_195[5:1]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln890_399_fu_387_p2 == 1'd0))) begin
        cmp_i_i_reg_513 <= cmp_i_i_fu_393_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln890_399_fu_387_p2 == 1'd1))) begin
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
    if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln890_399_fu_387_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_data_split_V_address0 = 64'd1;
    end else if (((icmp_ln878_fu_353_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        buf_data_split_V_address0 = buf_data_split_V_addr_101_reg_478;
    end else if (((icmp_ln878_fu_353_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        buf_data_split_V_address0 = zext_ln878_fu_348_p1;
    end else begin
        buf_data_split_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (~((icmp_ln878_fu_353_p2 == 1'd1) & (fifo_C_drain_PE_5_1_x0101_empty_n == 1'b0)) & (icmp_ln878_fu_353_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | (~((icmp_ln878_fu_353_p2 == 1'd1) & (fifo_C_drain_PE_5_1_x0101_empty_n == 1'b0)) & (icmp_ln878_fu_353_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
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
        if ((icmp_ln878_fu_353_p2 == 1'd1)) begin
            buf_data_split_V_d0 = fifo_C_drain_PE_5_1_x0101_dout;
        end else if ((icmp_ln878_fu_353_p2 == 1'd0)) begin
            buf_data_split_V_d0 = trunc_ln674_fu_359_p1;
        end else begin
            buf_data_split_V_d0 = 'bx;
        end
    end else begin
        buf_data_split_V_d0 = 'bx;
    end
end

always @ (*) begin
    if (((~((icmp_ln878_fu_353_p2 == 1'd1) & (fifo_C_drain_PE_5_1_x0101_empty_n == 1'b0)) & (icmp_ln878_fu_353_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | (~((icmp_ln878_fu_353_p2 == 1'd1) & (fifo_C_drain_PE_5_1_x0101_empty_n == 1'b0)) & (icmp_ln878_fu_353_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        buf_data_split_V_we0 = 1'b1;
    end else begin
        buf_data_split_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        fifo_C_drain_C_drain_IO_L1_out_1_5_x0127_blk_n = fifo_C_drain_C_drain_IO_L1_out_1_5_x0127_full_n;
    end else begin
        fifo_C_drain_C_drain_IO_L1_out_1_5_x0127_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((fifo_C_drain_C_drain_IO_L1_out_1_5_x0127_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        fifo_C_drain_C_drain_IO_L1_out_1_5_x0127_write = 1'b1;
    end else begin
        fifo_C_drain_C_drain_IO_L1_out_1_5_x0127_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        fifo_C_drain_C_drain_IO_L1_out_1_6_x0128_blk_n = fifo_C_drain_C_drain_IO_L1_out_1_6_x0128_empty_n;
    end else begin
        fifo_C_drain_C_drain_IO_L1_out_1_6_x0128_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((fifo_C_drain_C_drain_IO_L1_out_1_6_x0128_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
        fifo_C_drain_C_drain_IO_L1_out_1_6_x0128_read = 1'b1;
    end else begin
        fifo_C_drain_C_drain_IO_L1_out_1_6_x0128_read = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln878_fu_353_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        fifo_C_drain_PE_5_1_x0101_blk_n = fifo_C_drain_PE_5_1_x0101_empty_n;
    end else begin
        fifo_C_drain_PE_5_1_x0101_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((icmp_ln878_fu_353_p2 == 1'd1) & (fifo_C_drain_PE_5_1_x0101_empty_n == 1'b0)) & (icmp_ln878_fu_353_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        fifo_C_drain_PE_5_1_x0101_read = 1'b1;
    end else begin
        fifo_C_drain_PE_5_1_x0101_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        local_C_V_address0 = zext_ln4853_1_fu_444_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        local_C_V_address0 = zext_ln4828_fu_331_p1;
    end else begin
        local_C_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((icmp_ln890_fu_293_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln890_400_fu_336_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if ((~((icmp_ln878_fu_353_p2 == 1'd1) & (fifo_C_drain_PE_5_1_x0101_empty_n == 1'b0)) & (icmp_ln878_fu_353_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else if ((~((icmp_ln878_fu_353_p2 == 1'd1) & (fifo_C_drain_PE_5_1_x0101_empty_n == 1'b0)) & (icmp_ln878_fu_353_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
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
            if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln890_399_fu_387_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln890_401_fu_417_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state10 : begin
            if (((icmp_ln890_402_fu_449_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else if (((icmp_ln890_402_fu_449_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10) & (cmp_i_i_reg_513 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state11 : begin
            if (((fifo_C_drain_C_drain_IO_L1_out_1_6_x0128_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            if (((fifo_C_drain_C_drain_IO_L1_out_1_5_x0127_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln4853_fu_439_p2 = (tmp_266_cast_reg_522 + zext_ln4853_fu_435_p1);

assign add_ln691_536_fu_423_p2 = (c4_V_reg_237 + 4'd1);

assign add_ln691_537_fu_318_p2 = (c7_V_reg_206 + 5'd1);

assign add_ln691_538_fu_342_p2 = (n_V_reg_217 + 2'd1);

assign add_ln691_539_fu_399_p2 = (c5_V_reg_249 + 5'd1);

assign add_ln691_540_fu_429_p2 = (c6_V_86_reg_260 + 6'd1);

assign add_ln691_fu_287_p2 = (c6_V_reg_195 + 7'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

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
    ap_block_state5 = ((icmp_ln878_fu_353_p2 == 1'd1) & (fifo_C_drain_PE_5_1_x0101_empty_n == 1'b0));
end

assign buf_data_split_V_address1 = 64'd0;

assign cmp_i_i_fu_393_p2 = ((c4_V_reg_237 == 4'd5) ? 1'b1 : 1'b0);

assign empty_fu_309_p1 = c6_V_reg_195[0:0];

assign fifo_C_drain_C_drain_IO_L1_out_1_5_x0127_din = fifo_data_34_reg_271;

assign icmp_ln878_fu_353_p2 = ((n_V_reg_217 == 2'd2) ? 1'b1 : 1'b0);

assign icmp_ln890_399_fu_387_p2 = ((c4_V_reg_237 == 4'd13) ? 1'b1 : 1'b0);

assign icmp_ln890_400_fu_336_p2 = ((c7_V_reg_206 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln890_401_fu_417_p2 = ((c5_V_reg_249 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln890_402_fu_449_p2 = ((c6_V_86_reg_260 == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln890_fu_293_p2 = ((c6_V_reg_195 == 7'd64) ? 1'b1 : 1'b0);

assign idxprom_fu_313_p1 = empty_fu_309_p1;

assign local_C_V_d1 = {{buf_data_split_V_q0}, {buf_data_split_V_q1}};

assign r_fu_364_p4 = {{p_Val2_s_reg_228[63:32]}};

assign tmp_266_cast_fu_409_p3 = {{trunc_ln4853_fu_405_p1}, {5'd0}};

assign tmp_s_fu_324_p3 = {{c7_V_reg_206}, {div_i_i120_udiv_reg_473}};

assign trunc_ln4853_fu_405_p1 = c5_V_reg_249[3:0];

assign trunc_ln674_fu_359_p1 = p_Val2_s_reg_228[31:0];

assign zext_ln1497_fu_374_p1 = r_fu_364_p4;

assign zext_ln4828_fu_331_p1 = tmp_s_fu_324_p3;

assign zext_ln4853_1_fu_444_p1 = add_ln4853_fu_439_p2;

assign zext_ln4853_fu_435_p1 = c6_V_86_reg_260;

assign zext_ln878_fu_348_p1 = n_V_reg_217;

always @ (posedge ap_clk) begin
    tmp_266_cast_reg_522[4:0] <= 5'b00000;
end

endmodule //top_C_drain_IO_L1_out_18_x0
