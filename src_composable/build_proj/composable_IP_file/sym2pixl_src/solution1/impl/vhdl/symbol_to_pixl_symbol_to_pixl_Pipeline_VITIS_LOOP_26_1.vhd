-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity symbol_to_pixl_symbol_to_pixl_Pipeline_VITIS_LOOP_26_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    data_in_TVALID : IN STD_LOGIC;
    data_in_TDATA : IN STD_LOGIC_VECTOR (63 downto 0);
    data_in_TREADY : OUT STD_LOGIC;
    data_in_TKEEP : IN STD_LOGIC_VECTOR (7 downto 0);
    data_in_TSTRB : IN STD_LOGIC_VECTOR (7 downto 0);
    data_in_TUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    data_in_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
    data_in_TID : IN STD_LOGIC_VECTOR (0 downto 0);
    data_in_TDEST : IN STD_LOGIC_VECTOR (0 downto 0);
    para_val_5_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    para_val_5_out_ap_vld : OUT STD_LOGIC;
    sym_num_4_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    sym_num_4_out_ap_vld : OUT STD_LOGIC );
end;


architecture behav of symbol_to_pixl_symbol_to_pixl_Pipeline_VITIS_LOOP_26_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_30 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110000";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv16_11 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000010001";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_2F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101111";
    constant ap_const_lv16_2 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000010";
    constant ap_const_lv16_1 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000001";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv16_FFFF : STD_LOGIC_VECTOR (15 downto 0) := "1111111111111111";
    constant ap_const_boolean_1 : BOOLEAN := true;

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal icmp_ln53_fu_210_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal data_in_TDATA_blk_n : STD_LOGIC;
    signal sym_num_fu_64 : STD_LOGIC_VECTOR (31 downto 0);
    signal sym_num_8_fu_201_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal para_val_fu_68 : STD_LOGIC_VECTOR (31 downto 0);
    signal para_val_6_fu_184_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Result_s_fu_114_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_Result_1_fu_130_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal icmp_ln32_fu_144_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal para_val_1_fu_140_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln32_1_fu_158_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal para_val_5_fu_150_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln29_fu_124_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln32_2_fu_172_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln32_fu_178_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sym_num_6_fu_164_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal sym_num_7_fu_193_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_loop_init : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component symbol_to_pixl_flow_control_loop_pipe_sequential_init IS
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
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_sequential_init_U : component symbol_to_pixl_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





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


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif ((not(((data_in_TVALID = ap_const_logic_0) or (ap_start_int = ap_const_logic_0))) and (ap_loop_exit_ready = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((data_in_TVALID = ap_const_logic_0) or (ap_start_int = ap_const_logic_0))) and (icmp_ln53_fu_210_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                para_val_fu_68 <= para_val_6_fu_184_p3;
                sym_num_fu_64 <= sym_num_8_fu_201_p3;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_CS_fsm_state1, data_in_TVALID, ap_start_int)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    and_ln32_fu_178_p2 <= (icmp_ln32_2_fu_172_p2 and icmp_ln29_fu_124_p2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);

    ap_ST_fsm_state1_blk_assign_proc : process(data_in_TVALID, ap_start_int)
    begin
        if (((data_in_TVALID = ap_const_logic_0) or (ap_start_int = ap_const_logic_0))) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(data_in_TVALID, ap_start_int)
    begin
                ap_block_state1_pp0_stage0_iter0 <= ((data_in_TVALID = ap_const_logic_0) or (ap_start_int = ap_const_logic_0));
    end process;


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_state1, data_in_TVALID, icmp_ln53_fu_210_p2, ap_start_int)
    begin
        if ((not(((data_in_TVALID = ap_const_logic_0) or (ap_start_int = ap_const_logic_0))) and (icmp_ln53_fu_210_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_state1, data_in_TVALID, ap_loop_exit_ready, ap_done_reg, ap_start_int)
    begin
        if ((not(((data_in_TVALID = ap_const_logic_0) or (ap_start_int = ap_const_logic_0))) and (ap_loop_exit_ready = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_state1, data_in_TVALID, ap_start_int)
    begin
        if ((not(((data_in_TVALID = ap_const_logic_0) or (ap_start_int = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    data_in_TDATA_blk_n_assign_proc : process(ap_CS_fsm_state1, data_in_TVALID, ap_start_int)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            data_in_TDATA_blk_n <= data_in_TVALID;
        else 
            data_in_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    data_in_TREADY_assign_proc : process(ap_CS_fsm_state1, data_in_TVALID, ap_start_int)
    begin
        if ((not(((data_in_TVALID = ap_const_logic_0) or (ap_start_int = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            data_in_TREADY <= ap_const_logic_1;
        else 
            data_in_TREADY <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln29_fu_124_p2 <= "1" when (p_Result_s_fu_114_p4 = ap_const_lv16_11) else "0";
    icmp_ln32_1_fu_158_p2 <= "1" when (p_Result_1_fu_130_p4 = ap_const_lv16_1) else "0";
    icmp_ln32_2_fu_172_p2 <= "1" when (p_Result_1_fu_130_p4 = ap_const_lv16_0) else "0";
    icmp_ln32_fu_144_p2 <= "1" when (p_Result_1_fu_130_p4 = ap_const_lv16_2) else "0";
    icmp_ln53_fu_210_p2 <= "1" when (p_Result_s_fu_114_p4 = ap_const_lv16_FFFF) else "0";
    p_Result_1_fu_130_p4 <= data_in_TDATA(47 downto 32);
    p_Result_s_fu_114_p4 <= data_in_TDATA(63 downto 48);
    para_val_1_fu_140_p1 <= data_in_TDATA(32 - 1 downto 0);
    para_val_5_fu_150_p3 <= 
        para_val_1_fu_140_p1 when (icmp_ln32_fu_144_p2(0) = '1') else 
        sym_num_fu_64;
    para_val_5_out <= 
        para_val_1_fu_140_p1 when (and_ln32_fu_178_p2(0) = '1') else 
        para_val_fu_68;

    para_val_5_out_ap_vld_assign_proc : process(ap_CS_fsm_state1, data_in_TVALID, icmp_ln53_fu_210_p2, ap_start_int)
    begin
        if ((not(((data_in_TVALID = ap_const_logic_0) or (ap_start_int = ap_const_logic_0))) and (icmp_ln53_fu_210_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            para_val_5_out_ap_vld <= ap_const_logic_1;
        else 
            para_val_5_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    para_val_6_fu_184_p3 <= 
        para_val_1_fu_140_p1 when (and_ln32_fu_178_p2(0) = '1') else 
        para_val_fu_68;
    sym_num_4_out <= 
        sym_num_fu_64 when (and_ln32_fu_178_p2(0) = '1') else 
        sym_num_7_fu_193_p3;

    sym_num_4_out_ap_vld_assign_proc : process(ap_CS_fsm_state1, data_in_TVALID, icmp_ln53_fu_210_p2, ap_start_int)
    begin
        if ((not(((data_in_TVALID = ap_const_logic_0) or (ap_start_int = ap_const_logic_0))) and (icmp_ln53_fu_210_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            sym_num_4_out_ap_vld <= ap_const_logic_1;
        else 
            sym_num_4_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    sym_num_6_fu_164_p3 <= 
        sym_num_fu_64 when (icmp_ln32_1_fu_158_p2(0) = '1') else 
        para_val_5_fu_150_p3;
    sym_num_7_fu_193_p3 <= 
        sym_num_6_fu_164_p3 when (icmp_ln29_fu_124_p2(0) = '1') else 
        sym_num_fu_64;
    sym_num_8_fu_201_p3 <= 
        sym_num_fu_64 when (and_ln32_fu_178_p2(0) = '1') else 
        sym_num_7_fu_193_p3;
end behav;
