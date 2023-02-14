-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fft_top1_fftStage_4 is
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


architecture behav of fft_top1_fftStage_4 is 
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_boolean_1 : BOOLEAN := true;

attribute shreg_extract : string;
    signal fftStageKernelS2S_128_2_1_0_0_3_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0_ap_start : STD_LOGIC;
    signal fftStageKernelS2S_128_2_1_0_0_3_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0_ap_done : STD_LOGIC;
    signal fftStageKernelS2S_128_2_1_0_0_3_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0_ap_continue : STD_LOGIC;
    signal fftStageKernelS2S_128_2_1_0_0_3_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0_ap_idle : STD_LOGIC;
    signal fftStageKernelS2S_128_2_1_0_0_3_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0_ap_ready : STD_LOGIC;
    signal fftStageKernelS2S_128_2_1_0_0_3_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0_fftOutData_local2_read : STD_LOGIC;
    signal fftStageKernelS2S_128_2_1_0_0_3_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0_fftOutData_local_din : STD_LOGIC_VECTOR (127 downto 0);
    signal fftStageKernelS2S_128_2_1_0_0_3_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0_fftOutData_local_write : STD_LOGIC;
    signal streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0_ap_start : STD_LOGIC;
    signal streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0_ap_done : STD_LOGIC;
    signal streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0_ap_continue : STD_LOGIC;
    signal streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0_ap_idle : STD_LOGIC;
    signal streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0_ap_ready : STD_LOGIC;
    signal streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0_fftOutData_local_read : STD_LOGIC;
    signal streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0_fftOutData_local2_din : STD_LOGIC_VECTOR (127 downto 0);
    signal streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0_fftOutData_local2_write : STD_LOGIC;
    signal ap_sync_reg_streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0_ap_start : STD_LOGIC := '0';
    signal fftStage_5_U0_fftOutData_local2_read : STD_LOGIC;
    signal fftStage_5_U0_p_fftOutData_0_0_0_0_0_din : STD_LOGIC_VECTOR (26 downto 0);
    signal fftStage_5_U0_p_fftOutData_0_0_0_0_0_write : STD_LOGIC;
    signal fftStage_5_U0_p_fftOutData_0_0_0_0_01_din : STD_LOGIC_VECTOR (26 downto 0);
    signal fftStage_5_U0_p_fftOutData_0_0_0_0_01_write : STD_LOGIC;
    signal fftStage_5_U0_p_fftOutData_0_1_0_0_0_din : STD_LOGIC_VECTOR (26 downto 0);
    signal fftStage_5_U0_p_fftOutData_0_1_0_0_0_write : STD_LOGIC;
    signal fftStage_5_U0_p_fftOutData_0_1_0_0_02_din : STD_LOGIC_VECTOR (26 downto 0);
    signal fftStage_5_U0_p_fftOutData_0_1_0_0_02_write : STD_LOGIC;
    signal fftStage_5_U0_ap_start : STD_LOGIC;
    signal fftStage_5_U0_ap_done : STD_LOGIC;
    signal fftStage_5_U0_ap_ready : STD_LOGIC;
    signal fftStage_5_U0_ap_idle : STD_LOGIC;
    signal fftStage_5_U0_ap_continue : STD_LOGIC;
    signal ap_sync_reg_fftStage_5_U0_ap_start : STD_LOGIC := '0';
    signal fftOutData_local_full_n : STD_LOGIC;
    signal fftOutData_local_dout : STD_LOGIC_VECTOR (127 downto 0);
    signal fftOutData_local_empty_n : STD_LOGIC;
    signal fftOutData_local2_2_full_n : STD_LOGIC;
    signal fftOutData_local2_2_dout : STD_LOGIC_VECTOR (127 downto 0);
    signal fftOutData_local2_2_empty_n : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component fft_top1_fftStageKernelS2S_128_2_1_0_0_3_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_s IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        fftOutData_local2_dout : IN STD_LOGIC_VECTOR (127 downto 0);
        fftOutData_local2_empty_n : IN STD_LOGIC;
        fftOutData_local2_read : OUT STD_LOGIC;
        fftOutData_local_din : OUT STD_LOGIC_VECTOR (127 downto 0);
        fftOutData_local_full_n : IN STD_LOGIC;
        fftOutData_local_write : OUT STD_LOGIC );
    end component;


    component fft_top1_streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_s IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        fftOutData_local_dout : IN STD_LOGIC_VECTOR (127 downto 0);
        fftOutData_local_empty_n : IN STD_LOGIC;
        fftOutData_local_read : OUT STD_LOGIC;
        fftOutData_local2_din : OUT STD_LOGIC_VECTOR (127 downto 0);
        fftOutData_local2_full_n : IN STD_LOGIC;
        fftOutData_local2_write : OUT STD_LOGIC );
    end component;


    component fft_top1_fftStage_5 IS
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
    end component;


    component fft_top1_fifo_w128_d8_D_x5 IS
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



begin
    fftStageKernelS2S_128_2_1_0_0_3_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0 : component fft_top1_fftStageKernelS2S_128_2_1_0_0_3_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_s
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => fftStageKernelS2S_128_2_1_0_0_3_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0_ap_start,
        ap_done => fftStageKernelS2S_128_2_1_0_0_3_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0_ap_done,
        ap_continue => fftStageKernelS2S_128_2_1_0_0_3_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0_ap_continue,
        ap_idle => fftStageKernelS2S_128_2_1_0_0_3_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0_ap_idle,
        ap_ready => fftStageKernelS2S_128_2_1_0_0_3_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0_ap_ready,
        fftOutData_local2_dout => fftOutData_local2_dout,
        fftOutData_local2_empty_n => fftOutData_local2_empty_n,
        fftOutData_local2_read => fftStageKernelS2S_128_2_1_0_0_3_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0_fftOutData_local2_read,
        fftOutData_local_din => fftStageKernelS2S_128_2_1_0_0_3_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0_fftOutData_local_din,
        fftOutData_local_full_n => fftOutData_local_full_n,
        fftOutData_local_write => fftStageKernelS2S_128_2_1_0_0_3_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0_fftOutData_local_write);

    streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0 : component fft_top1_streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_s
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0_ap_start,
        ap_done => streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0_ap_done,
        ap_continue => streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0_ap_continue,
        ap_idle => streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0_ap_idle,
        ap_ready => streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0_ap_ready,
        fftOutData_local_dout => fftOutData_local_dout,
        fftOutData_local_empty_n => fftOutData_local_empty_n,
        fftOutData_local_read => streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0_fftOutData_local_read,
        fftOutData_local2_din => streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0_fftOutData_local2_din,
        fftOutData_local2_full_n => fftOutData_local2_2_full_n,
        fftOutData_local2_write => streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0_fftOutData_local2_write);

    fftStage_5_U0 : component fft_top1_fftStage_5
    port map (
        fftOutData_local2_dout => fftOutData_local2_2_dout,
        fftOutData_local2_empty_n => fftOutData_local2_2_empty_n,
        fftOutData_local2_read => fftStage_5_U0_fftOutData_local2_read,
        p_fftOutData_0_0_0_0_0_din => fftStage_5_U0_p_fftOutData_0_0_0_0_0_din,
        p_fftOutData_0_0_0_0_0_full_n => p_fftOutData_0_0_0_0_0_full_n,
        p_fftOutData_0_0_0_0_0_write => fftStage_5_U0_p_fftOutData_0_0_0_0_0_write,
        p_fftOutData_0_0_0_0_01_din => fftStage_5_U0_p_fftOutData_0_0_0_0_01_din,
        p_fftOutData_0_0_0_0_01_full_n => p_fftOutData_0_0_0_0_01_full_n,
        p_fftOutData_0_0_0_0_01_write => fftStage_5_U0_p_fftOutData_0_0_0_0_01_write,
        p_fftOutData_0_1_0_0_0_din => fftStage_5_U0_p_fftOutData_0_1_0_0_0_din,
        p_fftOutData_0_1_0_0_0_full_n => p_fftOutData_0_1_0_0_0_full_n,
        p_fftOutData_0_1_0_0_0_write => fftStage_5_U0_p_fftOutData_0_1_0_0_0_write,
        p_fftOutData_0_1_0_0_02_din => fftStage_5_U0_p_fftOutData_0_1_0_0_02_din,
        p_fftOutData_0_1_0_0_02_full_n => p_fftOutData_0_1_0_0_02_full_n,
        p_fftOutData_0_1_0_0_02_write => fftStage_5_U0_p_fftOutData_0_1_0_0_02_write,
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => fftStage_5_U0_ap_start,
        ap_done => fftStage_5_U0_ap_done,
        ap_ready => fftStage_5_U0_ap_ready,
        ap_idle => fftStage_5_U0_ap_idle,
        ap_continue => fftStage_5_U0_ap_continue);

    fftOutData_local_U : component fft_top1_fifo_w128_d8_D_x5
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => fftStageKernelS2S_128_2_1_0_0_3_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0_fftOutData_local_din,
        if_full_n => fftOutData_local_full_n,
        if_write => fftStageKernelS2S_128_2_1_0_0_3_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0_fftOutData_local_write,
        if_dout => fftOutData_local_dout,
        if_empty_n => fftOutData_local_empty_n,
        if_read => streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0_fftOutData_local_read);

    fftOutData_local2_2_U : component fft_top1_fifo_w128_d8_D_x5
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0_fftOutData_local2_din,
        if_full_n => fftOutData_local2_2_full_n,
        if_write => streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0_fftOutData_local2_write,
        if_dout => fftOutData_local2_2_dout,
        if_empty_n => fftOutData_local2_2_empty_n,
        if_read => fftStage_5_U0_fftOutData_local2_read);





    ap_sync_reg_fftStage_5_U0_ap_start_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_fftStage_5_U0_ap_start <= ap_const_logic_0;
            else
                if ((ap_start = ap_const_logic_1)) then 
                    ap_sync_reg_fftStage_5_U0_ap_start <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_sync_reg_streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0_ap_start_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0_ap_start <= ap_const_logic_0;
            else
                if ((ap_start = ap_const_logic_1)) then 
                    ap_sync_reg_streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0_ap_start <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;

    ap_done <= fftStage_5_U0_ap_done;
    ap_idle <= (streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0_ap_idle and fftStage_5_U0_ap_idle and fftStageKernelS2S_128_2_1_0_0_3_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0_ap_idle);
    ap_ready <= fftStageKernelS2S_128_2_1_0_0_3_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0_ap_ready;
    fftOutData_local2_read <= fftStageKernelS2S_128_2_1_0_0_3_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0_fftOutData_local2_read;
    fftStageKernelS2S_128_2_1_0_0_3_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0_ap_continue <= ap_const_logic_1;
    fftStageKernelS2S_128_2_1_0_0_3_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0_ap_start <= ap_start;
    fftStage_5_U0_ap_continue <= ap_continue;
    fftStage_5_U0_ap_start <= (ap_sync_reg_fftStage_5_U0_ap_start or ap_start);
    p_fftOutData_0_0_0_0_01_din <= fftStage_5_U0_p_fftOutData_0_0_0_0_01_din;
    p_fftOutData_0_0_0_0_01_write <= fftStage_5_U0_p_fftOutData_0_0_0_0_01_write;
    p_fftOutData_0_0_0_0_0_din <= fftStage_5_U0_p_fftOutData_0_0_0_0_0_din;
    p_fftOutData_0_0_0_0_0_write <= fftStage_5_U0_p_fftOutData_0_0_0_0_0_write;
    p_fftOutData_0_1_0_0_02_din <= fftStage_5_U0_p_fftOutData_0_1_0_0_02_din;
    p_fftOutData_0_1_0_0_02_write <= fftStage_5_U0_p_fftOutData_0_1_0_0_02_write;
    p_fftOutData_0_1_0_0_0_din <= fftStage_5_U0_p_fftOutData_0_1_0_0_0_din;
    p_fftOutData_0_1_0_0_0_write <= fftStage_5_U0_p_fftOutData_0_1_0_0_0_write;
    streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0_ap_continue <= ap_const_logic_1;
    streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0_ap_start <= (ap_sync_reg_streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0_ap_start or ap_start);
end behav;
