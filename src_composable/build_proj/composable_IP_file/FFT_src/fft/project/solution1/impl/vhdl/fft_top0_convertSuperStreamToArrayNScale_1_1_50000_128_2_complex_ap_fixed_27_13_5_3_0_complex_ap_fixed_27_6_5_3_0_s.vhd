-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fft_top0_convertSuperStreamToArrayNScale_1_1_50000_128_2_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_6_5_3_0_s is
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
end;


architecture behav of fft_top0_convertSuperStreamToArrayNScale_1_1_50000_128_2_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_6_5_3_0_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv7_40 : STD_LOGIC_VECTOR (6 downto 0) := "1000000";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_3A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111010";
    constant ap_const_lv32_40 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000000";
    constant ap_const_lv32_5A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001011010";
    constant ap_const_lv32_60 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001100000";
    constant ap_const_lv32_7A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001111010";
    constant ap_const_lv32_1A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011010";
    constant ap_const_lv27_0 : STD_LOGIC_VECTOR (26 downto 0) := "000000000000000000000000000";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv20_0 : STD_LOGIC_VECTOR (19 downto 0) := "00000000000000000000";
    constant ap_const_lv32_27 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100111";
    constant ap_const_lv32_47 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000111";
    constant ap_const_lv32_67 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001100111";

attribute shreg_extract : string;
    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal internal_ap_ready : STD_LOGIC;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal io_acc_block_signal_op43 : STD_LOGIC;
    signal io_acc_block_signal_op58 : STD_LOGIC;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln222_fu_130_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal fftOutData_local_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal p_outDataArray_0_0_0_0_0_blk_n : STD_LOGIC;
    signal p_outDataArray_0_0_0_0_01_blk_n : STD_LOGIC;
    signal p_outDataArray_0_1_0_0_0_blk_n : STD_LOGIC;
    signal p_outDataArray_0_1_0_0_02_blk_n : STD_LOGIC;
    signal i_fu_92 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal ap_sig_allocacmp_i_1 : STD_LOGIC_VECTOR (6 downto 0);
    signal i_2_fu_136_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal t_V_fu_147_p1 : STD_LOGIC_VECTOR (26 downto 0);
    signal sub_ln1201_fu_189_p2 : STD_LOGIC_VECTOR (26 downto 0);
    signal trunc_ln1201_1_fu_195_p4 : STD_LOGIC_VECTOR (19 downto 0);
    signal tmp_56_fu_181_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal sub_ln1201_1_fu_205_p2 : STD_LOGIC_VECTOR (19 downto 0);
    signal tmp_fu_211_p4 : STD_LOGIC_VECTOR (19 downto 0);
    signal select_ln1201_fu_221_p3 : STD_LOGIC_VECTOR (19 downto 0);
    signal t_V_1_fu_151_p4 : STD_LOGIC_VECTOR (26 downto 0);
    signal sub_ln1201_2_fu_246_p2 : STD_LOGIC_VECTOR (26 downto 0);
    signal trunc_ln1201_4_fu_252_p4 : STD_LOGIC_VECTOR (19 downto 0);
    signal tmp_57_fu_238_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal sub_ln1201_3_fu_262_p2 : STD_LOGIC_VECTOR (19 downto 0);
    signal tmp_s_fu_268_p4 : STD_LOGIC_VECTOR (19 downto 0);
    signal select_ln1201_1_fu_278_p3 : STD_LOGIC_VECTOR (19 downto 0);
    signal t_V_2_fu_161_p4 : STD_LOGIC_VECTOR (26 downto 0);
    signal sub_ln1201_4_fu_303_p2 : STD_LOGIC_VECTOR (26 downto 0);
    signal trunc_ln1201_7_fu_309_p4 : STD_LOGIC_VECTOR (19 downto 0);
    signal tmp_58_fu_295_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal sub_ln1201_5_fu_319_p2 : STD_LOGIC_VECTOR (19 downto 0);
    signal tmp_1_fu_325_p4 : STD_LOGIC_VECTOR (19 downto 0);
    signal select_ln1201_2_fu_335_p3 : STD_LOGIC_VECTOR (19 downto 0);
    signal t_V_3_fu_171_p4 : STD_LOGIC_VECTOR (26 downto 0);
    signal sub_ln1201_6_fu_360_p2 : STD_LOGIC_VECTOR (26 downto 0);
    signal trunc_ln1201_s_fu_366_p4 : STD_LOGIC_VECTOR (19 downto 0);
    signal tmp_59_fu_352_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal sub_ln1201_7_fu_376_p2 : STD_LOGIC_VECTOR (19 downto 0);
    signal tmp_2_fu_382_p4 : STD_LOGIC_VECTOR (19 downto 0);
    signal select_ln1201_3_fu_392_p3 : STD_LOGIC_VECTOR (19 downto 0);
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_condition_117 : BOOLEAN;
    signal ap_ce_reg : STD_LOGIC;

    component fft_top0_flow_control_loop_pipe IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC;
        ap_continue : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_U : component fft_top0_flow_control_loop_pipe
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => real_start,
        ap_ready => internal_ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int,
        ap_continue => ap_continue);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    start_once_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                start_once_reg <= ap_const_logic_0;
            else
                if (((real_start = ap_const_logic_1) and (internal_ap_ready = ap_const_logic_0))) then 
                    start_once_reg <= ap_const_logic_1;
                elsif ((internal_ap_ready = ap_const_logic_1)) then 
                    start_once_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_fu_92_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_117)) then
                if ((icmp_ln222_fu_130_p2 = ap_const_lv1_0)) then 
                    i_fu_92 <= i_2_fu_136_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_92 <= ap_const_lv7_0;
                end if;
            end if; 
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_enable_reg_pp0_iter1, ap_done_reg, fftOutData_local_empty_n, io_acc_block_signal_op43, io_acc_block_signal_op58, ap_start_int)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((io_acc_block_signal_op58 = ap_const_logic_0) or (io_acc_block_signal_op43 = ap_const_logic_0) or (fftOutData_local_empty_n = ap_const_logic_0))) or ((ap_done_reg = ap_const_logic_1) and (ap_start_int = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter1, ap_done_reg, fftOutData_local_empty_n, io_acc_block_signal_op43, io_acc_block_signal_op58, ap_start_int)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((io_acc_block_signal_op58 = ap_const_logic_0) or (io_acc_block_signal_op43 = ap_const_logic_0) or (fftOutData_local_empty_n = ap_const_logic_0))) or ((ap_done_reg = ap_const_logic_1) and (ap_start_int = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter1, ap_done_reg, fftOutData_local_empty_n, io_acc_block_signal_op43, io_acc_block_signal_op58, ap_start_int)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((io_acc_block_signal_op58 = ap_const_logic_0) or (io_acc_block_signal_op43 = ap_const_logic_0) or (fftOutData_local_empty_n = ap_const_logic_0))) or ((ap_done_reg = ap_const_logic_1) and (ap_start_int = ap_const_logic_1)));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_done_reg)
    begin
                ap_block_state1_pp0_stage0_iter0 <= (ap_done_reg = ap_const_logic_1);
    end process;


    ap_block_state2_pp0_stage0_iter1_assign_proc : process(fftOutData_local_empty_n, io_acc_block_signal_op43, io_acc_block_signal_op58)
    begin
                ap_block_state2_pp0_stage0_iter1 <= ((io_acc_block_signal_op58 = ap_const_logic_0) or (io_acc_block_signal_op43 = ap_const_logic_0) or (fftOutData_local_empty_n = ap_const_logic_0));
    end process;


    ap_condition_117_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_start_int)
    begin
                ap_condition_117 <= ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
    end process;


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, icmp_ln222_fu_130_p2, ap_start_int)
    begin
        if (((icmp_ln222_fu_130_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_done_reg, ap_block_pp0_stage0_subdone, ap_loop_exit_ready)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;
    ap_ready <= internal_ap_ready;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, i_fu_92, ap_loop_init, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_i_1 <= ap_const_lv7_0;
        else 
            ap_sig_allocacmp_i_1 <= i_fu_92;
        end if; 
    end process;


    fftOutData_local_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, fftOutData_local_empty_n, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            fftOutData_local_blk_n <= fftOutData_local_empty_n;
        else 
            fftOutData_local_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    fftOutData_local_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            fftOutData_local_read <= ap_const_logic_1;
        else 
            fftOutData_local_read <= ap_const_logic_0;
        end if; 
    end process;

    i_2_fu_136_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_1) + unsigned(ap_const_lv7_1));
    icmp_ln222_fu_130_p2 <= "1" when (ap_sig_allocacmp_i_1 = ap_const_lv7_40) else "0";
    io_acc_block_signal_op43 <= (p_outDataArray_0_1_0_0_0_full_n and p_outDataArray_0_0_0_0_0_full_n);
    io_acc_block_signal_op58 <= (p_outDataArray_0_1_0_0_02_full_n and p_outDataArray_0_0_0_0_01_full_n);

    p_outDataArray_0_0_0_0_01_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, p_outDataArray_0_0_0_0_01_full_n, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_outDataArray_0_0_0_0_01_blk_n <= p_outDataArray_0_0_0_0_01_full_n;
        else 
            p_outDataArray_0_0_0_0_01_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    p_outDataArray_0_0_0_0_01_din <= (select_ln1201_2_fu_335_p3 & ap_const_lv7_0);

    p_outDataArray_0_0_0_0_01_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_outDataArray_0_0_0_0_01_write <= ap_const_logic_1;
        else 
            p_outDataArray_0_0_0_0_01_write <= ap_const_logic_0;
        end if; 
    end process;


    p_outDataArray_0_0_0_0_0_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, p_outDataArray_0_0_0_0_0_full_n, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_outDataArray_0_0_0_0_0_blk_n <= p_outDataArray_0_0_0_0_0_full_n;
        else 
            p_outDataArray_0_0_0_0_0_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    p_outDataArray_0_0_0_0_0_din <= (select_ln1201_fu_221_p3 & ap_const_lv7_0);

    p_outDataArray_0_0_0_0_0_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_outDataArray_0_0_0_0_0_write <= ap_const_logic_1;
        else 
            p_outDataArray_0_0_0_0_0_write <= ap_const_logic_0;
        end if; 
    end process;


    p_outDataArray_0_1_0_0_02_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, p_outDataArray_0_1_0_0_02_full_n, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_outDataArray_0_1_0_0_02_blk_n <= p_outDataArray_0_1_0_0_02_full_n;
        else 
            p_outDataArray_0_1_0_0_02_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    p_outDataArray_0_1_0_0_02_din <= (select_ln1201_3_fu_392_p3 & ap_const_lv7_0);

    p_outDataArray_0_1_0_0_02_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_outDataArray_0_1_0_0_02_write <= ap_const_logic_1;
        else 
            p_outDataArray_0_1_0_0_02_write <= ap_const_logic_0;
        end if; 
    end process;


    p_outDataArray_0_1_0_0_0_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, p_outDataArray_0_1_0_0_0_full_n, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_outDataArray_0_1_0_0_0_blk_n <= p_outDataArray_0_1_0_0_0_full_n;
        else 
            p_outDataArray_0_1_0_0_0_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    p_outDataArray_0_1_0_0_0_din <= (select_ln1201_1_fu_278_p3 & ap_const_lv7_0);

    p_outDataArray_0_1_0_0_0_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_outDataArray_0_1_0_0_0_write <= ap_const_logic_1;
        else 
            p_outDataArray_0_1_0_0_0_write <= ap_const_logic_0;
        end if; 
    end process;


    real_start_assign_proc : process(ap_start, start_full_n, start_once_reg)
    begin
        if (((start_full_n = ap_const_logic_0) and (start_once_reg = ap_const_logic_0))) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;

    select_ln1201_1_fu_278_p3 <= 
        sub_ln1201_3_fu_262_p2 when (tmp_57_fu_238_p3(0) = '1') else 
        tmp_s_fu_268_p4;
    select_ln1201_2_fu_335_p3 <= 
        sub_ln1201_5_fu_319_p2 when (tmp_58_fu_295_p3(0) = '1') else 
        tmp_1_fu_325_p4;
    select_ln1201_3_fu_392_p3 <= 
        sub_ln1201_7_fu_376_p2 when (tmp_59_fu_352_p3(0) = '1') else 
        tmp_2_fu_382_p4;
    select_ln1201_fu_221_p3 <= 
        sub_ln1201_1_fu_205_p2 when (tmp_56_fu_181_p3(0) = '1') else 
        tmp_fu_211_p4;
    start_out <= real_start;

    start_write_assign_proc : process(real_start, start_once_reg)
    begin
        if (((real_start = ap_const_logic_1) and (start_once_reg = ap_const_logic_0))) then 
            start_write <= ap_const_logic_1;
        else 
            start_write <= ap_const_logic_0;
        end if; 
    end process;

    sub_ln1201_1_fu_205_p2 <= std_logic_vector(unsigned(ap_const_lv20_0) - unsigned(trunc_ln1201_1_fu_195_p4));
    sub_ln1201_2_fu_246_p2 <= std_logic_vector(unsigned(ap_const_lv27_0) - unsigned(t_V_1_fu_151_p4));
    sub_ln1201_3_fu_262_p2 <= std_logic_vector(unsigned(ap_const_lv20_0) - unsigned(trunc_ln1201_4_fu_252_p4));
    sub_ln1201_4_fu_303_p2 <= std_logic_vector(unsigned(ap_const_lv27_0) - unsigned(t_V_2_fu_161_p4));
    sub_ln1201_5_fu_319_p2 <= std_logic_vector(unsigned(ap_const_lv20_0) - unsigned(trunc_ln1201_7_fu_309_p4));
    sub_ln1201_6_fu_360_p2 <= std_logic_vector(unsigned(ap_const_lv27_0) - unsigned(t_V_3_fu_171_p4));
    sub_ln1201_7_fu_376_p2 <= std_logic_vector(unsigned(ap_const_lv20_0) - unsigned(trunc_ln1201_s_fu_366_p4));
    sub_ln1201_fu_189_p2 <= std_logic_vector(unsigned(ap_const_lv27_0) - unsigned(t_V_fu_147_p1));
    t_V_1_fu_151_p4 <= fftOutData_local_dout(58 downto 32);
    t_V_2_fu_161_p4 <= fftOutData_local_dout(90 downto 64);
    t_V_3_fu_171_p4 <= fftOutData_local_dout(122 downto 96);
    t_V_fu_147_p1 <= fftOutData_local_dout(27 - 1 downto 0);
    tmp_1_fu_325_p4 <= fftOutData_local_dout(90 downto 71);
    tmp_2_fu_382_p4 <= fftOutData_local_dout(122 downto 103);
    tmp_56_fu_181_p3 <= fftOutData_local_dout(26 downto 26);
    tmp_57_fu_238_p3 <= fftOutData_local_dout(58 downto 58);
    tmp_58_fu_295_p3 <= fftOutData_local_dout(90 downto 90);
    tmp_59_fu_352_p3 <= fftOutData_local_dout(122 downto 122);
    tmp_fu_211_p4 <= fftOutData_local_dout(26 downto 7);
    tmp_s_fu_268_p4 <= fftOutData_local_dout(58 downto 39);
    trunc_ln1201_1_fu_195_p4 <= sub_ln1201_fu_189_p2(26 downto 7);
    trunc_ln1201_4_fu_252_p4 <= sub_ln1201_2_fu_246_p2(26 downto 7);
    trunc_ln1201_7_fu_309_p4 <= sub_ln1201_4_fu_303_p2(26 downto 7);
    trunc_ln1201_s_fu_366_p4 <= sub_ln1201_6_fu_360_p2(26 downto 7);
end behav;