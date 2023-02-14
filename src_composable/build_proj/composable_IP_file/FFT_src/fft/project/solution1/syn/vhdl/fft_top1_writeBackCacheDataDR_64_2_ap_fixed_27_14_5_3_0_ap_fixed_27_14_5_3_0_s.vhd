-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fft_top1_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    p_outData_0_0_0_0_0_din : OUT STD_LOGIC_VECTOR (26 downto 0);
    p_outData_0_0_0_0_0_full_n : IN STD_LOGIC;
    p_outData_0_0_0_0_0_write : OUT STD_LOGIC;
    p_outData_0_1_0_0_0_din : OUT STD_LOGIC_VECTOR (26 downto 0);
    p_outData_0_1_0_0_0_full_n : IN STD_LOGIC;
    p_outData_0_1_0_0_0_write : OUT STD_LOGIC;
    p_outData_0_0_0_0_03_din : OUT STD_LOGIC_VECTOR (26 downto 0);
    p_outData_0_0_0_0_03_full_n : IN STD_LOGIC;
    p_outData_0_0_0_0_03_write : OUT STD_LOGIC;
    p_outData_0_1_0_0_04_din : OUT STD_LOGIC_VECTOR (26 downto 0);
    p_outData_0_1_0_0_04_full_n : IN STD_LOGIC;
    p_outData_0_1_0_0_04_write : OUT STD_LOGIC;
    p_digitReseversedOutputBuff_M_real_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    p_digitReseversedOutputBuff_M_real_ce0 : OUT STD_LOGIC;
    p_digitReseversedOutputBuff_M_real_q0 : IN STD_LOGIC_VECTOR (26 downto 0);
    p_digitReseversedOutputBuff_M_real1_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    p_digitReseversedOutputBuff_M_real1_ce0 : OUT STD_LOGIC;
    p_digitReseversedOutputBuff_M_real1_q0 : IN STD_LOGIC_VECTOR (26 downto 0);
    p_digitReseversedOutputBuff_M_imag_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    p_digitReseversedOutputBuff_M_imag_ce0 : OUT STD_LOGIC;
    p_digitReseversedOutputBuff_M_imag_q0 : IN STD_LOGIC_VECTOR (26 downto 0);
    p_digitReseversedOutputBuff_M_imag2_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    p_digitReseversedOutputBuff_M_imag2_ce0 : OUT STD_LOGIC;
    p_digitReseversedOutputBuff_M_imag2_q0 : IN STD_LOGIC_VECTOR (26 downto 0) );
end;


architecture behav of fft_top1_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv5_1F : STD_LOGIC_VECTOR (4 downto 0) := "11111";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal icmp_ln319_fu_236_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal io_acc_block_signal_op43 : STD_LOGIC;
    signal io_acc_block_signal_op44 : STD_LOGIC;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal p_outData_0_0_0_0_0_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal p_outData_0_0_0_0_03_blk_n : STD_LOGIC;
    signal p_outData_0_1_0_0_0_blk_n : STD_LOGIC;
    signal p_outData_0_1_0_0_04_blk_n : STD_LOGIC;
    signal r21_reg_142 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_2_fu_156_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_2_reg_276 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_fu_230_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal r_reg_304 : STD_LOGIC_VECTOR (4 downto 0);
    signal icmp_ln319_reg_309 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_phi_mux_r21_phi_fu_146_p6 : STD_LOGIC_VECTOR (4 downto 0);
    signal zext_ln344_fu_194_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln344_1_fu_224_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal trunc_ln150_fu_164_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_fu_176_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal out_r_fu_186_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal or_ln_fu_168_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal xor_ln150_fu_200_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_fu_206_p4 : STD_LOGIC_VECTOR (2 downto 0);
    signal out_r_1_fu_216_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_idle_pp0_0to0 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_condition_96 : BOOLEAN;
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


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start;
                elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    r21_reg_142_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln319_reg_309 = ap_const_lv1_0))) then 
                r21_reg_142 <= r_reg_304;
            elsif ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln319_reg_309 = ap_const_lv1_1)) or ((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
                r21_reg_142 <= ap_const_lv5_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln319_reg_309 <= icmp_ln319_fu_236_p2;
                tmp_2_reg_276 <= ap_phi_mux_r21_phi_fu_146_p6(4 downto 4);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                r_reg_304 <= r_fu_230_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_block_pp0_stage0_subdone, ap_reset_idle_pp0)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if ((ap_reset_idle_pp0 = ap_const_logic_0)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_reset_idle_pp0 = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start)
    begin
        if ((ap_start = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(io_acc_block_signal_op43, io_acc_block_signal_op44, ap_enable_reg_pp0_iter1)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((io_acc_block_signal_op44 = ap_const_logic_0) or (io_acc_block_signal_op43 = ap_const_logic_0)));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(io_acc_block_signal_op43, io_acc_block_signal_op44, ap_enable_reg_pp0_iter1)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((io_acc_block_signal_op44 = ap_const_logic_0) or (io_acc_block_signal_op43 = ap_const_logic_0)));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(io_acc_block_signal_op43, io_acc_block_signal_op44, ap_enable_reg_pp0_iter1)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((io_acc_block_signal_op44 = ap_const_logic_0) or (io_acc_block_signal_op43 = ap_const_logic_0)));
    end process;

        ap_block_state2_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state3_pp0_stage0_iter1_assign_proc : process(io_acc_block_signal_op43, io_acc_block_signal_op44)
    begin
                ap_block_state3_pp0_stage0_iter1 <= ((io_acc_block_signal_op44 = ap_const_logic_0) or (io_acc_block_signal_op43 = ap_const_logic_0));
    end process;


    ap_condition_96_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0)
    begin
                ap_condition_96 <= ((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001, icmp_ln319_reg_309)
    begin
        if ((((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln319_reg_309 = ap_const_lv1_1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start;

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_0to0_assign_proc : process(ap_enable_reg_pp0_iter0)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_0)) then 
            ap_idle_pp0_0to0 <= ap_const_logic_1;
        else 
            ap_idle_pp0_0to0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_phi_mux_r21_phi_fu_146_p6_assign_proc : process(r21_reg_142, r_reg_304, icmp_ln319_reg_309, ap_condition_96)
    begin
        if ((ap_const_boolean_1 = ap_condition_96)) then
            if ((icmp_ln319_reg_309 = ap_const_lv1_1)) then 
                ap_phi_mux_r21_phi_fu_146_p6 <= ap_const_lv5_0;
            elsif ((icmp_ln319_reg_309 = ap_const_lv1_0)) then 
                ap_phi_mux_r21_phi_fu_146_p6 <= r_reg_304;
            else 
                ap_phi_mux_r21_phi_fu_146_p6 <= r21_reg_142;
            end if;
        else 
            ap_phi_mux_r21_phi_fu_146_p6 <= r21_reg_142;
        end if; 
    end process;


    ap_ready_assign_proc : process(icmp_ln319_fu_236_p2, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (icmp_ln319_fu_236_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_reset_idle_pp0_assign_proc : process(ap_start, ap_idle_pp0_0to0)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_idle_pp0_0to0 = ap_const_logic_1))) then 
            ap_reset_idle_pp0 <= ap_const_logic_1;
        else 
            ap_reset_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln319_fu_236_p2 <= "1" when (ap_phi_mux_r21_phi_fu_146_p6 = ap_const_lv5_1F) else "0";
    io_acc_block_signal_op43 <= (p_outData_0_1_0_0_0_full_n and p_outData_0_0_0_0_0_full_n);
    io_acc_block_signal_op44 <= (p_outData_0_1_0_0_04_full_n and p_outData_0_0_0_0_03_full_n);
    or_ln_fu_168_p3 <= (tmp_2_fu_156_p3 & trunc_ln150_fu_164_p1);
    out_r_1_fu_216_p3 <= (xor_ln150_fu_200_p2 & tmp_1_fu_206_p4);
    out_r_fu_186_p3 <= (tmp_2_fu_156_p3 & tmp_fu_176_p4);
    p_digitReseversedOutputBuff_M_imag2_address0 <= zext_ln344_1_fu_224_p1(5 - 1 downto 0);

    p_digitReseversedOutputBuff_M_imag2_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_digitReseversedOutputBuff_M_imag2_ce0 <= ap_const_logic_1;
        else 
            p_digitReseversedOutputBuff_M_imag2_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    p_digitReseversedOutputBuff_M_imag_address0 <= zext_ln344_fu_194_p1(5 - 1 downto 0);

    p_digitReseversedOutputBuff_M_imag_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_digitReseversedOutputBuff_M_imag_ce0 <= ap_const_logic_1;
        else 
            p_digitReseversedOutputBuff_M_imag_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    p_digitReseversedOutputBuff_M_real1_address0 <= zext_ln344_1_fu_224_p1(5 - 1 downto 0);

    p_digitReseversedOutputBuff_M_real1_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_digitReseversedOutputBuff_M_real1_ce0 <= ap_const_logic_1;
        else 
            p_digitReseversedOutputBuff_M_real1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    p_digitReseversedOutputBuff_M_real_address0 <= zext_ln344_fu_194_p1(5 - 1 downto 0);

    p_digitReseversedOutputBuff_M_real_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_digitReseversedOutputBuff_M_real_ce0 <= ap_const_logic_1;
        else 
            p_digitReseversedOutputBuff_M_real_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    p_outData_0_0_0_0_03_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, p_outData_0_0_0_0_03_full_n, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_outData_0_0_0_0_03_blk_n <= p_outData_0_0_0_0_03_full_n;
        else 
            p_outData_0_0_0_0_03_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    p_outData_0_0_0_0_03_din <= 
        p_digitReseversedOutputBuff_M_real_q0 when (tmp_2_reg_276(0) = '1') else 
        p_digitReseversedOutputBuff_M_real1_q0;

    p_outData_0_0_0_0_03_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_outData_0_0_0_0_03_write <= ap_const_logic_1;
        else 
            p_outData_0_0_0_0_03_write <= ap_const_logic_0;
        end if; 
    end process;


    p_outData_0_0_0_0_0_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, p_outData_0_0_0_0_0_full_n, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_outData_0_0_0_0_0_blk_n <= p_outData_0_0_0_0_0_full_n;
        else 
            p_outData_0_0_0_0_0_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    p_outData_0_0_0_0_0_din <= 
        p_digitReseversedOutputBuff_M_real1_q0 when (tmp_2_reg_276(0) = '1') else 
        p_digitReseversedOutputBuff_M_real_q0;

    p_outData_0_0_0_0_0_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_outData_0_0_0_0_0_write <= ap_const_logic_1;
        else 
            p_outData_0_0_0_0_0_write <= ap_const_logic_0;
        end if; 
    end process;


    p_outData_0_1_0_0_04_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, p_outData_0_1_0_0_04_full_n, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_outData_0_1_0_0_04_blk_n <= p_outData_0_1_0_0_04_full_n;
        else 
            p_outData_0_1_0_0_04_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    p_outData_0_1_0_0_04_din <= 
        p_digitReseversedOutputBuff_M_imag_q0 when (tmp_2_reg_276(0) = '1') else 
        p_digitReseversedOutputBuff_M_imag2_q0;

    p_outData_0_1_0_0_04_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_outData_0_1_0_0_04_write <= ap_const_logic_1;
        else 
            p_outData_0_1_0_0_04_write <= ap_const_logic_0;
        end if; 
    end process;


    p_outData_0_1_0_0_0_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, p_outData_0_1_0_0_0_full_n, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_outData_0_1_0_0_0_blk_n <= p_outData_0_1_0_0_0_full_n;
        else 
            p_outData_0_1_0_0_0_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    p_outData_0_1_0_0_0_din <= 
        p_digitReseversedOutputBuff_M_imag2_q0 when (tmp_2_reg_276(0) = '1') else 
        p_digitReseversedOutputBuff_M_imag_q0;

    p_outData_0_1_0_0_0_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_outData_0_1_0_0_0_write <= ap_const_logic_1;
        else 
            p_outData_0_1_0_0_0_write <= ap_const_logic_0;
        end if; 
    end process;

    r_fu_230_p2 <= std_logic_vector(unsigned(ap_phi_mux_r21_phi_fu_146_p6) + unsigned(ap_const_lv5_1));
    
    tmp_1_fu_206_p4_proc : process(ap_phi_mux_r21_phi_fu_146_p6)
    variable vlo_cpy : STD_LOGIC_VECTOR(5+32 - 1 downto 0);
    variable vhi_cpy : STD_LOGIC_VECTOR(5+32 - 1 downto 0);
    variable v0_cpy : STD_LOGIC_VECTOR(5 - 1 downto 0);
    variable tmp_1_fu_206_p4_i : integer;
    variable section : STD_LOGIC_VECTOR(5 - 1 downto 0);
    variable tmp_mask : STD_LOGIC_VECTOR(5 - 1 downto 0);
    variable resvalue, res_value, res_mask : STD_LOGIC_VECTOR(5 - 1 downto 0);
    begin
        vlo_cpy := (others => '0');
        vlo_cpy(3 - 1 downto 0) := ap_const_lv32_3(3 - 1 downto 0);
        vhi_cpy := (others => '0');
        vhi_cpy(3 - 1 downto 0) := ap_const_lv32_1(3 - 1 downto 0);
        v0_cpy := ap_phi_mux_r21_phi_fu_146_p6;
        if (vlo_cpy(3 - 1 downto 0) > vhi_cpy(3 - 1 downto 0)) then
            vhi_cpy(3-1 downto 0) := std_logic_vector(5-1-unsigned(ap_const_lv32_1(3-1 downto 0)));
            vlo_cpy(3-1 downto 0) := std_logic_vector(5-1-unsigned(ap_const_lv32_3(3-1 downto 0)));
            for tmp_1_fu_206_p4_i in 0 to 5-1 loop
                v0_cpy(tmp_1_fu_206_p4_i) := ap_phi_mux_r21_phi_fu_146_p6(5-1-tmp_1_fu_206_p4_i);
            end loop;
        end if;
        res_value := std_logic_vector(shift_right(unsigned(v0_cpy), to_integer(unsigned('0' & vlo_cpy(3-1 downto 0)))));

        section := (others=>'0');
        section(3-1 downto 0) := std_logic_vector(unsigned(vhi_cpy(3-1 downto 0)) - unsigned(vlo_cpy(3-1 downto 0)));
        tmp_mask := (others => '1');
        res_mask := std_logic_vector(shift_left(unsigned(tmp_mask),to_integer(unsigned('0' & section(5-1 downto 0)))));
        res_mask := res_mask(5-2 downto 0) & '0';
        resvalue := res_value and not res_mask;
        tmp_1_fu_206_p4 <= resvalue(3-1 downto 0);
    end process;

    tmp_2_fu_156_p3 <= ap_phi_mux_r21_phi_fu_146_p6(4 downto 4);
    
    tmp_fu_176_p4_proc : process(ap_phi_mux_r21_phi_fu_146_p6)
    variable vlo_cpy : STD_LOGIC_VECTOR(5+32 - 1 downto 0);
    variable vhi_cpy : STD_LOGIC_VECTOR(5+32 - 1 downto 0);
    variable v0_cpy : STD_LOGIC_VECTOR(5 - 1 downto 0);
    variable tmp_fu_176_p4_i : integer;
    variable section : STD_LOGIC_VECTOR(5 - 1 downto 0);
    variable tmp_mask : STD_LOGIC_VECTOR(5 - 1 downto 0);
    variable resvalue, res_value, res_mask : STD_LOGIC_VECTOR(5 - 1 downto 0);
    begin
        vlo_cpy := (others => '0');
        vlo_cpy(3 - 1 downto 0) := ap_const_lv32_3(3 - 1 downto 0);
        vhi_cpy := (others => '0');
        vhi_cpy(3 - 1 downto 0) := ap_const_lv32_0(3 - 1 downto 0);
        v0_cpy := ap_phi_mux_r21_phi_fu_146_p6;
        if (vlo_cpy(3 - 1 downto 0) > vhi_cpy(3 - 1 downto 0)) then
            vhi_cpy(3-1 downto 0) := std_logic_vector(5-1-unsigned(ap_const_lv32_0(3-1 downto 0)));
            vlo_cpy(3-1 downto 0) := std_logic_vector(5-1-unsigned(ap_const_lv32_3(3-1 downto 0)));
            for tmp_fu_176_p4_i in 0 to 5-1 loop
                v0_cpy(tmp_fu_176_p4_i) := ap_phi_mux_r21_phi_fu_146_p6(5-1-tmp_fu_176_p4_i);
            end loop;
        end if;
        res_value := std_logic_vector(shift_right(unsigned(v0_cpy), to_integer(unsigned('0' & vlo_cpy(3-1 downto 0)))));

        section := (others=>'0');
        section(3-1 downto 0) := std_logic_vector(unsigned(vhi_cpy(3-1 downto 0)) - unsigned(vlo_cpy(3-1 downto 0)));
        tmp_mask := (others => '1');
        res_mask := std_logic_vector(shift_left(unsigned(tmp_mask),to_integer(unsigned('0' & section(5-1 downto 0)))));
        res_mask := res_mask(5-2 downto 0) & '0';
        resvalue := res_value and not res_mask;
        tmp_fu_176_p4 <= resvalue(4-1 downto 0);
    end process;

    trunc_ln150_fu_164_p1 <= ap_phi_mux_r21_phi_fu_146_p6(1 - 1 downto 0);
    xor_ln150_fu_200_p2 <= (or_ln_fu_168_p3 xor ap_const_lv2_2);
    zext_ln344_1_fu_224_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(out_r_1_fu_216_p3),64));
    zext_ln344_fu_194_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(out_r_fu_186_p3),64));
end behav;
