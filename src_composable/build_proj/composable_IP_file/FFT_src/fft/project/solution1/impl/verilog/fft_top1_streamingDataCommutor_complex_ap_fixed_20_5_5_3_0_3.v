// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fft_top1_streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_3 (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        temp_dout,
        temp_empty_n,
        temp_read,
        temp1_din,
        temp1_full_n,
        temp1_write,
        start_out,
        start_write
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_pp0_stage0 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [127:0] temp_dout;
input   temp_empty_n;
output   temp_read;
output  [127:0] temp1_din;
input   temp1_full_n;
output   temp1_write;
output   start_out;
output   start_write;

reg ap_done;
reg ap_idle;
reg temp_read;
reg temp1_write;
reg start_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
wire   [0:0] icmp_ln231_fu_345_p2;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
wire   [0:0] fifo_has_next_sample_nbreadreq_fu_116_p3;
reg    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
reg   [0:0] delay_line_stall_6_load_reg_543;
reg   [0:0] delay_line_stall_6_load_reg_543_pp0_iter1_reg;
reg   [0:0] and_ln297_reg_594;
reg   [0:0] fifo_has_next_sample_reg_534;
reg   [0:0] fifo_has_next_sample_reg_534_pp0_iter1_reg;
reg    ap_predicate_op79_write_state4;
reg    ap_block_state4_pp0_stage0_iter2;
reg    ap_enable_reg_pp0_iter2;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] control_count_V_6;
reg   [0:0] control_bits_V_6;
reg   [2:0] pf_count_V_9;
reg   [5:0] sample_in_read_count_V_6;
reg   [0:0] delay_line_stall_6;
reg    delayline_Array_17_ce0;
reg    delayline_Array_17_we0;
wire   [40:0] delayline_Array_17_q0;
reg    control_delayline_Array_6_ce0;
reg    control_delayline_Array_6_we0;
wire   [31:0] control_delayline_Array_6_q0;
reg    delayline_Array_16_ce0;
reg    delayline_Array_16_we0;
wire   [40:0] delayline_Array_16_q0;
reg    temp_blk_n;
wire    ap_block_pp0_stage0;
reg    temp1_blk_n;
reg   [6:0] t17_reg_152;
wire   [6:0] t_fu_223_p2;
reg   [6:0] t_reg_538;
wire   [0:0] delay_line_stall_6_load_load_fu_229_p1;
wire   [19:0] trunc_ln145_fu_233_p1;
reg   [0:0] icmp_ln231_reg_570;
reg   [0:0] icmp_ln231_reg_570_pp0_iter1_reg;
wire   [19:0] select_ln79_fu_439_p3;
reg   [19:0] select_ln79_reg_574;
wire   [19:0] select_ln79_13_fu_447_p3;
reg   [19:0] select_ln79_13_reg_579;
wire   [19:0] trunc_ln130_fu_483_p1;
reg   [19:0] trunc_ln130_reg_584;
reg   [19:0] lshr_ln130_s_reg_589;
wire   [0:0] and_ln297_fu_505_p2;
reg    ap_enable_reg_pp0_iter1;
reg    ap_block_state1;
reg    ap_block_pp0_stage0_subdone;
reg   [6:0] ap_phi_mux_t17_phi_fu_156_p6;
wire   [19:0] ap_phi_reg_pp0_iter0_arrayidx_0_01_load_0_i365_reg_166;
reg   [19:0] ap_phi_reg_pp0_iter1_arrayidx_0_01_load_0_i365_reg_166;
wire   [19:0] ap_phi_reg_pp0_iter0_arrayidx_0_11_load_0_i364_reg_177;
reg   [19:0] ap_phi_reg_pp0_iter1_arrayidx_0_11_load_0_i364_reg_177;
wire   [0:0] ap_phi_reg_pp0_iter0_temp_tagged_mux_chain_input_valid_0_reg_188;
reg   [0:0] ap_phi_reg_pp0_iter1_temp_tagged_mux_chain_input_valid_0_reg_188;
wire   [19:0] ap_phi_reg_pp0_iter0_temp_tagged_mux_chain_input_sample_M_real_V_0_reg_201;
reg   [19:0] ap_phi_reg_pp0_iter1_temp_tagged_mux_chain_input_sample_M_real_V_0_reg_201;
wire   [19:0] ap_phi_reg_pp0_iter0_temp_tagged_mux_chain_input_sample_M_imag_V_0_reg_212;
reg   [19:0] ap_phi_reg_pp0_iter1_temp_tagged_mux_chain_input_sample_M_imag_V_0_reg_212;
wire   [0:0] xor_ln251_fu_305_p2;
wire   [0:0] icmp_ln1049_fu_281_p2;
wire   [2:0] add_ln870_fu_287_p2;
wire   [5:0] add_ln870_5_fu_321_p2;
wire   [0:0] icmp_ln256_fu_327_p2;
reg    ap_block_pp0_stage0_01001;
wire   [40:0] p_s_fu_351_p4;
wire   [31:0] zext_ln66_fu_397_p1;
wire   [40:0] p_3_fu_463_p4;
wire   [19:0] temp_tagged_mux_chain_input_sample_M_real_V_1_fu_371_p1;
wire   [19:0] temp_tagged_mux_chain_input_sample_M_imag_V_1_fu_375_p4;
wire   [0:0] temp_tagged_mux_chain_input_valid_1_fu_385_p3;
wire   [0:0] trunc_ln79_fu_435_p1;
wire   [0:0] select_ln68_14_fu_427_p3;
wire   [19:0] select_ln68_13_fu_419_p3;
wire   [19:0] select_ln68_fu_411_p3;
wire   [0:0] select_ln79_14_fu_455_p3;
wire   [0:0] valid_flag_fu_497_p3;
wire   [31:0] zext_ln174_fu_511_p1;
wire   [115:0] tmp_fu_514_p7;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_idle_pp0_0to1;
reg    ap_reset_idle_pp0;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_201;
reg    ap_condition_84;
reg    ap_condition_212;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 control_count_V_6 = 1'd0;
#0 control_bits_V_6 = 1'd0;
#0 pf_count_V_9 = 3'd0;
#0 sample_in_read_count_V_6 = 6'd0;
#0 delay_line_stall_6 = 1'd0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

fft_top1_streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_3_delayline_Array_17 #(
    .DataWidth( 41 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
delayline_Array_17_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(3'd7),
    .ce0(delayline_Array_17_ce0),
    .we0(delayline_Array_17_we0),
    .d0(p_s_fu_351_p4),
    .q0(delayline_Array_17_q0)
);

fft_top1_streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_3_control_delayline_Array_6 #(
    .DataWidth( 32 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
control_delayline_Array_6_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(3'd7),
    .ce0(control_delayline_Array_6_ce0),
    .we0(control_delayline_Array_6_we0),
    .d0(zext_ln66_fu_397_p1),
    .q0(control_delayline_Array_6_q0)
);

fft_top1_streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_3_delayline_Array_17 #(
    .DataWidth( 41 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
delayline_Array_16_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(3'd7),
    .ce0(delayline_Array_16_ce0),
    .we0(delayline_Array_16_we0),
    .d0(p_3_fu_463_p4),
    .q0(delayline_Array_16_q0)
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
        end else if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln231_reg_570_pp0_iter1_reg == 1'd1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= real_start;
        end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((real_start == 1'b1) & (internal_ap_ready == 1'b0))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_84)) begin
        if (((fifo_has_next_sample_nbreadreq_fu_116_p3 == 1'd0) & (delay_line_stall_6_load_load_fu_229_p1 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_arrayidx_0_01_load_0_i365_reg_166 <= 20'd0;
        end else if ((fifo_has_next_sample_nbreadreq_fu_116_p3 == 1'd1)) begin
            ap_phi_reg_pp0_iter1_arrayidx_0_01_load_0_i365_reg_166 <= {{temp_dout[83:64]}};
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_arrayidx_0_01_load_0_i365_reg_166 <= ap_phi_reg_pp0_iter0_arrayidx_0_01_load_0_i365_reg_166;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_84)) begin
        if (((fifo_has_next_sample_nbreadreq_fu_116_p3 == 1'd0) & (delay_line_stall_6_load_load_fu_229_p1 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_arrayidx_0_11_load_0_i364_reg_177 <= 20'd0;
        end else if ((fifo_has_next_sample_nbreadreq_fu_116_p3 == 1'd1)) begin
            ap_phi_reg_pp0_iter1_arrayidx_0_11_load_0_i364_reg_177 <= {{temp_dout[115:96]}};
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_arrayidx_0_11_load_0_i364_reg_177 <= ap_phi_reg_pp0_iter0_arrayidx_0_11_load_0_i364_reg_177;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_84)) begin
        if (((fifo_has_next_sample_nbreadreq_fu_116_p3 == 1'd0) & (delay_line_stall_6_load_load_fu_229_p1 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_temp_tagged_mux_chain_input_sample_M_imag_V_0_reg_212 <= 20'd0;
        end else if ((fifo_has_next_sample_nbreadreq_fu_116_p3 == 1'd1)) begin
            ap_phi_reg_pp0_iter1_temp_tagged_mux_chain_input_sample_M_imag_V_0_reg_212 <= {{temp_dout[51:32]}};
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_temp_tagged_mux_chain_input_sample_M_imag_V_0_reg_212 <= ap_phi_reg_pp0_iter0_temp_tagged_mux_chain_input_sample_M_imag_V_0_reg_212;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_84)) begin
        if (((fifo_has_next_sample_nbreadreq_fu_116_p3 == 1'd0) & (delay_line_stall_6_load_load_fu_229_p1 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_temp_tagged_mux_chain_input_sample_M_real_V_0_reg_201 <= 20'd0;
        end else if ((fifo_has_next_sample_nbreadreq_fu_116_p3 == 1'd1)) begin
            ap_phi_reg_pp0_iter1_temp_tagged_mux_chain_input_sample_M_real_V_0_reg_201 <= trunc_ln145_fu_233_p1;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_temp_tagged_mux_chain_input_sample_M_real_V_0_reg_201 <= ap_phi_reg_pp0_iter0_temp_tagged_mux_chain_input_sample_M_real_V_0_reg_201;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_84)) begin
        if (((fifo_has_next_sample_nbreadreq_fu_116_p3 == 1'd0) & (delay_line_stall_6_load_load_fu_229_p1 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_temp_tagged_mux_chain_input_valid_0_reg_188 <= 1'd0;
        end else if ((fifo_has_next_sample_nbreadreq_fu_116_p3 == 1'd1)) begin
            ap_phi_reg_pp0_iter1_temp_tagged_mux_chain_input_valid_0_reg_188 <= 1'd1;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_temp_tagged_mux_chain_input_valid_0_reg_188 <= ap_phi_reg_pp0_iter0_temp_tagged_mux_chain_input_valid_0_reg_188;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_212)) begin
        if ((icmp_ln1049_fu_281_p2 == 1'd1)) begin
            pf_count_V_9 <= 3'd0;
        end else if ((icmp_ln1049_fu_281_p2 == 1'd0)) begin
            pf_count_V_9 <= add_ln870_fu_287_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln231_reg_570 == 1'd0))) begin
        t17_reg_152 <= t_reg_538;
    end else if ((((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln231_reg_570 == 1'd1)) | (~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1)))) begin
        t17_reg_152 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((fifo_has_next_sample_reg_534 == 1'd1) | (delay_line_stall_6_load_reg_543 == 1'd0)))) begin
        and_ln297_reg_594 <= and_ln297_fu_505_p2;
        lshr_ln130_s_reg_589 <= {{delayline_Array_16_q0[39:20]}};
        select_ln79_13_reg_579 <= select_ln79_13_fu_447_p3;
        select_ln79_reg_574 <= select_ln79_fu_439_p3;
        trunc_ln130_reg_584 <= trunc_ln130_fu_483_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (fifo_has_next_sample_nbreadreq_fu_116_p3 == 1'd1) & (real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        control_bits_V_6 <= control_count_V_6;
        delay_line_stall_6 <= icmp_ln256_fu_327_p2;
        sample_in_read_count_V_6 <= add_ln870_5_fu_321_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (fifo_has_next_sample_nbreadreq_fu_116_p3 == 1'd1) & (real_start == 1'b1) & (icmp_ln1049_fu_281_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        control_count_V_6 <= xor_ln251_fu_305_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (fifo_has_next_sample_nbreadreq_fu_116_p3 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delay_line_stall_6_load_reg_543 <= delay_line_stall_6;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delay_line_stall_6_load_reg_543_pp0_iter1_reg <= delay_line_stall_6_load_reg_543;
        fifo_has_next_sample_reg_534 <= fifo_has_next_sample_nbreadreq_fu_116_p3;
        fifo_has_next_sample_reg_534_pp0_iter1_reg <= fifo_has_next_sample_reg_534;
        icmp_ln231_reg_570 <= icmp_ln231_fu_345_p2;
        icmp_ln231_reg_570_pp0_iter1_reg <= icmp_ln231_reg_570;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        t_reg_538 <= t_fu_223_p2;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) | (ap_done_reg == 1'b1))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln231_reg_570_pp0_iter1_reg == 1'd1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_201)) begin
        if ((icmp_ln231_reg_570 == 1'd1)) begin
            ap_phi_mux_t17_phi_fu_156_p6 = 7'd0;
        end else if ((icmp_ln231_reg_570 == 1'd0)) begin
            ap_phi_mux_t17_phi_fu_156_p6 = t_reg_538;
        end else begin
            ap_phi_mux_t17_phi_fu_156_p6 = t17_reg_152;
        end
    end else begin
        ap_phi_mux_t17_phi_fu_156_p6 = t17_reg_152;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (ap_idle_pp0_0to1 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & ((fifo_has_next_sample_reg_534 == 1'd1) | (delay_line_stall_6_load_reg_543 == 1'd0)))) begin
        control_delayline_Array_6_ce0 = 1'd1;
    end else begin
        control_delayline_Array_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & ((fifo_has_next_sample_reg_534 == 1'd1) | (delay_line_stall_6_load_reg_543 == 1'd0)))) begin
        control_delayline_Array_6_we0 = 1'd1;
    end else begin
        control_delayline_Array_6_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & ((fifo_has_next_sample_reg_534 == 1'd1) | (delay_line_stall_6_load_reg_543 == 1'd0)))) begin
        delayline_Array_16_ce0 = 1'd1;
    end else begin
        delayline_Array_16_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & ((fifo_has_next_sample_reg_534 == 1'd1) | (delay_line_stall_6_load_reg_543 == 1'd0)))) begin
        delayline_Array_16_we0 = 1'd1;
    end else begin
        delayline_Array_16_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & ((fifo_has_next_sample_reg_534 == 1'd1) | (delay_line_stall_6_load_reg_543 == 1'd0)))) begin
        delayline_Array_17_ce0 = 1'd1;
    end else begin
        delayline_Array_17_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & ((fifo_has_next_sample_reg_534 == 1'd1) | (delay_line_stall_6_load_reg_543 == 1'd0)))) begin
        delayline_Array_17_we0 = 1'd1;
    end else begin
        delayline_Array_17_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (real_start == 1'b1) & (icmp_ln231_fu_345_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((start_full_n == 1'b0) & (start_once_reg == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((real_start == 1'b1) & (start_once_reg == 1'b0))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_op79_write_state4 == 1'b1))) begin
        temp1_blk_n = temp1_full_n;
    end else begin
        temp1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_op79_write_state4 == 1'b1))) begin
        temp1_write = 1'b1;
    end else begin
        temp1_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (fifo_has_next_sample_nbreadreq_fu_116_p3 == 1'd1) & (real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp_blk_n = temp_empty_n;
    end else begin
        temp_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (fifo_has_next_sample_nbreadreq_fu_116_p3 == 1'd1) & (real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp_read = 1'b1;
    end else begin
        temp_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((ap_reset_idle_pp0 == 1'b0)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_reset_idle_pp0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln870_5_fu_321_p2 = (sample_in_read_count_V_6 + 6'd1);

assign add_ln870_fu_287_p2 = (pf_count_V_9 + 3'd1);

assign and_ln297_fu_505_p2 = (valid_flag_fu_497_p3 & select_ln79_14_fu_455_p3);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_op79_write_state4 == 1'b1) & (temp1_full_n == 1'b0)) | ((fifo_has_next_sample_nbreadreq_fu_116_p3 == 1'd1) & (temp_empty_n == 1'b0) & (real_start == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_op79_write_state4 == 1'b1) & (temp1_full_n == 1'b0)) | ((fifo_has_next_sample_nbreadreq_fu_116_p3 == 1'd1) & (temp_empty_n == 1'b0) & (real_start == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_op79_write_state4 == 1'b1) & (temp1_full_n == 1'b0)) | ((fifo_has_next_sample_nbreadreq_fu_116_p3 == 1'd1) & (temp_empty_n == 1'b0) & (real_start == 1'b1)));
end

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter0 = ((fifo_has_next_sample_nbreadreq_fu_116_p3 == 1'd1) & (temp_empty_n == 1'b0));
end

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_pp0_stage0_iter2 = ((ap_predicate_op79_write_state4 == 1'b1) & (temp1_full_n == 1'b0));
end

always @ (*) begin
    ap_condition_201 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_condition_212 = ((1'b0 == ap_block_pp0_stage0_11001) & (fifo_has_next_sample_nbreadreq_fu_116_p3 == 1'd1) & (real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_condition_84 = ((1'b0 == ap_block_pp0_stage0_11001) & (real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = real_start;

assign ap_phi_reg_pp0_iter0_arrayidx_0_01_load_0_i365_reg_166 = 'bx;

assign ap_phi_reg_pp0_iter0_arrayidx_0_11_load_0_i364_reg_177 = 'bx;

assign ap_phi_reg_pp0_iter0_temp_tagged_mux_chain_input_sample_M_imag_V_0_reg_212 = 'bx;

assign ap_phi_reg_pp0_iter0_temp_tagged_mux_chain_input_sample_M_real_V_0_reg_201 = 'bx;

assign ap_phi_reg_pp0_iter0_temp_tagged_mux_chain_input_valid_0_reg_188 = 'bx;

always @ (*) begin
    ap_predicate_op79_write_state4 = (((fifo_has_next_sample_reg_534_pp0_iter1_reg == 1'd1) & (1'd1 == and_ln297_reg_594)) | ((delay_line_stall_6_load_reg_543_pp0_iter1_reg == 1'd0) & (1'd1 == and_ln297_reg_594)));
end

assign ap_ready = internal_ap_ready;

assign delay_line_stall_6_load_load_fu_229_p1 = delay_line_stall_6;

assign fifo_has_next_sample_nbreadreq_fu_116_p3 = temp_empty_n;

assign icmp_ln1049_fu_281_p2 = ((pf_count_V_9 == 3'd7) ? 1'b1 : 1'b0);

assign icmp_ln231_fu_345_p2 = ((ap_phi_mux_t17_phi_fu_156_p6 == 7'd79) ? 1'b1 : 1'b0);

assign icmp_ln256_fu_327_p2 = ((sample_in_read_count_V_6 != 6'd63) ? 1'b1 : 1'b0);

assign p_3_fu_463_p4 = {{{select_ln68_14_fu_427_p3}, {select_ln68_13_fu_419_p3}}, {select_ln68_fu_411_p3}};

assign p_s_fu_351_p4 = {{{ap_phi_reg_pp0_iter1_temp_tagged_mux_chain_input_valid_0_reg_188}, {ap_phi_reg_pp0_iter1_arrayidx_0_11_load_0_i364_reg_177}}, {ap_phi_reg_pp0_iter1_arrayidx_0_01_load_0_i365_reg_166}};

assign select_ln68_13_fu_419_p3 = ((control_bits_V_6[0:0] == 1'b1) ? temp_tagged_mux_chain_input_sample_M_imag_V_1_fu_375_p4 : ap_phi_reg_pp0_iter1_temp_tagged_mux_chain_input_sample_M_imag_V_0_reg_212);

assign select_ln68_14_fu_427_p3 = ((control_bits_V_6[0:0] == 1'b1) ? temp_tagged_mux_chain_input_valid_1_fu_385_p3 : ap_phi_reg_pp0_iter1_temp_tagged_mux_chain_input_valid_0_reg_188);

assign select_ln68_fu_411_p3 = ((control_bits_V_6[0:0] == 1'b1) ? temp_tagged_mux_chain_input_sample_M_real_V_1_fu_371_p1 : ap_phi_reg_pp0_iter1_temp_tagged_mux_chain_input_sample_M_real_V_0_reg_201);

assign select_ln79_13_fu_447_p3 = ((trunc_ln79_fu_435_p1[0:0] == 1'b1) ? temp_tagged_mux_chain_input_sample_M_imag_V_1_fu_375_p4 : ap_phi_reg_pp0_iter1_temp_tagged_mux_chain_input_sample_M_imag_V_0_reg_212);

assign select_ln79_14_fu_455_p3 = ((trunc_ln79_fu_435_p1[0:0] == 1'b1) ? temp_tagged_mux_chain_input_valid_1_fu_385_p3 : ap_phi_reg_pp0_iter1_temp_tagged_mux_chain_input_valid_0_reg_188);

assign select_ln79_fu_439_p3 = ((trunc_ln79_fu_435_p1[0:0] == 1'b1) ? temp_tagged_mux_chain_input_sample_M_real_V_1_fu_371_p1 : ap_phi_reg_pp0_iter1_temp_tagged_mux_chain_input_sample_M_real_V_0_reg_201);

assign start_out = real_start;

assign t_fu_223_p2 = (ap_phi_mux_t17_phi_fu_156_p6 + 7'd1);

assign temp1_din = tmp_fu_514_p7;

assign temp_tagged_mux_chain_input_sample_M_imag_V_1_fu_375_p4 = {{delayline_Array_17_q0[39:20]}};

assign temp_tagged_mux_chain_input_sample_M_real_V_1_fu_371_p1 = delayline_Array_17_q0[19:0];

assign temp_tagged_mux_chain_input_valid_1_fu_385_p3 = delayline_Array_17_q0[32'd40];

assign tmp_fu_514_p7 = {{{{{{select_ln79_13_reg_579}, {12'd0}}, {select_ln79_reg_574}}, {zext_ln174_fu_511_p1}}, {12'd0}}, {trunc_ln130_reg_584}};

assign trunc_ln130_fu_483_p1 = delayline_Array_16_q0[19:0];

assign trunc_ln145_fu_233_p1 = temp_dout[19:0];

assign trunc_ln79_fu_435_p1 = control_delayline_Array_6_q0[0:0];

assign valid_flag_fu_497_p3 = delayline_Array_16_q0[32'd40];

assign xor_ln251_fu_305_p2 = (control_count_V_6 ^ 1'd1);

assign zext_ln174_fu_511_p1 = lshr_ln130_s_reg_589;

assign zext_ln66_fu_397_p1 = control_bits_V_6;

endmodule //fft_top1_streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_3
