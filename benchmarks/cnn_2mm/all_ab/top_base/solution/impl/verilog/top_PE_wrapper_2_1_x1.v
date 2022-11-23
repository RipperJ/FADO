// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module top_PE_wrapper_2_1_x1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        fifo_A_PE_2_1_x123_dout,
        fifo_A_PE_2_1_x123_empty_n,
        fifo_A_PE_2_1_x123_read,
        fifo_A_PE_2_2_x124_din,
        fifo_A_PE_2_2_x124_full_n,
        fifo_A_PE_2_2_x124_write,
        fifo_B_PE_2_1_x171_dout,
        fifo_B_PE_2_1_x171_empty_n,
        fifo_B_PE_2_1_x171_read,
        fifo_B_PE_3_1_x172_din,
        fifo_B_PE_3_1_x172_full_n,
        fifo_B_PE_3_1_x172_write,
        fifo_C_drain_PE_2_1_x198_din,
        fifo_C_drain_PE_2_1_x198_full_n,
        fifo_C_drain_PE_2_1_x198_write
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
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [255:0] fifo_A_PE_2_1_x123_dout;
input   fifo_A_PE_2_1_x123_empty_n;
output   fifo_A_PE_2_1_x123_read;
output  [255:0] fifo_A_PE_2_2_x124_din;
input   fifo_A_PE_2_2_x124_full_n;
output   fifo_A_PE_2_2_x124_write;
input  [255:0] fifo_B_PE_2_1_x171_dout;
input   fifo_B_PE_2_1_x171_empty_n;
output   fifo_B_PE_2_1_x171_read;
output  [255:0] fifo_B_PE_3_1_x172_din;
input   fifo_B_PE_3_1_x172_full_n;
output   fifo_B_PE_3_1_x172_write;
output  [31:0] fifo_C_drain_PE_2_1_x198_din;
input   fifo_C_drain_PE_2_1_x198_full_n;
output   fifo_C_drain_PE_2_1_x198_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg fifo_A_PE_2_1_x123_read;
reg fifo_A_PE_2_2_x124_write;
reg fifo_B_PE_2_1_x171_read;
reg fifo_B_PE_3_1_x172_write;
reg fifo_C_drain_PE_2_1_x198_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [25:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    fifo_A_PE_2_1_x123_blk_n;
wire    ap_CS_fsm_state6;
wire   [0:0] icmp_ln890_144_fu_590_p2;
reg    fifo_A_PE_2_2_x124_blk_n;
wire    ap_CS_fsm_state26;
reg    fifo_B_PE_2_1_x171_blk_n;
wire    ap_CS_fsm_state7;
wire   [0:0] icmp_ln878_fu_607_p2;
reg    fifo_B_PE_3_1_x172_blk_n;
reg    fifo_C_drain_PE_2_1_x198_blk_n;
wire    ap_CS_fsm_state10;
wire   [0:0] icmp_ln890_145_fu_688_p2;
reg   [0:0] cmp_i_i_reg_904;
wire   [31:0] local_A_0_q0;
reg   [31:0] reg_466;
wire    ap_CS_fsm_state11;
wire   [31:0] local_A_0_q1;
wire    ap_CS_fsm_state23;
wire   [31:0] local_B_0_q0;
reg   [31:0] reg_472;
wire   [31:0] local_B_0_q1;
wire   [6:0] add_ln691_fu_478_p2;
reg   [6:0] add_ln691_reg_795;
wire    ap_CS_fsm_state2;
wire   [9:0] zext_ln890_fu_484_p1;
reg   [9:0] zext_ln890_reg_800;
wire   [0:0] icmp_ln890_fu_488_p2;
wire   [4:0] add_ln691_197_fu_494_p2;
wire    ap_CS_fsm_state3;
wire   [5:0] add_ln691_198_fu_528_p2;
reg   [5:0] add_ln691_198_reg_896;
wire    ap_CS_fsm_state4;
wire   [0:0] cmp_i_i_fu_540_p2;
wire   [0:0] icmp_ln890_141_fu_534_p2;
wire   [6:0] add_ln691_199_fu_546_p2;
reg   [6:0] add_ln691_199_reg_908;
wire    ap_CS_fsm_state5;
wire   [9:0] zext_ln890_57_fu_552_p1;
reg   [9:0] zext_ln890_57_reg_913;
wire   [4:0] add_ln691_203_fu_562_p2;
reg   [4:0] add_ln691_203_reg_921;
reg    ap_block_state6;
reg   [9:0] local_C_addr_29_reg_926;
wire   [3:0] add_ln691_200_fu_596_p2;
reg    ap_block_state7;
wire   [255:0] zext_ln1497_fu_632_p1;
wire   [3:0] add_ln691_201_fu_636_p2;
wire    ap_CS_fsm_state8;
wire   [255:0] zext_ln1497_29_fu_672_p1;
wire   [0:0] icmp_ln878_29_fu_647_p2;
wire   [31:0] local_C_q0;
wire    ap_CS_fsm_state9;
wire   [3:0] add_ln691_202_fu_676_p2;
reg   [3:0] add_ln691_202_reg_976;
reg    ap_predicate_op157_write_state10;
reg    ap_block_state10;
wire   [31:0] grp_fu_462_p2;
reg   [31:0] mul_reg_994;
wire    ap_CS_fsm_state15;
wire   [31:0] grp_fu_457_p2;
wire    ap_CS_fsm_state22;
reg   [31:0] u6_reg_1004;
reg   [31:0] u6_29_reg_1009;
reg   [31:0] u5_reg_1014;
wire    ap_CS_fsm_state24;
reg   [31:0] u4_reg_1019;
reg   [31:0] u5_29_reg_1024;
reg   [31:0] u4_29_reg_1029;
reg   [31:0] u3_reg_1034;
wire    ap_CS_fsm_state25;
reg   [31:0] u2_reg_1039;
reg   [31:0] u3_29_reg_1044;
reg   [31:0] u2_29_reg_1049;
reg   [2:0] local_A_0_address0;
reg    local_A_0_ce0;
reg    local_A_0_we0;
wire   [31:0] local_A_0_d0;
reg   [2:0] local_A_0_address1;
reg    local_A_0_ce1;
reg   [2:0] local_B_0_address0;
reg    local_B_0_ce0;
reg    local_B_0_we0;
wire   [31:0] local_B_0_d0;
reg   [2:0] local_B_0_address1;
reg    local_B_0_ce1;
reg    local_C_ce0;
reg   [9:0] local_C_address1;
reg    local_C_ce1;
reg    local_C_we1;
reg   [31:0] local_C_d1;
reg   [6:0] c6_V_reg_340;
wire   [0:0] icmp_ln890_142_fu_522_p2;
reg    ap_block_state1;
reg   [4:0] c7_V_reg_351;
reg   [5:0] c5_V_reg_362;
wire   [0:0] icmp_ln890_143_fu_556_p2;
reg   [6:0] c6_V_29_reg_373;
reg   [4:0] c7_V_29_reg_384;
reg    ap_block_state26;
reg   [3:0] n_V_reg_395;
reg   [255:0] p_Val2_s_reg_406;
reg   [3:0] n_V_29_reg_415;
reg   [255:0] p_Val2_29_reg_426;
reg   [3:0] c8_V_reg_435;
reg   [31:0] empty_1463_reg_446;
wire   [63:0] zext_ln9289_fu_517_p1;
wire   [63:0] p_cast_fu_585_p1;
wire   [63:0] zext_ln878_fu_602_p1;
wire   [63:0] zext_ln878_29_fu_642_p1;
wire   [63:0] zext_ln890_58_fu_682_p1;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state12;
wire   [3:0] trunc_ln9289_fu_500_p1;
wire   [9:0] tmp_94_cast_fu_504_p3;
wire   [9:0] add_ln9289_fu_512_p2;
wire   [3:0] empty_fu_568_p1;
wire   [9:0] tmp_95_cast_fu_572_p3;
wire   [9:0] empty_1462_fu_580_p2;
wire   [31:0] u_fu_613_p1;
wire   [223:0] r_fu_622_p4;
wire   [31:0] u_29_fu_653_p1;
wire   [223:0] r_29_fu_662_p4;
wire   [31:0] v1_V_fu_699_p1;
wire   [31:0] v2_V_718_fu_703_p1;
wire   [31:0] v2_V_717_fu_706_p1;
wire   [31:0] v2_V_716_fu_709_p1;
wire   [31:0] v2_V_715_fu_712_p1;
wire   [31:0] v2_V_714_fu_715_p1;
wire   [31:0] v2_V_713_fu_718_p1;
wire   [31:0] v2_V_fu_722_p1;
wire   [31:0] v1_V_29_fu_747_p1;
wire   [31:0] v2_V_725_fu_751_p1;
wire   [31:0] v2_V_724_fu_754_p1;
wire   [31:0] v2_V_723_fu_757_p1;
wire   [31:0] v2_V_722_fu_760_p1;
wire   [31:0] v2_V_721_fu_763_p1;
wire   [31:0] v2_V_720_fu_766_p1;
wire   [31:0] v2_V_719_fu_770_p1;
reg   [25:0] ap_NS_fsm;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 26'd1;
end

top_PE_wrapper_0_0_x0_local_A_0 #(
    .DataWidth( 32 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
local_A_0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(local_A_0_address0),
    .ce0(local_A_0_ce0),
    .we0(local_A_0_we0),
    .d0(local_A_0_d0),
    .q0(local_A_0_q0),
    .address1(local_A_0_address1),
    .ce1(local_A_0_ce1),
    .q1(local_A_0_q1)
);

top_PE_wrapper_0_0_x0_local_A_0 #(
    .DataWidth( 32 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
local_B_0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(local_B_0_address0),
    .ce0(local_B_0_ce0),
    .we0(local_B_0_we0),
    .d0(local_B_0_d0),
    .q0(local_B_0_q0),
    .address1(local_B_0_address1),
    .ce1(local_B_0_ce1),
    .q1(local_B_0_q1)
);

top_PE_wrapper_0_0_x0_local_C #(
    .DataWidth( 32 ),
    .AddressRange( 1024 ),
    .AddressWidth( 10 ))
local_C_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(local_C_addr_29_reg_926),
    .ce0(local_C_ce0),
    .q0(local_C_q0),
    .address1(local_C_address1),
    .ce1(local_C_ce1),
    .we1(local_C_we1),
    .d1(local_C_d1)
);

top_fadd_32ns_32ns_32_7_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 7 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U586(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(empty_1463_reg_446),
    .din1(mul_reg_994),
    .ce(1'b1),
    .dout(grp_fu_457_p2)
);

top_fmul_32ns_32ns_32_4_max_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U587(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(reg_466),
    .din1(reg_472),
    .ce(1'b1),
    .dout(grp_fu_462_p2)
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
        end else if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln890_141_fu_534_p2 == 1'd1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln890_fu_488_p2 == 1'd1))) begin
        c5_V_reg_362 <= 6'd0;
    end else if (((icmp_ln890_143_fu_556_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        c5_V_reg_362 <= add_ln691_198_reg_896;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln890_141_fu_534_p2 == 1'd0))) begin
        c6_V_29_reg_373 <= 7'd0;
    end else if ((~((icmp_ln890_144_fu_590_p2 == 1'd0) & (fifo_A_PE_2_1_x123_empty_n == 1'b0)) & (icmp_ln890_144_fu_590_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        c6_V_29_reg_373 <= add_ln691_199_reg_908;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        c6_V_reg_340 <= 7'd0;
    end else if (((icmp_ln890_142_fu_522_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        c6_V_reg_340 <= add_ln691_reg_795;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_143_fu_556_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        c7_V_29_reg_384 <= 5'd0;
    end else if ((~((fifo_B_PE_3_1_x172_full_n == 1'b0) | (fifo_A_PE_2_2_x124_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state26))) begin
        c7_V_29_reg_384 <= add_ln691_203_reg_921;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln890_fu_488_p2 == 1'd0))) begin
        c7_V_reg_351 <= 5'd0;
    end else if (((icmp_ln890_142_fu_522_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        c7_V_reg_351 <= add_ln691_197_fu_494_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        c8_V_reg_435 <= 4'd0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        c8_V_reg_435 <= add_ln691_202_reg_976;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        empty_1463_reg_446 <= local_C_q0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        empty_1463_reg_446 <= grp_fu_457_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((icmp_ln878_fu_607_p2 == 1'd1) & (fifo_B_PE_2_1_x171_empty_n == 1'b0)) & (icmp_ln878_fu_607_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        n_V_29_reg_415 <= 4'd0;
    end else if (((icmp_ln878_29_fu_647_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        n_V_29_reg_415 <= add_ln691_201_fu_636_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((icmp_ln890_144_fu_590_p2 == 1'd0) & (fifo_A_PE_2_1_x123_empty_n == 1'b0)) & (icmp_ln890_144_fu_590_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        n_V_reg_395 <= 4'd0;
    end else if ((~((icmp_ln878_fu_607_p2 == 1'd1) & (fifo_B_PE_2_1_x171_empty_n == 1'b0)) & (icmp_ln878_fu_607_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        n_V_reg_395 <= add_ln691_200_fu_596_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((icmp_ln878_fu_607_p2 == 1'd1) & (fifo_B_PE_2_1_x171_empty_n == 1'b0)) & (icmp_ln878_fu_607_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        p_Val2_29_reg_426 <= fifo_B_PE_2_1_x171_dout;
    end else if (((icmp_ln878_29_fu_647_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        p_Val2_29_reg_426 <= zext_ln1497_29_fu_672_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((~((icmp_ln890_144_fu_590_p2 == 1'd0) & (fifo_A_PE_2_1_x123_empty_n == 1'b0)) & (icmp_ln890_144_fu_590_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        p_Val2_s_reg_406 <= fifo_A_PE_2_1_x123_dout;
    end else if ((~((icmp_ln878_fu_607_p2 == 1'd1) & (fifo_B_PE_2_1_x171_empty_n == 1'b0)) & (icmp_ln878_fu_607_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        p_Val2_s_reg_406 <= zext_ln1497_fu_632_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        reg_466 <= local_A_0_q1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        reg_466 <= local_A_0_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        reg_472 <= local_B_0_q1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        reg_472 <= local_B_0_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        add_ln691_198_reg_896 <= add_ln691_198_fu_528_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        add_ln691_199_reg_908 <= add_ln691_199_fu_546_p2;
        zext_ln890_57_reg_913[6 : 0] <= zext_ln890_57_fu_552_p1[6 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((~((fifo_C_drain_PE_2_1_x198_full_n == 1'b0) & (ap_predicate_op157_write_state10 == 1'b1)) & (1'b1 == ap_CS_fsm_state10))) begin
        add_ln691_202_reg_976 <= add_ln691_202_fu_676_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((icmp_ln890_144_fu_590_p2 == 1'd0) & (fifo_A_PE_2_1_x123_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state6))) begin
        add_ln691_203_reg_921 <= add_ln691_203_fu_562_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln691_reg_795 <= add_ln691_fu_478_p2;
        zext_ln890_reg_800[6 : 0] <= zext_ln890_fu_484_p1[6 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln890_141_fu_534_p2 == 1'd0))) begin
        cmp_i_i_reg_904 <= cmp_i_i_fu_540_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        local_C_addr_29_reg_926 <= p_cast_fu_585_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_reg_994 <= grp_fu_462_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        u2_29_reg_1049 <= local_A_0_q1;
        u2_reg_1039 <= local_B_0_q1;
        u3_29_reg_1044 <= local_A_0_q0;
        u3_reg_1034 <= local_B_0_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        u4_29_reg_1029 <= local_A_0_q1;
        u4_reg_1019 <= local_B_0_q1;
        u5_29_reg_1024 <= local_A_0_q0;
        u5_reg_1014 <= local_B_0_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        u6_29_reg_1009 <= local_A_0_q0;
        u6_reg_1004 <= local_B_0_q0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln890_141_fu_534_p2 == 1'd1))) begin
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
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln890_141_fu_534_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln890_144_fu_590_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        fifo_A_PE_2_1_x123_blk_n = fifo_A_PE_2_1_x123_empty_n;
    end else begin
        fifo_A_PE_2_1_x123_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((icmp_ln890_144_fu_590_p2 == 1'd0) & (fifo_A_PE_2_1_x123_empty_n == 1'b0)) & (icmp_ln890_144_fu_590_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        fifo_A_PE_2_1_x123_read = 1'b1;
    end else begin
        fifo_A_PE_2_1_x123_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        fifo_A_PE_2_2_x124_blk_n = fifo_A_PE_2_2_x124_full_n;
    end else begin
        fifo_A_PE_2_2_x124_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((fifo_B_PE_3_1_x172_full_n == 1'b0) | (fifo_A_PE_2_2_x124_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state26))) begin
        fifo_A_PE_2_2_x124_write = 1'b1;
    end else begin
        fifo_A_PE_2_2_x124_write = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln878_fu_607_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        fifo_B_PE_2_1_x171_blk_n = fifo_B_PE_2_1_x171_empty_n;
    end else begin
        fifo_B_PE_2_1_x171_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((icmp_ln878_fu_607_p2 == 1'd1) & (fifo_B_PE_2_1_x171_empty_n == 1'b0)) & (icmp_ln878_fu_607_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        fifo_B_PE_2_1_x171_read = 1'b1;
    end else begin
        fifo_B_PE_2_1_x171_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        fifo_B_PE_3_1_x172_blk_n = fifo_B_PE_3_1_x172_full_n;
    end else begin
        fifo_B_PE_3_1_x172_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((fifo_B_PE_3_1_x172_full_n == 1'b0) | (fifo_A_PE_2_2_x124_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state26))) begin
        fifo_B_PE_3_1_x172_write = 1'b1;
    end else begin
        fifo_B_PE_3_1_x172_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) & (cmp_i_i_reg_904 == 1'd1) & (icmp_ln890_145_fu_688_p2 == 1'd1))) begin
        fifo_C_drain_PE_2_1_x198_blk_n = fifo_C_drain_PE_2_1_x198_full_n;
    end else begin
        fifo_C_drain_PE_2_1_x198_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((fifo_C_drain_PE_2_1_x198_full_n == 1'b0) & (ap_predicate_op157_write_state10 == 1'b1)) & (ap_predicate_op157_write_state10 == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        fifo_C_drain_PE_2_1_x198_write = 1'b1;
    end else begin
        fifo_C_drain_PE_2_1_x198_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        local_A_0_address0 = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        local_A_0_address0 = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        local_A_0_address0 = 64'd5;
    end else if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln890_145_fu_688_p2 == 1'd1))) begin
        local_A_0_address0 = 64'd6;
    end else if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln890_145_fu_688_p2 == 1'd0))) begin
        local_A_0_address0 = zext_ln890_58_fu_682_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        local_A_0_address0 = zext_ln878_fu_602_p1;
    end else begin
        local_A_0_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        local_A_0_address1 = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        local_A_0_address1 = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        local_A_0_address1 = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        local_A_0_address1 = 64'd7;
    end else begin
        local_A_0_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (~((fifo_C_drain_PE_2_1_x198_full_n == 1'b0) & (ap_predicate_op157_write_state10 == 1'b1)) & (1'b1 == ap_CS_fsm_state10) & (icmp_ln890_145_fu_688_p2 == 1'd0)) | (~((fifo_C_drain_PE_2_1_x198_full_n == 1'b0) & (ap_predicate_op157_write_state10 == 1'b1)) & (1'b1 == ap_CS_fsm_state10) & (icmp_ln890_145_fu_688_p2 == 1'd1)) | (~((icmp_ln878_fu_607_p2 == 1'd1) & (fifo_B_PE_2_1_x171_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state7)))) begin
        local_A_0_ce0 = 1'b1;
    end else begin
        local_A_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (~((fifo_C_drain_PE_2_1_x198_full_n == 1'b0) & (ap_predicate_op157_write_state10 == 1'b1)) & (1'b1 == ap_CS_fsm_state10)))) begin
        local_A_0_ce1 = 1'b1;
    end else begin
        local_A_0_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((~((icmp_ln878_fu_607_p2 == 1'd1) & (fifo_B_PE_2_1_x171_empty_n == 1'b0)) & (icmp_ln878_fu_607_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        local_A_0_we0 = 1'b1;
    end else begin
        local_A_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        local_B_0_address0 = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        local_B_0_address0 = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        local_B_0_address0 = 64'd5;
    end else if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln890_145_fu_688_p2 == 1'd1))) begin
        local_B_0_address0 = 64'd6;
    end else if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln890_145_fu_688_p2 == 1'd0))) begin
        local_B_0_address0 = zext_ln890_58_fu_682_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        local_B_0_address0 = zext_ln878_29_fu_642_p1;
    end else begin
        local_B_0_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        local_B_0_address1 = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        local_B_0_address1 = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        local_B_0_address1 = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        local_B_0_address1 = 64'd7;
    end else begin
        local_B_0_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state23) | (~((fifo_C_drain_PE_2_1_x198_full_n == 1'b0) & (ap_predicate_op157_write_state10 == 1'b1)) & (1'b1 == ap_CS_fsm_state10) & (icmp_ln890_145_fu_688_p2 == 1'd0)) | (~((fifo_C_drain_PE_2_1_x198_full_n == 1'b0) & (ap_predicate_op157_write_state10 == 1'b1)) & (1'b1 == ap_CS_fsm_state10) & (icmp_ln890_145_fu_688_p2 == 1'd1)))) begin
        local_B_0_ce0 = 1'b1;
    end else begin
        local_B_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (~((fifo_C_drain_PE_2_1_x198_full_n == 1'b0) & (ap_predicate_op157_write_state10 == 1'b1)) & (1'b1 == ap_CS_fsm_state10)))) begin
        local_B_0_ce1 = 1'b1;
    end else begin
        local_B_0_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln878_29_fu_647_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        local_B_0_we0 = 1'b1;
    end else begin
        local_B_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        local_C_address1 = local_C_addr_29_reg_926;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        local_C_address1 = zext_ln9289_fu_517_p1;
    end else begin
        local_C_address1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        local_C_ce0 = 1'b1;
    end else begin
        local_C_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (~((fifo_C_drain_PE_2_1_x198_full_n == 1'b0) & (ap_predicate_op157_write_state10 == 1'b1)) & (1'b1 == ap_CS_fsm_state10)))) begin
        local_C_ce1 = 1'b1;
    end else begin
        local_C_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        local_C_d1 = empty_1463_reg_446;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        local_C_d1 = 32'd0;
    end else begin
        local_C_d1 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln890_142_fu_522_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3)) | (~((fifo_C_drain_PE_2_1_x198_full_n == 1'b0) & (ap_predicate_op157_write_state10 == 1'b1)) & (1'b1 == ap_CS_fsm_state10) & (icmp_ln890_145_fu_688_p2 == 1'd1)))) begin
        local_C_we1 = 1'b1;
    end else begin
        local_C_we1 = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln890_fu_488_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln890_142_fu_522_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln890_141_fu_534_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((icmp_ln890_143_fu_556_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            if ((~((icmp_ln890_144_fu_590_p2 == 1'd0) & (fifo_A_PE_2_1_x123_empty_n == 1'b0)) & (icmp_ln890_144_fu_590_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else if ((~((icmp_ln890_144_fu_590_p2 == 1'd0) & (fifo_A_PE_2_1_x123_empty_n == 1'b0)) & (icmp_ln890_144_fu_590_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            if ((~((icmp_ln878_fu_607_p2 == 1'd1) & (fifo_B_PE_2_1_x171_empty_n == 1'b0)) & (icmp_ln878_fu_607_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else if ((~((icmp_ln878_fu_607_p2 == 1'd1) & (fifo_B_PE_2_1_x171_empty_n == 1'b0)) & (icmp_ln878_fu_607_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((icmp_ln878_29_fu_647_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if ((~((fifo_C_drain_PE_2_1_x198_full_n == 1'b0) & (ap_predicate_op157_write_state10 == 1'b1)) & (1'b1 == ap_CS_fsm_state10) & (icmp_ln890_145_fu_688_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state23;
            end else if ((~((fifo_C_drain_PE_2_1_x198_full_n == 1'b0) & (ap_predicate_op157_write_state10 == 1'b1)) & (1'b1 == ap_CS_fsm_state10) & (icmp_ln890_145_fu_688_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
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
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            if ((~((fifo_B_PE_3_1_x172_full_n == 1'b0) | (fifo_A_PE_2_2_x124_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state26))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state26;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln691_197_fu_494_p2 = (c7_V_reg_351 + 5'd1);

assign add_ln691_198_fu_528_p2 = (c5_V_reg_362 + 6'd1);

assign add_ln691_199_fu_546_p2 = (c6_V_29_reg_373 + 7'd1);

assign add_ln691_200_fu_596_p2 = (n_V_reg_395 + 4'd1);

assign add_ln691_201_fu_636_p2 = (n_V_29_reg_415 + 4'd1);

assign add_ln691_202_fu_676_p2 = (c8_V_reg_435 + 4'd1);

assign add_ln691_203_fu_562_p2 = (c7_V_29_reg_384 + 5'd1);

assign add_ln691_fu_478_p2 = (c6_V_reg_340 + 7'd1);

assign add_ln9289_fu_512_p2 = (tmp_94_cast_fu_504_p3 + zext_ln890_reg_800);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

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

always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

always @ (*) begin
    ap_block_state10 = ((fifo_C_drain_PE_2_1_x198_full_n == 1'b0) & (ap_predicate_op157_write_state10 == 1'b1));
end

always @ (*) begin
    ap_block_state26 = ((fifo_B_PE_3_1_x172_full_n == 1'b0) | (fifo_A_PE_2_2_x124_full_n == 1'b0));
end

always @ (*) begin
    ap_block_state6 = ((icmp_ln890_144_fu_590_p2 == 1'd0) & (fifo_A_PE_2_1_x123_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state7 = ((icmp_ln878_fu_607_p2 == 1'd1) & (fifo_B_PE_2_1_x171_empty_n == 1'b0));
end

always @ (*) begin
    ap_predicate_op157_write_state10 = ((cmp_i_i_reg_904 == 1'd1) & (icmp_ln890_145_fu_688_p2 == 1'd1));
end

assign cmp_i_i_fu_540_p2 = ((c5_V_reg_362 == 6'd31) ? 1'b1 : 1'b0);

assign empty_1462_fu_580_p2 = (tmp_95_cast_fu_572_p3 + zext_ln890_57_reg_913);

assign empty_fu_568_p1 = c7_V_29_reg_384[3:0];

assign fifo_A_PE_2_2_x124_din = {{{{{{{{v1_V_29_fu_747_p1}, {v2_V_725_fu_751_p1}}, {v2_V_724_fu_754_p1}}, {v2_V_723_fu_757_p1}}, {v2_V_722_fu_760_p1}}, {v2_V_721_fu_763_p1}}, {v2_V_720_fu_766_p1}}, {v2_V_719_fu_770_p1}};

assign fifo_B_PE_3_1_x172_din = {{{{{{{{v1_V_fu_699_p1}, {v2_V_718_fu_703_p1}}, {v2_V_717_fu_706_p1}}, {v2_V_716_fu_709_p1}}, {v2_V_715_fu_712_p1}}, {v2_V_714_fu_715_p1}}, {v2_V_713_fu_718_p1}}, {v2_V_fu_722_p1}};

assign fifo_C_drain_PE_2_1_x198_din = empty_1463_reg_446;

assign icmp_ln878_29_fu_647_p2 = ((n_V_29_reg_415 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln878_fu_607_p2 = ((n_V_reg_395 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln890_141_fu_534_p2 = ((c5_V_reg_362 == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln890_142_fu_522_p2 = ((c7_V_reg_351 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln890_143_fu_556_p2 = ((c6_V_29_reg_373 == 7'd64) ? 1'b1 : 1'b0);

assign icmp_ln890_144_fu_590_p2 = ((c7_V_29_reg_384 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln890_145_fu_688_p2 = ((c8_V_reg_435 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln890_fu_488_p2 = ((c6_V_reg_340 == 7'd64) ? 1'b1 : 1'b0);

assign local_A_0_d0 = u_fu_613_p1;

assign local_B_0_d0 = u_29_fu_653_p1;

assign p_cast_fu_585_p1 = empty_1462_fu_580_p2;

assign r_29_fu_662_p4 = {{p_Val2_29_reg_426[255:32]}};

assign r_fu_622_p4 = {{p_Val2_s_reg_406[255:32]}};

assign tmp_94_cast_fu_504_p3 = {{trunc_ln9289_fu_500_p1}, {6'd0}};

assign tmp_95_cast_fu_572_p3 = {{empty_fu_568_p1}, {6'd0}};

assign trunc_ln9289_fu_500_p1 = c7_V_reg_351[3:0];

assign u_29_fu_653_p1 = p_Val2_29_reg_426[31:0];

assign u_fu_613_p1 = p_Val2_s_reg_406[31:0];

assign v1_V_29_fu_747_p1 = reg_466;

assign v1_V_fu_699_p1 = reg_472;

assign v2_V_713_fu_718_p1 = local_B_0_q0;

assign v2_V_714_fu_715_p1 = u2_reg_1039;

assign v2_V_715_fu_712_p1 = u3_reg_1034;

assign v2_V_716_fu_709_p1 = u4_reg_1019;

assign v2_V_717_fu_706_p1 = u5_reg_1014;

assign v2_V_718_fu_703_p1 = u6_reg_1004;

assign v2_V_719_fu_770_p1 = local_A_0_q1;

assign v2_V_720_fu_766_p1 = local_A_0_q0;

assign v2_V_721_fu_763_p1 = u2_29_reg_1049;

assign v2_V_722_fu_760_p1 = u3_29_reg_1044;

assign v2_V_723_fu_757_p1 = u4_29_reg_1029;

assign v2_V_724_fu_754_p1 = u5_29_reg_1024;

assign v2_V_725_fu_751_p1 = u6_29_reg_1009;

assign v2_V_fu_722_p1 = local_B_0_q1;

assign zext_ln1497_29_fu_672_p1 = r_29_fu_662_p4;

assign zext_ln1497_fu_632_p1 = r_fu_622_p4;

assign zext_ln878_29_fu_642_p1 = n_V_29_reg_415;

assign zext_ln878_fu_602_p1 = n_V_reg_395;

assign zext_ln890_57_fu_552_p1 = c6_V_29_reg_373;

assign zext_ln890_58_fu_682_p1 = c8_V_reg_435;

assign zext_ln890_fu_484_p1 = c6_V_reg_340;

assign zext_ln9289_fu_517_p1 = add_ln9289_fu_512_p2;

always @ (posedge ap_clk) begin
    zext_ln890_reg_800[9:7] <= 3'b000;
    zext_ln890_57_reg_913[9:7] <= 3'b000;
end

endmodule //top_PE_wrapper_2_1_x1
