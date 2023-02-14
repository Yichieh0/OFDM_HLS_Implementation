// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fft_top0_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s (
        p_fftInData_0_0_0_0_0_dout,
        p_fftInData_0_0_0_0_0_empty_n,
        p_fftInData_0_0_0_0_0_read,
        p_fftInData_0_0_0_0_01_dout,
        p_fftInData_0_0_0_0_01_empty_n,
        p_fftInData_0_0_0_0_01_read,
        p_fftInData_0_1_0_0_0_dout,
        p_fftInData_0_1_0_0_0_empty_n,
        p_fftInData_0_1_0_0_0_read,
        p_fftInData_0_1_0_0_02_dout,
        p_fftInData_0_1_0_0_02_empty_n,
        p_fftInData_0_1_0_0_02_read,
        p_fftOutData_0_0_0_0_0_din,
        p_fftOutData_0_0_0_0_0_full_n,
        p_fftOutData_0_0_0_0_0_write,
        p_fftOutData_0_0_0_0_03_din,
        p_fftOutData_0_0_0_0_03_full_n,
        p_fftOutData_0_0_0_0_03_write,
        p_fftOutData_0_1_0_0_0_din,
        p_fftOutData_0_1_0_0_0_full_n,
        p_fftOutData_0_1_0_0_0_write,
        p_fftOutData_0_1_0_0_04_din,
        p_fftOutData_0_1_0_0_04_full_n,
        p_fftOutData_0_1_0_0_04_write,
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_ready,
        ap_idle,
        ap_continue
);


input  [21:0] p_fftInData_0_0_0_0_0_dout;
input   p_fftInData_0_0_0_0_0_empty_n;
output   p_fftInData_0_0_0_0_0_read;
input  [21:0] p_fftInData_0_0_0_0_01_dout;
input   p_fftInData_0_0_0_0_01_empty_n;
output   p_fftInData_0_0_0_0_01_read;
input  [21:0] p_fftInData_0_1_0_0_0_dout;
input   p_fftInData_0_1_0_0_0_empty_n;
output   p_fftInData_0_1_0_0_0_read;
input  [21:0] p_fftInData_0_1_0_0_02_dout;
input   p_fftInData_0_1_0_0_02_empty_n;
output   p_fftInData_0_1_0_0_02_read;
output  [26:0] p_fftOutData_0_0_0_0_0_din;
input   p_fftOutData_0_0_0_0_0_full_n;
output   p_fftOutData_0_0_0_0_0_write;
output  [26:0] p_fftOutData_0_0_0_0_03_din;
input   p_fftOutData_0_0_0_0_03_full_n;
output   p_fftOutData_0_0_0_0_03_write;
output  [26:0] p_fftOutData_0_1_0_0_0_din;
input   p_fftOutData_0_1_0_0_0_full_n;
output   p_fftOutData_0_1_0_0_0_write;
output  [26:0] p_fftOutData_0_1_0_0_04_din;
input   p_fftOutData_0_1_0_0_04_full_n;
output   p_fftOutData_0_1_0_0_04_write;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;

wire    castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0_ap_start;
wire    castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0_ap_done;
wire    castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0_ap_continue;
wire    castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0_ap_idle;
wire    castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0_ap_ready;
wire    castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0_p_inData_0_0_0_0_0_read;
wire    castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0_p_inData_0_0_0_0_01_read;
wire    castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0_p_inData_0_1_0_0_0_read;
wire    castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0_p_inData_0_1_0_0_02_read;
wire   [127:0] castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0_casted_output_din;
wire    castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0_casted_output_write;
wire    swap_complex_ap_fixed_22_7_5_3_0_U0_casted_output_read;
wire   [127:0] swap_complex_ap_fixed_22_7_5_3_0_U0_p_fftInData_reOrdered_din;
wire    swap_complex_ap_fixed_22_7_5_3_0_U0_p_fftInData_reOrdered_write;
wire    swap_complex_ap_fixed_22_7_5_3_0_U0_ap_start;
wire    swap_complex_ap_fixed_22_7_5_3_0_U0_ap_done;
wire    swap_complex_ap_fixed_22_7_5_3_0_U0_ap_ready;
wire    swap_complex_ap_fixed_22_7_5_3_0_U0_ap_idle;
wire    swap_complex_ap_fixed_22_7_5_3_0_U0_ap_continue;
reg    ap_sync_reg_swap_complex_ap_fixed_22_7_5_3_0_U0_ap_start;
wire    fftStage_U0_p_fftInData_reOrdered_read;
wire   [26:0] fftStage_U0_p_fftOutData_0_0_0_0_0_din;
wire    fftStage_U0_p_fftOutData_0_0_0_0_0_write;
wire   [26:0] fftStage_U0_p_fftOutData_0_0_0_0_01_din;
wire    fftStage_U0_p_fftOutData_0_0_0_0_01_write;
wire   [26:0] fftStage_U0_p_fftOutData_0_1_0_0_0_din;
wire    fftStage_U0_p_fftOutData_0_1_0_0_0_write;
wire   [26:0] fftStage_U0_p_fftOutData_0_1_0_0_02_din;
wire    fftStage_U0_p_fftOutData_0_1_0_0_02_write;
wire    fftStage_U0_ap_start;
wire    fftStage_U0_ap_done;
wire    fftStage_U0_ap_ready;
wire    fftStage_U0_ap_idle;
wire    fftStage_U0_ap_continue;
reg    ap_sync_reg_fftStage_U0_ap_start;
wire    casted_output_full_n;
wire   [127:0] casted_output_dout;
wire    casted_output_empty_n;
wire    p_fftInData_reOrdered_full_n;
wire   [127:0] p_fftInData_reOrdered_dout;
wire    p_fftInData_reOrdered_empty_n;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_sync_reg_swap_complex_ap_fixed_22_7_5_3_0_U0_ap_start = 1'b0;
#0 ap_sync_reg_fftStage_U0_ap_start = 1'b0;
end

fft_top0_castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_s castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0_ap_start),
    .ap_done(castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0_ap_done),
    .ap_continue(castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0_ap_continue),
    .ap_idle(castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0_ap_idle),
    .ap_ready(castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0_ap_ready),
    .p_inData_0_0_0_0_0_dout(p_fftInData_0_0_0_0_0_dout),
    .p_inData_0_0_0_0_0_empty_n(p_fftInData_0_0_0_0_0_empty_n),
    .p_inData_0_0_0_0_0_read(castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0_p_inData_0_0_0_0_0_read),
    .p_inData_0_0_0_0_01_dout(p_fftInData_0_0_0_0_01_dout),
    .p_inData_0_0_0_0_01_empty_n(p_fftInData_0_0_0_0_01_empty_n),
    .p_inData_0_0_0_0_01_read(castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0_p_inData_0_0_0_0_01_read),
    .p_inData_0_1_0_0_0_dout(p_fftInData_0_1_0_0_0_dout),
    .p_inData_0_1_0_0_0_empty_n(p_fftInData_0_1_0_0_0_empty_n),
    .p_inData_0_1_0_0_0_read(castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0_p_inData_0_1_0_0_0_read),
    .p_inData_0_1_0_0_02_dout(p_fftInData_0_1_0_0_02_dout),
    .p_inData_0_1_0_0_02_empty_n(p_fftInData_0_1_0_0_02_empty_n),
    .p_inData_0_1_0_0_02_read(castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0_p_inData_0_1_0_0_02_read),
    .casted_output_din(castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0_casted_output_din),
    .casted_output_full_n(casted_output_full_n),
    .casted_output_write(castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0_casted_output_write)
);

fft_top0_swap_complex_ap_fixed_22_7_5_3_0_s swap_complex_ap_fixed_22_7_5_3_0_U0(
    .casted_output_dout(casted_output_dout),
    .casted_output_empty_n(casted_output_empty_n),
    .casted_output_read(swap_complex_ap_fixed_22_7_5_3_0_U0_casted_output_read),
    .p_fftInData_reOrdered_din(swap_complex_ap_fixed_22_7_5_3_0_U0_p_fftInData_reOrdered_din),
    .p_fftInData_reOrdered_full_n(p_fftInData_reOrdered_full_n),
    .p_fftInData_reOrdered_write(swap_complex_ap_fixed_22_7_5_3_0_U0_p_fftInData_reOrdered_write),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(swap_complex_ap_fixed_22_7_5_3_0_U0_ap_start),
    .ap_done(swap_complex_ap_fixed_22_7_5_3_0_U0_ap_done),
    .ap_ready(swap_complex_ap_fixed_22_7_5_3_0_U0_ap_ready),
    .ap_idle(swap_complex_ap_fixed_22_7_5_3_0_U0_ap_idle),
    .ap_continue(swap_complex_ap_fixed_22_7_5_3_0_U0_ap_continue)
);

fft_top0_fftStage fftStage_U0(
    .p_fftInData_reOrdered_dout(p_fftInData_reOrdered_dout),
    .p_fftInData_reOrdered_empty_n(p_fftInData_reOrdered_empty_n),
    .p_fftInData_reOrdered_read(fftStage_U0_p_fftInData_reOrdered_read),
    .p_fftOutData_0_0_0_0_0_din(fftStage_U0_p_fftOutData_0_0_0_0_0_din),
    .p_fftOutData_0_0_0_0_0_full_n(p_fftOutData_0_0_0_0_0_full_n),
    .p_fftOutData_0_0_0_0_0_write(fftStage_U0_p_fftOutData_0_0_0_0_0_write),
    .p_fftOutData_0_0_0_0_01_din(fftStage_U0_p_fftOutData_0_0_0_0_01_din),
    .p_fftOutData_0_0_0_0_01_full_n(p_fftOutData_0_0_0_0_03_full_n),
    .p_fftOutData_0_0_0_0_01_write(fftStage_U0_p_fftOutData_0_0_0_0_01_write),
    .p_fftOutData_0_1_0_0_0_din(fftStage_U0_p_fftOutData_0_1_0_0_0_din),
    .p_fftOutData_0_1_0_0_0_full_n(p_fftOutData_0_1_0_0_0_full_n),
    .p_fftOutData_0_1_0_0_0_write(fftStage_U0_p_fftOutData_0_1_0_0_0_write),
    .p_fftOutData_0_1_0_0_02_din(fftStage_U0_p_fftOutData_0_1_0_0_02_din),
    .p_fftOutData_0_1_0_0_02_full_n(p_fftOutData_0_1_0_0_04_full_n),
    .p_fftOutData_0_1_0_0_02_write(fftStage_U0_p_fftOutData_0_1_0_0_02_write),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(fftStage_U0_ap_start),
    .ap_done(fftStage_U0_ap_done),
    .ap_ready(fftStage_U0_ap_ready),
    .ap_idle(fftStage_U0_ap_idle),
    .ap_continue(fftStage_U0_ap_continue)
);

fft_top0_fifo_w128_d8_D_x8 casted_output_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0_casted_output_din),
    .if_full_n(casted_output_full_n),
    .if_write(castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0_casted_output_write),
    .if_dout(casted_output_dout),
    .if_empty_n(casted_output_empty_n),
    .if_read(swap_complex_ap_fixed_22_7_5_3_0_U0_casted_output_read)
);

fft_top0_fifo_w128_d8_D_x8 p_fftInData_reOrdered_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(swap_complex_ap_fixed_22_7_5_3_0_U0_p_fftInData_reOrdered_din),
    .if_full_n(p_fftInData_reOrdered_full_n),
    .if_write(swap_complex_ap_fixed_22_7_5_3_0_U0_p_fftInData_reOrdered_write),
    .if_dout(p_fftInData_reOrdered_dout),
    .if_empty_n(p_fftInData_reOrdered_empty_n),
    .if_read(fftStage_U0_p_fftInData_reOrdered_read)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_fftStage_U0_ap_start <= 1'b0;
    end else begin
        if ((ap_start == 1'b1)) begin
            ap_sync_reg_fftStage_U0_ap_start <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_swap_complex_ap_fixed_22_7_5_3_0_U0_ap_start <= 1'b0;
    end else begin
        if ((ap_start == 1'b1)) begin
            ap_sync_reg_swap_complex_ap_fixed_22_7_5_3_0_U0_ap_start <= 1'b1;
        end
    end
end

assign ap_done = fftStage_U0_ap_done;

assign ap_idle = (swap_complex_ap_fixed_22_7_5_3_0_U0_ap_idle & fftStage_U0_ap_idle & castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0_ap_idle);

assign ap_ready = castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0_ap_ready;

assign castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0_ap_continue = 1'b1;

assign castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0_ap_start = ap_start;

assign fftStage_U0_ap_continue = ap_continue;

assign fftStage_U0_ap_start = (ap_sync_reg_fftStage_U0_ap_start | ap_start);

assign p_fftInData_0_0_0_0_01_read = castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0_p_inData_0_0_0_0_01_read;

assign p_fftInData_0_0_0_0_0_read = castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0_p_inData_0_0_0_0_0_read;

assign p_fftInData_0_1_0_0_02_read = castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0_p_inData_0_1_0_0_02_read;

assign p_fftInData_0_1_0_0_0_read = castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0_p_inData_0_1_0_0_0_read;

assign p_fftOutData_0_0_0_0_03_din = fftStage_U0_p_fftOutData_0_0_0_0_01_din;

assign p_fftOutData_0_0_0_0_03_write = fftStage_U0_p_fftOutData_0_0_0_0_01_write;

assign p_fftOutData_0_0_0_0_0_din = fftStage_U0_p_fftOutData_0_0_0_0_0_din;

assign p_fftOutData_0_0_0_0_0_write = fftStage_U0_p_fftOutData_0_0_0_0_0_write;

assign p_fftOutData_0_1_0_0_04_din = fftStage_U0_p_fftOutData_0_1_0_0_02_din;

assign p_fftOutData_0_1_0_0_04_write = fftStage_U0_p_fftOutData_0_1_0_0_02_write;

assign p_fftOutData_0_1_0_0_0_din = fftStage_U0_p_fftOutData_0_1_0_0_0_din;

assign p_fftOutData_0_1_0_0_0_write = fftStage_U0_p_fftOutData_0_1_0_0_0_write;

assign swap_complex_ap_fixed_22_7_5_3_0_U0_ap_continue = 1'b1;

assign swap_complex_ap_fixed_22_7_5_3_0_U0_ap_start = (ap_sync_reg_swap_complex_ap_fixed_22_7_5_3_0_U0_ap_start | ap_start);

endmodule //fft_top0_innerFFT_64_2_0_1_1_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_8_5_3_0_s
