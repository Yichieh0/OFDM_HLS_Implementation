-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fft_top0_swap_complex_ap_fixed_20_5_5_3_0_2 is
port (
    temp_dout : IN STD_LOGIC_VECTOR (127 downto 0);
    temp_empty_n : IN STD_LOGIC;
    temp_read : OUT STD_LOGIC;
    p_fftInData_reOrdered_din : OUT STD_LOGIC_VECTOR (127 downto 0);
    p_fftInData_reOrdered_full_n : IN STD_LOGIC;
    p_fftInData_reOrdered_write : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC );
end;


architecture behav of fft_top0_swap_complex_ap_fixed_20_5_5_3_0_2 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';

attribute shreg_extract : string;
    signal streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_2_U0_ap_start : STD_LOGIC;
    signal streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_2_U0_ap_done : STD_LOGIC;
    signal streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_2_U0_ap_continue : STD_LOGIC;
    signal streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_2_U0_ap_idle : STD_LOGIC;
    signal streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_2_U0_ap_ready : STD_LOGIC;
    signal streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_2_U0_temp_read : STD_LOGIC;
    signal streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_2_U0_temp1_din : STD_LOGIC_VECTOR (127 downto 0);
    signal streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_2_U0_temp1_write : STD_LOGIC;
    signal streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_2_U0_start_out : STD_LOGIC;
    signal streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_2_U0_start_write : STD_LOGIC;
    signal swap_complex_ap_fixed_20_5_5_3_0_3_U0_temp_read : STD_LOGIC;
    signal swap_complex_ap_fixed_20_5_5_3_0_3_U0_p_fftInData_reOrdered_din : STD_LOGIC_VECTOR (127 downto 0);
    signal swap_complex_ap_fixed_20_5_5_3_0_3_U0_p_fftInData_reOrdered_write : STD_LOGIC;
    signal swap_complex_ap_fixed_20_5_5_3_0_3_U0_ap_start : STD_LOGIC;
    signal swap_complex_ap_fixed_20_5_5_3_0_3_U0_ap_done : STD_LOGIC;
    signal swap_complex_ap_fixed_20_5_5_3_0_3_U0_ap_ready : STD_LOGIC;
    signal swap_complex_ap_fixed_20_5_5_3_0_3_U0_ap_idle : STD_LOGIC;
    signal swap_complex_ap_fixed_20_5_5_3_0_3_U0_ap_continue : STD_LOGIC;
    signal temp_2_full_n : STD_LOGIC;
    signal temp_2_dout : STD_LOGIC_VECTOR (127 downto 0);
    signal temp_2_empty_n : STD_LOGIC;
    signal start_for_swap_complex_ap_fixed_20_5_5_3_0_3_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_swap_complex_ap_fixed_20_5_5_3_0_3_U0_full_n : STD_LOGIC;
    signal start_for_swap_complex_ap_fixed_20_5_5_3_0_3_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_swap_complex_ap_fixed_20_5_5_3_0_3_U0_empty_n : STD_LOGIC;

    component fft_top0_streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_2 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        temp_dout : IN STD_LOGIC_VECTOR (127 downto 0);
        temp_empty_n : IN STD_LOGIC;
        temp_read : OUT STD_LOGIC;
        temp1_din : OUT STD_LOGIC_VECTOR (127 downto 0);
        temp1_full_n : IN STD_LOGIC;
        temp1_write : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC );
    end component;


    component fft_top0_swap_complex_ap_fixed_20_5_5_3_0_3 IS
    port (
        temp_dout : IN STD_LOGIC_VECTOR (127 downto 0);
        temp_empty_n : IN STD_LOGIC;
        temp_read : OUT STD_LOGIC;
        p_fftInData_reOrdered_din : OUT STD_LOGIC_VECTOR (127 downto 0);
        p_fftInData_reOrdered_full_n : IN STD_LOGIC;
        p_fftInData_reOrdered_write : OUT STD_LOGIC;
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC );
    end component;


    component fft_top0_fifo_w128_d8_D_x0 IS
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


    component fft_top0_start_for_swap_complex_ap_fixed_20_5_5_3_0_3_U0 IS
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
    streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_2_U0 : component fft_top0_streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_2
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_2_U0_ap_start,
        start_full_n => start_for_swap_complex_ap_fixed_20_5_5_3_0_3_U0_full_n,
        ap_done => streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_2_U0_ap_done,
        ap_continue => streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_2_U0_ap_continue,
        ap_idle => streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_2_U0_ap_idle,
        ap_ready => streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_2_U0_ap_ready,
        temp_dout => temp_dout,
        temp_empty_n => temp_empty_n,
        temp_read => streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_2_U0_temp_read,
        temp1_din => streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_2_U0_temp1_din,
        temp1_full_n => temp_2_full_n,
        temp1_write => streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_2_U0_temp1_write,
        start_out => streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_2_U0_start_out,
        start_write => streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_2_U0_start_write);

    swap_complex_ap_fixed_20_5_5_3_0_3_U0 : component fft_top0_swap_complex_ap_fixed_20_5_5_3_0_3
    port map (
        temp_dout => temp_2_dout,
        temp_empty_n => temp_2_empty_n,
        temp_read => swap_complex_ap_fixed_20_5_5_3_0_3_U0_temp_read,
        p_fftInData_reOrdered_din => swap_complex_ap_fixed_20_5_5_3_0_3_U0_p_fftInData_reOrdered_din,
        p_fftInData_reOrdered_full_n => p_fftInData_reOrdered_full_n,
        p_fftInData_reOrdered_write => swap_complex_ap_fixed_20_5_5_3_0_3_U0_p_fftInData_reOrdered_write,
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => swap_complex_ap_fixed_20_5_5_3_0_3_U0_ap_start,
        ap_done => swap_complex_ap_fixed_20_5_5_3_0_3_U0_ap_done,
        ap_ready => swap_complex_ap_fixed_20_5_5_3_0_3_U0_ap_ready,
        ap_idle => swap_complex_ap_fixed_20_5_5_3_0_3_U0_ap_idle,
        ap_continue => swap_complex_ap_fixed_20_5_5_3_0_3_U0_ap_continue);

    temp_2_U : component fft_top0_fifo_w128_d8_D_x0
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_2_U0_temp1_din,
        if_full_n => temp_2_full_n,
        if_write => streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_2_U0_temp1_write,
        if_dout => temp_2_dout,
        if_empty_n => temp_2_empty_n,
        if_read => swap_complex_ap_fixed_20_5_5_3_0_3_U0_temp_read);

    start_for_swap_complex_ap_fixed_20_5_5_3_0_3_U0_U : component fft_top0_start_for_swap_complex_ap_fixed_20_5_5_3_0_3_U0
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_swap_complex_ap_fixed_20_5_5_3_0_3_U0_din,
        if_full_n => start_for_swap_complex_ap_fixed_20_5_5_3_0_3_U0_full_n,
        if_write => streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_2_U0_start_write,
        if_dout => start_for_swap_complex_ap_fixed_20_5_5_3_0_3_U0_dout,
        if_empty_n => start_for_swap_complex_ap_fixed_20_5_5_3_0_3_U0_empty_n,
        if_read => swap_complex_ap_fixed_20_5_5_3_0_3_U0_ap_ready);




    ap_done <= swap_complex_ap_fixed_20_5_5_3_0_3_U0_ap_done;
    ap_idle <= (swap_complex_ap_fixed_20_5_5_3_0_3_U0_ap_idle and streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_2_U0_ap_idle);
    ap_ready <= streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_2_U0_ap_ready;
    p_fftInData_reOrdered_din <= swap_complex_ap_fixed_20_5_5_3_0_3_U0_p_fftInData_reOrdered_din;
    p_fftInData_reOrdered_write <= swap_complex_ap_fixed_20_5_5_3_0_3_U0_p_fftInData_reOrdered_write;
    start_for_swap_complex_ap_fixed_20_5_5_3_0_3_U0_din <= (0=>ap_const_logic_1, others=>'-');
    streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_2_U0_ap_continue <= ap_const_logic_1;
    streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_2_U0_ap_start <= ap_start;
    swap_complex_ap_fixed_20_5_5_3_0_3_U0_ap_continue <= ap_continue;
    swap_complex_ap_fixed_20_5_5_3_0_3_U0_ap_start <= start_for_swap_complex_ap_fixed_20_5_5_3_0_3_U0_empty_n;
    temp_read <= streamingDataCommutor_complex_ap_fixed_20_5_5_3_0_2_U0_temp_read;
end behav;