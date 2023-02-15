// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module channel_gen_channel_gen_Pipeline_VITIS_LOOP_128_6 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        conv_i_i_i131_le3933,
        conv_i_i_i205_le3926,
        n_2taps_V_1_5,
        n_2taps_V_0_5,
        x_real_2taps_V_1_2_reload,
        p_Result_15,
        x_imag_2taps_V_1_2_reload,
        p_Result_16,
        lhs_V_10_out,
        lhs_V_10_out_ap_vld,
        lhs_V_8_out,
        lhs_V_8_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [19:0] conv_i_i_i131_le3933;
input  [19:0] conv_i_i_i205_le3926;
input  [19:0] n_2taps_V_1_5;
input  [19:0] n_2taps_V_0_5;
input  [19:0] x_real_2taps_V_1_2_reload;
input  [19:0] p_Result_15;
input  [19:0] x_imag_2taps_V_1_2_reload;
input  [19:0] p_Result_16;
output  [19:0] lhs_V_10_out;
output   lhs_V_10_out_ap_vld;
output  [19:0] lhs_V_8_out;
output   lhs_V_8_out_ap_vld;

reg ap_idle;
reg lhs_V_10_out_ap_vld;
reg lhs_V_8_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln1057_fu_154_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln1057_reg_360;
reg   [0:0] icmp_ln1057_reg_360_pp0_iter1_reg;
wire   [0:0] trunc_ln1169_fu_166_p1;
reg   [0:0] trunc_ln1169_reg_364;
reg   [0:0] trunc_ln1169_reg_364_pp0_iter1_reg;
reg   [0:0] trunc_ln1169_reg_364_pp0_iter2_reg;
reg   [19:0] lhs_V_8_fu_62;
wire    ap_block_pp0_stage0;
wire    ap_loop_init;
reg   [19:0] lhs_V_10_fu_66;
reg   [1:0] i_V_fu_70;
reg   [1:0] ap_sig_allocacmp_i_V_15;
wire   [1:0] add_ln870_fu_160_p2;
wire    ap_block_pp0_stage0_01001;
wire  signed [19:0] select_ln1171_fu_178_p3;
wire  signed [34:0] grp_fu_310_p2;
wire   [19:0] r_V_23_fu_201_p4;
wire  signed [19:0] select_ln1171_1_fu_210_p3;
wire  signed [19:0] mul_ln1245_2_fu_231_p0;
wire  signed [34:0] sext_ln1171_4_fu_215_p1;
wire   [34:0] lhs_V_9_fu_223_p3;
wire   [34:0] mul_ln1245_2_fu_231_p2;
wire   [34:0] ret_V_fu_237_p2;
wire  signed [19:0] select_ln1171_2_fu_253_p3;
wire  signed [19:0] mul_ln1245_3_fu_270_p0;
wire   [34:0] lhs_V_fu_262_p3;
wire   [34:0] mul_ln1245_3_fu_270_p2;
wire   [34:0] ret_V_15_fu_276_p2;
wire  signed [15:0] grp_fu_310_p0;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire  signed [34:0] grp_fu_310_p00;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_done_reg = 1'b0;
end

channel_gen_mul_20s_20s_35_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 20 ),
    .din1_WIDTH( 20 ),
    .dout_WIDTH( 35 ))
mul_20s_20s_35_1_1_U133(
    .din0(mul_ln1245_2_fu_231_p0),
    .din1(select_ln1171_1_fu_210_p3),
    .dout(mul_ln1245_2_fu_231_p2)
);

channel_gen_mul_20s_20s_35_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 20 ),
    .din1_WIDTH( 20 ),
    .dout_WIDTH( 35 ))
mul_20s_20s_35_1_1_U134(
    .din0(mul_ln1245_3_fu_270_p0),
    .din1(select_ln1171_2_fu_253_p3),
    .dout(mul_ln1245_3_fu_270_p2)
);

channel_gen_mul_mul_16s_20s_35_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 20 ),
    .dout_WIDTH( 35 ))
mul_mul_16s_20s_35_4_1_U135(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_310_p0),
    .din1(select_ln1171_fu_178_p3),
    .ce(1'b1),
    .dout(grp_fu_310_p2)
);

channel_gen_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln1057_fu_154_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_V_fu_70 <= add_ln870_fu_160_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_V_fu_70 <= 2'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            lhs_V_10_fu_66 <= conv_i_i_i131_le3933;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            lhs_V_10_fu_66 <= {{ret_V_15_fu_276_p2[34:15]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            lhs_V_8_fu_62 <= conv_i_i_i205_le3926;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            lhs_V_8_fu_62 <= {{ret_V_fu_237_p2[34:15]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln1057_reg_360 <= icmp_ln1057_fu_154_p2;
        icmp_ln1057_reg_360_pp0_iter1_reg <= icmp_ln1057_reg_360;
        trunc_ln1169_reg_364_pp0_iter1_reg <= trunc_ln1169_reg_364;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1057_fu_154_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        trunc_ln1169_reg_364 <= trunc_ln1169_fu_166_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        trunc_ln1169_reg_364_pp0_iter2_reg <= trunc_ln1169_reg_364_pp0_iter1_reg;
    end
end

always @ (*) begin
    if (((icmp_ln1057_fu_154_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_V_15 = 2'd0;
    end else begin
        ap_sig_allocacmp_i_V_15 = i_V_fu_70;
    end
end

always @ (*) begin
    if (((icmp_ln1057_reg_360_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        lhs_V_10_out_ap_vld = 1'b1;
    end else begin
        lhs_V_10_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln1057_reg_360_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        lhs_V_8_out_ap_vld = 1'b1;
    end else begin
        lhs_V_8_out_ap_vld = 1'b0;
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

assign add_ln870_fu_160_p2 = (ap_sig_allocacmp_i_V_15 + 2'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign grp_fu_310_p0 = grp_fu_310_p00;

assign grp_fu_310_p00 = ((trunc_ln1169_fu_166_p1[0:0] == 1'b1) ? 35'd17258 : 35'd27852);

assign icmp_ln1057_fu_154_p2 = ((ap_sig_allocacmp_i_V_15 == 2'd2) ? 1'b1 : 1'b0);

assign lhs_V_10_out = lhs_V_10_fu_66;

assign lhs_V_8_out = lhs_V_8_fu_62;

assign lhs_V_9_fu_223_p3 = {{lhs_V_8_fu_62}, {15'd0}};

assign lhs_V_fu_262_p3 = {{lhs_V_10_fu_66}, {15'd0}};

assign mul_ln1245_2_fu_231_p0 = sext_ln1171_4_fu_215_p1;

assign mul_ln1245_3_fu_270_p0 = sext_ln1171_4_fu_215_p1;

assign r_V_23_fu_201_p4 = {{grp_fu_310_p2[34:15]}};

assign ret_V_15_fu_276_p2 = (lhs_V_fu_262_p3 + mul_ln1245_3_fu_270_p2);

assign ret_V_fu_237_p2 = (lhs_V_9_fu_223_p3 + mul_ln1245_2_fu_231_p2);

assign select_ln1171_1_fu_210_p3 = ((trunc_ln1169_reg_364_pp0_iter2_reg[0:0] == 1'b1) ? x_real_2taps_V_1_2_reload : p_Result_15);

assign select_ln1171_2_fu_253_p3 = ((trunc_ln1169_reg_364_pp0_iter2_reg[0:0] == 1'b1) ? x_imag_2taps_V_1_2_reload : p_Result_16);

assign select_ln1171_fu_178_p3 = ((trunc_ln1169_fu_166_p1[0:0] == 1'b1) ? n_2taps_V_1_5 : n_2taps_V_0_5);

assign sext_ln1171_4_fu_215_p1 = $signed(r_V_23_fu_201_p4);

assign trunc_ln1169_fu_166_p1 = ap_sig_allocacmp_i_V_15[0:0];

endmodule //channel_gen_channel_gen_Pipeline_VITIS_LOOP_128_6