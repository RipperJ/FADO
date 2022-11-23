// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module top_C_drain_IO_L1_out_boundary_0_x0 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        fifo_C_drain_C_drain_IO_L1_out_0_12_x0121_din,
        fifo_C_drain_C_drain_IO_L1_out_0_12_x0121_full_n,
        fifo_C_drain_C_drain_IO_L1_out_0_12_x0121_write,
        fifo_C_drain_PE_12_0_x095_dout,
        fifo_C_drain_PE_12_0_x095_empty_n,
        fifo_C_drain_PE_12_0_x095_read
);

parameter    ap_ST_fsm_state1 = 9'd1;
parameter    ap_ST_fsm_pp0_stage0 = 9'd2;
parameter    ap_ST_fsm_pp0_stage1 = 9'd4;
parameter    ap_ST_fsm_pp0_stage2 = 9'd8;
parameter    ap_ST_fsm_state8 = 9'd16;
parameter    ap_ST_fsm_state9 = 9'd32;
parameter    ap_ST_fsm_state10 = 9'd64;
parameter    ap_ST_fsm_state11 = 9'd128;
parameter    ap_ST_fsm_state12 = 9'd256;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [63:0] fifo_C_drain_C_drain_IO_L1_out_0_12_x0121_din;
input   fifo_C_drain_C_drain_IO_L1_out_0_12_x0121_full_n;
output   fifo_C_drain_C_drain_IO_L1_out_0_12_x0121_write;
input  [31:0] fifo_C_drain_PE_12_0_x095_dout;
input   fifo_C_drain_PE_12_0_x095_empty_n;
output   fifo_C_drain_PE_12_0_x095_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg fifo_C_drain_C_drain_IO_L1_out_0_12_x0121_write;
reg fifo_C_drain_PE_12_0_x095_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    fifo_C_drain_C_drain_IO_L1_out_0_12_x0121_blk_n;
wire    ap_CS_fsm_state12;
reg    fifo_C_drain_PE_12_0_x095_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln890_reg_386;
reg   [10:0] indvar_flatten_reg_165;
reg   [6:0] c6_V_reg_176;
reg   [4:0] c7_V_reg_187;
wire   [10:0] add_ln890_fu_220_p2;
reg   [10:0] add_ln890_reg_381;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_state2_pp0_stage0_iter0;
reg    ap_block_state5_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln890_fu_226_p2;
reg   [0:0] icmp_ln890_reg_386_pp0_iter1_reg;
wire   [4:0] select_ln890_fu_244_p3;
reg   [4:0] select_ln890_reg_390;
wire   [6:0] select_ln890_266_fu_252_p3;
reg   [6:0] select_ln890_266_reg_396;
reg   [4:0] conv_i106_mid2_v_reg_401;
wire   [0:0] trunc_ln890_fu_270_p1;
reg   [0:0] trunc_ln890_reg_406;
reg   [8:0] local_C_V_addr_reg_411;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state3_pp0_stage1_iter0;
wire    ap_block_state6_pp0_stage1_iter1;
wire    ap_block_pp0_stage1_11001;
reg   [8:0] local_C_V_addr_reg_411_pp0_iter1_reg;
wire   [4:0] add_ln691_218_fu_301_p2;
reg   [4:0] add_ln691_218_reg_417;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_state4_pp0_stage2_iter0;
wire    ap_block_state7_pp0_stage2_iter1;
wire    ap_block_pp0_stage2_11001;
wire   [4:0] add_ln691_219_fu_319_p2;
reg   [4:0] add_ln691_219_reg_422;
wire    ap_CS_fsm_state9;
wire   [8:0] tmp_cast_fu_329_p3;
reg   [8:0] tmp_cast_reg_427;
wire   [5:0] add_ln691_220_fu_343_p2;
reg   [5:0] add_ln691_220_reg_435;
wire    ap_CS_fsm_state10;
wire   [63:0] local_C_V_q0;
reg   [63:0] local_C_V_load_reg_448;
wire    ap_CS_fsm_state11;
reg    ap_block_state1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
wire    ap_block_pp0_stage2_subdone;
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
reg   [0:0] buf_data_split_V_address1;
reg    buf_data_split_V_ce1;
reg    buf_data_split_V_we1;
wire   [31:0] buf_data_split_V_d1;
wire   [31:0] buf_data_split_V_q1;
reg   [10:0] ap_phi_mux_indvar_flatten_phi_fu_169_p4;
reg   [6:0] ap_phi_mux_c6_V_phi_fu_180_p4;
reg   [4:0] ap_phi_mux_c7_V_phi_fu_191_p4;
reg   [4:0] c5_V_reg_198;
wire   [0:0] icmp_ln890_169_fu_363_p2;
wire    ap_CS_fsm_state8;
reg   [5:0] c6_V_56_reg_209;
wire   [0:0] icmp_ln890_168_fu_337_p2;
wire   [63:0] zext_ln5161_fu_280_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln890_fu_306_p1;
wire   [63:0] zext_ln5187_1_fu_358_p1;
wire    ap_block_pp0_stage2;
wire   [31:0] trunc_ln674_fu_285_p1;
wire   [0:0] icmp_ln890_167_fu_238_p2;
wire   [6:0] add_ln691_fu_232_p2;
wire   [9:0] tmp_s_fu_274_p3;
wire   [3:0] trunc_ln5187_fu_325_p1;
wire   [8:0] zext_ln5187_fu_349_p1;
wire   [8:0] add_ln5187_fu_353_p2;
reg   [8:0] ap_NS_fsm;
wire    ap_block_pp0_stage1_subdone;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
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
    .address1(local_C_V_addr_reg_411_pp0_iter1_reg),
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
    .we1(buf_data_split_V_we1),
    .d1(buf_data_split_V_d1),
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
        end else if (((icmp_ln890_168_fu_337_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state9))) begin
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
        end else if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c5_V_reg_198 <= 5'd0;
    end else if (((icmp_ln890_169_fu_363_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
        c5_V_reg_198 <= add_ln691_219_reg_422;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_168_fu_337_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
        c6_V_56_reg_209 <= 6'd0;
    end else if (((fifo_C_drain_C_drain_IO_L1_out_0_12_x0121_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
        c6_V_56_reg_209 <= add_ln691_220_reg_435;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_reg_386 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c6_V_reg_176 <= select_ln890_266_reg_396;
    end else if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        c6_V_reg_176 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_reg_386 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c7_V_reg_187 <= add_ln691_218_reg_417;
    end else if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        c7_V_reg_187 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_reg_386 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_reg_165 <= add_ln890_reg_381;
    end else if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten_reg_165 <= 11'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln890_reg_386 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln691_218_reg_417 <= add_ln691_218_fu_301_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        add_ln691_219_reg_422 <= add_ln691_219_fu_319_p2;
        tmp_cast_reg_427[8 : 5] <= tmp_cast_fu_329_p3[8 : 5];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        add_ln691_220_reg_435 <= add_ln691_220_fu_343_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln890_reg_381 <= add_ln890_fu_220_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_fu_226_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        conv_i106_mid2_v_reg_401 <= {{select_ln890_266_fu_252_p3[5:1]}};
        select_ln890_reg_390 <= select_ln890_fu_244_p3;
        trunc_ln890_reg_406 <= trunc_ln890_fu_270_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln890_reg_386 <= icmp_ln890_fu_226_p2;
        icmp_ln890_reg_386_pp0_iter1_reg <= icmp_ln890_reg_386;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_reg_386 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        local_C_V_addr_reg_411 <= zext_ln5161_fu_280_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        local_C_V_addr_reg_411_pp0_iter1_reg <= local_C_V_addr_reg_411;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        local_C_V_load_reg_448 <= local_C_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_fu_226_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln890_266_reg_396 <= select_ln890_266_fu_252_p3;
    end
end

always @ (*) begin
    if ((icmp_ln890_fu_226_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln890_168_fu_337_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state9))) begin
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
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln890_reg_386 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_c6_V_phi_fu_180_p4 = select_ln890_266_reg_396;
    end else begin
        ap_phi_mux_c6_V_phi_fu_180_p4 = c6_V_reg_176;
    end
end

always @ (*) begin
    if (((icmp_ln890_reg_386 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_c7_V_phi_fu_191_p4 = add_ln691_218_reg_417;
    end else begin
        ap_phi_mux_c7_V_phi_fu_191_p4 = c7_V_reg_187;
    end
end

always @ (*) begin
    if (((icmp_ln890_reg_386 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_indvar_flatten_phi_fu_169_p4 = add_ln890_reg_381;
    end else begin
        ap_phi_mux_indvar_flatten_phi_fu_169_p4 = indvar_flatten_reg_165;
    end
end

always @ (*) begin
    if (((icmp_ln890_168_fu_337_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state9))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buf_data_split_V_address0 = 64'd1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_data_split_V_address0 = zext_ln890_fu_306_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buf_data_split_V_address0 = 64'd0;
    end else begin
        buf_data_split_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buf_data_split_V_address1 = 64'd0;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buf_data_split_V_address1 = 64'd1;
    end else begin
        buf_data_split_V_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buf_data_split_V_ce0 = 1'b1;
    end else begin
        buf_data_split_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buf_data_split_V_ce1 = 1'b1;
    end else begin
        buf_data_split_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_data_split_V_d0 = fifo_C_drain_PE_12_0_x095_dout;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buf_data_split_V_d0 = trunc_ln674_fu_285_p1;
    end else begin
        buf_data_split_V_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln890_reg_386 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln890_reg_386 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buf_data_split_V_we0 = 1'b1;
    end else begin
        buf_data_split_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln890_reg_386 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buf_data_split_V_we1 = 1'b1;
    end else begin
        buf_data_split_V_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        fifo_C_drain_C_drain_IO_L1_out_0_12_x0121_blk_n = fifo_C_drain_C_drain_IO_L1_out_0_12_x0121_full_n;
    end else begin
        fifo_C_drain_C_drain_IO_L1_out_0_12_x0121_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((fifo_C_drain_C_drain_IO_L1_out_0_12_x0121_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
        fifo_C_drain_C_drain_IO_L1_out_0_12_x0121_write = 1'b1;
    end else begin
        fifo_C_drain_C_drain_IO_L1_out_0_12_x0121_write = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln890_reg_386 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fifo_C_drain_PE_12_0_x095_blk_n = fifo_C_drain_PE_12_0_x095_empty_n;
    end else begin
        fifo_C_drain_PE_12_0_x095_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln890_reg_386 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fifo_C_drain_PE_12_0_x095_read = 1'b1;
    end else begin
        fifo_C_drain_PE_12_0_x095_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        local_C_V_address0 = zext_ln5187_1_fu_358_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        local_C_V_address0 = zext_ln5161_fu_280_p1;
    end else begin
        local_C_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        local_C_V_ce0 = 1'b1;
    end else begin
        local_C_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        local_C_V_ce1 = 1'b1;
    end else begin
        local_C_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln890_reg_386_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        local_C_V_we1 = 1'b1;
    end else begin
        local_C_V_we1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((icmp_ln890_fu_226_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if (((icmp_ln890_fu_226_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((~((ap_enable_reg_pp0_iter0 == 1'b0) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) & (1'b0 == ap_block_pp0_stage2_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((ap_enable_reg_pp0_iter0 == 1'b0) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            if (((icmp_ln890_168_fu_337_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state10 : begin
            if (((icmp_ln890_169_fu_363_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            if (((fifo_C_drain_C_drain_IO_L1_out_0_12_x0121_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln5187_fu_353_p2 = (tmp_cast_reg_427 + zext_ln5187_fu_349_p1);

assign add_ln691_218_fu_301_p2 = (select_ln890_reg_390 + 5'd1);

assign add_ln691_219_fu_319_p2 = (c5_V_reg_198 + 5'd1);

assign add_ln691_220_fu_343_p2 = (c6_V_56_reg_209 + 6'd1);

assign add_ln691_fu_232_p2 = (ap_phi_mux_c6_V_phi_fu_180_p4 + 7'd1);

assign add_ln890_fu_220_p2 = (ap_phi_mux_indvar_flatten_phi_fu_169_p4 + 11'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd8];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd5];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((icmp_ln890_reg_386 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (fifo_C_drain_PE_12_0_x095_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((icmp_ln890_reg_386 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (fifo_C_drain_PE_12_0_x095_empty_n == 1'b0));
end

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage2_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state5_pp0_stage0_iter1 = ((icmp_ln890_reg_386 == 1'd0) & (fifo_C_drain_PE_12_0_x095_empty_n == 1'b0));
end

assign ap_block_state6_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage2_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign buf_data_split_V_d1 = {{local_C_V_q0[63:32]}};

assign fifo_C_drain_C_drain_IO_L1_out_0_12_x0121_din = local_C_V_load_reg_448;

assign icmp_ln890_167_fu_238_p2 = ((ap_phi_mux_c7_V_phi_fu_191_p4 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln890_168_fu_337_p2 = ((c5_V_reg_198 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln890_169_fu_363_p2 = ((c6_V_56_reg_209 == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln890_fu_226_p2 = ((ap_phi_mux_indvar_flatten_phi_fu_169_p4 == 11'd1024) ? 1'b1 : 1'b0);

assign local_C_V_d1 = {{buf_data_split_V_q0}, {buf_data_split_V_q1}};

assign select_ln890_266_fu_252_p3 = ((icmp_ln890_167_fu_238_p2[0:0] == 1'b1) ? add_ln691_fu_232_p2 : ap_phi_mux_c6_V_phi_fu_180_p4);

assign select_ln890_fu_244_p3 = ((icmp_ln890_167_fu_238_p2[0:0] == 1'b1) ? 5'd0 : ap_phi_mux_c7_V_phi_fu_191_p4);

assign tmp_cast_fu_329_p3 = {{trunc_ln5187_fu_325_p1}, {5'd0}};

assign tmp_s_fu_274_p3 = {{select_ln890_reg_390}, {conv_i106_mid2_v_reg_401}};

assign trunc_ln5187_fu_325_p1 = c5_V_reg_198[3:0];

assign trunc_ln674_fu_285_p1 = local_C_V_q0[31:0];

assign trunc_ln890_fu_270_p1 = select_ln890_266_fu_252_p3[0:0];

assign zext_ln5161_fu_280_p1 = tmp_s_fu_274_p3;

assign zext_ln5187_1_fu_358_p1 = add_ln5187_fu_353_p2;

assign zext_ln5187_fu_349_p1 = c6_V_56_reg_209;

assign zext_ln890_fu_306_p1 = trunc_ln890_reg_406;

always @ (posedge ap_clk) begin
    tmp_cast_reg_427[4:0] <= 5'b00000;
end

endmodule //top_C_drain_IO_L1_out_boundary_0_x0
