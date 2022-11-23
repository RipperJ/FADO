// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module top_A_IO_L2_in_3_x0 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        fifo_A_A_IO_L2_in_3_x04_dout,
        fifo_A_A_IO_L2_in_3_x04_empty_n,
        fifo_A_A_IO_L2_in_3_x04_read,
        fifo_A_A_IO_L2_in_4_x05_din,
        fifo_A_A_IO_L2_in_4_x05_full_n,
        fifo_A_A_IO_L2_in_4_x05_write,
        fifo_A_PE_3_0_x025_din,
        fifo_A_PE_3_0_x025_full_n,
        fifo_A_PE_3_0_x025_write
);

parameter    ap_ST_fsm_state1 = 9'd1;
parameter    ap_ST_fsm_state2 = 9'd2;
parameter    ap_ST_fsm_state3 = 9'd4;
parameter    ap_ST_fsm_state4 = 9'd8;
parameter    ap_ST_fsm_state5 = 9'd16;
parameter    ap_ST_fsm_state6 = 9'd32;
parameter    ap_ST_fsm_state7 = 9'd64;
parameter    ap_ST_fsm_state8 = 9'd128;
parameter    ap_ST_fsm_state9 = 9'd256;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [255:0] fifo_A_A_IO_L2_in_3_x04_dout;
input   fifo_A_A_IO_L2_in_3_x04_empty_n;
output   fifo_A_A_IO_L2_in_3_x04_read;
output  [255:0] fifo_A_A_IO_L2_in_4_x05_din;
input   fifo_A_A_IO_L2_in_4_x05_full_n;
output   fifo_A_A_IO_L2_in_4_x05_write;
output  [255:0] fifo_A_PE_3_0_x025_din;
input   fifo_A_PE_3_0_x025_full_n;
output   fifo_A_PE_3_0_x025_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg fifo_A_A_IO_L2_in_3_x04_read;
reg fifo_A_A_IO_L2_in_4_x05_write;
reg fifo_A_PE_3_0_x025_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    fifo_A_A_IO_L2_in_3_x04_blk_n;
wire    ap_CS_fsm_state5;
reg    fifo_A_A_IO_L2_in_4_x05_blk_n;
reg   [0:0] cmp_i_i72_reg_329;
reg    fifo_A_PE_3_0_x025_blk_n;
wire    ap_CS_fsm_state9;
wire   [0:0] cmp_i_i72_fu_202_p2;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln890_fu_196_p2;
wire   [4:0] add_ln691_783_fu_208_p2;
reg   [4:0] add_ln691_783_reg_333;
wire    ap_CS_fsm_state3;
wire   [8:0] tmp_360_cast_fu_218_p3;
reg   [8:0] tmp_360_cast_reg_338;
wire   [3:0] add_ln691_fu_232_p2;
wire   [0:0] icmp_ln890_627_fu_226_p2;
wire   [5:0] add_ln691_786_fu_238_p2;
reg   [5:0] add_ln691_786_reg_351;
wire    ap_CS_fsm_state4;
reg   [8:0] local_A_pong_V_addr_reg_356;
wire   [5:0] add_ln691_782_fu_264_p2;
reg   [5:0] add_ln691_782_reg_364;
wire    ap_CS_fsm_state6;
wire   [8:0] zext_ln890_fu_270_p1;
reg   [8:0] zext_ln890_reg_369;
wire   [6:0] add_ln691_784_fu_280_p2;
reg   [6:0] add_ln691_784_reg_377;
wire    ap_CS_fsm_state7;
wire   [4:0] add_ln691_785_fu_292_p2;
reg   [4:0] add_ln691_785_reg_385;
wire    ap_CS_fsm_state8;
wire   [8:0] local_A_pong_V_address0;
reg    local_A_pong_V_ce0;
wire   [255:0] local_A_pong_V_q0;
reg    local_A_pong_V_ce1;
reg    local_A_pong_V_we1;
reg   [3:0] c3_V_reg_129;
reg    ap_block_state1;
reg   [4:0] c4_V_reg_141;
wire   [0:0] icmp_ln890_629_fu_258_p2;
reg   [5:0] c5_V_20_reg_152;
reg    ap_block_state5;
reg   [5:0] c5_V_reg_163;
wire   [0:0] icmp_ln890_628_fu_286_p2;
reg   [6:0] c6_V_reg_174;
wire   [0:0] icmp_ln890_630_fu_320_p2;
wire   [0:0] icmp_ln890_626_fu_274_p2;
reg   [4:0] c7_V_reg_185;
wire   [63:0] zext_ln248_1_fu_253_p1;
wire   [63:0] zext_ln265_fu_315_p1;
wire   [3:0] trunc_ln248_fu_214_p1;
wire   [8:0] zext_ln248_fu_244_p1;
wire   [8:0] add_ln248_fu_248_p2;
wire   [3:0] trunc_ln265_fu_298_p1;
wire   [8:0] tmp_cast_fu_302_p3;
wire   [8:0] add_ln265_fu_310_p2;
reg   [8:0] ap_NS_fsm;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 9'd1;
end

top_A_IO_L2_in_0_x0_local_A_pong_V #(
    .DataWidth( 256 ),
    .AddressRange( 512 ),
    .AddressWidth( 9 ))
local_A_pong_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(local_A_pong_V_address0),
    .ce0(local_A_pong_V_ce0),
    .q0(local_A_pong_V_q0),
    .address1(local_A_pong_V_addr_reg_356),
    .ce1(local_A_pong_V_ce1),
    .we1(local_A_pong_V_we1),
    .d1(fifo_A_A_IO_L2_in_3_x04_dout)
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
        end else if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln890_626_fu_274_p2 == 1'd1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        c3_V_reg_129 <= 4'd3;
    end else if (((icmp_ln890_627_fu_226_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        c3_V_reg_129 <= add_ln691_fu_232_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_fu_196_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        c4_V_reg_141 <= 5'd0;
    end else if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln890_629_fu_258_p2 == 1'd1))) begin
        c4_V_reg_141 <= add_ln691_783_reg_333;
    end
end

always @ (posedge ap_clk) begin
    if ((~((fifo_A_A_IO_L2_in_3_x04_empty_n == 1'b0) | ((cmp_i_i72_reg_329 == 1'd0) & (fifo_A_A_IO_L2_in_4_x05_full_n == 1'b0))) & (1'b1 == ap_CS_fsm_state5))) begin
        c5_V_20_reg_152 <= add_ln691_786_reg_351;
    end else if (((icmp_ln890_627_fu_226_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        c5_V_20_reg_152 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_fu_196_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        c5_V_reg_163 <= 6'd0;
    end else if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln890_628_fu_286_p2 == 1'd1))) begin
        c5_V_reg_163 <= add_ln691_782_reg_364;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln890_626_fu_274_p2 == 1'd0))) begin
        c6_V_reg_174 <= 7'd0;
    end else if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln890_630_fu_320_p2 == 1'd1))) begin
        c6_V_reg_174 <= add_ln691_784_reg_377;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln890_628_fu_286_p2 == 1'd0))) begin
        c7_V_reg_185 <= 5'd0;
    end else if (((fifo_A_PE_3_0_x025_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
        c7_V_reg_185 <= add_ln691_785_reg_385;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        add_ln691_782_reg_364 <= add_ln691_782_fu_264_p2;
        zext_ln890_reg_369[5 : 0] <= zext_ln890_fu_270_p1[5 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln691_783_reg_333 <= add_ln691_783_fu_208_p2;
        tmp_360_cast_reg_338[8 : 5] <= tmp_360_cast_fu_218_p3[8 : 5];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        add_ln691_784_reg_377 <= add_ln691_784_fu_280_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        add_ln691_785_reg_385 <= add_ln691_785_fu_292_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        add_ln691_786_reg_351 <= add_ln691_786_fu_238_p2;
        local_A_pong_V_addr_reg_356 <= zext_ln248_1_fu_253_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln890_fu_196_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        cmp_i_i72_reg_329 <= cmp_i_i72_fu_202_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln890_626_fu_274_p2 == 1'd1))) begin
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
    if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln890_626_fu_274_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        fifo_A_A_IO_L2_in_3_x04_blk_n = fifo_A_A_IO_L2_in_3_x04_empty_n;
    end else begin
        fifo_A_A_IO_L2_in_3_x04_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((fifo_A_A_IO_L2_in_3_x04_empty_n == 1'b0) | ((cmp_i_i72_reg_329 == 1'd0) & (fifo_A_A_IO_L2_in_4_x05_full_n == 1'b0))) & (1'b1 == ap_CS_fsm_state5))) begin
        fifo_A_A_IO_L2_in_3_x04_read = 1'b1;
    end else begin
        fifo_A_A_IO_L2_in_3_x04_read = 1'b0;
    end
end

always @ (*) begin
    if (((cmp_i_i72_reg_329 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        fifo_A_A_IO_L2_in_4_x05_blk_n = fifo_A_A_IO_L2_in_4_x05_full_n;
    end else begin
        fifo_A_A_IO_L2_in_4_x05_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((fifo_A_A_IO_L2_in_3_x04_empty_n == 1'b0) | ((cmp_i_i72_reg_329 == 1'd0) & (fifo_A_A_IO_L2_in_4_x05_full_n == 1'b0))) & (cmp_i_i72_reg_329 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        fifo_A_A_IO_L2_in_4_x05_write = 1'b1;
    end else begin
        fifo_A_A_IO_L2_in_4_x05_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        fifo_A_PE_3_0_x025_blk_n = fifo_A_PE_3_0_x025_full_n;
    end else begin
        fifo_A_PE_3_0_x025_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((fifo_A_PE_3_0_x025_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
        fifo_A_PE_3_0_x025_write = 1'b1;
    end else begin
        fifo_A_PE_3_0_x025_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        local_A_pong_V_ce0 = 1'b1;
    end else begin
        local_A_pong_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((fifo_A_A_IO_L2_in_3_x04_empty_n == 1'b0) | ((cmp_i_i72_reg_329 == 1'd0) & (fifo_A_A_IO_L2_in_4_x05_full_n == 1'b0))) & (1'b1 == ap_CS_fsm_state5))) begin
        local_A_pong_V_ce1 = 1'b1;
    end else begin
        local_A_pong_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((~((fifo_A_A_IO_L2_in_3_x04_empty_n == 1'b0) | ((cmp_i_i72_reg_329 == 1'd0) & (fifo_A_A_IO_L2_in_4_x05_full_n == 1'b0))) & (cmp_i_i72_reg_329 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        local_A_pong_V_we1 = 1'b1;
    end else begin
        local_A_pong_V_we1 = 1'b0;
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
            if (((icmp_ln890_fu_196_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln890_627_fu_226_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln890_629_fu_258_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if ((~((fifo_A_A_IO_L2_in_3_x04_empty_n == 1'b0) | ((cmp_i_i72_reg_329 == 1'd0) & (fifo_A_A_IO_L2_in_4_x05_full_n == 1'b0))) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln890_626_fu_274_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln890_628_fu_286_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln890_630_fu_320_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            if (((fifo_A_PE_3_0_x025_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln248_fu_248_p2 = (tmp_360_cast_reg_338 + zext_ln248_fu_244_p1);

assign add_ln265_fu_310_p2 = (tmp_cast_fu_302_p3 + zext_ln890_reg_369);

assign add_ln691_782_fu_264_p2 = (c5_V_reg_163 + 6'd1);

assign add_ln691_783_fu_208_p2 = (c4_V_reg_141 + 5'd1);

assign add_ln691_784_fu_280_p2 = (c6_V_reg_174 + 7'd1);

assign add_ln691_785_fu_292_p2 = (c7_V_reg_185 + 5'd1);

assign add_ln691_786_fu_238_p2 = (c5_V_20_reg_152 + 6'd1);

assign add_ln691_fu_232_p2 = (c3_V_reg_129 + 4'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

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
    ap_block_state5 = ((fifo_A_A_IO_L2_in_3_x04_empty_n == 1'b0) | ((cmp_i_i72_reg_329 == 1'd0) & (fifo_A_A_IO_L2_in_4_x05_full_n == 1'b0)));
end

assign cmp_i_i72_fu_202_p2 = ((c3_V_reg_129 == 4'd3) ? 1'b1 : 1'b0);

assign fifo_A_A_IO_L2_in_4_x05_din = fifo_A_A_IO_L2_in_3_x04_dout;

assign fifo_A_PE_3_0_x025_din = local_A_pong_V_q0;

assign icmp_ln890_626_fu_274_p2 = ((c5_V_reg_163 == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln890_627_fu_226_p2 = ((c4_V_reg_141 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln890_628_fu_286_p2 = ((c6_V_reg_174 == 7'd64) ? 1'b1 : 1'b0);

assign icmp_ln890_629_fu_258_p2 = ((c5_V_20_reg_152 == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln890_630_fu_320_p2 = ((c7_V_reg_185 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln890_fu_196_p2 = ((c3_V_reg_129 == 4'd13) ? 1'b1 : 1'b0);

assign local_A_pong_V_address0 = zext_ln265_fu_315_p1;

assign tmp_360_cast_fu_218_p3 = {{trunc_ln248_fu_214_p1}, {5'd0}};

assign tmp_cast_fu_302_p3 = {{trunc_ln265_fu_298_p1}, {5'd0}};

assign trunc_ln248_fu_214_p1 = c4_V_reg_141[3:0];

assign trunc_ln265_fu_298_p1 = c7_V_reg_185[3:0];

assign zext_ln248_1_fu_253_p1 = add_ln248_fu_248_p2;

assign zext_ln248_fu_244_p1 = c5_V_20_reg_152;

assign zext_ln265_fu_315_p1 = add_ln265_fu_310_p2;

assign zext_ln890_fu_270_p1 = c5_V_reg_163;

always @ (posedge ap_clk) begin
    tmp_360_cast_reg_338[4:0] <= 5'b00000;
    zext_ln890_reg_369[8:6] <= 3'b000;
end

endmodule //top_A_IO_L2_in_3_x0
