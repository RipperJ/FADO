// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module top_A_IO_L2_in_5_x1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        fifo_A_A_IO_L2_in_5_x19_dout,
        fifo_A_A_IO_L2_in_5_x19_empty_n,
        fifo_A_A_IO_L2_in_5_x19_read,
        fifo_A_A_IO_L2_in_6_x110_din,
        fifo_A_A_IO_L2_in_6_x110_full_n,
        fifo_A_A_IO_L2_in_6_x110_write,
        fifo_A_PE_5_0_x165_din,
        fifo_A_PE_5_0_x165_full_n,
        fifo_A_PE_5_0_x165_write
);

parameter    ap_ST_fsm_state1 = 22'd1;
parameter    ap_ST_fsm_state2 = 22'd2;
parameter    ap_ST_fsm_state3 = 22'd4;
parameter    ap_ST_fsm_state4 = 22'd8;
parameter    ap_ST_fsm_state5 = 22'd16;
parameter    ap_ST_fsm_state6 = 22'd32;
parameter    ap_ST_fsm_state7 = 22'd64;
parameter    ap_ST_fsm_state8 = 22'd128;
parameter    ap_ST_fsm_state9 = 22'd256;
parameter    ap_ST_fsm_state10 = 22'd512;
parameter    ap_ST_fsm_state11 = 22'd1024;
parameter    ap_ST_fsm_state12 = 22'd2048;
parameter    ap_ST_fsm_state13 = 22'd4096;
parameter    ap_ST_fsm_state14 = 22'd8192;
parameter    ap_ST_fsm_state15 = 22'd16384;
parameter    ap_ST_fsm_state16 = 22'd32768;
parameter    ap_ST_fsm_state17 = 22'd65536;
parameter    ap_ST_fsm_state18 = 22'd131072;
parameter    ap_ST_fsm_state19 = 22'd262144;
parameter    ap_ST_fsm_state20 = 22'd524288;
parameter    ap_ST_fsm_state21 = 22'd1048576;
parameter    ap_ST_fsm_state22 = 22'd2097152;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [511:0] fifo_A_A_IO_L2_in_5_x19_dout;
input   fifo_A_A_IO_L2_in_5_x19_empty_n;
output   fifo_A_A_IO_L2_in_5_x19_read;
output  [511:0] fifo_A_A_IO_L2_in_6_x110_din;
input   fifo_A_A_IO_L2_in_6_x110_full_n;
output   fifo_A_A_IO_L2_in_6_x110_write;
output  [511:0] fifo_A_PE_5_0_x165_din;
input   fifo_A_PE_5_0_x165_full_n;
output   fifo_A_PE_5_0_x165_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg fifo_A_A_IO_L2_in_5_x19_read;
reg fifo_A_A_IO_L2_in_6_x110_write;
reg[511:0] fifo_A_PE_5_0_x165_din;
reg fifo_A_PE_5_0_x165_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [21:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    fifo_A_A_IO_L2_in_5_x19_blk_n;
wire    ap_CS_fsm_state9;
reg   [0:0] icmp_ln870_17_reg_645;
reg   [0:0] icmp_ln890_1527_reg_662;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state17;
reg   [0:0] icmp_ln870_reg_708;
reg   [0:0] icmp_ln890_1524_reg_725;
wire    ap_CS_fsm_state15;
reg    fifo_A_A_IO_L2_in_6_x110_blk_n;
reg    fifo_A_PE_5_0_x165_blk_n;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state19;
wire    ap_CS_fsm_state22;
wire   [4:0] add_ln691_fu_395_p2;
reg   [4:0] add_ln691_reg_618;
wire    ap_CS_fsm_state2;
wire   [4:0] add_ln691_1823_fu_407_p2;
reg   [4:0] add_ln691_1823_reg_626;
wire    ap_CS_fsm_state3;
wire   [5:0] add_ln691_1828_fu_419_p2;
reg   [5:0] add_ln691_1828_reg_634;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln870_17_fu_437_p2;
wire    ap_CS_fsm_state5;
wire   [0:0] icmp_ln890_1522_fu_431_p2;
wire   [3:0] add_ln691_1827_fu_443_p2;
reg   [3:0] add_ln691_1827_reg_649;
wire    ap_CS_fsm_state6;
wire   [3:0] add_ln691_1826_fu_455_p2;
reg   [3:0] add_ln691_1826_reg_657;
wire    ap_CS_fsm_state8;
wire   [0:0] icmp_ln890_1527_fu_461_p2;
wire   [3:0] add_ln691_1830_fu_472_p2;
wire   [3:0] add_ln691_1833_fu_478_p2;
reg   [3:0] add_ln691_1833_reg_671;
wire    ap_CS_fsm_state10;
reg   [0:0] arb_21_reg_247;
reg   [0:0] intra_trans_en_6_reg_234;
wire   [3:0] add_ln691_1831_fu_490_p2;
reg   [3:0] add_ln691_1831_reg_679;
wire   [0:0] arb_fu_502_p2;
wire   [0:0] icmp_ln890_1523_fu_496_p2;
wire   [0:0] icmp_ln890_1526_fu_484_p2;
wire   [3:0] add_ln691_1834_fu_508_p2;
reg   [3:0] add_ln691_1834_reg_692;
wire    ap_CS_fsm_state11;
wire   [0:0] icmp_ln890_1530_fu_519_p2;
wire   [0:0] icmp_ln870_fu_531_p2;
wire    ap_CS_fsm_state13;
wire   [0:0] icmp_ln890_1521_fu_525_p2;
wire   [3:0] add_ln691_1825_fu_537_p2;
reg   [3:0] add_ln691_1825_reg_712;
wire    ap_CS_fsm_state14;
wire   [3:0] add_ln691_1824_fu_549_p2;
reg   [3:0] add_ln691_1824_reg_720;
wire    ap_CS_fsm_state16;
wire   [0:0] icmp_ln890_1524_fu_555_p2;
wire   [3:0] add_ln691_1829_fu_566_p2;
wire   [3:0] add_ln691_1832_fu_572_p2;
reg   [3:0] add_ln691_1832_reg_734;
wire    ap_CS_fsm_state18;
wire   [0:0] icmp_ln890_1529_fu_583_p2;
wire   [3:0] add_ln691_1821_fu_589_p2;
reg   [3:0] add_ln691_1821_reg_747;
wire    ap_CS_fsm_state20;
wire   [3:0] add_ln691_1822_fu_601_p2;
reg   [3:0] add_ln691_1822_reg_755;
wire    ap_CS_fsm_state21;
wire   [0:0] icmp_ln890_1519_fu_612_p2;
reg   [2:0] local_A_ping_V_0_address0;
reg    local_A_ping_V_0_ce0;
reg    local_A_ping_V_0_we0;
wire   [511:0] local_A_ping_V_0_q0;
reg   [2:0] local_A_pong_V_0_address0;
reg    local_A_pong_V_0_ce0;
reg    local_A_pong_V_0_we0;
wire   [511:0] local_A_pong_V_0_q0;
reg   [4:0] c0_V_reg_174;
wire   [0:0] icmp_ln890_1518_fu_413_p2;
reg    ap_block_state1;
reg   [0:0] intra_trans_en_reg_185;
reg   [4:0] c1_V_reg_199;
wire   [0:0] icmp_ln890_1520_fu_425_p2;
wire   [0:0] icmp_ln890_fu_401_p2;
reg   [0:0] intra_trans_en_5_reg_210;
reg   [5:0] c2_V_reg_223;
wire   [0:0] ap_phi_mux_arb_21_phi_fu_251_p4;
reg   [3:0] c3_V_17_reg_259;
reg    ap_predicate_op90_read_state9;
reg    ap_block_state9;
reg   [3:0] c4_V_13_reg_271;
reg    ap_block_state7;
reg   [3:0] c4_V_12_reg_282;
reg   [3:0] c6_V_38_reg_294;
reg   [3:0] c6_V_37_reg_305;
reg   [3:0] c7_V_14_reg_316;
reg   [3:0] c3_V_reg_327;
reg    ap_predicate_op156_read_state17;
reg    ap_block_state17;
reg   [3:0] c4_V_11_reg_339;
reg    ap_block_state15;
reg   [3:0] c4_V_reg_350;
reg   [3:0] c7_V_13_reg_362;
reg   [3:0] c6_V_reg_373;
reg   [3:0] c7_V_reg_384;
wire   [0:0] icmp_ln890_1517_fu_595_p2;
wire   [63:0] zext_ln890_294_fu_467_p1;
wire   [63:0] zext_ln890_296_fu_514_p1;
wire   [63:0] zext_ln890_293_fu_561_p1;
wire   [63:0] zext_ln890_295_fu_578_p1;
wire   [63:0] zext_ln890_fu_607_p1;
wire   [0:0] icmp_ln890_1528_fu_449_p2;
wire   [0:0] icmp_ln890_1525_fu_543_p2;
reg   [21:0] ap_NS_fsm;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 22'd1;
end

top_A_IO_L2_in_0_x0_local_A_ping_V_0 #(
    .DataWidth( 512 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
local_A_ping_V_0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(local_A_ping_V_0_address0),
    .ce0(local_A_ping_V_0_ce0),
    .we0(local_A_ping_V_0_we0),
    .d0(fifo_A_A_IO_L2_in_5_x19_dout),
    .q0(local_A_ping_V_0_q0)
);

top_A_IO_L2_in_0_x0_local_A_ping_V_0 #(
    .DataWidth( 512 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
local_A_pong_V_0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(local_A_pong_V_0_address0),
    .ce0(local_A_pong_V_0_ce0),
    .we0(local_A_pong_V_0_we0),
    .d0(fifo_A_A_IO_L2_in_5_x19_dout),
    .q0(local_A_pong_V_0_q0)
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
        end else if (((icmp_ln890_1517_fu_595_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state20))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (((intra_trans_en_6_reg_234 == 1'd0) | ((icmp_ln890_1523_fu_496_p2 == 1'd1) & (arb_21_reg_247 == 1'd1))) | ((icmp_ln890_1526_fu_484_p2 == 1'd1) & (arb_21_reg_247 == 1'd0))))) begin
        arb_21_reg_247 <= arb_fu_502_p2;
    end else if (((icmp_ln890_1518_fu_413_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        arb_21_reg_247 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        c0_V_reg_174 <= 5'd0;
    end else if (((icmp_ln890_1518_fu_413_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        c0_V_reg_174 <= add_ln691_reg_618;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_fu_401_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        c1_V_reg_199 <= 5'd0;
    end else if (((icmp_ln890_1520_fu_425_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        c1_V_reg_199 <= add_ln691_1823_reg_626;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (((intra_trans_en_6_reg_234 == 1'd0) | ((icmp_ln890_1523_fu_496_p2 == 1'd1) & (arb_21_reg_247 == 1'd1))) | ((icmp_ln890_1526_fu_484_p2 == 1'd1) & (arb_21_reg_247 == 1'd0))))) begin
        c2_V_reg_223 <= add_ln691_1828_reg_634;
    end else if (((icmp_ln890_1518_fu_413_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        c2_V_reg_223 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_phi_mux_arb_21_phi_fu_251_p4 == 1'd0) & (icmp_ln890_1520_fu_425_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        c3_V_17_reg_259 <= 4'd5;
    end else if ((~((fifo_A_A_IO_L2_in_5_x19_empty_n == 1'b0) & (ap_predicate_op90_read_state9 == 1'b1)) & (1'b1 == ap_CS_fsm_state9) & ((icmp_ln890_1527_reg_662 == 1'd1) | (icmp_ln870_17_reg_645 == 1'd0)))) begin
        c3_V_17_reg_259 <= add_ln691_1830_fu_472_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_phi_mux_arb_21_phi_fu_251_p4 == 1'd1) & (icmp_ln890_1520_fu_425_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        c3_V_reg_327 <= 4'd5;
    end else if ((~((fifo_A_A_IO_L2_in_5_x19_empty_n == 1'b0) & (ap_predicate_op156_read_state17 == 1'b1)) & (1'b1 == ap_CS_fsm_state17) & ((icmp_ln890_1524_reg_725 == 1'd1) | (icmp_ln870_reg_708 == 1'd0)))) begin
        c3_V_reg_327 <= add_ln691_1829_fu_566_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_1521_fu_525_p2 == 1'd0) & (icmp_ln870_fu_531_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state13))) begin
        c4_V_11_reg_339 <= 4'd0;
    end else if ((~((fifo_A_A_IO_L2_in_6_x110_full_n == 1'b0) | (fifo_A_A_IO_L2_in_5_x19_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state15))) begin
        c4_V_11_reg_339 <= add_ln691_1825_reg_712;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln890_1522_fu_431_p2 == 1'd0) & (icmp_ln870_17_fu_437_p2 == 1'd1))) begin
        c4_V_12_reg_282 <= 4'd0;
    end else if ((~((fifo_A_A_IO_L2_in_5_x19_empty_n == 1'b0) & (ap_predicate_op90_read_state9 == 1'b1)) & (icmp_ln890_1527_reg_662 == 1'd0) & (icmp_ln870_17_reg_645 == 1'd1) & (1'b1 == ap_CS_fsm_state9))) begin
        c4_V_12_reg_282 <= add_ln691_1826_reg_657;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln890_1522_fu_431_p2 == 1'd0) & (icmp_ln870_17_fu_437_p2 == 1'd0))) begin
        c4_V_13_reg_271 <= 4'd0;
    end else if ((~((fifo_A_A_IO_L2_in_6_x110_full_n == 1'b0) | (fifo_A_A_IO_L2_in_5_x19_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state7))) begin
        c4_V_13_reg_271 <= add_ln691_1827_reg_649;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_1521_fu_525_p2 == 1'd0) & (icmp_ln870_fu_531_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state13))) begin
        c4_V_reg_350 <= 4'd0;
    end else if ((~((fifo_A_A_IO_L2_in_5_x19_empty_n == 1'b0) & (ap_predicate_op156_read_state17 == 1'b1)) & (icmp_ln890_1524_reg_725 == 1'd0) & (icmp_ln870_reg_708 == 1'd1) & (1'b1 == ap_CS_fsm_state17))) begin
        c4_V_reg_350 <= add_ln691_1824_reg_720;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_1521_fu_525_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state13) & (intra_trans_en_6_reg_234 == 1'd1))) begin
        c6_V_37_reg_305 <= 4'd0;
    end else if (((icmp_ln890_1529_fu_583_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state18))) begin
        c6_V_37_reg_305 <= add_ln691_1831_reg_679;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (intra_trans_en_6_reg_234 == 1'd1) & (icmp_ln890_1522_fu_431_p2 == 1'd1))) begin
        c6_V_38_reg_294 <= 4'd0;
    end else if (((icmp_ln890_1530_fu_519_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state11))) begin
        c6_V_38_reg_294 <= add_ln691_1833_reg_671;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_fu_401_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        c6_V_reg_373 <= 4'd0;
    end else if (((icmp_ln890_1519_fu_612_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state21))) begin
        c6_V_reg_373 <= add_ln691_1821_reg_747;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln890_1523_fu_496_p2 == 1'd0) & (intra_trans_en_6_reg_234 == 1'd1) & (arb_21_reg_247 == 1'd1))) begin
        c7_V_13_reg_362 <= 4'd0;
    end else if (((fifo_A_PE_5_0_x165_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state19))) begin
        c7_V_13_reg_362 <= add_ln691_1832_reg_734;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln890_1526_fu_484_p2 == 1'd0) & (intra_trans_en_6_reg_234 == 1'd1) & (arb_21_reg_247 == 1'd0))) begin
        c7_V_14_reg_316 <= 4'd0;
    end else if (((fifo_A_PE_5_0_x165_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
        c7_V_14_reg_316 <= add_ln691_1834_reg_692;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_1517_fu_595_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state20))) begin
        c7_V_reg_384 <= 4'd0;
    end else if (((fifo_A_PE_5_0_x165_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
        c7_V_reg_384 <= add_ln691_1822_reg_755;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_fu_401_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        intra_trans_en_5_reg_210 <= intra_trans_en_reg_185;
    end else if (((icmp_ln890_1520_fu_425_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        intra_trans_en_5_reg_210 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (((intra_trans_en_6_reg_234 == 1'd0) | ((icmp_ln890_1523_fu_496_p2 == 1'd1) & (arb_21_reg_247 == 1'd1))) | ((icmp_ln890_1526_fu_484_p2 == 1'd1) & (arb_21_reg_247 == 1'd0))))) begin
        intra_trans_en_6_reg_234 <= 1'd1;
    end else if (((icmp_ln890_1518_fu_413_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        intra_trans_en_6_reg_234 <= intra_trans_en_5_reg_210;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        intra_trans_en_reg_185 <= 1'd0;
    end else if (((icmp_ln890_1518_fu_413_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        intra_trans_en_reg_185 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        add_ln691_1821_reg_747 <= add_ln691_1821_fu_589_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        add_ln691_1822_reg_755 <= add_ln691_1822_fu_601_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln691_1823_reg_626 <= add_ln691_1823_fu_407_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        add_ln691_1824_reg_720 <= add_ln691_1824_fu_549_p2;
        icmp_ln890_1524_reg_725 <= icmp_ln890_1524_fu_555_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        add_ln691_1825_reg_712 <= add_ln691_1825_fu_537_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        add_ln691_1826_reg_657 <= add_ln691_1826_fu_455_p2;
        icmp_ln890_1527_reg_662 <= icmp_ln890_1527_fu_461_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        add_ln691_1827_reg_649 <= add_ln691_1827_fu_443_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        add_ln691_1828_reg_634 <= add_ln691_1828_fu_419_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (intra_trans_en_6_reg_234 == 1'd1) & (arb_21_reg_247 == 1'd1))) begin
        add_ln691_1831_reg_679 <= add_ln691_1831_fu_490_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        add_ln691_1832_reg_734 <= add_ln691_1832_fu_572_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (intra_trans_en_6_reg_234 == 1'd1) & (arb_21_reg_247 == 1'd0))) begin
        add_ln691_1833_reg_671 <= add_ln691_1833_fu_478_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        add_ln691_1834_reg_692 <= add_ln691_1834_fu_508_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln691_reg_618 <= add_ln691_fu_395_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln890_1522_fu_431_p2 == 1'd0))) begin
        icmp_ln870_17_reg_645 <= icmp_ln870_17_fu_437_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_1521_fu_525_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state13))) begin
        icmp_ln870_reg_708 <= icmp_ln870_fu_531_p2;
    end
end

always @ (*) begin
    if (((icmp_ln890_1517_fu_595_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state20))) begin
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
    if (((icmp_ln890_1517_fu_595_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state20))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state7) | ((icmp_ln890_1524_reg_725 == 1'd0) & (icmp_ln870_reg_708 == 1'd1) & (1'b1 == ap_CS_fsm_state17)) | ((icmp_ln890_1527_reg_662 == 1'd0) & (icmp_ln870_17_reg_645 == 1'd1) & (1'b1 == ap_CS_fsm_state9)))) begin
        fifo_A_A_IO_L2_in_5_x19_blk_n = fifo_A_A_IO_L2_in_5_x19_empty_n;
    end else begin
        fifo_A_A_IO_L2_in_5_x19_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((~((fifo_A_A_IO_L2_in_5_x19_empty_n == 1'b0) & (ap_predicate_op156_read_state17 == 1'b1)) & (ap_predicate_op156_read_state17 == 1'b1) & (1'b1 == ap_CS_fsm_state17)) | (~((fifo_A_A_IO_L2_in_6_x110_full_n == 1'b0) | (fifo_A_A_IO_L2_in_5_x19_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state15)) | (~((fifo_A_A_IO_L2_in_6_x110_full_n == 1'b0) | (fifo_A_A_IO_L2_in_5_x19_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state7)) | (~((fifo_A_A_IO_L2_in_5_x19_empty_n == 1'b0) & (ap_predicate_op90_read_state9 == 1'b1)) & (ap_predicate_op90_read_state9 == 1'b1) & (1'b1 == ap_CS_fsm_state9)))) begin
        fifo_A_A_IO_L2_in_5_x19_read = 1'b1;
    end else begin
        fifo_A_A_IO_L2_in_5_x19_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state7))) begin
        fifo_A_A_IO_L2_in_6_x110_blk_n = fifo_A_A_IO_L2_in_6_x110_full_n;
    end else begin
        fifo_A_A_IO_L2_in_6_x110_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((~((fifo_A_A_IO_L2_in_6_x110_full_n == 1'b0) | (fifo_A_A_IO_L2_in_5_x19_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state15)) | (~((fifo_A_A_IO_L2_in_6_x110_full_n == 1'b0) | (fifo_A_A_IO_L2_in_5_x19_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state7)))) begin
        fifo_A_A_IO_L2_in_6_x110_write = 1'b1;
    end else begin
        fifo_A_A_IO_L2_in_6_x110_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state12))) begin
        fifo_A_PE_5_0_x165_blk_n = fifo_A_PE_5_0_x165_full_n;
    end else begin
        fifo_A_PE_5_0_x165_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((fifo_A_PE_5_0_x165_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state19))) begin
        fifo_A_PE_5_0_x165_din = local_A_pong_V_0_q0;
    end else if ((((fifo_A_PE_5_0_x165_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state22)) | ((fifo_A_PE_5_0_x165_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state12)))) begin
        fifo_A_PE_5_0_x165_din = local_A_ping_V_0_q0;
    end else begin
        fifo_A_PE_5_0_x165_din = 'bx;
    end
end

always @ (*) begin
    if ((((fifo_A_PE_5_0_x165_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state22)) | ((fifo_A_PE_5_0_x165_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state19)) | ((fifo_A_PE_5_0_x165_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state12)))) begin
        fifo_A_PE_5_0_x165_write = 1'b1;
    end else begin
        fifo_A_PE_5_0_x165_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        local_A_ping_V_0_address0 = zext_ln890_fu_607_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        local_A_ping_V_0_address0 = zext_ln890_293_fu_561_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        local_A_ping_V_0_address0 = zext_ln890_296_fu_514_p1;
    end else begin
        local_A_ping_V_0_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state11) | (~((fifo_A_A_IO_L2_in_5_x19_empty_n == 1'b0) & (ap_predicate_op156_read_state17 == 1'b1)) & (1'b1 == ap_CS_fsm_state17)))) begin
        local_A_ping_V_0_ce0 = 1'b1;
    end else begin
        local_A_ping_V_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((fifo_A_A_IO_L2_in_5_x19_empty_n == 1'b0) & (ap_predicate_op156_read_state17 == 1'b1)) & (icmp_ln890_1524_reg_725 == 1'd0) & (icmp_ln870_reg_708 == 1'd1) & (1'b1 == ap_CS_fsm_state17))) begin
        local_A_ping_V_0_we0 = 1'b1;
    end else begin
        local_A_ping_V_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        local_A_pong_V_0_address0 = zext_ln890_295_fu_578_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        local_A_pong_V_0_address0 = zext_ln890_294_fu_467_p1;
    end else begin
        local_A_pong_V_0_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (~((fifo_A_A_IO_L2_in_5_x19_empty_n == 1'b0) & (ap_predicate_op90_read_state9 == 1'b1)) & (1'b1 == ap_CS_fsm_state9)))) begin
        local_A_pong_V_0_ce0 = 1'b1;
    end else begin
        local_A_pong_V_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((fifo_A_A_IO_L2_in_5_x19_empty_n == 1'b0) & (ap_predicate_op90_read_state9 == 1'b1)) & (icmp_ln890_1527_reg_662 == 1'd0) & (icmp_ln870_17_reg_645 == 1'd1) & (1'b1 == ap_CS_fsm_state9))) begin
        local_A_pong_V_0_we0 = 1'b1;
    end else begin
        local_A_pong_V_0_we0 = 1'b0;
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
            if (((icmp_ln890_fu_401_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln890_1518_fu_413_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln890_1520_fu_425_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else if (((ap_phi_mux_arb_21_phi_fu_251_p4 == 1'd1) & (icmp_ln890_1520_fu_425_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln890_1522_fu_431_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln890_1522_fu_431_p2 == 1'd0) & (icmp_ln870_17_fu_437_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((icmp_ln890_1528_fu_449_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            if ((~((fifo_A_A_IO_L2_in_6_x110_full_n == 1'b0) | (fifo_A_A_IO_L2_in_5_x19_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            if ((~((fifo_A_A_IO_L2_in_5_x19_empty_n == 1'b0) & (ap_predicate_op90_read_state9 == 1'b1)) & (1'b1 == ap_CS_fsm_state9) & ((icmp_ln890_1527_reg_662 == 1'd1) | (icmp_ln870_17_reg_645 == 1'd0)))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else if ((~((fifo_A_A_IO_L2_in_5_x19_empty_n == 1'b0) & (ap_predicate_op90_read_state9 == 1'b1)) & (icmp_ln890_1527_reg_662 == 1'd0) & (icmp_ln870_17_reg_645 == 1'd1) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            if (((1'b1 == ap_CS_fsm_state10) & (((intra_trans_en_6_reg_234 == 1'd0) | ((icmp_ln890_1523_fu_496_p2 == 1'd1) & (arb_21_reg_247 == 1'd1))) | ((icmp_ln890_1526_fu_484_p2 == 1'd1) & (arb_21_reg_247 == 1'd0))))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln890_1523_fu_496_p2 == 1'd0) & (intra_trans_en_6_reg_234 == 1'd1) & (arb_21_reg_247 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state11 : begin
            if (((icmp_ln890_1530_fu_519_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state12 : begin
            if (((fifo_A_PE_5_0_x165_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state13 : begin
            if (((icmp_ln890_1521_fu_525_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else if (((icmp_ln890_1521_fu_525_p2 == 1'd0) & (icmp_ln870_fu_531_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state14 : begin
            if (((icmp_ln890_1525_fu_543_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        ap_ST_fsm_state15 : begin
            if ((~((fifo_A_A_IO_L2_in_6_x110_full_n == 1'b0) | (fifo_A_A_IO_L2_in_5_x19_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state15))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            if ((~((fifo_A_A_IO_L2_in_5_x19_empty_n == 1'b0) & (ap_predicate_op156_read_state17 == 1'b1)) & (1'b1 == ap_CS_fsm_state17) & ((icmp_ln890_1524_reg_725 == 1'd1) | (icmp_ln870_reg_708 == 1'd0)))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else if ((~((fifo_A_A_IO_L2_in_5_x19_empty_n == 1'b0) & (ap_predicate_op156_read_state17 == 1'b1)) & (icmp_ln890_1524_reg_725 == 1'd0) & (icmp_ln870_reg_708 == 1'd1) & (1'b1 == ap_CS_fsm_state17))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        ap_ST_fsm_state18 : begin
            if (((icmp_ln890_1529_fu_583_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state18))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end
        end
        ap_ST_fsm_state19 : begin
            if (((fifo_A_PE_5_0_x165_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state19))) begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end
        end
        ap_ST_fsm_state20 : begin
            if (((icmp_ln890_1517_fu_595_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state20))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end
        end
        ap_ST_fsm_state21 : begin
            if (((icmp_ln890_1519_fu_612_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state21))) begin
                ap_NS_fsm = ap_ST_fsm_state20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end
        end
        ap_ST_fsm_state22 : begin
            if (((fifo_A_PE_5_0_x165_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln691_1821_fu_589_p2 = (c6_V_reg_373 + 4'd1);

assign add_ln691_1822_fu_601_p2 = (c7_V_reg_384 + 4'd1);

assign add_ln691_1823_fu_407_p2 = (c1_V_reg_199 + 5'd1);

assign add_ln691_1824_fu_549_p2 = (c4_V_reg_350 + 4'd1);

assign add_ln691_1825_fu_537_p2 = (c4_V_11_reg_339 + 4'd1);

assign add_ln691_1826_fu_455_p2 = (c4_V_12_reg_282 + 4'd1);

assign add_ln691_1827_fu_443_p2 = (c4_V_13_reg_271 + 4'd1);

assign add_ln691_1828_fu_419_p2 = (c2_V_reg_223 + 6'd1);

assign add_ln691_1829_fu_566_p2 = (c3_V_reg_327 + 4'd1);

assign add_ln691_1830_fu_472_p2 = (c3_V_17_reg_259 + 4'd1);

assign add_ln691_1831_fu_490_p2 = (c6_V_37_reg_305 + 4'd1);

assign add_ln691_1832_fu_572_p2 = (c7_V_13_reg_362 + 4'd1);

assign add_ln691_1833_fu_478_p2 = (c6_V_38_reg_294 + 4'd1);

assign add_ln691_1834_fu_508_p2 = (c7_V_14_reg_316 + 4'd1);

assign add_ln691_fu_395_p2 = (c0_V_reg_174 + 5'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];

assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];

assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];

assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];

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
    ap_block_state15 = ((fifo_A_A_IO_L2_in_6_x110_full_n == 1'b0) | (fifo_A_A_IO_L2_in_5_x19_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state17 = ((fifo_A_A_IO_L2_in_5_x19_empty_n == 1'b0) & (ap_predicate_op156_read_state17 == 1'b1));
end

always @ (*) begin
    ap_block_state7 = ((fifo_A_A_IO_L2_in_6_x110_full_n == 1'b0) | (fifo_A_A_IO_L2_in_5_x19_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state9 = ((fifo_A_A_IO_L2_in_5_x19_empty_n == 1'b0) & (ap_predicate_op90_read_state9 == 1'b1));
end

assign ap_phi_mux_arb_21_phi_fu_251_p4 = arb_21_reg_247;

always @ (*) begin
    ap_predicate_op156_read_state17 = ((icmp_ln890_1524_reg_725 == 1'd0) & (icmp_ln870_reg_708 == 1'd1));
end

always @ (*) begin
    ap_predicate_op90_read_state9 = ((icmp_ln890_1527_reg_662 == 1'd0) & (icmp_ln870_17_reg_645 == 1'd1));
end

assign arb_fu_502_p2 = (arb_21_reg_247 ^ 1'd1);

assign fifo_A_A_IO_L2_in_6_x110_din = fifo_A_A_IO_L2_in_5_x19_dout;

assign icmp_ln870_17_fu_437_p2 = ((c3_V_17_reg_259 == 4'd5) ? 1'b1 : 1'b0);

assign icmp_ln870_fu_531_p2 = ((c3_V_reg_327 == 4'd5) ? 1'b1 : 1'b0);

assign icmp_ln890_1517_fu_595_p2 = ((c6_V_reg_373 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln890_1518_fu_413_p2 = ((c1_V_reg_199 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln890_1519_fu_612_p2 = ((c7_V_reg_384 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln890_1520_fu_425_p2 = ((c2_V_reg_223 == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln890_1521_fu_525_p2 = ((c3_V_reg_327 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln890_1522_fu_431_p2 = ((c3_V_17_reg_259 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln890_1523_fu_496_p2 = ((c6_V_37_reg_305 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln890_1524_fu_555_p2 = ((c4_V_reg_350 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln890_1525_fu_543_p2 = ((c4_V_11_reg_339 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln890_1526_fu_484_p2 = ((c6_V_38_reg_294 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln890_1527_fu_461_p2 = ((c4_V_12_reg_282 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln890_1528_fu_449_p2 = ((c4_V_13_reg_271 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln890_1529_fu_583_p2 = ((c7_V_13_reg_362 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln890_1530_fu_519_p2 = ((c7_V_14_reg_316 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln890_fu_401_p2 = ((c0_V_reg_174 == 5'd16) ? 1'b1 : 1'b0);

assign zext_ln890_293_fu_561_p1 = c4_V_reg_350;

assign zext_ln890_294_fu_467_p1 = c4_V_12_reg_282;

assign zext_ln890_295_fu_578_p1 = c7_V_13_reg_362;

assign zext_ln890_296_fu_514_p1 = c7_V_14_reg_316;

assign zext_ln890_fu_607_p1 = c7_V_reg_384;

endmodule //top_A_IO_L2_in_5_x1
