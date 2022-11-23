// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module top_C_drain_IO_L1_out_17_x1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_dout,
        fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_empty_n,
        fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_read,
        fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_din,
        fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_full_n,
        fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_write,
        fifo_C_drain_PE_6_1_x1102_dout,
        fifo_C_drain_PE_6_1_x1102_empty_n,
        fifo_C_drain_PE_6_1_x1102_read
);

parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_pp0_stage0 = 8'd8;
parameter    ap_ST_fsm_pp0_stage1 = 8'd16;
parameter    ap_ST_fsm_state9 = 8'd32;
parameter    ap_ST_fsm_pp1_stage0 = 8'd64;
parameter    ap_ST_fsm_state14 = 8'd128;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [63:0] fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_dout;
input   fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_empty_n;
output   fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_read;
output  [63:0] fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_din;
input   fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_full_n;
output   fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_write;
input  [31:0] fifo_C_drain_PE_6_1_x1102_dout;
input   fifo_C_drain_PE_6_1_x1102_empty_n;
output   fifo_C_drain_PE_6_1_x1102_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_read;
reg fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_write;
reg fifo_C_drain_PE_6_1_x1102_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_blk_n;
reg    ap_enable_reg_pp1_iter2;
wire    ap_block_pp1_stage0;
reg   [0:0] icmp_ln890_265_reg_711;
reg   [0:0] icmp_ln890_265_reg_711_pp1_iter1_reg;
reg   [0:0] select_ln11205_1_reg_715;
reg   [0:0] select_ln11205_1_reg_715_pp1_iter1_reg;
reg    fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_blk_n;
reg    ap_enable_reg_pp1_iter3;
reg   [0:0] icmp_ln890_265_reg_711_pp1_iter2_reg;
reg    fifo_C_drain_PE_6_1_x1102_blk_n;
wire    ap_CS_fsm_pp0_stage1;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage1;
reg   [0:0] icmp_ln878_reg_678;
reg   [0:0] icmp_ln878_25_reg_687;
reg   [1:0] n_V_reg_239;
reg   [63:0] p_Val2_s_reg_250;
reg   [11:0] indvar_flatten22_reg_259;
reg   [3:0] c4_V_reg_270;
reg   [10:0] indvar_flatten8_reg_281;
reg   [4:0] c5_V_reg_292;
reg   [5:0] c6_V_87_reg_303;
wire   [63:0] local_C_V_q0;
wire    ap_CS_fsm_state3;
wire    ap_block_state10_pp1_stage0_iter0;
wire    ap_block_state12_pp1_stage0_iter1;
reg    ap_predicate_op117_read_state11;
reg    ap_block_state11_pp1_stage0_iter2;
reg    ap_block_state13_pp1_stage0_iter3;
reg    ap_block_pp1_stage0_11001;
wire   [10:0] add_ln890_fu_330_p2;
reg   [10:0] add_ln890_reg_638;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln890_fu_336_p2;
wire   [4:0] select_ln890_fu_354_p3;
reg   [4:0] select_ln890_reg_647;
wire   [6:0] select_ln890_425_fu_362_p3;
reg   [6:0] select_ln890_425_reg_652;
wire   [0:0] trunc_ln890_fu_380_p1;
reg   [0:0] trunc_ln890_reg_657;
reg   [8:0] local_C_V_addr_reg_662;
reg   [0:0] buf_data_split_V_addr_99_reg_668;
wire   [1:0] add_ln691_373_fu_401_p2;
reg   [1:0] add_ln691_373_reg_673;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state4_pp0_stage0_iter0;
wire    ap_block_state6_pp0_stage0_iter1;
wire    ap_block_state8_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln878_fu_407_p2;
reg   [31:0] r_reg_682;
wire   [0:0] icmp_ln878_25_fu_433_p2;
reg   [0:0] icmp_ln878_25_reg_687_pp0_iter1_reg;
wire   [63:0] zext_ln1497_fu_439_p1;
reg   [63:0] zext_ln1497_reg_691;
reg    ap_predicate_op66_read_state5;
reg    ap_block_state5_pp0_stage1_iter0;
wire    ap_block_state7_pp0_stage1_iter1;
reg    ap_block_pp0_stage1_11001;
wire   [31:0] buf_data_split_V_q1;
reg   [31:0] v2_V_reg_696;
reg    ap_enable_reg_pp0_iter1;
wire   [4:0] add_ln691_372_fu_450_p2;
wire    ap_CS_fsm_state9;
wire   [11:0] add_ln890_160_fu_455_p2;
wire    ap_CS_fsm_pp1_stage0;
reg    ap_enable_reg_pp1_iter0;
wire   [0:0] icmp_ln890_265_fu_461_p2;
wire   [0:0] select_ln11205_1_fu_499_p3;
wire   [3:0] select_ln890_426_fu_525_p3;
wire   [4:0] select_ln890_429_fu_585_p3;
reg   [8:0] local_C_V_addr_35_reg_729;
wire   [5:0] add_ln691_374_fu_608_p2;
wire   [10:0] select_ln890_430_fu_620_p3;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state4;
reg    ap_block_pp0_stage1_subdone;
reg    ap_enable_reg_pp0_iter2;
reg    ap_block_pp1_stage0_subdone;
reg    ap_condition_pp1_exit_iter0_state10;
reg    ap_enable_reg_pp1_iter1;
reg   [8:0] local_C_V_address0;
reg    local_C_V_ce0;
reg    local_C_V_ce1;
reg    local_C_V_we1;
wire   [63:0] local_C_V_d1;
reg   [0:0] buf_data_split_V_address0;
reg    buf_data_split_V_ce0;
reg    buf_data_split_V_we0;
reg   [31:0] buf_data_split_V_d0;
reg   [0:0] buf_data_split_V_address1;
reg    buf_data_split_V_ce1;
reg   [10:0] indvar_flatten_reg_206;
reg    ap_block_state1;
reg   [6:0] c6_V_reg_217;
reg   [4:0] c7_V_reg_228;
reg   [1:0] ap_phi_mux_n_V_phi_fu_243_p4;
wire    ap_block_pp0_stage0;
reg   [63:0] ap_phi_mux_p_Val2_s_phi_fu_253_p4;
wire   [63:0] ap_phi_reg_pp1_iter0_fifo_data_35_reg_314;
reg   [63:0] ap_phi_reg_pp1_iter1_fifo_data_35_reg_314;
reg   [63:0] ap_phi_reg_pp1_iter2_fifo_data_35_reg_314;
reg   [63:0] ap_phi_reg_pp1_iter3_fifo_data_35_reg_314;
wire   [63:0] zext_ln11188_fu_392_p1;
wire   [63:0] zext_ln890_fu_397_p1;
wire   [63:0] zext_ln878_fu_413_p1;
wire   [63:0] zext_ln11213_1_fu_603_p1;
reg    ap_block_pp1_stage0_01001;
wire   [31:0] trunc_ln674_fu_418_p1;
wire   [0:0] icmp_ln89058_fu_348_p2;
wire   [6:0] add_ln691_fu_342_p2;
wire   [4:0] conv_i113_mid2_v_fu_370_p4;
wire   [9:0] tmp_s_fu_384_p3;
wire   [0:0] icmp_ln890_266_fu_473_p2;
wire   [3:0] add_ln691_370_fu_467_p2;
wire   [0:0] cmp_i_i_mid1_fu_487_p2;
wire   [0:0] cmp_i_i59_fu_493_p2;
wire   [0:0] icmp_ln890_267_fu_513_p2;
wire   [0:0] xor_ln11205_fu_507_p2;
wire   [4:0] select_ln11205_fu_479_p3;
wire   [0:0] and_ln11205_fu_519_p2;
wire   [0:0] or_ln890_fu_539_p2;
wire   [4:0] add_ln691_371_fu_533_p2;
wire   [3:0] trunc_ln11213_1_fu_557_p1;
wire   [3:0] trunc_ln11213_fu_553_p1;
wire   [3:0] select_ln11205_2_fu_561_p3;
wire   [3:0] select_ln890_428_fu_569_p3;
wire   [5:0] select_ln890_427_fu_545_p3;
wire   [8:0] tmp_215_cast_fu_577_p3;
wire   [8:0] zext_ln11213_fu_593_p1;
wire   [8:0] add_ln11213_fu_597_p2;
wire   [10:0] add_ln890_159_fu_614_p2;
wire    ap_CS_fsm_state14;
reg   [7:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_idle_pp1;
wire    ap_enable_pp1;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp1_iter2 = 1'b0;
#0 ap_enable_reg_pp1_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp1_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp1_iter1 = 1'b0;
end

top_C_drain_IO_L1_out_0_x0_local_C_V #(
    .DataWidth( 64 ),
    .AddressRange( 512 ),
    .AddressWidth( 9 ))
local_C_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(local_C_V_address0),
    .ce0(local_C_V_ce0),
    .q0(local_C_V_q0),
    .address1(local_C_V_addr_reg_662),
    .ce1(local_C_V_ce1),
    .we1(local_C_V_we1),
    .d1(local_C_V_d1)
);

top_C_drain_IO_L1_out_4_x0_buf_data_split_V #(
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
        end else if ((1'b1 == ap_CS_fsm_state14)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state3)) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if ((1'b1 == ap_CS_fsm_state3)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp1_stage0_subdone) & (1'b1 == ap_condition_pp1_exit_iter0_state10) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
            ap_enable_reg_pp1_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln890_fu_336_p2 == 1'd1))) begin
            ap_enable_reg_pp1_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp1_exit_iter0_state10)) begin
                ap_enable_reg_pp1_iter1 <= (1'b1 ^ ap_condition_pp1_exit_iter0_state10);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp1_iter1 <= ap_enable_reg_pp1_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            ap_enable_reg_pp1_iter2 <= ap_enable_reg_pp1_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            ap_enable_reg_pp1_iter3 <= ap_enable_reg_pp1_iter2;
        end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln890_fu_336_p2 == 1'd1))) begin
            ap_enable_reg_pp1_iter3 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter2 == 1'b1))) begin
        if (((select_ln11205_1_reg_715_pp1_iter1_reg == 1'd0) & (icmp_ln890_265_reg_711_pp1_iter1_reg == 1'd0))) begin
            ap_phi_reg_pp1_iter3_fifo_data_35_reg_314 <= fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_dout;
        end else if (((select_ln11205_1_reg_715_pp1_iter1_reg == 1'd1) & (icmp_ln890_265_reg_711_pp1_iter1_reg == 1'd0))) begin
            ap_phi_reg_pp1_iter3_fifo_data_35_reg_314 <= local_C_V_q0;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp1_iter3_fifo_data_35_reg_314 <= ap_phi_reg_pp1_iter2_fifo_data_35_reg_314;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln890_fu_336_p2 == 1'd1))) begin
        c4_V_reg_270 <= 4'd6;
    end else if (((1'b0 == ap_block_pp1_stage0_11001) & (icmp_ln890_265_fu_461_p2 == 1'd0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        c4_V_reg_270 <= select_ln890_426_fu_525_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln890_fu_336_p2 == 1'd1))) begin
        c5_V_reg_292 <= 5'd0;
    end else if (((1'b0 == ap_block_pp1_stage0_11001) & (icmp_ln890_265_fu_461_p2 == 1'd0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        c5_V_reg_292 <= select_ln890_429_fu_585_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln890_fu_336_p2 == 1'd1))) begin
        c6_V_87_reg_303 <= 6'd0;
    end else if (((1'b0 == ap_block_pp1_stage0_11001) & (icmp_ln890_265_fu_461_p2 == 1'd0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        c6_V_87_reg_303 <= add_ln691_374_fu_608_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        c6_V_reg_217 <= select_ln890_425_reg_652;
    end else if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        c6_V_reg_217 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        c7_V_reg_228 <= add_ln691_372_fu_450_p2;
    end else if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        c7_V_reg_228 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln890_fu_336_p2 == 1'd1))) begin
        indvar_flatten22_reg_259 <= 12'd0;
    end else if (((1'b0 == ap_block_pp1_stage0_11001) & (icmp_ln890_265_fu_461_p2 == 1'd0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        indvar_flatten22_reg_259 <= add_ln890_160_fu_455_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln890_fu_336_p2 == 1'd1))) begin
        indvar_flatten8_reg_281 <= 11'd0;
    end else if (((1'b0 == ap_block_pp1_stage0_11001) & (icmp_ln890_265_fu_461_p2 == 1'd0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        indvar_flatten8_reg_281 <= select_ln890_430_fu_620_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        indvar_flatten_reg_206 <= add_ln890_reg_638;
    end else if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten_reg_206 <= 11'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        n_V_reg_239 <= 2'd0;
    end else if (((icmp_ln878_reg_678 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        n_V_reg_239 <= add_ln691_373_reg_673;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        p_Val2_s_reg_250 <= local_C_V_q0;
    end else if (((icmp_ln878_reg_678 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        p_Val2_s_reg_250 <= zext_ln1497_reg_691;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln691_373_reg_673 <= add_ln691_373_fu_401_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln890_reg_638 <= add_ln890_fu_330_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_reg_pp1_iter1_fifo_data_35_reg_314 <= ap_phi_reg_pp1_iter0_fifo_data_35_reg_314;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_reg_pp1_iter2_fifo_data_35_reg_314 <= ap_phi_reg_pp1_iter1_fifo_data_35_reg_314;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_data_split_V_addr_99_reg_668 <= zext_ln890_fu_397_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln878_fu_407_p2 == 1'd0))) begin
        icmp_ln878_25_reg_687 <= icmp_ln878_25_fu_433_p2;
        r_reg_682 <= {{ap_phi_mux_p_Val2_s_phi_fu_253_p4[63:32]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln878_25_reg_687_pp0_iter1_reg <= icmp_ln878_25_reg_687;
        icmp_ln878_reg_678 <= icmp_ln878_fu_407_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        icmp_ln890_265_reg_711 <= icmp_ln890_265_fu_461_p2;
        icmp_ln890_265_reg_711_pp1_iter1_reg <= icmp_ln890_265_reg_711;
        select_ln11205_1_reg_715_pp1_iter1_reg <= select_ln11205_1_reg_715;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp1_stage0_11001)) begin
        icmp_ln890_265_reg_711_pp1_iter2_reg <= icmp_ln890_265_reg_711_pp1_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (icmp_ln890_265_fu_461_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        local_C_V_addr_35_reg_729 <= zext_ln11213_1_fu_603_p1;
        select_ln11205_1_reg_715 <= select_ln11205_1_fu_499_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln890_fu_336_p2 == 1'd0))) begin
        local_C_V_addr_reg_662 <= zext_ln11188_fu_392_p1;
        select_ln890_425_reg_652 <= select_ln890_425_fu_362_p3;
        select_ln890_reg_647 <= select_ln890_fu_354_p3;
        trunc_ln890_reg_657 <= trunc_ln890_fu_380_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln878_25_reg_687_pp0_iter1_reg == 1'd1))) begin
        v2_V_reg_696 <= buf_data_split_V_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln878_reg_678 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        zext_ln1497_reg_691[31 : 0] <= zext_ln1497_fu_439_p1[31 : 0];
    end
end

always @ (*) begin
    if ((icmp_ln878_fu_407_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state4 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state4 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln890_265_fu_461_p2 == 1'd1)) begin
        ap_condition_pp1_exit_iter0_state10 = 1'b1;
    end else begin
        ap_condition_pp1_exit_iter0_state10 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
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
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter3 == 1'b0) & (ap_enable_reg_pp1_iter2 == 1'b0) & (ap_enable_reg_pp1_iter1 == 1'b0) & (ap_enable_reg_pp1_iter0 == 1'b0))) begin
        ap_idle_pp1 = 1'b1;
    end else begin
        ap_idle_pp1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln878_reg_678 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ap_phi_mux_n_V_phi_fu_243_p4 = add_ln691_373_reg_673;
    end else begin
        ap_phi_mux_n_V_phi_fu_243_p4 = n_V_reg_239;
    end
end

always @ (*) begin
    if (((icmp_ln878_reg_678 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ap_phi_mux_p_Val2_s_phi_fu_253_p4 = zext_ln1497_reg_691;
    end else begin
        ap_phi_mux_p_Val2_s_phi_fu_253_p4 = p_Val2_s_reg_250;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            buf_data_split_V_address0 = buf_data_split_V_addr_99_reg_668;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            buf_data_split_V_address0 = zext_ln878_fu_413_p1;
        end else begin
            buf_data_split_V_address0 = 'bx;
        end
    end else begin
        buf_data_split_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            buf_data_split_V_address1 = 64'd1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            buf_data_split_V_address1 = 64'd0;
        end else begin
            buf_data_split_V_address1 = 'bx;
        end
    end else begin
        buf_data_split_V_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buf_data_split_V_ce0 = 1'b1;
    end else begin
        buf_data_split_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1)))) begin
        buf_data_split_V_ce1 = 1'b1;
    end else begin
        buf_data_split_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            buf_data_split_V_d0 = fifo_C_drain_PE_6_1_x1102_dout;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            buf_data_split_V_d0 = trunc_ln674_fu_418_p1;
        end else begin
            buf_data_split_V_d0 = 'bx;
        end
    end else begin
        buf_data_split_V_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln878_25_reg_687 == 1'd1) & (icmp_ln878_reg_678 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln878_fu_407_p2 == 1'd0)))) begin
        buf_data_split_V_we0 = 1'b1;
    end else begin
        buf_data_split_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln890_265_reg_711_pp1_iter2_reg == 1'd0) & (ap_enable_reg_pp1_iter3 == 1'b1) & (1'b0 == ap_block_pp1_stage0))) begin
        fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_blk_n = fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_full_n;
    end else begin
        fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln890_265_reg_711_pp1_iter2_reg == 1'd0) & (ap_enable_reg_pp1_iter3 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_write = 1'b1;
    end else begin
        fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_write = 1'b0;
    end
end

always @ (*) begin
    if (((select_ln11205_1_reg_715_pp1_iter1_reg == 1'd0) & (icmp_ln890_265_reg_711_pp1_iter1_reg == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter2 == 1'b1))) begin
        fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_blk_n = fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_empty_n;
    end else begin
        fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter2 == 1'b1) & (ap_predicate_op117_read_state11 == 1'b1))) begin
        fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_read = 1'b1;
    end else begin
        fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_read = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln878_25_reg_687 == 1'd1) & (icmp_ln878_reg_678 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        fifo_C_drain_PE_6_1_x1102_blk_n = fifo_C_drain_PE_6_1_x1102_empty_n;
    end else begin
        fifo_C_drain_PE_6_1_x1102_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_op66_read_state5 == 1'b1))) begin
        fifo_C_drain_PE_6_1_x1102_read = 1'b1;
    end else begin
        fifo_C_drain_PE_6_1_x1102_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        local_C_V_address0 = local_C_V_addr_35_reg_729;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        local_C_V_address0 = zext_ln11188_fu_392_p1;
    end else begin
        local_C_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0)))) begin
        local_C_V_ce0 = 1'b1;
    end else begin
        local_C_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        local_C_V_ce1 = 1'b1;
    end else begin
        local_C_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln878_25_reg_687_pp0_iter1_reg == 1'd1))) begin
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln890_fu_336_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (icmp_ln878_fu_407_p2 == 1'd1)) & ~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b0)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (icmp_ln878_fu_407_p2 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_pp1_stage0 : begin
            if ((~((1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter1 == 1'b0) & (icmp_ln890_265_fu_461_p2 == 1'd1) & (ap_enable_reg_pp1_iter0 == 1'b1)) & ~((ap_enable_reg_pp1_iter3 == 1'b1) & (1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter2 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end else if ((((ap_enable_reg_pp1_iter3 == 1'b1) & (1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter2 == 1'b0)) | ((1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter1 == 1'b0) & (icmp_ln890_265_fu_461_p2 == 1'd1) & (ap_enable_reg_pp1_iter0 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln11213_fu_597_p2 = (tmp_215_cast_fu_577_p3 + zext_ln11213_fu_593_p1);

assign add_ln691_370_fu_467_p2 = (c4_V_reg_270 + 4'd1);

assign add_ln691_371_fu_533_p2 = (select_ln11205_fu_479_p3 + 5'd1);

assign add_ln691_372_fu_450_p2 = (select_ln890_reg_647 + 5'd1);

assign add_ln691_373_fu_401_p2 = (ap_phi_mux_n_V_phi_fu_243_p4 + 2'd1);

assign add_ln691_374_fu_608_p2 = (select_ln890_427_fu_545_p3 + 6'd1);

assign add_ln691_fu_342_p2 = (c6_V_reg_217 + 7'd1);

assign add_ln890_159_fu_614_p2 = (indvar_flatten8_reg_281 + 11'd1);

assign add_ln890_160_fu_455_p2 = (indvar_flatten22_reg_259 + 12'd1);

assign add_ln890_fu_330_p2 = (indvar_flatten_reg_206 + 11'd1);

assign and_ln11205_fu_519_p2 = (xor_ln11205_fu_507_p2 & icmp_ln890_267_fu_513_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_pp1_stage0 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd5];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage1_11001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (fifo_C_drain_PE_6_1_x1102_empty_n == 1'b0) & (ap_predicate_op66_read_state5 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage1_subdone = ((ap_enable_reg_pp0_iter0 == 1'b1) & (fifo_C_drain_PE_6_1_x1102_empty_n == 1'b0) & (ap_predicate_op66_read_state5 == 1'b1));
end

assign ap_block_pp1_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp1_stage0_01001 = (((icmp_ln890_265_reg_711_pp1_iter2_reg == 1'd0) & (ap_enable_reg_pp1_iter3 == 1'b1) & (fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_full_n == 1'b0)) | ((ap_enable_reg_pp1_iter2 == 1'b1) & (fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_empty_n == 1'b0) & (ap_predicate_op117_read_state11 == 1'b1)));
end

always @ (*) begin
    ap_block_pp1_stage0_11001 = (((icmp_ln890_265_reg_711_pp1_iter2_reg == 1'd0) & (ap_enable_reg_pp1_iter3 == 1'b1) & (fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_full_n == 1'b0)) | ((ap_enable_reg_pp1_iter2 == 1'b1) & (fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_empty_n == 1'b0) & (ap_predicate_op117_read_state11 == 1'b1)));
end

always @ (*) begin
    ap_block_pp1_stage0_subdone = (((icmp_ln890_265_reg_711_pp1_iter2_reg == 1'd0) & (ap_enable_reg_pp1_iter3 == 1'b1) & (fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_full_n == 1'b0)) | ((ap_enable_reg_pp1_iter2 == 1'b1) & (fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_empty_n == 1'b0) & (ap_predicate_op117_read_state11 == 1'b1)));
end

always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

assign ap_block_state10_pp1_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state11_pp1_stage0_iter2 = ((fifo_C_drain_C_drain_IO_L1_out_1_7_x1129_empty_n == 1'b0) & (ap_predicate_op117_read_state11 == 1'b1));
end

assign ap_block_state12_pp1_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state13_pp1_stage0_iter3 = ((icmp_ln890_265_reg_711_pp1_iter2_reg == 1'd0) & (fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_full_n == 1'b0));
end

assign ap_block_state4_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state5_pp0_stage1_iter0 = ((fifo_C_drain_PE_6_1_x1102_empty_n == 1'b0) & (ap_predicate_op66_read_state5 == 1'b1));
end

assign ap_block_state6_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_pp1 = (ap_idle_pp1 ^ 1'b1);

assign ap_phi_reg_pp1_iter0_fifo_data_35_reg_314 = 'bx;

always @ (*) begin
    ap_predicate_op117_read_state11 = ((select_ln11205_1_reg_715_pp1_iter1_reg == 1'd0) & (icmp_ln890_265_reg_711_pp1_iter1_reg == 1'd0));
end

always @ (*) begin
    ap_predicate_op66_read_state5 = ((icmp_ln878_25_reg_687 == 1'd1) & (icmp_ln878_reg_678 == 1'd0));
end

assign cmp_i_i59_fu_493_p2 = ((c4_V_reg_270 == 4'd6) ? 1'b1 : 1'b0);

assign cmp_i_i_mid1_fu_487_p2 = ((add_ln691_370_fu_467_p2 == 4'd6) ? 1'b1 : 1'b0);

assign conv_i113_mid2_v_fu_370_p4 = {{select_ln890_425_fu_362_p3[5:1]}};

assign fifo_C_drain_C_drain_IO_L1_out_1_6_x1128_din = ap_phi_reg_pp1_iter3_fifo_data_35_reg_314;

assign icmp_ln878_25_fu_433_p2 = ((add_ln691_373_fu_401_p2 == 2'd2) ? 1'b1 : 1'b0);

assign icmp_ln878_fu_407_p2 = ((ap_phi_mux_n_V_phi_fu_243_p4 == 2'd2) ? 1'b1 : 1'b0);

assign icmp_ln89058_fu_348_p2 = ((c7_V_reg_228 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln890_265_fu_461_p2 = ((indvar_flatten22_reg_259 == 12'd3584) ? 1'b1 : 1'b0);

assign icmp_ln890_266_fu_473_p2 = ((indvar_flatten8_reg_281 == 11'd512) ? 1'b1 : 1'b0);

assign icmp_ln890_267_fu_513_p2 = ((c6_V_87_reg_303 == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln890_fu_336_p2 = ((indvar_flatten_reg_206 == 11'd1024) ? 1'b1 : 1'b0);

assign local_C_V_d1 = {{buf_data_split_V_q1}, {v2_V_reg_696}};

assign or_ln890_fu_539_p2 = (icmp_ln890_266_fu_473_p2 | and_ln11205_fu_519_p2);

assign select_ln11205_1_fu_499_p3 = ((icmp_ln890_266_fu_473_p2[0:0] == 1'b1) ? cmp_i_i_mid1_fu_487_p2 : cmp_i_i59_fu_493_p2);

assign select_ln11205_2_fu_561_p3 = ((icmp_ln890_266_fu_473_p2[0:0] == 1'b1) ? 4'd0 : trunc_ln11213_1_fu_557_p1);

assign select_ln11205_fu_479_p3 = ((icmp_ln890_266_fu_473_p2[0:0] == 1'b1) ? 5'd0 : c5_V_reg_292);

assign select_ln890_425_fu_362_p3 = ((icmp_ln89058_fu_348_p2[0:0] == 1'b1) ? add_ln691_fu_342_p2 : c6_V_reg_217);

assign select_ln890_426_fu_525_p3 = ((icmp_ln890_266_fu_473_p2[0:0] == 1'b1) ? add_ln691_370_fu_467_p2 : c4_V_reg_270);

assign select_ln890_427_fu_545_p3 = ((or_ln890_fu_539_p2[0:0] == 1'b1) ? 6'd0 : c6_V_87_reg_303);

assign select_ln890_428_fu_569_p3 = ((and_ln11205_fu_519_p2[0:0] == 1'b1) ? trunc_ln11213_fu_553_p1 : select_ln11205_2_fu_561_p3);

assign select_ln890_429_fu_585_p3 = ((and_ln11205_fu_519_p2[0:0] == 1'b1) ? add_ln691_371_fu_533_p2 : select_ln11205_fu_479_p3);

assign select_ln890_430_fu_620_p3 = ((icmp_ln890_266_fu_473_p2[0:0] == 1'b1) ? 11'd1 : add_ln890_159_fu_614_p2);

assign select_ln890_fu_354_p3 = ((icmp_ln89058_fu_348_p2[0:0] == 1'b1) ? 5'd0 : c7_V_reg_228);

assign tmp_215_cast_fu_577_p3 = {{select_ln890_428_fu_569_p3}, {5'd0}};

assign tmp_s_fu_384_p3 = {{select_ln890_fu_354_p3}, {conv_i113_mid2_v_fu_370_p4}};

assign trunc_ln11213_1_fu_557_p1 = c5_V_reg_292[3:0];

assign trunc_ln11213_fu_553_p1 = add_ln691_371_fu_533_p2[3:0];

assign trunc_ln674_fu_418_p1 = ap_phi_mux_p_Val2_s_phi_fu_253_p4[31:0];

assign trunc_ln890_fu_380_p1 = select_ln890_425_fu_362_p3[0:0];

assign xor_ln11205_fu_507_p2 = (icmp_ln890_266_fu_473_p2 ^ 1'd1);

assign zext_ln11188_fu_392_p1 = tmp_s_fu_384_p3;

assign zext_ln11213_1_fu_603_p1 = add_ln11213_fu_597_p2;

assign zext_ln11213_fu_593_p1 = select_ln890_427_fu_545_p3;

assign zext_ln1497_fu_439_p1 = r_reg_682;

assign zext_ln878_fu_413_p1 = ap_phi_mux_n_V_phi_fu_243_p4;

assign zext_ln890_fu_397_p1 = trunc_ln890_reg_657;

always @ (posedge ap_clk) begin
    zext_ln1497_reg_691[63:32] <= 32'b00000000000000000000000000000000;
end

endmodule //top_C_drain_IO_L1_out_17_x1
