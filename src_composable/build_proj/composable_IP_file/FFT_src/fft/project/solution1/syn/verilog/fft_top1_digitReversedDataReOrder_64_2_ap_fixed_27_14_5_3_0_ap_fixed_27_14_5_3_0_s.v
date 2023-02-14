// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fft_top1_digitReversedDataReOrder_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        p_inData_0_0_0_0_0_dout,
        p_inData_0_0_0_0_0_empty_n,
        p_inData_0_0_0_0_0_read,
        p_inData_0_0_0_0_01_dout,
        p_inData_0_0_0_0_01_empty_n,
        p_inData_0_0_0_0_01_read,
        p_inData_0_1_0_0_0_dout,
        p_inData_0_1_0_0_0_empty_n,
        p_inData_0_1_0_0_0_read,
        p_inData_0_1_0_0_02_dout,
        p_inData_0_1_0_0_02_empty_n,
        p_inData_0_1_0_0_02_read,
        p_outData_0_0_0_0_0_din,
        p_outData_0_0_0_0_0_full_n,
        p_outData_0_0_0_0_0_write,
        p_outData_0_0_0_0_03_din,
        p_outData_0_0_0_0_03_full_n,
        p_outData_0_0_0_0_03_write,
        p_outData_0_1_0_0_0_din,
        p_outData_0_1_0_0_0_full_n,
        p_outData_0_1_0_0_0_write,
        p_outData_0_1_0_0_04_din,
        p_outData_0_1_0_0_04_full_n,
        p_outData_0_1_0_0_04_write
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [26:0] p_inData_0_0_0_0_0_dout;
input   p_inData_0_0_0_0_0_empty_n;
output   p_inData_0_0_0_0_0_read;
input  [26:0] p_inData_0_0_0_0_01_dout;
input   p_inData_0_0_0_0_01_empty_n;
output   p_inData_0_0_0_0_01_read;
input  [26:0] p_inData_0_1_0_0_0_dout;
input   p_inData_0_1_0_0_0_empty_n;
output   p_inData_0_1_0_0_0_read;
input  [26:0] p_inData_0_1_0_0_02_dout;
input   p_inData_0_1_0_0_02_empty_n;
output   p_inData_0_1_0_0_02_read;
output  [26:0] p_outData_0_0_0_0_0_din;
input   p_outData_0_0_0_0_0_full_n;
output   p_outData_0_0_0_0_0_write;
output  [26:0] p_outData_0_0_0_0_03_din;
input   p_outData_0_0_0_0_03_full_n;
output   p_outData_0_0_0_0_03_write;
output  [26:0] p_outData_0_1_0_0_0_din;
input   p_outData_0_1_0_0_0_full_n;
output   p_outData_0_1_0_0_0_write;
output  [26:0] p_outData_0_1_0_0_04_din;
input   p_outData_0_1_0_0_04_full_n;
output   p_outData_0_1_0_0_04_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg p_inData_0_0_0_0_0_read;
reg p_inData_0_0_0_0_01_read;
reg p_inData_0_1_0_0_0_read;
reg p_inData_0_1_0_0_02_read;
reg p_outData_0_0_0_0_0_write;
reg p_outData_0_0_0_0_03_write;
reg p_outData_0_1_0_0_0_write;
reg p_outData_0_1_0_0_04_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [4:0] digitReverseBuff_M_real_V_0_address0;
reg    digitReverseBuff_M_real_V_0_ce0;
reg    digitReverseBuff_M_real_V_0_we0;
wire   [26:0] digitReverseBuff_M_real_V_0_q0;
reg   [4:0] digitReverseBuff_M_real_V_1_address0;
reg    digitReverseBuff_M_real_V_1_ce0;
reg    digitReverseBuff_M_real_V_1_we0;
wire   [26:0] digitReverseBuff_M_real_V_1_q0;
reg   [4:0] digitReverseBuff_M_imag_V_0_address0;
reg    digitReverseBuff_M_imag_V_0_ce0;
reg    digitReverseBuff_M_imag_V_0_we0;
wire   [26:0] digitReverseBuff_M_imag_V_0_q0;
reg   [4:0] digitReverseBuff_M_imag_V_1_address0;
reg    digitReverseBuff_M_imag_V_1_ce0;
reg    digitReverseBuff_M_imag_V_1_we0;
wire   [26:0] digitReverseBuff_M_imag_V_1_q0;
wire    grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_ap_start;
wire    grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_ap_done;
wire    grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_ap_idle;
wire    grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_ap_ready;
wire    grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_inData_0_0_0_0_0_read;
wire    grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_inData_0_0_0_0_01_read;
wire    grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_inData_0_1_0_0_0_read;
wire    grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_inData_0_1_0_0_02_read;
wire   [4:0] grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_real_address0;
wire    grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_real_ce0;
wire    grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_real_we0;
wire   [26:0] grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_real_d0;
wire   [4:0] grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_real3_address0;
wire    grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_real3_ce0;
wire    grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_real3_we0;
wire   [26:0] grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_real3_d0;
wire   [4:0] grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_imag_address0;
wire    grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_imag_ce0;
wire    grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_imag_we0;
wire   [26:0] grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_imag_d0;
wire   [4:0] grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_imag4_address0;
wire    grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_imag4_ce0;
wire    grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_imag4_we0;
wire   [26:0] grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_imag4_d0;
wire    grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_ap_start;
wire    grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_ap_done;
wire    grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_ap_idle;
wire    grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_ap_ready;
wire   [26:0] grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_outData_0_0_0_0_0_din;
wire    grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_outData_0_0_0_0_0_write;
wire   [26:0] grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_outData_0_1_0_0_0_din;
wire    grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_outData_0_1_0_0_0_write;
wire   [26:0] grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_outData_0_0_0_0_03_din;
wire    grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_outData_0_0_0_0_03_write;
wire   [26:0] grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_outData_0_1_0_0_04_din;
wire    grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_outData_0_1_0_0_04_write;
wire   [4:0] grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_digitReseversedOutputBuff_M_real_address0;
wire    grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_digitReseversedOutputBuff_M_real_ce0;
wire   [4:0] grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_digitReseversedOutputBuff_M_real1_address0;
wire    grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_digitReseversedOutputBuff_M_real1_ce0;
wire   [4:0] grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_digitReseversedOutputBuff_M_imag_address0;
wire    grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_digitReseversedOutputBuff_M_imag_ce0;
wire   [4:0] grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_digitReseversedOutputBuff_M_imag2_address0;
wire    grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_digitReseversedOutputBuff_M_imag2_ce0;
reg    grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_ap_start_reg;
reg    ap_block_state1_ignore_call14;
wire    ap_CS_fsm_state2;
reg    grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg   [3:0] ap_NS_fsm;
reg    ap_block_state1;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_ap_start_reg = 1'b0;
#0 grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_ap_start_reg = 1'b0;
end

fft_top1_digitReversedDataReOrder_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_digfYi #(
    .DataWidth( 27 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
digitReverseBuff_M_real_V_0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(digitReverseBuff_M_real_V_0_address0),
    .ce0(digitReverseBuff_M_real_V_0_ce0),
    .we0(digitReverseBuff_M_real_V_0_we0),
    .d0(grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_real_d0),
    .q0(digitReverseBuff_M_real_V_0_q0)
);

fft_top1_digitReversedDataReOrder_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_digfYi #(
    .DataWidth( 27 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
digitReverseBuff_M_real_V_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(digitReverseBuff_M_real_V_1_address0),
    .ce0(digitReverseBuff_M_real_V_1_ce0),
    .we0(digitReverseBuff_M_real_V_1_we0),
    .d0(grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_real3_d0),
    .q0(digitReverseBuff_M_real_V_1_q0)
);

fft_top1_digitReversedDataReOrder_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_digfYi #(
    .DataWidth( 27 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
digitReverseBuff_M_imag_V_0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(digitReverseBuff_M_imag_V_0_address0),
    .ce0(digitReverseBuff_M_imag_V_0_ce0),
    .we0(digitReverseBuff_M_imag_V_0_we0),
    .d0(grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_imag_d0),
    .q0(digitReverseBuff_M_imag_V_0_q0)
);

fft_top1_digitReversedDataReOrder_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_digfYi #(
    .DataWidth( 27 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
digitReverseBuff_M_imag_V_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(digitReverseBuff_M_imag_V_1_address0),
    .ce0(digitReverseBuff_M_imag_V_1_ce0),
    .we0(digitReverseBuff_M_imag_V_1_we0),
    .d0(grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_imag4_d0),
    .q0(digitReverseBuff_M_imag_V_1_q0)
);

fft_top1_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_ap_start),
    .ap_done(grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_ap_done),
    .ap_idle(grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_ap_idle),
    .ap_ready(grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_ap_ready),
    .p_inData_0_0_0_0_0_dout(p_inData_0_0_0_0_0_dout),
    .p_inData_0_0_0_0_0_empty_n(p_inData_0_0_0_0_0_empty_n),
    .p_inData_0_0_0_0_0_read(grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_inData_0_0_0_0_0_read),
    .p_inData_0_0_0_0_01_dout(p_inData_0_0_0_0_01_dout),
    .p_inData_0_0_0_0_01_empty_n(p_inData_0_0_0_0_01_empty_n),
    .p_inData_0_0_0_0_01_read(grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_inData_0_0_0_0_01_read),
    .p_inData_0_1_0_0_0_dout(p_inData_0_1_0_0_0_dout),
    .p_inData_0_1_0_0_0_empty_n(p_inData_0_1_0_0_0_empty_n),
    .p_inData_0_1_0_0_0_read(grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_inData_0_1_0_0_0_read),
    .p_inData_0_1_0_0_02_dout(p_inData_0_1_0_0_02_dout),
    .p_inData_0_1_0_0_02_empty_n(p_inData_0_1_0_0_02_empty_n),
    .p_inData_0_1_0_0_02_read(grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_inData_0_1_0_0_02_read),
    .p_digitReseversedOutputBuff_M_real_address0(grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_real_address0),
    .p_digitReseversedOutputBuff_M_real_ce0(grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_real_ce0),
    .p_digitReseversedOutputBuff_M_real_we0(grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_real_we0),
    .p_digitReseversedOutputBuff_M_real_d0(grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_real_d0),
    .p_digitReseversedOutputBuff_M_real3_address0(grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_real3_address0),
    .p_digitReseversedOutputBuff_M_real3_ce0(grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_real3_ce0),
    .p_digitReseversedOutputBuff_M_real3_we0(grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_real3_we0),
    .p_digitReseversedOutputBuff_M_real3_d0(grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_real3_d0),
    .p_digitReseversedOutputBuff_M_imag_address0(grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_imag_address0),
    .p_digitReseversedOutputBuff_M_imag_ce0(grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_imag_ce0),
    .p_digitReseversedOutputBuff_M_imag_we0(grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_imag_we0),
    .p_digitReseversedOutputBuff_M_imag_d0(grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_imag_d0),
    .p_digitReseversedOutputBuff_M_imag4_address0(grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_imag4_address0),
    .p_digitReseversedOutputBuff_M_imag4_ce0(grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_imag4_ce0),
    .p_digitReseversedOutputBuff_M_imag4_we0(grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_imag4_we0),
    .p_digitReseversedOutputBuff_M_imag4_d0(grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_imag4_d0)
);

fft_top1_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_ap_start),
    .ap_done(grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_ap_done),
    .ap_idle(grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_ap_idle),
    .ap_ready(grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_ap_ready),
    .p_outData_0_0_0_0_0_din(grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_outData_0_0_0_0_0_din),
    .p_outData_0_0_0_0_0_full_n(p_outData_0_0_0_0_0_full_n),
    .p_outData_0_0_0_0_0_write(grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_outData_0_0_0_0_0_write),
    .p_outData_0_1_0_0_0_din(grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_outData_0_1_0_0_0_din),
    .p_outData_0_1_0_0_0_full_n(p_outData_0_1_0_0_0_full_n),
    .p_outData_0_1_0_0_0_write(grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_outData_0_1_0_0_0_write),
    .p_outData_0_0_0_0_03_din(grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_outData_0_0_0_0_03_din),
    .p_outData_0_0_0_0_03_full_n(p_outData_0_0_0_0_03_full_n),
    .p_outData_0_0_0_0_03_write(grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_outData_0_0_0_0_03_write),
    .p_outData_0_1_0_0_04_din(grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_outData_0_1_0_0_04_din),
    .p_outData_0_1_0_0_04_full_n(p_outData_0_1_0_0_04_full_n),
    .p_outData_0_1_0_0_04_write(grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_outData_0_1_0_0_04_write),
    .p_digitReseversedOutputBuff_M_real_address0(grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_digitReseversedOutputBuff_M_real_address0),
    .p_digitReseversedOutputBuff_M_real_ce0(grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_digitReseversedOutputBuff_M_real_ce0),
    .p_digitReseversedOutputBuff_M_real_q0(digitReverseBuff_M_real_V_0_q0),
    .p_digitReseversedOutputBuff_M_real1_address0(grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_digitReseversedOutputBuff_M_real1_address0),
    .p_digitReseversedOutputBuff_M_real1_ce0(grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_digitReseversedOutputBuff_M_real1_ce0),
    .p_digitReseversedOutputBuff_M_real1_q0(digitReverseBuff_M_real_V_1_q0),
    .p_digitReseversedOutputBuff_M_imag_address0(grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_digitReseversedOutputBuff_M_imag_address0),
    .p_digitReseversedOutputBuff_M_imag_ce0(grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_digitReseversedOutputBuff_M_imag_ce0),
    .p_digitReseversedOutputBuff_M_imag_q0(digitReverseBuff_M_imag_V_0_q0),
    .p_digitReseversedOutputBuff_M_imag2_address0(grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_digitReseversedOutputBuff_M_imag2_address0),
    .p_digitReseversedOutputBuff_M_imag2_ce0(grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_digitReseversedOutputBuff_M_imag2_ce0),
    .p_digitReseversedOutputBuff_M_imag2_q0(digitReverseBuff_M_imag_V_1_q0)
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
        end else if (((1'b1 == ap_CS_fsm_state4) & (grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_ap_start_reg <= 1'b0;
    end else begin
        if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_ap_start_reg <= 1'b1;
        end else if ((grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_ap_ready == 1'b1)) begin
            grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_ap_start_reg <= 1'b1;
        end else if ((grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_ap_ready == 1'b1)) begin
            grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_ap_start_reg <= 1'b0;
        end
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
    if ((grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end

assign ap_ST_fsm_state3_blk = 1'b0;

always @ (*) begin
    if ((grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state4) & (grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        digitReverseBuff_M_imag_V_0_address0 = grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_digitReseversedOutputBuff_M_imag_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        digitReverseBuff_M_imag_V_0_address0 = grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_imag_address0;
    end else begin
        digitReverseBuff_M_imag_V_0_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        digitReverseBuff_M_imag_V_0_ce0 = grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_digitReseversedOutputBuff_M_imag_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        digitReverseBuff_M_imag_V_0_ce0 = grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_imag_ce0;
    end else begin
        digitReverseBuff_M_imag_V_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        digitReverseBuff_M_imag_V_0_we0 = grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_imag_we0;
    end else begin
        digitReverseBuff_M_imag_V_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        digitReverseBuff_M_imag_V_1_address0 = grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_digitReseversedOutputBuff_M_imag2_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        digitReverseBuff_M_imag_V_1_address0 = grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_imag4_address0;
    end else begin
        digitReverseBuff_M_imag_V_1_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        digitReverseBuff_M_imag_V_1_ce0 = grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_digitReseversedOutputBuff_M_imag2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        digitReverseBuff_M_imag_V_1_ce0 = grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_imag4_ce0;
    end else begin
        digitReverseBuff_M_imag_V_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        digitReverseBuff_M_imag_V_1_we0 = grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_imag4_we0;
    end else begin
        digitReverseBuff_M_imag_V_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        digitReverseBuff_M_real_V_0_address0 = grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_digitReseversedOutputBuff_M_real_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        digitReverseBuff_M_real_V_0_address0 = grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_real_address0;
    end else begin
        digitReverseBuff_M_real_V_0_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        digitReverseBuff_M_real_V_0_ce0 = grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_digitReseversedOutputBuff_M_real_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        digitReverseBuff_M_real_V_0_ce0 = grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_real_ce0;
    end else begin
        digitReverseBuff_M_real_V_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        digitReverseBuff_M_real_V_0_we0 = grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_real_we0;
    end else begin
        digitReverseBuff_M_real_V_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        digitReverseBuff_M_real_V_1_address0 = grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_digitReseversedOutputBuff_M_real1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        digitReverseBuff_M_real_V_1_address0 = grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_real3_address0;
    end else begin
        digitReverseBuff_M_real_V_1_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        digitReverseBuff_M_real_V_1_ce0 = grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_digitReseversedOutputBuff_M_real1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        digitReverseBuff_M_real_V_1_ce0 = grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_real3_ce0;
    end else begin
        digitReverseBuff_M_real_V_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        digitReverseBuff_M_real_V_1_we0 = grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_digitReseversedOutputBuff_M_real3_we0;
    end else begin
        digitReverseBuff_M_real_V_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        p_inData_0_0_0_0_01_read = grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_inData_0_0_0_0_01_read;
    end else begin
        p_inData_0_0_0_0_01_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        p_inData_0_0_0_0_0_read = grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_inData_0_0_0_0_0_read;
    end else begin
        p_inData_0_0_0_0_0_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        p_inData_0_1_0_0_02_read = grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_inData_0_1_0_0_02_read;
    end else begin
        p_inData_0_1_0_0_02_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        p_inData_0_1_0_0_0_read = grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_p_inData_0_1_0_0_0_read;
    end else begin
        p_inData_0_1_0_0_0_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        p_outData_0_0_0_0_03_write = grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_outData_0_0_0_0_03_write;
    end else begin
        p_outData_0_0_0_0_03_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        p_outData_0_0_0_0_0_write = grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_outData_0_0_0_0_0_write;
    end else begin
        p_outData_0_0_0_0_0_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        p_outData_0_1_0_0_04_write = grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_outData_0_1_0_0_04_write;
    end else begin
        p_outData_0_1_0_0_04_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        p_outData_0_1_0_0_0_write = grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_outData_0_1_0_0_0_write;
    end else begin
        p_outData_0_1_0_0_0_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state1_ignore_call14 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_ap_start = grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58_ap_start_reg;

assign grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_ap_start = grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_ap_start_reg;

assign p_outData_0_0_0_0_03_din = grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_outData_0_0_0_0_03_din;

assign p_outData_0_0_0_0_0_din = grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_outData_0_0_0_0_0_din;

assign p_outData_0_1_0_0_04_din = grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_outData_0_1_0_0_04_din;

assign p_outData_0_1_0_0_0_din = grp_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_78_p_outData_0_1_0_0_0_din;

endmodule //fft_top1_digitReversedDataReOrder_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s
