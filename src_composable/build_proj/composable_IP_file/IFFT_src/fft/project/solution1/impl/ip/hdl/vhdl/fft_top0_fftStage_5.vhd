-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fft_top0_fftStage_5 is
port (
    fftOutData_local2_dout : IN STD_LOGIC_VECTOR (127 downto 0);
    fftOutData_local2_empty_n : IN STD_LOGIC;
    fftOutData_local2_read : OUT STD_LOGIC;
    p_fftOutData_0_0_0_0_0_din : OUT STD_LOGIC_VECTOR (26 downto 0);
    p_fftOutData_0_0_0_0_0_full_n : IN STD_LOGIC;
    p_fftOutData_0_0_0_0_0_write : OUT STD_LOGIC;
    p_fftOutData_0_0_0_0_01_din : OUT STD_LOGIC_VECTOR (26 downto 0);
    p_fftOutData_0_0_0_0_01_full_n : IN STD_LOGIC;
    p_fftOutData_0_0_0_0_01_write : OUT STD_LOGIC;
    p_fftOutData_0_1_0_0_0_din : OUT STD_LOGIC_VECTOR (26 downto 0);
    p_fftOutData_0_1_0_0_0_full_n : IN STD_LOGIC;
    p_fftOutData_0_1_0_0_0_write : OUT STD_LOGIC;
    p_fftOutData_0_1_0_0_02_din : OUT STD_LOGIC_VECTOR (26 downto 0);
    p_fftOutData_0_1_0_0_02_full_n : IN STD_LOGIC;
    p_fftOutData_0_1_0_0_02_write : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC );
end;


architecture behav of fft_top0_fftStage_5 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';

attribute shreg_extract : string;
    signal fftStageKernelLastStageS2S_64_2_1_1_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0_ap_start : STD_LOGIC;
    signal fftStageKernelLastStageS2S_64_2_1_1_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0_ap_done : STD_LOGIC;
    signal fftStageKernelLastStageS2S_64_2_1_1_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0_ap_continue : STD_LOGIC;
    signal fftStageKernelLastStageS2S_64_2_1_1_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0_ap_idle : STD_LOGIC;
    signal fftStageKernelLastStageS2S_64_2_1_1_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0_ap_ready : STD_LOGIC;
    signal fftStageKernelLastStageS2S_64_2_1_1_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0_fftOutData_local2_read : STD_LOGIC;
    signal fftStageKernelLastStageS2S_64_2_1_1_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0_fftOutData_local_din : STD_LOGIC_VECTOR (127 downto 0);
    signal fftStageKernelLastStageS2S_64_2_1_1_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0_fftOutData_local_write : STD_LOGIC;
    signal fftStageKernelLastStageS2S_64_2_1_1_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0_start_out : STD_LOGIC;
    signal fftStageKernelLastStageS2S_64_2_1_1_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0_start_write : STD_LOGIC;
    signal convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_ap_start : STD_LOGIC;
    signal convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_ap_done : STD_LOGIC;
    signal convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_ap_continue : STD_LOGIC;
    signal convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_ap_idle : STD_LOGIC;
    signal convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_ap_ready : STD_LOGIC;
    signal convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_fftOutData_local_read : STD_LOGIC;
    signal convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_p_outDataArray_0_0_0_0_0_din : STD_LOGIC_VECTOR (26 downto 0);
    signal convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_p_outDataArray_0_0_0_0_0_write : STD_LOGIC;
    signal convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_p_outDataArray_0_1_0_0_0_din : STD_LOGIC_VECTOR (26 downto 0);
    signal convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_p_outDataArray_0_1_0_0_0_write : STD_LOGIC;
    signal convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_p_outDataArray_0_0_0_0_01_din : STD_LOGIC_VECTOR (26 downto 0);
    signal convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_p_outDataArray_0_0_0_0_01_write : STD_LOGIC;
    signal convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_p_outDataArray_0_1_0_0_02_din : STD_LOGIC_VECTOR (26 downto 0);
    signal convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_p_outDataArray_0_1_0_0_02_write : STD_LOGIC;
    signal convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_start_out : STD_LOGIC;
    signal convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_start_write : STD_LOGIC;
    signal digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_ap_start : STD_LOGIC;
    signal digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_ap_done : STD_LOGIC;
    signal digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_ap_continue : STD_LOGIC;
    signal digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_ap_idle : STD_LOGIC;
    signal digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_ap_ready : STD_LOGIC;
    signal digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_p_inData_0_0_0_0_0_read : STD_LOGIC;
    signal digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_p_inData_0_0_0_0_01_read : STD_LOGIC;
    signal digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_p_inData_0_1_0_0_0_read : STD_LOGIC;
    signal digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_p_inData_0_1_0_0_02_read : STD_LOGIC;
    signal digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_p_outData_0_0_0_0_0_din : STD_LOGIC_VECTOR (26 downto 0);
    signal digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_p_outData_0_0_0_0_0_write : STD_LOGIC;
    signal digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_p_outData_0_0_0_0_03_din : STD_LOGIC_VECTOR (26 downto 0);
    signal digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_p_outData_0_0_0_0_03_write : STD_LOGIC;
    signal digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_p_outData_0_1_0_0_0_din : STD_LOGIC_VECTOR (26 downto 0);
    signal digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_p_outData_0_1_0_0_0_write : STD_LOGIC;
    signal digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_p_outData_0_1_0_0_04_din : STD_LOGIC_VECTOR (26 downto 0);
    signal digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_p_outData_0_1_0_0_04_write : STD_LOGIC;
    signal fftOutData_local_full_n : STD_LOGIC;
    signal fftOutData_local_dout : STD_LOGIC_VECTOR (127 downto 0);
    signal fftOutData_local_empty_n : STD_LOGIC;
    signal fftOutData_local2_V_M_real_V_0_full_n : STD_LOGIC;
    signal fftOutData_local2_V_M_real_V_0_dout : STD_LOGIC_VECTOR (26 downto 0);
    signal fftOutData_local2_V_M_real_V_0_empty_n : STD_LOGIC;
    signal fftOutData_local2_V_M_real_V_1_full_n : STD_LOGIC;
    signal fftOutData_local2_V_M_real_V_1_dout : STD_LOGIC_VECTOR (26 downto 0);
    signal fftOutData_local2_V_M_real_V_1_empty_n : STD_LOGIC;
    signal fftOutData_local2_V_M_imag_V_0_full_n : STD_LOGIC;
    signal fftOutData_local2_V_M_imag_V_0_dout : STD_LOGIC_VECTOR (26 downto 0);
    signal fftOutData_local2_V_M_imag_V_0_empty_n : STD_LOGIC;
    signal fftOutData_local2_V_M_imag_V_1_full_n : STD_LOGIC;
    signal fftOutData_local2_V_M_imag_V_1_dout : STD_LOGIC_VECTOR (26 downto 0);
    signal fftOutData_local2_V_M_imag_V_1_empty_n : STD_LOGIC;
    signal start_for_convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_full_n : STD_LOGIC;
    signal start_for_convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_empty_n : STD_LOGIC;
    signal start_for_digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_full_n : STD_LOGIC;
    signal start_for_digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_empty_n : STD_LOGIC;

    component fft_top0_fftStageKernelLastStageS2S_64_2_1_1_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_s IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        fftOutData_local2_dout : IN STD_LOGIC_VECTOR (127 downto 0);
        fftOutData_local2_empty_n : IN STD_LOGIC;
        fftOutData_local2_read : OUT STD_LOGIC;
        fftOutData_local_din : OUT STD_LOGIC_VECTOR (127 downto 0);
        fftOutData_local_full_n : IN STD_LOGIC;
        fftOutData_local_write : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC );
    end component;


    component fft_top0_convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_s IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        fftOutData_local_dout : IN STD_LOGIC_VECTOR (127 downto 0);
        fftOutData_local_empty_n : IN STD_LOGIC;
        fftOutData_local_read : OUT STD_LOGIC;
        p_outDataArray_0_0_0_0_0_din : OUT STD_LOGIC_VECTOR (26 downto 0);
        p_outDataArray_0_0_0_0_0_full_n : IN STD_LOGIC;
        p_outDataArray_0_0_0_0_0_write : OUT STD_LOGIC;
        p_outDataArray_0_1_0_0_0_din : OUT STD_LOGIC_VECTOR (26 downto 0);
        p_outDataArray_0_1_0_0_0_full_n : IN STD_LOGIC;
        p_outDataArray_0_1_0_0_0_write : OUT STD_LOGIC;
        p_outDataArray_0_0_0_0_01_din : OUT STD_LOGIC_VECTOR (26 downto 0);
        p_outDataArray_0_0_0_0_01_full_n : IN STD_LOGIC;
        p_outDataArray_0_0_0_0_01_write : OUT STD_LOGIC;
        p_outDataArray_0_1_0_0_02_din : OUT STD_LOGIC_VECTOR (26 downto 0);
        p_outDataArray_0_1_0_0_02_full_n : IN STD_LOGIC;
        p_outDataArray_0_1_0_0_02_write : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC );
    end component;


    component fft_top0_digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_s IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        p_inData_0_0_0_0_0_dout : IN STD_LOGIC_VECTOR (26 downto 0);
        p_inData_0_0_0_0_0_empty_n : IN STD_LOGIC;
        p_inData_0_0_0_0_0_read : OUT STD_LOGIC;
        p_inData_0_0_0_0_01_dout : IN STD_LOGIC_VECTOR (26 downto 0);
        p_inData_0_0_0_0_01_empty_n : IN STD_LOGIC;
        p_inData_0_0_0_0_01_read : OUT STD_LOGIC;
        p_inData_0_1_0_0_0_dout : IN STD_LOGIC_VECTOR (26 downto 0);
        p_inData_0_1_0_0_0_empty_n : IN STD_LOGIC;
        p_inData_0_1_0_0_0_read : OUT STD_LOGIC;
        p_inData_0_1_0_0_02_dout : IN STD_LOGIC_VECTOR (26 downto 0);
        p_inData_0_1_0_0_02_empty_n : IN STD_LOGIC;
        p_inData_0_1_0_0_02_read : OUT STD_LOGIC;
        p_outData_0_0_0_0_0_din : OUT STD_LOGIC_VECTOR (26 downto 0);
        p_outData_0_0_0_0_0_full_n : IN STD_LOGIC;
        p_outData_0_0_0_0_0_write : OUT STD_LOGIC;
        p_outData_0_0_0_0_03_din : OUT STD_LOGIC_VECTOR (26 downto 0);
        p_outData_0_0_0_0_03_full_n : IN STD_LOGIC;
        p_outData_0_0_0_0_03_write : OUT STD_LOGIC;
        p_outData_0_1_0_0_0_din : OUT STD_LOGIC_VECTOR (26 downto 0);
        p_outData_0_1_0_0_0_full_n : IN STD_LOGIC;
        p_outData_0_1_0_0_0_write : OUT STD_LOGIC;
        p_outData_0_1_0_0_04_din : OUT STD_LOGIC_VECTOR (26 downto 0);
        p_outData_0_1_0_0_04_full_n : IN STD_LOGIC;
        p_outData_0_1_0_0_04_write : OUT STD_LOGIC );
    end component;


    component fft_top0_fifo_w128_d8_D_x2 IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (127 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (127 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component fft_top0_fifo_w27_d8_D IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (26 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (26 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component fft_top0_start_for_convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_jbC IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component fft_top0_start_for_digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3kbM IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;



begin
    fftStageKernelLastStageS2S_64_2_1_1_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0 : component fft_top0_fftStageKernelLastStageS2S_64_2_1_1_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_s
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => fftStageKernelLastStageS2S_64_2_1_1_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0_ap_start,
        start_full_n => start_for_convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_full_n,
        ap_done => fftStageKernelLastStageS2S_64_2_1_1_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0_ap_done,
        ap_continue => fftStageKernelLastStageS2S_64_2_1_1_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0_ap_continue,
        ap_idle => fftStageKernelLastStageS2S_64_2_1_1_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0_ap_idle,
        ap_ready => fftStageKernelLastStageS2S_64_2_1_1_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0_ap_ready,
        fftOutData_local2_dout => fftOutData_local2_dout,
        fftOutData_local2_empty_n => fftOutData_local2_empty_n,
        fftOutData_local2_read => fftStageKernelLastStageS2S_64_2_1_1_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0_fftOutData_local2_read,
        fftOutData_local_din => fftStageKernelLastStageS2S_64_2_1_1_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0_fftOutData_local_din,
        fftOutData_local_full_n => fftOutData_local_full_n,
        fftOutData_local_write => fftStageKernelLastStageS2S_64_2_1_1_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0_fftOutData_local_write,
        start_out => fftStageKernelLastStageS2S_64_2_1_1_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0_start_out,
        start_write => fftStageKernelLastStageS2S_64_2_1_1_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0_start_write);

    convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0 : component fft_top0_convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_s
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_ap_start,
        start_full_n => start_for_digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_full_n,
        ap_done => convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_ap_done,
        ap_continue => convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_ap_continue,
        ap_idle => convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_ap_idle,
        ap_ready => convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_ap_ready,
        fftOutData_local_dout => fftOutData_local_dout,
        fftOutData_local_empty_n => fftOutData_local_empty_n,
        fftOutData_local_read => convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_fftOutData_local_read,
        p_outDataArray_0_0_0_0_0_din => convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_p_outDataArray_0_0_0_0_0_din,
        p_outDataArray_0_0_0_0_0_full_n => fftOutData_local2_V_M_real_V_0_full_n,
        p_outDataArray_0_0_0_0_0_write => convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_p_outDataArray_0_0_0_0_0_write,
        p_outDataArray_0_1_0_0_0_din => convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_p_outDataArray_0_1_0_0_0_din,
        p_outDataArray_0_1_0_0_0_full_n => fftOutData_local2_V_M_imag_V_0_full_n,
        p_outDataArray_0_1_0_0_0_write => convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_p_outDataArray_0_1_0_0_0_write,
        p_outDataArray_0_0_0_0_01_din => convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_p_outDataArray_0_0_0_0_01_din,
        p_outDataArray_0_0_0_0_01_full_n => fftOutData_local2_V_M_real_V_1_full_n,
        p_outDataArray_0_0_0_0_01_write => convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_p_outDataArray_0_0_0_0_01_write,
        p_outDataArray_0_1_0_0_02_din => convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_p_outDataArray_0_1_0_0_02_din,
        p_outDataArray_0_1_0_0_02_full_n => fftOutData_local2_V_M_imag_V_1_full_n,
        p_outDataArray_0_1_0_0_02_write => convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_p_outDataArray_0_1_0_0_02_write,
        start_out => convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_start_out,
        start_write => convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_start_write);

    digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0 : component fft_top0_digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_s
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_ap_start,
        ap_done => digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_ap_done,
        ap_continue => digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_ap_continue,
        ap_idle => digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_ap_idle,
        ap_ready => digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_ap_ready,
        p_inData_0_0_0_0_0_dout => fftOutData_local2_V_M_real_V_0_dout,
        p_inData_0_0_0_0_0_empty_n => fftOutData_local2_V_M_real_V_0_empty_n,
        p_inData_0_0_0_0_0_read => digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_p_inData_0_0_0_0_0_read,
        p_inData_0_0_0_0_01_dout => fftOutData_local2_V_M_real_V_1_dout,
        p_inData_0_0_0_0_01_empty_n => fftOutData_local2_V_M_real_V_1_empty_n,
        p_inData_0_0_0_0_01_read => digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_p_inData_0_0_0_0_01_read,
        p_inData_0_1_0_0_0_dout => fftOutData_local2_V_M_imag_V_0_dout,
        p_inData_0_1_0_0_0_empty_n => fftOutData_local2_V_M_imag_V_0_empty_n,
        p_inData_0_1_0_0_0_read => digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_p_inData_0_1_0_0_0_read,
        p_inData_0_1_0_0_02_dout => fftOutData_local2_V_M_imag_V_1_dout,
        p_inData_0_1_0_0_02_empty_n => fftOutData_local2_V_M_imag_V_1_empty_n,
        p_inData_0_1_0_0_02_read => digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_p_inData_0_1_0_0_02_read,
        p_outData_0_0_0_0_0_din => digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_p_outData_0_0_0_0_0_din,
        p_outData_0_0_0_0_0_full_n => p_fftOutData_0_0_0_0_0_full_n,
        p_outData_0_0_0_0_0_write => digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_p_outData_0_0_0_0_0_write,
        p_outData_0_0_0_0_03_din => digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_p_outData_0_0_0_0_03_din,
        p_outData_0_0_0_0_03_full_n => p_fftOutData_0_0_0_0_01_full_n,
        p_outData_0_0_0_0_03_write => digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_p_outData_0_0_0_0_03_write,
        p_outData_0_1_0_0_0_din => digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_p_outData_0_1_0_0_0_din,
        p_outData_0_1_0_0_0_full_n => p_fftOutData_0_1_0_0_0_full_n,
        p_outData_0_1_0_0_0_write => digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_p_outData_0_1_0_0_0_write,
        p_outData_0_1_0_0_04_din => digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_p_outData_0_1_0_0_04_din,
        p_outData_0_1_0_0_04_full_n => p_fftOutData_0_1_0_0_02_full_n,
        p_outData_0_1_0_0_04_write => digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_p_outData_0_1_0_0_04_write);

    fftOutData_local_U : component fft_top0_fifo_w128_d8_D_x2
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => fftStageKernelLastStageS2S_64_2_1_1_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0_fftOutData_local_din,
        if_full_n => fftOutData_local_full_n,
        if_write => fftStageKernelLastStageS2S_64_2_1_1_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0_fftOutData_local_write,
        if_dout => fftOutData_local_dout,
        if_empty_n => fftOutData_local_empty_n,
        if_read => convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_fftOutData_local_read);

    fftOutData_local2_V_M_real_V_0_U : component fft_top0_fifo_w27_d8_D
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_p_outDataArray_0_0_0_0_0_din,
        if_full_n => fftOutData_local2_V_M_real_V_0_full_n,
        if_write => convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_p_outDataArray_0_0_0_0_0_write,
        if_dout => fftOutData_local2_V_M_real_V_0_dout,
        if_empty_n => fftOutData_local2_V_M_real_V_0_empty_n,
        if_read => digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_p_inData_0_0_0_0_0_read);

    fftOutData_local2_V_M_real_V_1_U : component fft_top0_fifo_w27_d8_D
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_p_outDataArray_0_0_0_0_01_din,
        if_full_n => fftOutData_local2_V_M_real_V_1_full_n,
        if_write => convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_p_outDataArray_0_0_0_0_01_write,
        if_dout => fftOutData_local2_V_M_real_V_1_dout,
        if_empty_n => fftOutData_local2_V_M_real_V_1_empty_n,
        if_read => digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_p_inData_0_0_0_0_01_read);

    fftOutData_local2_V_M_imag_V_0_U : component fft_top0_fifo_w27_d8_D
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_p_outDataArray_0_1_0_0_0_din,
        if_full_n => fftOutData_local2_V_M_imag_V_0_full_n,
        if_write => convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_p_outDataArray_0_1_0_0_0_write,
        if_dout => fftOutData_local2_V_M_imag_V_0_dout,
        if_empty_n => fftOutData_local2_V_M_imag_V_0_empty_n,
        if_read => digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_p_inData_0_1_0_0_0_read);

    fftOutData_local2_V_M_imag_V_1_U : component fft_top0_fifo_w27_d8_D
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_p_outDataArray_0_1_0_0_02_din,
        if_full_n => fftOutData_local2_V_M_imag_V_1_full_n,
        if_write => convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_p_outDataArray_0_1_0_0_02_write,
        if_dout => fftOutData_local2_V_M_imag_V_1_dout,
        if_empty_n => fftOutData_local2_V_M_imag_V_1_empty_n,
        if_read => digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_p_inData_0_1_0_0_02_read);

    start_for_convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_jbC_U : component fft_top0_start_for_convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_jbC
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_din,
        if_full_n => start_for_convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_full_n,
        if_write => fftStageKernelLastStageS2S_64_2_1_1_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0_start_write,
        if_dout => start_for_convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_dout,
        if_empty_n => start_for_convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_empty_n,
        if_read => convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_ap_ready);

    start_for_digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3kbM_U : component fft_top0_start_for_digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3kbM
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_din,
        if_full_n => start_for_digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_full_n,
        if_write => convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_start_write,
        if_dout => start_for_digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_dout,
        if_empty_n => start_for_digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_empty_n,
        if_read => digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_ap_ready);




    ap_done <= digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_ap_done;
    ap_idle <= (fftStageKernelLastStageS2S_64_2_1_1_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0_ap_idle and digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_ap_idle and convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_ap_idle);
    ap_ready <= fftStageKernelLastStageS2S_64_2_1_1_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0_ap_ready;
    convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_ap_continue <= ap_const_logic_1;
    convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_ap_start <= start_for_convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_empty_n;
    digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_ap_continue <= ap_continue;
    digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_ap_start <= start_for_digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_empty_n;
    fftOutData_local2_read <= fftStageKernelLastStageS2S_64_2_1_1_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0_fftOutData_local2_read;
    fftStageKernelLastStageS2S_64_2_1_1_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0_ap_continue <= ap_const_logic_1;
    fftStageKernelLastStageS2S_64_2_1_1_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0_ap_start <= ap_start;
    p_fftOutData_0_0_0_0_01_din <= digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_p_outData_0_0_0_0_03_din;
    p_fftOutData_0_0_0_0_01_write <= digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_p_outData_0_0_0_0_03_write;
    p_fftOutData_0_0_0_0_0_din <= digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_p_outData_0_0_0_0_0_din;
    p_fftOutData_0_0_0_0_0_write <= digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_p_outData_0_0_0_0_0_write;
    p_fftOutData_0_1_0_0_02_din <= digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_p_outData_0_1_0_0_04_din;
    p_fftOutData_0_1_0_0_02_write <= digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_p_outData_0_1_0_0_04_write;
    p_fftOutData_0_1_0_0_0_din <= digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_p_outData_0_1_0_0_0_din;
    p_fftOutData_0_1_0_0_0_write <= digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_p_outData_0_1_0_0_0_write;
    start_for_convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_U0_din <= (0=>ap_const_logic_1, others=>'-');
    start_for_digitReversedDataReOrder_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_U0_din <= (0=>ap_const_logic_1, others=>'-');
end behav;
