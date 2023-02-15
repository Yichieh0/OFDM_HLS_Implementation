-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fft_top0_cacheDataDR_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_s is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
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
    p_digitReseversedOutputBuff_M_real_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    p_digitReseversedOutputBuff_M_real_ce0 : OUT STD_LOGIC;
    p_digitReseversedOutputBuff_M_real_we0 : OUT STD_LOGIC;
    p_digitReseversedOutputBuff_M_real_d0 : OUT STD_LOGIC_VECTOR (26 downto 0);
    p_digitReseversedOutputBuff_M_real3_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    p_digitReseversedOutputBuff_M_real3_ce0 : OUT STD_LOGIC;
    p_digitReseversedOutputBuff_M_real3_we0 : OUT STD_LOGIC;
    p_digitReseversedOutputBuff_M_real3_d0 : OUT STD_LOGIC_VECTOR (26 downto 0);
    p_digitReseversedOutputBuff_M_imag_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    p_digitReseversedOutputBuff_M_imag_ce0 : OUT STD_LOGIC;
    p_digitReseversedOutputBuff_M_imag_we0 : OUT STD_LOGIC;
    p_digitReseversedOutputBuff_M_imag_d0 : OUT STD_LOGIC_VECTOR (26 downto 0);
    p_digitReseversedOutputBuff_M_imag4_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    p_digitReseversedOutputBuff_M_imag4_ce0 : OUT STD_LOGIC;
    p_digitReseversedOutputBuff_M_imag4_we0 : OUT STD_LOGIC;
    p_digitReseversedOutputBuff_M_imag4_d0 : OUT STD_LOGIC_VECTOR (26 downto 0) );
end;


architecture behav of fft_top0_cacheDataDR_64_2_ap_fixed_27_8_5_3_0_ap_fixed_27_8_5_3_0_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv5_1F : STD_LOGIC_VECTOR (4 downto 0) := "11111";
    constant ap_const_boolean_1 : BOOLEAN := true;

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal p_inData_0_0_0_0_0_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal p_inData_0_0_0_0_01_blk_n : STD_LOGIC;
    signal p_inData_0_1_0_0_0_blk_n : STD_LOGIC;
    signal p_inData_0_1_0_0_02_blk_n : STD_LOGIC;
    signal r_fu_233_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal io_acc_block_signal_op19 : STD_LOGIC;
    signal io_acc_block_signal_op22 : STD_LOGIC;
    signal ap_block_state2 : BOOLEAN;
    signal icmp_ln171_fu_239_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal r21_reg_151 : STD_LOGIC_VECTOR (4 downto 0);
    signal zext_ln171_fu_165_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_fu_173_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    r21_reg_151_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((io_acc_block_signal_op22 = ap_const_logic_0) or (io_acc_block_signal_op19 = ap_const_logic_0) or (ap_start = ap_const_logic_0))) and (icmp_ln171_fu_239_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                r21_reg_151 <= r_fu_233_p2;
            elsif (((not(((io_acc_block_signal_op22 = ap_const_logic_0) or (io_acc_block_signal_op19 = ap_const_logic_0) or (ap_start = ap_const_logic_0))) and (icmp_ln171_fu_239_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
                r21_reg_151 <= ap_const_lv5_0;
            end if; 
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, io_acc_block_signal_op19, io_acc_block_signal_op22, icmp_ln171_fu_239_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if ((not(((io_acc_block_signal_op22 = ap_const_logic_0) or (io_acc_block_signal_op19 = ap_const_logic_0) or (ap_start = ap_const_logic_0))) and (icmp_ln171_fu_239_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                elsif ((not(((io_acc_block_signal_op22 = ap_const_logic_0) or (io_acc_block_signal_op19 = ap_const_logic_0) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start)
    begin
        if ((ap_start = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state2_blk_assign_proc : process(ap_start, io_acc_block_signal_op19, io_acc_block_signal_op22)
    begin
        if (((io_acc_block_signal_op22 = ap_const_logic_0) or (io_acc_block_signal_op19 = ap_const_logic_0) or (ap_start = ap_const_logic_0))) then 
            ap_ST_fsm_state2_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state2_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state2_assign_proc : process(ap_start, io_acc_block_signal_op19, io_acc_block_signal_op22)
    begin
                ap_block_state2 <= ((io_acc_block_signal_op22 = ap_const_logic_0) or (io_acc_block_signal_op19 = ap_const_logic_0) or (ap_start = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, io_acc_block_signal_op19, io_acc_block_signal_op22, icmp_ln171_fu_239_p2)
    begin
        if ((((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)) or (not(((io_acc_block_signal_op22 = ap_const_logic_0) or (io_acc_block_signal_op19 = ap_const_logic_0) or (ap_start = ap_const_logic_0))) and (icmp_ln171_fu_239_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_start, ap_CS_fsm_state2, io_acc_block_signal_op19, io_acc_block_signal_op22, icmp_ln171_fu_239_p2)
    begin
        if ((not(((io_acc_block_signal_op22 = ap_const_logic_0) or (io_acc_block_signal_op19 = ap_const_logic_0) or (ap_start = ap_const_logic_0))) and (icmp_ln171_fu_239_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln171_fu_239_p2 <= "1" when (r21_reg_151 = ap_const_lv5_1F) else "0";
    io_acc_block_signal_op19 <= (p_inData_0_1_0_0_0_empty_n and p_inData_0_0_0_0_0_empty_n);
    io_acc_block_signal_op22 <= (p_inData_0_1_0_0_02_empty_n and p_inData_0_0_0_0_01_empty_n);
    p_digitReseversedOutputBuff_M_imag4_address0 <= zext_ln171_fu_165_p1(5 - 1 downto 0);

    p_digitReseversedOutputBuff_M_imag4_ce0_assign_proc : process(ap_start, ap_CS_fsm_state2, io_acc_block_signal_op19, io_acc_block_signal_op22)
    begin
        if ((not(((io_acc_block_signal_op22 = ap_const_logic_0) or (io_acc_block_signal_op19 = ap_const_logic_0) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            p_digitReseversedOutputBuff_M_imag4_ce0 <= ap_const_logic_1;
        else 
            p_digitReseversedOutputBuff_M_imag4_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    p_digitReseversedOutputBuff_M_imag4_d0 <= 
        p_inData_0_1_0_0_0_dout when (tmp_fu_173_p3(0) = '1') else 
        p_inData_0_1_0_0_02_dout;

    p_digitReseversedOutputBuff_M_imag4_we0_assign_proc : process(ap_start, ap_CS_fsm_state2, io_acc_block_signal_op19, io_acc_block_signal_op22)
    begin
        if ((not(((io_acc_block_signal_op22 = ap_const_logic_0) or (io_acc_block_signal_op19 = ap_const_logic_0) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            p_digitReseversedOutputBuff_M_imag4_we0 <= ap_const_logic_1;
        else 
            p_digitReseversedOutputBuff_M_imag4_we0 <= ap_const_logic_0;
        end if; 
    end process;

    p_digitReseversedOutputBuff_M_imag_address0 <= zext_ln171_fu_165_p1(5 - 1 downto 0);

    p_digitReseversedOutputBuff_M_imag_ce0_assign_proc : process(ap_start, ap_CS_fsm_state2, io_acc_block_signal_op19, io_acc_block_signal_op22)
    begin
        if ((not(((io_acc_block_signal_op22 = ap_const_logic_0) or (io_acc_block_signal_op19 = ap_const_logic_0) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            p_digitReseversedOutputBuff_M_imag_ce0 <= ap_const_logic_1;
        else 
            p_digitReseversedOutputBuff_M_imag_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    p_digitReseversedOutputBuff_M_imag_d0 <= 
        p_inData_0_1_0_0_02_dout when (tmp_fu_173_p3(0) = '1') else 
        p_inData_0_1_0_0_0_dout;

    p_digitReseversedOutputBuff_M_imag_we0_assign_proc : process(ap_start, ap_CS_fsm_state2, io_acc_block_signal_op19, io_acc_block_signal_op22)
    begin
        if ((not(((io_acc_block_signal_op22 = ap_const_logic_0) or (io_acc_block_signal_op19 = ap_const_logic_0) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            p_digitReseversedOutputBuff_M_imag_we0 <= ap_const_logic_1;
        else 
            p_digitReseversedOutputBuff_M_imag_we0 <= ap_const_logic_0;
        end if; 
    end process;

    p_digitReseversedOutputBuff_M_real3_address0 <= zext_ln171_fu_165_p1(5 - 1 downto 0);

    p_digitReseversedOutputBuff_M_real3_ce0_assign_proc : process(ap_start, ap_CS_fsm_state2, io_acc_block_signal_op19, io_acc_block_signal_op22)
    begin
        if ((not(((io_acc_block_signal_op22 = ap_const_logic_0) or (io_acc_block_signal_op19 = ap_const_logic_0) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            p_digitReseversedOutputBuff_M_real3_ce0 <= ap_const_logic_1;
        else 
            p_digitReseversedOutputBuff_M_real3_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    p_digitReseversedOutputBuff_M_real3_d0 <= 
        p_inData_0_0_0_0_0_dout when (tmp_fu_173_p3(0) = '1') else 
        p_inData_0_0_0_0_01_dout;

    p_digitReseversedOutputBuff_M_real3_we0_assign_proc : process(ap_start, ap_CS_fsm_state2, io_acc_block_signal_op19, io_acc_block_signal_op22)
    begin
        if ((not(((io_acc_block_signal_op22 = ap_const_logic_0) or (io_acc_block_signal_op19 = ap_const_logic_0) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            p_digitReseversedOutputBuff_M_real3_we0 <= ap_const_logic_1;
        else 
            p_digitReseversedOutputBuff_M_real3_we0 <= ap_const_logic_0;
        end if; 
    end process;

    p_digitReseversedOutputBuff_M_real_address0 <= zext_ln171_fu_165_p1(5 - 1 downto 0);

    p_digitReseversedOutputBuff_M_real_ce0_assign_proc : process(ap_start, ap_CS_fsm_state2, io_acc_block_signal_op19, io_acc_block_signal_op22)
    begin
        if ((not(((io_acc_block_signal_op22 = ap_const_logic_0) or (io_acc_block_signal_op19 = ap_const_logic_0) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            p_digitReseversedOutputBuff_M_real_ce0 <= ap_const_logic_1;
        else 
            p_digitReseversedOutputBuff_M_real_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    p_digitReseversedOutputBuff_M_real_d0 <= 
        p_inData_0_0_0_0_01_dout when (tmp_fu_173_p3(0) = '1') else 
        p_inData_0_0_0_0_0_dout;

    p_digitReseversedOutputBuff_M_real_we0_assign_proc : process(ap_start, ap_CS_fsm_state2, io_acc_block_signal_op19, io_acc_block_signal_op22)
    begin
        if ((not(((io_acc_block_signal_op22 = ap_const_logic_0) or (io_acc_block_signal_op19 = ap_const_logic_0) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            p_digitReseversedOutputBuff_M_real_we0 <= ap_const_logic_1;
        else 
            p_digitReseversedOutputBuff_M_real_we0 <= ap_const_logic_0;
        end if; 
    end process;


    p_inData_0_0_0_0_01_blk_n_assign_proc : process(ap_start, p_inData_0_0_0_0_01_empty_n, ap_CS_fsm_state2)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            p_inData_0_0_0_0_01_blk_n <= p_inData_0_0_0_0_01_empty_n;
        else 
            p_inData_0_0_0_0_01_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    p_inData_0_0_0_0_01_read_assign_proc : process(ap_start, ap_CS_fsm_state2, io_acc_block_signal_op19, io_acc_block_signal_op22)
    begin
        if ((not(((io_acc_block_signal_op22 = ap_const_logic_0) or (io_acc_block_signal_op19 = ap_const_logic_0) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            p_inData_0_0_0_0_01_read <= ap_const_logic_1;
        else 
            p_inData_0_0_0_0_01_read <= ap_const_logic_0;
        end if; 
    end process;


    p_inData_0_0_0_0_0_blk_n_assign_proc : process(ap_start, p_inData_0_0_0_0_0_empty_n, ap_CS_fsm_state2)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            p_inData_0_0_0_0_0_blk_n <= p_inData_0_0_0_0_0_empty_n;
        else 
            p_inData_0_0_0_0_0_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    p_inData_0_0_0_0_0_read_assign_proc : process(ap_start, ap_CS_fsm_state2, io_acc_block_signal_op19, io_acc_block_signal_op22)
    begin
        if ((not(((io_acc_block_signal_op22 = ap_const_logic_0) or (io_acc_block_signal_op19 = ap_const_logic_0) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            p_inData_0_0_0_0_0_read <= ap_const_logic_1;
        else 
            p_inData_0_0_0_0_0_read <= ap_const_logic_0;
        end if; 
    end process;


    p_inData_0_1_0_0_02_blk_n_assign_proc : process(ap_start, p_inData_0_1_0_0_02_empty_n, ap_CS_fsm_state2)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            p_inData_0_1_0_0_02_blk_n <= p_inData_0_1_0_0_02_empty_n;
        else 
            p_inData_0_1_0_0_02_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    p_inData_0_1_0_0_02_read_assign_proc : process(ap_start, ap_CS_fsm_state2, io_acc_block_signal_op19, io_acc_block_signal_op22)
    begin
        if ((not(((io_acc_block_signal_op22 = ap_const_logic_0) or (io_acc_block_signal_op19 = ap_const_logic_0) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            p_inData_0_1_0_0_02_read <= ap_const_logic_1;
        else 
            p_inData_0_1_0_0_02_read <= ap_const_logic_0;
        end if; 
    end process;


    p_inData_0_1_0_0_0_blk_n_assign_proc : process(ap_start, p_inData_0_1_0_0_0_empty_n, ap_CS_fsm_state2)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            p_inData_0_1_0_0_0_blk_n <= p_inData_0_1_0_0_0_empty_n;
        else 
            p_inData_0_1_0_0_0_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    p_inData_0_1_0_0_0_read_assign_proc : process(ap_start, ap_CS_fsm_state2, io_acc_block_signal_op19, io_acc_block_signal_op22)
    begin
        if ((not(((io_acc_block_signal_op22 = ap_const_logic_0) or (io_acc_block_signal_op19 = ap_const_logic_0) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            p_inData_0_1_0_0_0_read <= ap_const_logic_1;
        else 
            p_inData_0_1_0_0_0_read <= ap_const_logic_0;
        end if; 
    end process;

    r_fu_233_p2 <= std_logic_vector(unsigned(r21_reg_151) + unsigned(ap_const_lv5_1));
    tmp_fu_173_p3 <= r21_reg_151(4 downto 4);
    zext_ln171_fu_165_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(r21_reg_151),64));
end behav;