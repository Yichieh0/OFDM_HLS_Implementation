// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fft_top0_streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        fftOutData_local_dout,
        fftOutData_local_empty_n,
        fftOutData_local_read,
        fftOutData_local2_din,
        fftOutData_local2_full_n,
        fftOutData_local2_write
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_pp0_stage0 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [127:0] fftOutData_local_dout;
input   fftOutData_local_empty_n;
output   fftOutData_local_read;
output  [127:0] fftOutData_local2_din;
input   fftOutData_local2_full_n;
output   fftOutData_local2_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg fftOutData_local_read;
reg fftOutData_local2_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] icmp_ln231_fu_327_p2;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
wire   [0:0] fifo_has_next_sample_nbreadreq_fu_110_p3;
reg    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
reg   [0:0] delay_line_stall_9_load_reg_525;
reg   [0:0] delay_line_stall_9_load_reg_525_pp0_iter1_reg;
reg   [0:0] and_ln297_reg_576;
reg   [0:0] fifo_has_next_sample_reg_516;
reg   [0:0] fifo_has_next_sample_reg_516_pp0_iter1_reg;
reg    ap_predicate_op77_write_state4;
reg    ap_block_state4_pp0_stage0_iter2;
reg    ap_enable_reg_pp0_iter2;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] control_count_V_9;
reg   [0:0] control_bits_V_9;
reg   [0:0] pf_count_V_7;
reg   [4:0] sample_in_read_count_V_9;
reg   [0:0] delay_line_stall_9;
reg    delayline_Array_10_ce0;
reg    delayline_Array_10_we0;
wire   [54:0] delayline_Array_10_q0;
reg    control_delayline_Array_9_ce0;
reg    control_delayline_Array_9_we0;
wire   [31:0] control_delayline_Array_9_q0;
reg    delayline_Array_9_ce0;
reg    delayline_Array_9_we0;
wire   [54:0] delayline_Array_9_q0;
reg    fftOutData_local_blk_n;
wire    ap_block_pp0_stage0;
reg    fftOutData_local2_blk_n;
reg   [5:0] t17_reg_146;
wire   [5:0] t_fu_217_p2;
reg   [5:0] t_reg_520;
wire   [0:0] delay_line_stall_9_load_load_fu_223_p1;
wire   [26:0] trunc_ln145_fu_227_p1;
reg   [0:0] icmp_ln231_reg_552;
reg   [0:0] icmp_ln231_reg_552_pp0_iter1_reg;
wire   [26:0] select_ln79_fu_421_p3;
reg   [26:0] select_ln79_reg_556;
wire   [26:0] select_ln79_3_fu_429_p3;
reg   [26:0] select_ln79_3_reg_561;
wire   [26:0] trunc_ln130_fu_465_p1;
reg   [26:0] trunc_ln130_reg_566;
reg   [26:0] lshr_ln130_s_reg_571;
wire   [0:0] and_ln297_fu_487_p2;
reg    ap_enable_reg_pp0_iter1;
reg    ap_block_state1;
reg    ap_block_pp0_stage0_subdone;
reg   [5:0] ap_phi_mux_t17_phi_fu_150_p6;
wire   [26:0] ap_phi_reg_pp0_iter0_arrayidx_0_01_load_0_i365_reg_160;
reg   [26:0] ap_phi_reg_pp0_iter1_arrayidx_0_01_load_0_i365_reg_160;
wire   [26:0] ap_phi_reg_pp0_iter0_arrayidx_0_11_load_0_i364_reg_171;
reg   [26:0] ap_phi_reg_pp0_iter1_arrayidx_0_11_load_0_i364_reg_171;
wire   [0:0] ap_phi_reg_pp0_iter0_temp_tagged_mux_chain_input_valid_0_reg_182;
reg   [0:0] ap_phi_reg_pp0_iter1_temp_tagged_mux_chain_input_valid_0_reg_182;
wire   [26:0] ap_phi_reg_pp0_iter0_temp_tagged_mux_chain_input_sample_M_real_V_0_reg_195;
reg   [26:0] ap_phi_reg_pp0_iter1_temp_tagged_mux_chain_input_sample_M_real_V_0_reg_195;
wire   [26:0] ap_phi_reg_pp0_iter0_temp_tagged_mux_chain_input_sample_M_imag_V_0_reg_206;
reg   [26:0] ap_phi_reg_pp0_iter1_temp_tagged_mux_chain_input_sample_M_imag_V_0_reg_206;
wire   [0:0] xor_ln251_fu_287_p2;
wire   [0:0] pf_count_V_7_load_load_fu_271_p1;
wire   [4:0] add_ln870_fu_303_p2;
wire   [0:0] icmp_ln256_fu_309_p2;
reg    ap_block_pp0_stage0_01001;
wire   [54:0] p_s_fu_333_p4;
wire   [31:0] zext_ln66_fu_379_p1;
wire   [54:0] p_1_fu_445_p4;
wire   [26:0] temp_tagged_mux_chain_input_sample_M_real_V_1_fu_353_p1;
wire   [26:0] temp_tagged_mux_chain_input_sample_M_imag_V_1_fu_357_p4;
wire   [0:0] temp_tagged_mux_chain_input_valid_1_fu_367_p3;
wire   [0:0] trunc_ln79_fu_417_p1;
wire   [0:0] select_ln68_4_fu_409_p3;
wire   [26:0] select_ln68_3_fu_401_p3;
wire   [26:0] select_ln68_fu_393_p3;
wire   [0:0] select_ln79_4_fu_437_p3;
wire   [0:0] valid_flag_fu_479_p3;
wire   [31:0] zext_ln174_fu_493_p1;
wire   [122:0] tmp_fu_496_p7;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_idle_pp0_0to1;
reg    ap_reset_idle_pp0;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_186;
reg    ap_condition_77;
reg    ap_condition_197;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 control_count_V_9 = 1'd0;
#0 control_bits_V_9 = 1'd0;
#0 pf_count_V_7 = 1'd0;
#0 sample_in_read_count_V_9 = 5'd0;
#0 delay_line_stall_9 = 1'd0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

fft_top0_streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_s_delayline_Array_10 #(
    .DataWidth( 55 ),
    .AddressRange( 2 ),
    .AddressWidth( 1 ))
delayline_Array_10_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(1'd1),
    .ce0(delayline_Array_10_ce0),
    .we0(delayline_Array_10_we0),
    .d0(p_s_fu_333_p4),
    .q0(delayline_Array_10_q0)
);

fft_top0_streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_control_delayline_Array_6 #(
    .DataWidth( 32 ),
    .AddressRange( 2 ),
    .AddressWidth( 1 ))
control_delayline_Array_9_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(1'd1),
    .ce0(control_delayline_Array_9_ce0),
    .we0(control_delayline_Array_9_we0),
    .d0(zext_ln66_fu_379_p1),
    .q0(control_delayline_Array_9_q0)
);

fft_top0_streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_s_delayline_Array_10 #(
    .DataWidth( 55 ),
    .AddressRange( 2 ),
    .AddressWidth( 1 ))
delayline_Array_9_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(1'd1),
    .ce0(delayline_Array_9_ce0),
    .we0(delayline_Array_9_we0),
    .d0(p_1_fu_445_p4),
    .q0(delayline_Array_9_q0)
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
        end else if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln231_reg_552_pp0_iter1_reg == 1'd1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
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
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_77)) begin
        if (((fifo_has_next_sample_nbreadreq_fu_110_p3 == 1'd0) & (delay_line_stall_9_load_load_fu_223_p1 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_arrayidx_0_01_load_0_i365_reg_160 <= 27'd0;
        end else if ((fifo_has_next_sample_nbreadreq_fu_110_p3 == 1'd1)) begin
            ap_phi_reg_pp0_iter1_arrayidx_0_01_load_0_i365_reg_160 <= {{fftOutData_local_dout[90:64]}};
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_arrayidx_0_01_load_0_i365_reg_160 <= ap_phi_reg_pp0_iter0_arrayidx_0_01_load_0_i365_reg_160;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_77)) begin
        if (((fifo_has_next_sample_nbreadreq_fu_110_p3 == 1'd0) & (delay_line_stall_9_load_load_fu_223_p1 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_arrayidx_0_11_load_0_i364_reg_171 <= 27'd0;
        end else if ((fifo_has_next_sample_nbreadreq_fu_110_p3 == 1'd1)) begin
            ap_phi_reg_pp0_iter1_arrayidx_0_11_load_0_i364_reg_171 <= {{fftOutData_local_dout[122:96]}};
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_arrayidx_0_11_load_0_i364_reg_171 <= ap_phi_reg_pp0_iter0_arrayidx_0_11_load_0_i364_reg_171;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_77)) begin
        if (((fifo_has_next_sample_nbreadreq_fu_110_p3 == 1'd0) & (delay_line_stall_9_load_load_fu_223_p1 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_temp_tagged_mux_chain_input_sample_M_imag_V_0_reg_206 <= 27'd0;
        end else if ((fifo_has_next_sample_nbreadreq_fu_110_p3 == 1'd1)) begin
            ap_phi_reg_pp0_iter1_temp_tagged_mux_chain_input_sample_M_imag_V_0_reg_206 <= {{fftOutData_local_dout[58:32]}};
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_temp_tagged_mux_chain_input_sample_M_imag_V_0_reg_206 <= ap_phi_reg_pp0_iter0_temp_tagged_mux_chain_input_sample_M_imag_V_0_reg_206;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_77)) begin
        if (((fifo_has_next_sample_nbreadreq_fu_110_p3 == 1'd0) & (delay_line_stall_9_load_load_fu_223_p1 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_temp_tagged_mux_chain_input_sample_M_real_V_0_reg_195 <= 27'd0;
        end else if ((fifo_has_next_sample_nbreadreq_fu_110_p3 == 1'd1)) begin
            ap_phi_reg_pp0_iter1_temp_tagged_mux_chain_input_sample_M_real_V_0_reg_195 <= trunc_ln145_fu_227_p1;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_temp_tagged_mux_chain_input_sample_M_real_V_0_reg_195 <= ap_phi_reg_pp0_iter0_temp_tagged_mux_chain_input_sample_M_real_V_0_reg_195;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_77)) begin
        if (((fifo_has_next_sample_nbreadreq_fu_110_p3 == 1'd0) & (delay_line_stall_9_load_load_fu_223_p1 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_temp_tagged_mux_chain_input_valid_0_reg_182 <= 1'd0;
        end else if ((fifo_has_next_sample_nbreadreq_fu_110_p3 == 1'd1)) begin
            ap_phi_reg_pp0_iter1_temp_tagged_mux_chain_input_valid_0_reg_182 <= 1'd1;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_temp_tagged_mux_chain_input_valid_0_reg_182 <= ap_phi_reg_pp0_iter0_temp_tagged_mux_chain_input_valid_0_reg_182;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_197)) begin
        if ((pf_count_V_7_load_load_fu_271_p1 == 1'd1)) begin
            pf_count_V_7 <= 1'd0;
        end else if ((pf_count_V_7_load_load_fu_271_p1 == 1'd0)) begin
            pf_count_V_7 <= 1'd1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln231_reg_552 == 1'd0))) begin
        t17_reg_146 <= t_reg_520;
    end else if ((((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln231_reg_552 == 1'd1)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1)))) begin
        t17_reg_146 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((fifo_has_next_sample_reg_516 == 1'd1) | (delay_line_stall_9_load_reg_525 == 1'd0)))) begin
        and_ln297_reg_576 <= and_ln297_fu_487_p2;
        lshr_ln130_s_reg_571 <= {{delayline_Array_9_q0[53:27]}};
        select_ln79_3_reg_561 <= select_ln79_3_fu_429_p3;
        select_ln79_reg_556 <= select_ln79_fu_421_p3;
        trunc_ln130_reg_566 <= trunc_ln130_fu_465_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (fifo_has_next_sample_nbreadreq_fu_110_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        control_bits_V_9 <= control_count_V_9;
        delay_line_stall_9 <= icmp_ln256_fu_309_p2;
        sample_in_read_count_V_9 <= add_ln870_fu_303_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (fifo_has_next_sample_nbreadreq_fu_110_p3 == 1'd1) & (ap_start == 1'b1) & (pf_count_V_7_load_load_fu_271_p1 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        control_count_V_9 <= xor_ln251_fu_287_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (fifo_has_next_sample_nbreadreq_fu_110_p3 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delay_line_stall_9_load_reg_525 <= delay_line_stall_9;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delay_line_stall_9_load_reg_525_pp0_iter1_reg <= delay_line_stall_9_load_reg_525;
        fifo_has_next_sample_reg_516 <= fifo_has_next_sample_nbreadreq_fu_110_p3;
        fifo_has_next_sample_reg_516_pp0_iter1_reg <= fifo_has_next_sample_reg_516;
        icmp_ln231_reg_552 <= icmp_ln231_fu_327_p2;
        icmp_ln231_reg_552_pp0_iter1_reg <= icmp_ln231_reg_552;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        t_reg_520 <= t_fu_217_p2;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) | (ap_done_reg == 1'b1))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln231_reg_552_pp0_iter1_reg == 1'd1))) begin
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
    if ((1'b1 == ap_condition_186)) begin
        if ((icmp_ln231_reg_552 == 1'd1)) begin
            ap_phi_mux_t17_phi_fu_150_p6 = 6'd0;
        end else if ((icmp_ln231_reg_552 == 1'd0)) begin
            ap_phi_mux_t17_phi_fu_150_p6 = t_reg_520;
        end else begin
            ap_phi_mux_t17_phi_fu_150_p6 = t17_reg_146;
        end
    end else begin
        ap_phi_mux_t17_phi_fu_150_p6 = t17_reg_146;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (icmp_ln231_fu_327_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to1 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & ((fifo_has_next_sample_reg_516 == 1'd1) | (delay_line_stall_9_load_reg_525 == 1'd0)))) begin
        control_delayline_Array_9_ce0 = 1'd1;
    end else begin
        control_delayline_Array_9_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & ((fifo_has_next_sample_reg_516 == 1'd1) | (delay_line_stall_9_load_reg_525 == 1'd0)))) begin
        control_delayline_Array_9_we0 = 1'd1;
    end else begin
        control_delayline_Array_9_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & ((fifo_has_next_sample_reg_516 == 1'd1) | (delay_line_stall_9_load_reg_525 == 1'd0)))) begin
        delayline_Array_10_ce0 = 1'd1;
    end else begin
        delayline_Array_10_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & ((fifo_has_next_sample_reg_516 == 1'd1) | (delay_line_stall_9_load_reg_525 == 1'd0)))) begin
        delayline_Array_10_we0 = 1'd1;
    end else begin
        delayline_Array_10_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & ((fifo_has_next_sample_reg_516 == 1'd1) | (delay_line_stall_9_load_reg_525 == 1'd0)))) begin
        delayline_Array_9_ce0 = 1'd1;
    end else begin
        delayline_Array_9_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & ((fifo_has_next_sample_reg_516 == 1'd1) | (delay_line_stall_9_load_reg_525 == 1'd0)))) begin
        delayline_Array_9_we0 = 1'd1;
    end else begin
        delayline_Array_9_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_op77_write_state4 == 1'b1))) begin
        fftOutData_local2_blk_n = fftOutData_local2_full_n;
    end else begin
        fftOutData_local2_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_op77_write_state4 == 1'b1))) begin
        fftOutData_local2_write = 1'b1;
    end else begin
        fftOutData_local2_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (fifo_has_next_sample_nbreadreq_fu_110_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fftOutData_local_blk_n = fftOutData_local_empty_n;
    end else begin
        fftOutData_local_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (fifo_has_next_sample_nbreadreq_fu_110_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fftOutData_local_read = 1'b1;
    end else begin
        fftOutData_local_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
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

assign add_ln870_fu_303_p2 = (sample_in_read_count_V_9 + 5'd1);

assign and_ln297_fu_487_p2 = (valid_flag_fu_479_p3 & select_ln79_4_fu_437_p3);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_op77_write_state4 == 1'b1) & (fftOutData_local2_full_n == 1'b0)) | ((fifo_has_next_sample_nbreadreq_fu_110_p3 == 1'd1) & (fftOutData_local_empty_n == 1'b0) & (ap_start == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_op77_write_state4 == 1'b1) & (fftOutData_local2_full_n == 1'b0)) | ((fifo_has_next_sample_nbreadreq_fu_110_p3 == 1'd1) & (fftOutData_local_empty_n == 1'b0) & (ap_start == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_op77_write_state4 == 1'b1) & (fftOutData_local2_full_n == 1'b0)) | ((fifo_has_next_sample_nbreadreq_fu_110_p3 == 1'd1) & (fftOutData_local_empty_n == 1'b0) & (ap_start == 1'b1)));
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter0 = ((fifo_has_next_sample_nbreadreq_fu_110_p3 == 1'd1) & (fftOutData_local_empty_n == 1'b0));
end

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_pp0_stage0_iter2 = ((ap_predicate_op77_write_state4 == 1'b1) & (fftOutData_local2_full_n == 1'b0));
end

always @ (*) begin
    ap_condition_186 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_condition_197 = ((1'b0 == ap_block_pp0_stage0_11001) & (fifo_has_next_sample_nbreadreq_fu_110_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_condition_77 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_phi_reg_pp0_iter0_arrayidx_0_01_load_0_i365_reg_160 = 'bx;

assign ap_phi_reg_pp0_iter0_arrayidx_0_11_load_0_i364_reg_171 = 'bx;

assign ap_phi_reg_pp0_iter0_temp_tagged_mux_chain_input_sample_M_imag_V_0_reg_206 = 'bx;

assign ap_phi_reg_pp0_iter0_temp_tagged_mux_chain_input_sample_M_real_V_0_reg_195 = 'bx;

assign ap_phi_reg_pp0_iter0_temp_tagged_mux_chain_input_valid_0_reg_182 = 'bx;

always @ (*) begin
    ap_predicate_op77_write_state4 = (((fifo_has_next_sample_reg_516_pp0_iter1_reg == 1'd1) & (1'd1 == and_ln297_reg_576)) | ((delay_line_stall_9_load_reg_525_pp0_iter1_reg == 1'd0) & (1'd1 == and_ln297_reg_576)));
end

assign delay_line_stall_9_load_load_fu_223_p1 = delay_line_stall_9;

assign fftOutData_local2_din = tmp_fu_496_p7;

assign fifo_has_next_sample_nbreadreq_fu_110_p3 = fftOutData_local_empty_n;

assign icmp_ln231_fu_327_p2 = ((ap_phi_mux_t17_phi_fu_150_p6 == 6'd35) ? 1'b1 : 1'b0);

assign icmp_ln256_fu_309_p2 = ((sample_in_read_count_V_9 != 5'd31) ? 1'b1 : 1'b0);

assign p_1_fu_445_p4 = {{{select_ln68_4_fu_409_p3}, {select_ln68_3_fu_401_p3}}, {select_ln68_fu_393_p3}};

assign p_s_fu_333_p4 = {{{ap_phi_reg_pp0_iter1_temp_tagged_mux_chain_input_valid_0_reg_182}, {ap_phi_reg_pp0_iter1_arrayidx_0_11_load_0_i364_reg_171}}, {ap_phi_reg_pp0_iter1_arrayidx_0_01_load_0_i365_reg_160}};

assign pf_count_V_7_load_load_fu_271_p1 = pf_count_V_7;

assign select_ln68_3_fu_401_p3 = ((control_bits_V_9[0:0] == 1'b1) ? temp_tagged_mux_chain_input_sample_M_imag_V_1_fu_357_p4 : ap_phi_reg_pp0_iter1_temp_tagged_mux_chain_input_sample_M_imag_V_0_reg_206);

assign select_ln68_4_fu_409_p3 = ((control_bits_V_9[0:0] == 1'b1) ? temp_tagged_mux_chain_input_valid_1_fu_367_p3 : ap_phi_reg_pp0_iter1_temp_tagged_mux_chain_input_valid_0_reg_182);

assign select_ln68_fu_393_p3 = ((control_bits_V_9[0:0] == 1'b1) ? temp_tagged_mux_chain_input_sample_M_real_V_1_fu_353_p1 : ap_phi_reg_pp0_iter1_temp_tagged_mux_chain_input_sample_M_real_V_0_reg_195);

assign select_ln79_3_fu_429_p3 = ((trunc_ln79_fu_417_p1[0:0] == 1'b1) ? temp_tagged_mux_chain_input_sample_M_imag_V_1_fu_357_p4 : ap_phi_reg_pp0_iter1_temp_tagged_mux_chain_input_sample_M_imag_V_0_reg_206);

assign select_ln79_4_fu_437_p3 = ((trunc_ln79_fu_417_p1[0:0] == 1'b1) ? temp_tagged_mux_chain_input_valid_1_fu_367_p3 : ap_phi_reg_pp0_iter1_temp_tagged_mux_chain_input_valid_0_reg_182);

assign select_ln79_fu_421_p3 = ((trunc_ln79_fu_417_p1[0:0] == 1'b1) ? temp_tagged_mux_chain_input_sample_M_real_V_1_fu_353_p1 : ap_phi_reg_pp0_iter1_temp_tagged_mux_chain_input_sample_M_real_V_0_reg_195);

assign t_fu_217_p2 = (ap_phi_mux_t17_phi_fu_150_p6 + 6'd1);

assign temp_tagged_mux_chain_input_sample_M_imag_V_1_fu_357_p4 = {{delayline_Array_10_q0[53:27]}};

assign temp_tagged_mux_chain_input_sample_M_real_V_1_fu_353_p1 = delayline_Array_10_q0[26:0];

assign temp_tagged_mux_chain_input_valid_1_fu_367_p3 = delayline_Array_10_q0[32'd54];

assign tmp_fu_496_p7 = {{{{{{select_ln79_3_reg_561}, {5'd0}}, {select_ln79_reg_556}}, {zext_ln174_fu_493_p1}}, {5'd0}}, {trunc_ln130_reg_566}};

assign trunc_ln130_fu_465_p1 = delayline_Array_9_q0[26:0];

assign trunc_ln145_fu_227_p1 = fftOutData_local_dout[26:0];

assign trunc_ln79_fu_417_p1 = control_delayline_Array_9_q0[0:0];

assign valid_flag_fu_479_p3 = delayline_Array_9_q0[32'd54];

assign xor_ln251_fu_287_p2 = (control_count_V_9 ^ 1'd1);

assign zext_ln174_fu_493_p1 = lshr_ln130_s_reg_571;

assign zext_ln66_fu_379_p1 = control_bits_V_9;

endmodule //fft_top0_streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_s
