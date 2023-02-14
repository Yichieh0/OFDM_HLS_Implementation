// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module channel_gen_channel_gen_Pipeline_VITIS_LOOP_115_4 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        x_imag_2taps_V_1_1,
        x_imag_2taps_V_0_1,
        x_real_2taps_V_1_1,
        x_real_2taps_V_0_1,
        i_V,
        x_imag_2taps_V_1_2_out,
        x_imag_2taps_V_1_2_out_ap_vld,
        x_real_2taps_V_1_2_out,
        x_real_2taps_V_1_2_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [19:0] x_imag_2taps_V_1_1;
input  [19:0] x_imag_2taps_V_0_1;
input  [19:0] x_real_2taps_V_1_1;
input  [19:0] x_real_2taps_V_0_1;
input  [3:0] i_V;
output  [19:0] x_imag_2taps_V_1_2_out;
output   x_imag_2taps_V_1_2_out_ap_vld;
output  [19:0] x_real_2taps_V_1_2_out;
output   x_real_2taps_V_1_2_out_ap_vld;

reg ap_idle;
reg x_imag_2taps_V_1_2_out_ap_vld;
reg x_real_2taps_V_1_2_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln1065_fu_130_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [3:0] i_V_4_fu_38;
wire   [3:0] i_V_17_fu_168_p2;
wire    ap_block_pp0_stage0_11001;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [19:0] x_real_2taps_V_0_2_fu_42;
wire   [19:0] select_ln116_fu_152_p3;
reg   [19:0] x_real_2taps_V_1_2_fu_46;
reg   [19:0] x_imag_2taps_V_0_2_fu_50;
wire   [19:0] select_ln117_fu_160_p3;
reg   [19:0] x_imag_2taps_V_1_2_fu_54;
wire    ap_block_pp0_stage0_01001;
wire   [0:0] trunc_ln1526_fu_148_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
end

channel_gen_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_V_4_fu_38 <= i_V;
        end else if (((icmp_ln1065_fu_130_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            i_V_4_fu_38 <= i_V_17_fu_168_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            x_imag_2taps_V_0_2_fu_50 <= x_imag_2taps_V_0_1;
        end else if (((icmp_ln1065_fu_130_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            x_imag_2taps_V_0_2_fu_50 <= select_ln117_fu_160_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            x_imag_2taps_V_1_2_fu_54 <= x_imag_2taps_V_1_1;
        end else if (((icmp_ln1065_fu_130_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            x_imag_2taps_V_1_2_fu_54 <= select_ln117_fu_160_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            x_real_2taps_V_0_2_fu_42 <= x_real_2taps_V_0_1;
        end else if (((icmp_ln1065_fu_130_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            x_real_2taps_V_0_2_fu_42 <= select_ln116_fu_152_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            x_real_2taps_V_1_2_fu_46 <= x_real_2taps_V_1_1;
        end else if (((icmp_ln1065_fu_130_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            x_real_2taps_V_1_2_fu_46 <= select_ln116_fu_152_p3;
        end
    end
end

always @ (*) begin
    if (((icmp_ln1065_fu_130_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln1065_fu_130_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_imag_2taps_V_1_2_out_ap_vld = 1'b1;
    end else begin
        x_imag_2taps_V_1_2_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln1065_fu_130_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_real_2taps_V_1_2_out_ap_vld = 1'b1;
    end else begin
        x_real_2taps_V_1_2_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;

assign i_V_17_fu_168_p2 = ($signed(i_V_4_fu_38) + $signed(4'd15));

assign icmp_ln1065_fu_130_p2 = ((i_V_4_fu_38 == 4'd0) ? 1'b1 : 1'b0);

assign select_ln116_fu_152_p3 = ((trunc_ln1526_fu_148_p1[0:0] == 1'b1) ? x_real_2taps_V_0_2_fu_42 : x_real_2taps_V_1_2_fu_46);

assign select_ln117_fu_160_p3 = ((trunc_ln1526_fu_148_p1[0:0] == 1'b1) ? x_imag_2taps_V_0_2_fu_50 : x_imag_2taps_V_1_2_fu_54);

assign trunc_ln1526_fu_148_p1 = i_V_4_fu_38[0:0];

assign x_imag_2taps_V_1_2_out = x_imag_2taps_V_1_2_fu_54;

assign x_real_2taps_V_1_2_out = x_real_2taps_V_1_2_fu_46;

endmodule //channel_gen_channel_gen_Pipeline_VITIS_LOOP_115_4
