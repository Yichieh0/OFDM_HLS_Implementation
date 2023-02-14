// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fft_top0_swap_complex_ap_fixed_20_5_5_3_0_4 (
        temp_dout,
        temp_empty_n,
        temp_read,
        p_fftInData_reOrdered_din,
        p_fftInData_reOrdered_full_n,
        p_fftInData_reOrdered_write,
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_ready,
        ap_idle,
        ap_continue
);


input  [127:0] temp_dout;
input   temp_empty_n;
output   temp_read;
output  [127:0] p_fftInData_reOrdered_din;
input   p_fftInData_reOrdered_full_n;
output   p_fftInData_reOrdered_write;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;

wire    streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_4_U0_ap_start;
wire    streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_4_U0_ap_done;
wire    streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_4_U0_ap_continue;
wire    streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_4_U0_ap_idle;
wire    streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_4_U0_ap_ready;
wire    streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_4_U0_temp_read;
wire   [127:0] streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_4_U0_temp1_din;
wire    streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_4_U0_temp1_write;
wire    streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_4_U0_start_out;
wire    streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_4_U0_start_write;
wire    streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_5_U0_ap_start;
wire    streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_5_U0_ap_done;
wire    streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_5_U0_ap_continue;
wire    streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_5_U0_ap_idle;
wire    streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_5_U0_ap_ready;
wire    streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_5_U0_temp_read;
wire   [127:0] streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_5_U0_p_fftInData_reOrdered_din;
wire    streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_5_U0_p_fftInData_reOrdered_write;
wire    temp_1_full_n;
wire   [127:0] temp_1_dout;
wire    temp_1_empty_n;
wire   [0:0] start_for_streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_5_U0_din;
wire    start_for_streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_5_U0_full_n;
wire   [0:0] start_for_streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_5_U0_dout;
wire    start_for_streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_5_U0_empty_n;

fft_top0_streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_4 streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_4_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_4_U0_ap_start),
    .start_full_n(start_for_streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_5_U0_full_n),
    .ap_done(streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_4_U0_ap_done),
    .ap_continue(streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_4_U0_ap_continue),
    .ap_idle(streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_4_U0_ap_idle),
    .ap_ready(streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_4_U0_ap_ready),
    .temp_dout(temp_dout),
    .temp_empty_n(temp_empty_n),
    .temp_read(streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_4_U0_temp_read),
    .temp1_din(streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_4_U0_temp1_din),
    .temp1_full_n(temp_1_full_n),
    .temp1_write(streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_4_U0_temp1_write),
    .start_out(streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_4_U0_start_out),
    .start_write(streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_4_U0_start_write)
);

fft_top0_streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_5 streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_5_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_5_U0_ap_start),
    .ap_done(streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_5_U0_ap_done),
    .ap_continue(streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_5_U0_ap_continue),
    .ap_idle(streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_5_U0_ap_idle),
    .ap_ready(streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_5_U0_ap_ready),
    .temp_dout(temp_1_dout),
    .temp_empty_n(temp_1_empty_n),
    .temp_read(streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_5_U0_temp_read),
    .p_fftInData_reOrdered_din(streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_5_U0_p_fftInData_reOrdered_din),
    .p_fftInData_reOrdered_full_n(p_fftInData_reOrdered_full_n),
    .p_fftInData_reOrdered_write(streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_5_U0_p_fftInData_reOrdered_write)
);

fft_top0_fifo_w128_d8_D temp_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_4_U0_temp1_din),
    .if_full_n(temp_1_full_n),
    .if_write(streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_4_U0_temp1_write),
    .if_dout(temp_1_dout),
    .if_empty_n(temp_1_empty_n),
    .if_read(streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_5_U0_temp_read)
);

fft_top0_start_for_streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_5_U0 start_for_streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_5_U0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_5_U0_din),
    .if_full_n(start_for_streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_5_U0_full_n),
    .if_write(streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_4_U0_start_write),
    .if_dout(start_for_streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_5_U0_dout),
    .if_empty_n(start_for_streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_5_U0_empty_n),
    .if_read(streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_5_U0_ap_ready)
);

assign ap_done = streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_5_U0_ap_done;

assign ap_idle = (streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_5_U0_ap_idle & streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_4_U0_ap_idle);

assign ap_ready = streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_4_U0_ap_ready;

assign p_fftInData_reOrdered_din = streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_5_U0_p_fftInData_reOrdered_din;

assign p_fftInData_reOrdered_write = streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_5_U0_p_fftInData_reOrdered_write;

assign start_for_streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_5_U0_din = 1'b1;

assign streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_4_U0_ap_continue = 1'b1;

assign streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_4_U0_ap_start = ap_start;

assign streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_5_U0_ap_continue = ap_continue;

assign streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_5_U0_ap_start = start_for_streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_5_U0_empty_n;

assign temp_read = streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_4_U0_temp_read;

endmodule //fft_top0_swap_complex_ap_fixed_20_5_5_3_0_4
