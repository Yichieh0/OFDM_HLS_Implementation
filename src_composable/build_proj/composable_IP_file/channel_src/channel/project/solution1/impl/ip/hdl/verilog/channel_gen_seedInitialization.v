// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module channel_gen_seedInitialization (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        rngMT19937ICN_uniformRNG_mt_even_0_V_address0,
        rngMT19937ICN_uniformRNG_mt_even_0_V_ce0,
        rngMT19937ICN_uniformRNG_mt_even_0_V_we0,
        rngMT19937ICN_uniformRNG_mt_even_0_V_d0,
        rngMT19937ICN_uniformRNG_mt_even_0_V_q0,
        rngMT19937ICN_uniformRNG_mt_even_0_V_address1,
        rngMT19937ICN_uniformRNG_mt_even_0_V_ce1,
        rngMT19937ICN_uniformRNG_mt_even_0_V_q1,
        rngMT19937ICN_uniformRNG_mt_odd_0_V_address0,
        rngMT19937ICN_uniformRNG_mt_odd_0_V_ce0,
        rngMT19937ICN_uniformRNG_mt_odd_0_V_we0,
        rngMT19937ICN_uniformRNG_mt_odd_0_V_d0,
        rngMT19937ICN_uniformRNG_mt_odd_0_V_q0,
        rngMT19937ICN_uniformRNG_mt_odd_0_V_address1,
        rngMT19937ICN_uniformRNG_mt_odd_0_V_ce1,
        rngMT19937ICN_uniformRNG_mt_odd_0_V_q1,
        rngMT19937ICN_uniformRNG_x_k_p_0_V,
        rngMT19937ICN_uniformRNG_x_k_p_0_V_ap_vld,
        rngMT19937ICN_uniformRNG_x_k_p_1_V,
        rngMT19937ICN_uniformRNG_x_k_p_1_V_ap_vld,
        rngMT19937ICN_uniformRNG_x_k_p_2_V,
        rngMT19937ICN_uniformRNG_x_k_p_2_V_ap_vld,
        rngMT19937ICN_uniformRNG_x_k_p_m_V,
        rngMT19937ICN_uniformRNG_x_k_p_m_V_ap_vld,
        rngMT19937ICN_uniformRNG_addr_head_V,
        rngMT19937ICN_uniformRNG_addr_head_V_ap_vld
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] rngMT19937ICN_uniformRNG_mt_even_0_V_address0;
output   rngMT19937ICN_uniformRNG_mt_even_0_V_ce0;
output   rngMT19937ICN_uniformRNG_mt_even_0_V_we0;
output  [31:0] rngMT19937ICN_uniformRNG_mt_even_0_V_d0;
input  [31:0] rngMT19937ICN_uniformRNG_mt_even_0_V_q0;
output  [8:0] rngMT19937ICN_uniformRNG_mt_even_0_V_address1;
output   rngMT19937ICN_uniformRNG_mt_even_0_V_ce1;
input  [31:0] rngMT19937ICN_uniformRNG_mt_even_0_V_q1;
output  [8:0] rngMT19937ICN_uniformRNG_mt_odd_0_V_address0;
output   rngMT19937ICN_uniformRNG_mt_odd_0_V_ce0;
output   rngMT19937ICN_uniformRNG_mt_odd_0_V_we0;
output  [31:0] rngMT19937ICN_uniformRNG_mt_odd_0_V_d0;
input  [31:0] rngMT19937ICN_uniformRNG_mt_odd_0_V_q0;
output  [8:0] rngMT19937ICN_uniformRNG_mt_odd_0_V_address1;
output   rngMT19937ICN_uniformRNG_mt_odd_0_V_ce1;
input  [31:0] rngMT19937ICN_uniformRNG_mt_odd_0_V_q1;
output  [31:0] rngMT19937ICN_uniformRNG_x_k_p_0_V;
output   rngMT19937ICN_uniformRNG_x_k_p_0_V_ap_vld;
output  [31:0] rngMT19937ICN_uniformRNG_x_k_p_1_V;
output   rngMT19937ICN_uniformRNG_x_k_p_1_V_ap_vld;
output  [31:0] rngMT19937ICN_uniformRNG_x_k_p_2_V;
output   rngMT19937ICN_uniformRNG_x_k_p_2_V_ap_vld;
output  [31:0] rngMT19937ICN_uniformRNG_x_k_p_m_V;
output   rngMT19937ICN_uniformRNG_x_k_p_m_V_ap_vld;
output  [9:0] rngMT19937ICN_uniformRNG_addr_head_V;
output   rngMT19937ICN_uniformRNG_addr_head_V_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[8:0] rngMT19937ICN_uniformRNG_mt_even_0_V_address0;
reg rngMT19937ICN_uniformRNG_mt_even_0_V_ce0;
reg rngMT19937ICN_uniformRNG_mt_even_0_V_we0;
reg[31:0] rngMT19937ICN_uniformRNG_mt_even_0_V_d0;
reg rngMT19937ICN_uniformRNG_mt_even_0_V_ce1;
reg[8:0] rngMT19937ICN_uniformRNG_mt_odd_0_V_address0;
reg rngMT19937ICN_uniformRNG_mt_odd_0_V_ce0;
reg rngMT19937ICN_uniformRNG_mt_odd_0_V_ce1;
reg rngMT19937ICN_uniformRNG_x_k_p_0_V_ap_vld;
reg rngMT19937ICN_uniformRNG_x_k_p_1_V_ap_vld;
reg rngMT19937ICN_uniformRNG_x_k_p_2_V_ap_vld;
reg rngMT19937ICN_uniformRNG_x_k_p_m_V_ap_vld;
reg rngMT19937ICN_uniformRNG_addr_head_V_ap_vld;

(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [8:0] rngMT19937ICN_uniformRNG_mt_even_1_V_address0;
reg    rngMT19937ICN_uniformRNG_mt_even_1_V_ce0;
reg    rngMT19937ICN_uniformRNG_mt_even_1_V_we0;
reg   [31:0] rngMT19937ICN_uniformRNG_mt_even_1_V_d0;
wire    grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_ap_start;
wire    grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_ap_done;
wire    grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_ap_idle;
wire    grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_ap_ready;
wire   [8:0] grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_rngMT19937ICN_uniformRNG_mt_even_0_V_address0;
wire    grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_rngMT19937ICN_uniformRNG_mt_even_0_V_ce0;
wire    grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_rngMT19937ICN_uniformRNG_mt_even_0_V_we0;
wire   [31:0] grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_rngMT19937ICN_uniformRNG_mt_even_0_V_d0;
wire   [8:0] grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_rngMT19937ICN_uniformRNG_mt_even_1_V_address0;
wire    grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_rngMT19937ICN_uniformRNG_mt_even_1_V_ce0;
wire    grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_rngMT19937ICN_uniformRNG_mt_even_1_V_we0;
wire   [31:0] grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_rngMT19937ICN_uniformRNG_mt_even_1_V_d0;
wire   [8:0] grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_rngMT19937ICN_uniformRNG_mt_odd_0_V_address0;
wire    grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_rngMT19937ICN_uniformRNG_mt_odd_0_V_ce0;
wire    grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_rngMT19937ICN_uniformRNG_mt_odd_0_V_we0;
wire   [31:0] grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_rngMT19937ICN_uniformRNG_mt_odd_0_V_d0;
reg    grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_ap_start_reg;
reg   [4:0] ap_NS_fsm;
wire    ap_NS_fsm_state2;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state4;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'd1;
#0 grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_ap_start_reg = 1'b0;
end

channel_gen_seedInitialization_Pipeline_SEED_INIT_LOOP_rngMT19937ICN_uniformRNG_mt_odd_1_V #(
    .DataWidth( 32 ),
    .AddressRange( 512 ),
    .AddressWidth( 9 ))
rngMT19937ICN_uniformRNG_mt_even_1_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(rngMT19937ICN_uniformRNG_mt_even_1_V_address0),
    .ce0(rngMT19937ICN_uniformRNG_mt_even_1_V_ce0),
    .we0(rngMT19937ICN_uniformRNG_mt_even_1_V_we0),
    .d0(rngMT19937ICN_uniformRNG_mt_even_1_V_d0)
);

channel_gen_seedInitialization_Pipeline_SEED_INIT_LOOP grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_ap_start),
    .ap_done(grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_ap_done),
    .ap_idle(grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_ap_idle),
    .ap_ready(grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_ap_ready),
    .rngMT19937ICN_uniformRNG_mt_even_0_V_address0(grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_rngMT19937ICN_uniformRNG_mt_even_0_V_address0),
    .rngMT19937ICN_uniformRNG_mt_even_0_V_ce0(grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_rngMT19937ICN_uniformRNG_mt_even_0_V_ce0),
    .rngMT19937ICN_uniformRNG_mt_even_0_V_we0(grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_rngMT19937ICN_uniformRNG_mt_even_0_V_we0),
    .rngMT19937ICN_uniformRNG_mt_even_0_V_d0(grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_rngMT19937ICN_uniformRNG_mt_even_0_V_d0),
    .rngMT19937ICN_uniformRNG_mt_even_1_V_address0(grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_rngMT19937ICN_uniformRNG_mt_even_1_V_address0),
    .rngMT19937ICN_uniformRNG_mt_even_1_V_ce0(grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_rngMT19937ICN_uniformRNG_mt_even_1_V_ce0),
    .rngMT19937ICN_uniformRNG_mt_even_1_V_we0(grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_rngMT19937ICN_uniformRNG_mt_even_1_V_we0),
    .rngMT19937ICN_uniformRNG_mt_even_1_V_d0(grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_rngMT19937ICN_uniformRNG_mt_even_1_V_d0),
    .rngMT19937ICN_uniformRNG_mt_odd_0_V_address0(grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_rngMT19937ICN_uniformRNG_mt_odd_0_V_address0),
    .rngMT19937ICN_uniformRNG_mt_odd_0_V_ce0(grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_rngMT19937ICN_uniformRNG_mt_odd_0_V_ce0),
    .rngMT19937ICN_uniformRNG_mt_odd_0_V_we0(grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_rngMT19937ICN_uniformRNG_mt_odd_0_V_we0),
    .rngMT19937ICN_uniformRNG_mt_odd_0_V_d0(grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_rngMT19937ICN_uniformRNG_mt_odd_0_V_d0)
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
        grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_NS_fsm_state2) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_ap_start_reg <= 1'b1;
        end else if ((grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_ap_ready == 1'b1)) begin
            grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_ap_start_reg <= 1'b0;
        end
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
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
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        rngMT19937ICN_uniformRNG_addr_head_V_ap_vld = 1'b1;
    end else begin
        rngMT19937ICN_uniformRNG_addr_head_V_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        rngMT19937ICN_uniformRNG_mt_even_0_V_address0 = 9'd1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        rngMT19937ICN_uniformRNG_mt_even_0_V_address0 = 9'd0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        rngMT19937ICN_uniformRNG_mt_even_0_V_address0 = grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_rngMT19937ICN_uniformRNG_mt_even_0_V_address0;
    end else begin
        rngMT19937ICN_uniformRNG_mt_even_0_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        rngMT19937ICN_uniformRNG_mt_even_0_V_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        rngMT19937ICN_uniformRNG_mt_even_0_V_ce0 = grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_rngMT19937ICN_uniformRNG_mt_even_0_V_ce0;
    end else begin
        rngMT19937ICN_uniformRNG_mt_even_0_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        rngMT19937ICN_uniformRNG_mt_even_0_V_ce1 = 1'b1;
    end else begin
        rngMT19937ICN_uniformRNG_mt_even_0_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        rngMT19937ICN_uniformRNG_mt_even_0_V_d0 = 32'd69072;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        rngMT19937ICN_uniformRNG_mt_even_0_V_d0 = grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_rngMT19937ICN_uniformRNG_mt_even_0_V_d0;
    end else begin
        rngMT19937ICN_uniformRNG_mt_even_0_V_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        rngMT19937ICN_uniformRNG_mt_even_0_V_we0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        rngMT19937ICN_uniformRNG_mt_even_0_V_we0 = grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_rngMT19937ICN_uniformRNG_mt_even_0_V_we0;
    end else begin
        rngMT19937ICN_uniformRNG_mt_even_0_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        rngMT19937ICN_uniformRNG_mt_even_1_V_address0 = 9'd0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        rngMT19937ICN_uniformRNG_mt_even_1_V_address0 = grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_rngMT19937ICN_uniformRNG_mt_even_1_V_address0;
    end else begin
        rngMT19937ICN_uniformRNG_mt_even_1_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        rngMT19937ICN_uniformRNG_mt_even_1_V_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        rngMT19937ICN_uniformRNG_mt_even_1_V_ce0 = grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_rngMT19937ICN_uniformRNG_mt_even_1_V_ce0;
    end else begin
        rngMT19937ICN_uniformRNG_mt_even_1_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        rngMT19937ICN_uniformRNG_mt_even_1_V_d0 = 32'd69072;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        rngMT19937ICN_uniformRNG_mt_even_1_V_d0 = grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_rngMT19937ICN_uniformRNG_mt_even_1_V_d0;
    end else begin
        rngMT19937ICN_uniformRNG_mt_even_1_V_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        rngMT19937ICN_uniformRNG_mt_even_1_V_we0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        rngMT19937ICN_uniformRNG_mt_even_1_V_we0 = grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_rngMT19937ICN_uniformRNG_mt_even_1_V_we0;
    end else begin
        rngMT19937ICN_uniformRNG_mt_even_1_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        rngMT19937ICN_uniformRNG_mt_odd_0_V_address0 = 9'd198;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        rngMT19937ICN_uniformRNG_mt_odd_0_V_address0 = grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_rngMT19937ICN_uniformRNG_mt_odd_0_V_address0;
    end else begin
        rngMT19937ICN_uniformRNG_mt_odd_0_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        rngMT19937ICN_uniformRNG_mt_odd_0_V_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        rngMT19937ICN_uniformRNG_mt_odd_0_V_ce0 = grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_rngMT19937ICN_uniformRNG_mt_odd_0_V_ce0;
    end else begin
        rngMT19937ICN_uniformRNG_mt_odd_0_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        rngMT19937ICN_uniformRNG_mt_odd_0_V_ce1 = 1'b1;
    end else begin
        rngMT19937ICN_uniformRNG_mt_odd_0_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        rngMT19937ICN_uniformRNG_x_k_p_0_V_ap_vld = 1'b1;
    end else begin
        rngMT19937ICN_uniformRNG_x_k_p_0_V_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        rngMT19937ICN_uniformRNG_x_k_p_1_V_ap_vld = 1'b1;
    end else begin
        rngMT19937ICN_uniformRNG_x_k_p_1_V_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        rngMT19937ICN_uniformRNG_x_k_p_2_V_ap_vld = 1'b1;
    end else begin
        rngMT19937ICN_uniformRNG_x_k_p_2_V_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        rngMT19937ICN_uniformRNG_x_k_p_m_V_ap_vld = 1'b1;
    end else begin
        rngMT19937ICN_uniformRNG_x_k_p_m_V_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_NS_fsm_state2 = ap_NS_fsm[32'd1];

assign grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_ap_start = grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_ap_start_reg;

assign rngMT19937ICN_uniformRNG_addr_head_V = 10'd0;

assign rngMT19937ICN_uniformRNG_mt_even_0_V_address1 = 9'd0;

assign rngMT19937ICN_uniformRNG_mt_odd_0_V_address1 = 9'd0;

assign rngMT19937ICN_uniformRNG_mt_odd_0_V_d0 = grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_rngMT19937ICN_uniformRNG_mt_odd_0_V_d0;

assign rngMT19937ICN_uniformRNG_mt_odd_0_V_we0 = grp_seedInitialization_Pipeline_SEED_INIT_LOOP_fu_65_rngMT19937ICN_uniformRNG_mt_odd_0_V_we0;

assign rngMT19937ICN_uniformRNG_x_k_p_0_V = rngMT19937ICN_uniformRNG_mt_even_0_V_q1;

assign rngMT19937ICN_uniformRNG_x_k_p_1_V = rngMT19937ICN_uniformRNG_mt_odd_0_V_q1;

assign rngMT19937ICN_uniformRNG_x_k_p_2_V = rngMT19937ICN_uniformRNG_mt_even_0_V_q0;

assign rngMT19937ICN_uniformRNG_x_k_p_m_V = rngMT19937ICN_uniformRNG_mt_odd_0_V_q0;

endmodule //channel_gen_seedInitialization