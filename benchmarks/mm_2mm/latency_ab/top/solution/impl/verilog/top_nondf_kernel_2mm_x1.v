// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module top_nondf_kernel_2mm_x1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        xout_address0,
        xout_ce0,
        xout_q0,
        xin_address0,
        xin_ce0,
        xin_we0,
        xin_d0,
        grp_fu_142_p_din0,
        grp_fu_142_p_din1,
        grp_fu_142_p_dout0,
        grp_fu_142_p_ce,
        grp_fu_146_p_din0,
        grp_fu_146_p_din1,
        grp_fu_146_p_dout0,
        grp_fu_146_p_ce
);

parameter    ap_ST_fsm_state1 = 26'd1;
parameter    ap_ST_fsm_state2 = 26'd2;
parameter    ap_ST_fsm_state3 = 26'd4;
parameter    ap_ST_fsm_state4 = 26'd8;
parameter    ap_ST_fsm_state5 = 26'd16;
parameter    ap_ST_fsm_state6 = 26'd32;
parameter    ap_ST_fsm_state7 = 26'd64;
parameter    ap_ST_fsm_state8 = 26'd128;
parameter    ap_ST_fsm_state9 = 26'd256;
parameter    ap_ST_fsm_state10 = 26'd512;
parameter    ap_ST_fsm_state11 = 26'd1024;
parameter    ap_ST_fsm_state12 = 26'd2048;
parameter    ap_ST_fsm_state13 = 26'd4096;
parameter    ap_ST_fsm_state14 = 26'd8192;
parameter    ap_ST_fsm_state15 = 26'd16384;
parameter    ap_ST_fsm_state16 = 26'd32768;
parameter    ap_ST_fsm_state17 = 26'd65536;
parameter    ap_ST_fsm_state18 = 26'd131072;
parameter    ap_ST_fsm_state19 = 26'd262144;
parameter    ap_ST_fsm_state20 = 26'd524288;
parameter    ap_ST_fsm_state21 = 26'd1048576;
parameter    ap_ST_fsm_state22 = 26'd2097152;
parameter    ap_ST_fsm_state23 = 26'd4194304;
parameter    ap_ST_fsm_state24 = 26'd8388608;
parameter    ap_ST_fsm_state25 = 26'd16777216;
parameter    ap_ST_fsm_state26 = 26'd33554432;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] xout_address0;
output   xout_ce0;
input  [511:0] xout_q0;
output  [9:0] xin_address0;
output   xin_ce0;
output   xin_we0;
output  [31:0] xin_d0;
output  [511:0] grp_fu_142_p_din0;
output  [511:0] grp_fu_142_p_din1;
input  [511:0] grp_fu_142_p_dout0;
output   grp_fu_142_p_ce;
output  [31:0] grp_fu_146_p_din0;
output  [31:0] grp_fu_146_p_din1;
input  [31:0] grp_fu_146_p_dout0;
output   grp_fu_146_p_ce;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg xout_ce0;
reg xin_ce0;
reg xin_we0;

(* fsm_encoding = "none" *) reg   [25:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [5:0] add_ln76_fu_346_p2;
reg   [5:0] add_ln76_reg_678;
wire    ap_CS_fsm_state2;
wire   [9:0] tmp_cast_fu_356_p3;
reg   [9:0] tmp_cast_reg_683;
wire   [5:0] add_ln77_fu_370_p2;
reg   [5:0] add_ln77_reg_691;
wire    ap_CS_fsm_state3;
reg   [9:0] tmp_V_addr_reg_696;
reg   [9:0] A_V_addr_reg_701;
reg   [9:0] B_V_addr_reg_706;
reg   [9:0] C_V_addr_reg_711;
reg   [9:0] D_input_V_addr_reg_716;
wire   [0:0] icmp_ln77_fu_395_p2;
wire   [5:0] add_ln87_fu_408_p2;
reg   [5:0] add_ln87_reg_729;
wire    ap_CS_fsm_state5;
wire   [9:0] tmp_3_cast_fu_418_p3;
reg   [9:0] tmp_3_cast_reg_734;
wire   [5:0] add_ln88_fu_432_p2;
reg   [5:0] add_ln88_reg_743;
wire    ap_CS_fsm_state6;
wire   [9:0] zext_ln90_fu_438_p1;
reg   [9:0] zext_ln90_reg_748;
reg   [9:0] tmp_V_addr_1_reg_753;
wire   [5:0] add_ln91_fu_458_p2;
reg   [5:0] add_ln91_reg_761;
wire    ap_CS_fsm_state7;
wire   [511:0] A_V_q0;
reg  signed [511:0] A_V_load_reg_779;
wire    ap_CS_fsm_state8;
wire   [511:0] B_V_q0;
reg  signed [511:0] B_V_load_reg_784;
wire   [511:0] grp_fu_511_p2;
reg   [511:0] mul_ln691_reg_789;
wire    ap_CS_fsm_state13;
wire   [511:0] grp_fu_515_p2;
wire    ap_CS_fsm_state15;
wire   [5:0] add_ln94_fu_520_p2;
reg   [5:0] add_ln94_reg_799;
wire    ap_CS_fsm_state16;
wire   [9:0] tmp_4_cast_fu_530_p3;
reg   [9:0] tmp_4_cast_reg_804;
wire   [5:0] add_ln95_fu_544_p2;
reg   [5:0] add_ln95_reg_813;
wire    ap_CS_fsm_state17;
wire   [9:0] zext_ln215_fu_550_p1;
reg   [9:0] zext_ln215_reg_818;
reg   [9:0] D_output_V_addr_1_reg_828;
wire   [31:0] D_input_V_q0;
wire    ap_CS_fsm_state18;
wire   [5:0] add_ln98_fu_571_p2;
reg   [5:0] add_ln98_reg_841;
wire    ap_CS_fsm_state19;
wire   [31:0] tmp_V_q0;
reg  signed [31:0] tmp_V_load_reg_859;
wire    ap_CS_fsm_state20;
wire   [31:0] C_V_q0;
reg  signed [31:0] C_V_load_reg_864;
wire   [31:0] grp_fu_619_p2;
reg   [31:0] mul_ln99_reg_869;
wire    ap_CS_fsm_state22;
wire   [31:0] sum_2_fu_623_p2;
wire    ap_CS_fsm_state23;
wire   [5:0] add_ln104_fu_628_p2;
reg   [5:0] add_ln104_reg_879;
wire    ap_CS_fsm_state24;
wire   [9:0] tmp_5_cast_fu_638_p3;
reg   [9:0] tmp_5_cast_reg_884;
wire   [5:0] add_ln105_fu_652_p2;
reg   [5:0] add_ln105_reg_892;
wire    ap_CS_fsm_state25;
wire   [63:0] zext_ln106_1_fu_667_p1;
reg   [63:0] zext_ln106_1_reg_897;
reg   [9:0] tmp_V_address0;
reg    tmp_V_ce0;
reg    tmp_V_we0;
reg   [31:0] tmp_V_d0;
reg   [9:0] A_V_address0;
reg    A_V_ce0;
reg    A_V_we0;
reg   [9:0] B_V_address0;
reg    B_V_ce0;
reg    B_V_we0;
reg   [9:0] C_V_address0;
reg    C_V_ce0;
reg    C_V_we0;
reg   [9:0] D_input_V_address0;
reg    D_input_V_ce0;
reg    D_input_V_we0;
reg   [9:0] D_output_V_address0;
reg    D_output_V_ce0;
reg    D_output_V_we0;
wire   [31:0] D_output_V_q0;
reg   [5:0] i_reg_213;
reg   [5:0] j_reg_224;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln76_fu_364_p2;
reg   [5:0] i_1_reg_235;
wire   [0:0] icmp_ln88_fu_452_p2;
reg   [5:0] j_1_reg_246;
wire   [0:0] icmp_ln91_fu_500_p2;
wire   [0:0] icmp_ln87_fu_426_p2;
reg   [5:0] k_reg_257;
reg   [511:0] conv3_i20_reg_268;
reg   [5:0] i_2_reg_280;
wire   [0:0] icmp_ln95_fu_565_p2;
reg   [5:0] j_2_reg_291;
wire   [0:0] icmp_ln98_fu_613_p2;
wire   [0:0] icmp_ln94_fu_538_p2;
reg   [5:0] k_1_reg_302;
reg   [31:0] sum_1_reg_313;
reg   [5:0] i_3_reg_324;
wire   [0:0] icmp_ln105_fu_672_p2;
reg   [5:0] j_3_reg_335;
wire    ap_CS_fsm_state26;
wire   [0:0] icmp_ln104_fu_646_p2;
wire   [63:0] zext_ln78_1_fu_385_p1;
wire   [63:0] zext_ln90_1_fu_447_p1;
wire   [63:0] zext_ln215_3_fu_473_p1;
wire   [63:0] zext_ln215_4_fu_495_p1;
wire   [63:0] zext_ln215_1_fu_559_p1;
wire   [63:0] zext_ln215_6_fu_586_p1;
wire   [63:0] zext_ln215_7_fu_608_p1;
wire   [31:0] empty_fu_401_p1;
wire   [31:0] trunc_ln91_fu_506_p1;
wire   [4:0] trunc_ln78_fu_352_p1;
wire   [9:0] zext_ln78_fu_376_p1;
wire   [9:0] add_ln78_fu_380_p2;
wire   [4:0] trunc_ln90_fu_414_p1;
wire   [9:0] add_ln90_fu_442_p2;
wire   [9:0] zext_ln215_2_fu_464_p1;
wire   [9:0] add_ln215_1_fu_468_p2;
wire   [4:0] trunc_ln215_1_fu_478_p1;
wire   [9:0] tmp_6_cast_fu_482_p3;
wire   [9:0] add_ln215_2_fu_490_p2;
wire  signed [511:0] grp_fu_511_p0;
wire  signed [511:0] grp_fu_511_p1;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state14;
wire   [4:0] trunc_ln215_fu_526_p1;
wire   [9:0] add_ln215_fu_554_p2;
wire   [9:0] zext_ln215_5_fu_577_p1;
wire   [9:0] add_ln215_3_fu_581_p2;
wire   [4:0] trunc_ln215_2_fu_591_p1;
wire   [9:0] tmp_9_cast_fu_595_p3;
wire   [9:0] add_ln215_4_fu_603_p2;
wire  signed [31:0] grp_fu_619_p0;
wire  signed [31:0] grp_fu_619_p1;
wire    ap_CS_fsm_state21;
wire   [4:0] trunc_ln106_fu_634_p1;
wire   [9:0] zext_ln106_fu_658_p1;
wire   [9:0] add_ln106_fu_662_p2;
wire    grp_fu_511_ce;
wire    grp_fu_619_ce;
reg   [25:0] ap_NS_fsm;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 26'd1;
end

top_nondf_kernel_2mm_x0_tmp_V #(
    .DataWidth( 32 ),
    .AddressRange( 1024 ),
    .AddressWidth( 10 ))
tmp_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(tmp_V_address0),
    .ce0(tmp_V_ce0),
    .we0(tmp_V_we0),
    .d0(tmp_V_d0),
    .q0(tmp_V_q0)
);

top_nondf_kernel_2mm_x0_A_V #(
    .DataWidth( 512 ),
    .AddressRange( 1024 ),
    .AddressWidth( 10 ))
A_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(A_V_address0),
    .ce0(A_V_ce0),
    .we0(A_V_we0),
    .d0(xout_q0),
    .q0(A_V_q0)
);

top_nondf_kernel_2mm_x0_A_V #(
    .DataWidth( 512 ),
    .AddressRange( 1024 ),
    .AddressWidth( 10 ))
B_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(B_V_address0),
    .ce0(B_V_ce0),
    .we0(B_V_we0),
    .d0(xout_q0),
    .q0(B_V_q0)
);

top_nondf_kernel_2mm_x0_tmp_V #(
    .DataWidth( 32 ),
    .AddressRange( 1024 ),
    .AddressWidth( 10 ))
C_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(C_V_address0),
    .ce0(C_V_ce0),
    .we0(C_V_we0),
    .d0(empty_fu_401_p1),
    .q0(C_V_q0)
);

top_nondf_kernel_2mm_x0_tmp_V #(
    .DataWidth( 32 ),
    .AddressRange( 1024 ),
    .AddressWidth( 10 ))
D_input_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(D_input_V_address0),
    .ce0(D_input_V_ce0),
    .we0(D_input_V_we0),
    .d0(empty_fu_401_p1),
    .q0(D_input_V_q0)
);

top_nondf_kernel_2mm_x0_tmp_V #(
    .DataWidth( 32 ),
    .AddressRange( 1024 ),
    .AddressWidth( 10 ))
D_output_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(D_output_V_address0),
    .ce0(D_output_V_ce0),
    .we0(D_output_V_we0),
    .d0(sum_1_reg_313),
    .q0(D_output_V_q0)
);

top_add_512ns_512ns_512_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 512 ),
    .din1_WIDTH( 512 ),
    .dout_WIDTH( 512 ))
add_512ns_512ns_512_2_1_U997(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(mul_ln691_reg_789),
    .din1(conv3_i20_reg_268),
    .ce(1'b1),
    .dout(grp_fu_515_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln88_fu_452_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        conv3_i20_reg_268 <= 512'd0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        conv3_i20_reg_268 <= grp_fu_515_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln76_fu_364_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        i_1_reg_235 <= 6'd0;
    end else if (((icmp_ln88_fu_452_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        i_1_reg_235 <= add_ln87_reg_729;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln87_fu_426_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        i_2_reg_280 <= 6'd0;
    end else if (((icmp_ln95_fu_565_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state17))) begin
        i_2_reg_280 <= add_ln94_reg_799;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln94_fu_538_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state16))) begin
        i_3_reg_324 <= 6'd0;
    end else if (((icmp_ln105_fu_672_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state25))) begin
        i_3_reg_324 <= add_ln104_reg_879;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_reg_213 <= 6'd0;
    end else if (((icmp_ln77_fu_395_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        i_reg_213 <= add_ln76_reg_678;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln87_fu_426_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        j_1_reg_246 <= 6'd0;
    end else if (((icmp_ln91_fu_500_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        j_1_reg_246 <= add_ln88_reg_743;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln94_fu_538_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state16))) begin
        j_2_reg_291 <= 6'd0;
    end else if (((icmp_ln98_fu_613_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state19))) begin
        j_2_reg_291 <= add_ln95_reg_813;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln104_fu_646_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state24))) begin
        j_3_reg_335 <= 6'd0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        j_3_reg_335 <= add_ln105_reg_892;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln76_fu_364_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        j_reg_224 <= 6'd0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        j_reg_224 <= add_ln77_reg_691;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        k_1_reg_302 <= 6'd0;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        k_1_reg_302 <= add_ln98_reg_841;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln88_fu_452_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        k_reg_257 <= 6'd0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        k_reg_257 <= add_ln91_reg_761;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        sum_1_reg_313 <= D_input_V_q0;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        sum_1_reg_313 <= sum_2_fu_623_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        A_V_addr_reg_701 <= zext_ln78_1_fu_385_p1;
        B_V_addr_reg_706 <= zext_ln78_1_fu_385_p1;
        C_V_addr_reg_711 <= zext_ln78_1_fu_385_p1;
        D_input_V_addr_reg_716 <= zext_ln78_1_fu_385_p1;
        add_ln77_reg_691 <= add_ln77_fu_370_p2;
        tmp_V_addr_reg_696 <= zext_ln78_1_fu_385_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        A_V_load_reg_779 <= A_V_q0;
        B_V_load_reg_784 <= B_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        C_V_load_reg_864 <= C_V_q0;
        tmp_V_load_reg_859 <= tmp_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        D_output_V_addr_1_reg_828 <= zext_ln215_1_fu_559_p1;
        add_ln95_reg_813 <= add_ln95_fu_544_p2;
        zext_ln215_reg_818[5 : 0] <= zext_ln215_fu_550_p1[5 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        add_ln104_reg_879 <= add_ln104_fu_628_p2;
        tmp_5_cast_reg_884[9 : 5] <= tmp_5_cast_fu_638_p3[9 : 5];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        add_ln105_reg_892 <= add_ln105_fu_652_p2;
        zext_ln106_1_reg_897[9 : 0] <= zext_ln106_1_fu_667_p1[9 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln76_reg_678 <= add_ln76_fu_346_p2;
        tmp_cast_reg_683[9 : 5] <= tmp_cast_fu_356_p3[9 : 5];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        add_ln87_reg_729 <= add_ln87_fu_408_p2;
        tmp_3_cast_reg_734[9 : 5] <= tmp_3_cast_fu_418_p3[9 : 5];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        add_ln88_reg_743 <= add_ln88_fu_432_p2;
        tmp_V_addr_1_reg_753 <= zext_ln90_1_fu_447_p1;
        zext_ln90_reg_748[5 : 0] <= zext_ln90_fu_438_p1[5 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        add_ln91_reg_761 <= add_ln91_fu_458_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        add_ln94_reg_799 <= add_ln94_fu_520_p2;
        tmp_4_cast_reg_804[9 : 5] <= tmp_4_cast_fu_530_p3[9 : 5];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        add_ln98_reg_841 <= add_ln98_fu_571_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        mul_ln691_reg_789 <= grp_fu_142_p_dout0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        mul_ln99_reg_869 <= grp_fu_146_p_dout0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        A_V_address0 = zext_ln215_3_fu_473_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        A_V_address0 = A_V_addr_reg_701;
    end else begin
        A_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state7))) begin
        A_V_ce0 = 1'b1;
    end else begin
        A_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        A_V_we0 = 1'b1;
    end else begin
        A_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        B_V_address0 = zext_ln215_4_fu_495_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        B_V_address0 = B_V_addr_reg_706;
    end else begin
        B_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state7))) begin
        B_V_ce0 = 1'b1;
    end else begin
        B_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        B_V_we0 = 1'b1;
    end else begin
        B_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        C_V_address0 = zext_ln215_7_fu_608_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        C_V_address0 = C_V_addr_reg_711;
    end else begin
        C_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state19))) begin
        C_V_ce0 = 1'b1;
    end else begin
        C_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        C_V_we0 = 1'b1;
    end else begin
        C_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        D_input_V_address0 = zext_ln215_1_fu_559_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        D_input_V_address0 = D_input_V_addr_reg_716;
    end else begin
        D_input_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state17))) begin
        D_input_V_ce0 = 1'b1;
    end else begin
        D_input_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        D_input_V_we0 = 1'b1;
    end else begin
        D_input_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        D_output_V_address0 = zext_ln106_1_fu_667_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        D_output_V_address0 = D_output_V_addr_1_reg_828;
    end else begin
        D_output_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state19))) begin
        D_output_V_ce0 = 1'b1;
    end else begin
        D_output_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln98_fu_613_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state19))) begin
        D_output_V_we0 = 1'b1;
    end else begin
        D_output_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln104_fu_646_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state24)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
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
    if (((icmp_ln104_fu_646_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state24))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        tmp_V_address0 = zext_ln215_6_fu_586_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_V_address0 = tmp_V_addr_1_reg_753;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_V_address0 = tmp_V_addr_reg_696;
    end else begin
        tmp_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state7))) begin
        tmp_V_ce0 = 1'b1;
    end else begin
        tmp_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_V_d0 = trunc_ln91_fu_506_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_V_d0 = empty_fu_401_p1;
    end else begin
        tmp_V_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | ((icmp_ln91_fu_500_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7)))) begin
        tmp_V_we0 = 1'b1;
    end else begin
        tmp_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        xin_ce0 = 1'b1;
    end else begin
        xin_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        xin_we0 = 1'b1;
    end else begin
        xin_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        xout_ce0 = 1'b1;
    end else begin
        xout_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln76_fu_364_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln77_fu_395_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state5 : begin
            if (((icmp_ln87_fu_426_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((icmp_ln88_fu_452_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((icmp_ln91_fu_500_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state16 : begin
            if (((icmp_ln94_fu_538_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state16))) begin
                ap_NS_fsm = ap_ST_fsm_state24;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        ap_ST_fsm_state17 : begin
            if (((icmp_ln95_fu_565_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state17))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            if (((icmp_ln98_fu_613_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state19))) begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state20;
            end
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state24 : begin
            if (((icmp_ln104_fu_646_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state24))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state25;
            end
        end
        ap_ST_fsm_state25 : begin
            if (((icmp_ln105_fu_672_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state25))) begin
                ap_NS_fsm = ap_ST_fsm_state24;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state26;
            end
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln104_fu_628_p2 = (i_3_reg_324 + 6'd1);

assign add_ln105_fu_652_p2 = (j_3_reg_335 + 6'd1);

assign add_ln106_fu_662_p2 = (tmp_5_cast_reg_884 + zext_ln106_fu_658_p1);

assign add_ln215_1_fu_468_p2 = (tmp_3_cast_reg_734 + zext_ln215_2_fu_464_p1);

assign add_ln215_2_fu_490_p2 = (tmp_6_cast_fu_482_p3 + zext_ln90_reg_748);

assign add_ln215_3_fu_581_p2 = (tmp_4_cast_reg_804 + zext_ln215_5_fu_577_p1);

assign add_ln215_4_fu_603_p2 = (tmp_9_cast_fu_595_p3 + zext_ln215_reg_818);

assign add_ln215_fu_554_p2 = (tmp_4_cast_reg_804 + zext_ln215_fu_550_p1);

assign add_ln76_fu_346_p2 = (i_reg_213 + 6'd1);

assign add_ln77_fu_370_p2 = (j_reg_224 + 6'd1);

assign add_ln78_fu_380_p2 = (tmp_cast_reg_683 + zext_ln78_fu_376_p1);

assign add_ln87_fu_408_p2 = (i_1_reg_235 + 6'd1);

assign add_ln88_fu_432_p2 = (j_1_reg_246 + 6'd1);

assign add_ln90_fu_442_p2 = (tmp_3_cast_reg_734 + zext_ln90_fu_438_p1);

assign add_ln91_fu_458_p2 = (k_reg_257 + 6'd1);

assign add_ln94_fu_520_p2 = (i_2_reg_280 + 6'd1);

assign add_ln95_fu_544_p2 = (j_2_reg_291 + 6'd1);

assign add_ln98_fu_571_p2 = (k_1_reg_302 + 6'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

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

assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];

assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];

assign ap_CS_fsm_state25 = ap_CS_fsm[32'd24];

assign ap_CS_fsm_state26 = ap_CS_fsm[32'd25];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign empty_fu_401_p1 = xout_q0[31:0];

assign grp_fu_142_p_ce = 1'b1;

assign grp_fu_142_p_din0 = A_V_load_reg_779;

assign grp_fu_142_p_din1 = B_V_load_reg_784;

assign grp_fu_146_p_ce = 1'b1;

assign grp_fu_146_p_din0 = C_V_load_reg_864;

assign grp_fu_146_p_din1 = tmp_V_load_reg_859;

assign grp_fu_511_ce = 1'b1;

assign grp_fu_511_p0 = A_V_load_reg_779;

assign grp_fu_511_p1 = B_V_load_reg_784;

assign grp_fu_511_p2 = grp_fu_142_p_dout0;

assign grp_fu_619_ce = 1'b1;

assign grp_fu_619_p0 = C_V_load_reg_864;

assign grp_fu_619_p1 = tmp_V_load_reg_859;

assign grp_fu_619_p2 = grp_fu_146_p_dout0;

assign icmp_ln104_fu_646_p2 = ((i_3_reg_324 == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln105_fu_672_p2 = ((j_3_reg_335 == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln76_fu_364_p2 = ((i_reg_213 == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln77_fu_395_p2 = ((j_reg_224 == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln87_fu_426_p2 = ((i_1_reg_235 == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln88_fu_452_p2 = ((j_1_reg_246 == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln91_fu_500_p2 = ((k_reg_257 == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln94_fu_538_p2 = ((i_2_reg_280 == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln95_fu_565_p2 = ((j_2_reg_291 == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln98_fu_613_p2 = ((k_1_reg_302 == 6'd32) ? 1'b1 : 1'b0);

assign sum_2_fu_623_p2 = (mul_ln99_reg_869 + sum_1_reg_313);

assign tmp_3_cast_fu_418_p3 = {{trunc_ln90_fu_414_p1}, {5'd0}};

assign tmp_4_cast_fu_530_p3 = {{trunc_ln215_fu_526_p1}, {5'd0}};

assign tmp_5_cast_fu_638_p3 = {{trunc_ln106_fu_634_p1}, {5'd0}};

assign tmp_6_cast_fu_482_p3 = {{trunc_ln215_1_fu_478_p1}, {5'd0}};

assign tmp_9_cast_fu_595_p3 = {{trunc_ln215_2_fu_591_p1}, {5'd0}};

assign tmp_cast_fu_356_p3 = {{trunc_ln78_fu_352_p1}, {5'd0}};

assign trunc_ln106_fu_634_p1 = i_3_reg_324[4:0];

assign trunc_ln215_1_fu_478_p1 = k_reg_257[4:0];

assign trunc_ln215_2_fu_591_p1 = k_1_reg_302[4:0];

assign trunc_ln215_fu_526_p1 = i_2_reg_280[4:0];

assign trunc_ln78_fu_352_p1 = i_reg_213[4:0];

assign trunc_ln90_fu_414_p1 = i_1_reg_235[4:0];

assign trunc_ln91_fu_506_p1 = conv3_i20_reg_268[31:0];

assign xin_address0 = zext_ln106_1_reg_897;

assign xin_d0 = D_output_V_q0;

assign xout_address0 = zext_ln78_1_fu_385_p1;

assign zext_ln106_1_fu_667_p1 = add_ln106_fu_662_p2;

assign zext_ln106_fu_658_p1 = j_3_reg_335;

assign zext_ln215_1_fu_559_p1 = add_ln215_fu_554_p2;

assign zext_ln215_2_fu_464_p1 = k_reg_257;

assign zext_ln215_3_fu_473_p1 = add_ln215_1_fu_468_p2;

assign zext_ln215_4_fu_495_p1 = add_ln215_2_fu_490_p2;

assign zext_ln215_5_fu_577_p1 = k_1_reg_302;

assign zext_ln215_6_fu_586_p1 = add_ln215_3_fu_581_p2;

assign zext_ln215_7_fu_608_p1 = add_ln215_4_fu_603_p2;

assign zext_ln215_fu_550_p1 = j_2_reg_291;

assign zext_ln78_1_fu_385_p1 = add_ln78_fu_380_p2;

assign zext_ln78_fu_376_p1 = j_reg_224;

assign zext_ln90_1_fu_447_p1 = add_ln90_fu_442_p2;

assign zext_ln90_fu_438_p1 = j_1_reg_246;

always @ (posedge ap_clk) begin
    tmp_cast_reg_683[4:0] <= 5'b00000;
    tmp_3_cast_reg_734[4:0] <= 5'b00000;
    zext_ln90_reg_748[9:6] <= 4'b0000;
    tmp_4_cast_reg_804[4:0] <= 5'b00000;
    zext_ln215_reg_818[9:6] <= 4'b0000;
    tmp_5_cast_reg_884[4:0] <= 5'b00000;
    zext_ln106_1_reg_897[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
end

endmodule //top_nondf_kernel_2mm_x1
