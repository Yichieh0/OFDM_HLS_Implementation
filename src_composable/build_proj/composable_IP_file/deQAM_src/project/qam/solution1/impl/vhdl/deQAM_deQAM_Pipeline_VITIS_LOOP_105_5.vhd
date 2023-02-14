-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity deQAM_deQAM_Pipeline_VITIS_LOOP_105_5 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    v_V_1_reload : IN STD_LOGIC_VECTOR (3 downto 0);
    v_V_0_reload : IN STD_LOGIC_VECTOR (3 downto 0);
    v_out_V_out : OUT STD_LOGIC_VECTOR (3 downto 0);
    v_out_V_out_ap_vld : OUT STD_LOGIC );
end;


architecture behav of deQAM_deQAM_Pipeline_VITIS_LOOP_105_5 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv4_F : STD_LOGIC_VECTOR (3 downto 0) := "1111";
    constant ap_const_lv4_D : STD_LOGIC_VECTOR (3 downto 0) := "1101";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv4_4 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_const_lv4_3 : STD_LOGIC_VECTOR (3 downto 0) := "0011";
    constant ap_const_lv4_C : STD_LOGIC_VECTOR (3 downto 0) := "1100";
    constant ap_const_lv4_2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_boolean_1 : BOOLEAN := true;

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal icmp_ln1057_fu_95_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal i_V_4_fu_52 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_i_V : STD_LOGIC_VECTOR (1 downto 0);
    signal add_ln870_fu_101_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal v_out_V_fu_56 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_sig_allocacmp_v_out_V_load_4 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_sig_allocacmp_v_out_V_load : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_sig_allocacmp_v_out_V_load_3 : STD_LOGIC_VECTOR (3 downto 0);
    signal v_out_V_5_fu_135_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal select_ln573_fu_119_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal v_out_V_4_fu_146_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal v_out_V_3_fu_165_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_load_fu_79_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal trunc_ln1049_fu_107_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln223_1_fu_127_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal select_ln573_1_fu_111_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal select_ln223_fu_157_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_condition_164 : BOOLEAN;
    signal ap_condition_72 : BOOLEAN;
    signal ap_ce_reg : STD_LOGIC;

    component deQAM_flow_control_loop_pipe_sequential_init IS
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
    flow_control_loop_pipe_sequential_init_U : component deQAM_flow_control_loop_pipe_sequential_init
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
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    i_V_4_fu_52_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then
                if ((icmp_ln1057_fu_95_p2 = ap_const_lv1_0)) then 
                    i_V_4_fu_52 <= add_ln870_fu_101_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_V_4_fu_52 <= ap_const_lv2_0;
                end if;
            end if; 
        end if;
    end process;

    v_out_V_fu_56_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then
                if ((ap_const_boolean_1 = ap_condition_72)) then 
                    v_out_V_fu_56 <= v_out_V_3_fu_165_p2;
                elsif (((select_ln573_fu_119_p3 = ap_const_lv4_F) and (icmp_ln1057_fu_95_p2 = ap_const_lv1_0))) then 
                    v_out_V_fu_56 <= v_out_V_4_fu_146_p2;
                elsif (((select_ln573_fu_119_p3 = ap_const_lv4_1) and (icmp_ln1057_fu_95_p2 = ap_const_lv1_0))) then 
                    v_out_V_fu_56 <= v_out_V_5_fu_135_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    v_out_V_fu_56 <= ap_const_lv4_0;
                end if;
            end if; 
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_CS_fsm_state1, ap_start_int)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln870_fu_101_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_V) + unsigned(ap_const_lv2_1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start_int)
    begin
        if ((ap_start_int = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_start_int)
    begin
                ap_block_state1_pp0_stage0_iter0 <= (ap_start_int = ap_const_logic_0);
    end process;


    ap_condition_164_assign_proc : process(select_ln573_fu_119_p3)
    begin
                ap_condition_164 <= (not((select_ln573_fu_119_p3 = ap_const_lv4_D)) and not((select_ln573_fu_119_p3 = ap_const_lv4_F)) and not((select_ln573_fu_119_p3 = ap_const_lv4_1)));
    end process;


    ap_condition_72_assign_proc : process(icmp_ln1057_fu_95_p2, select_ln573_fu_119_p3)
    begin
                ap_condition_72 <= (not((select_ln573_fu_119_p3 = ap_const_lv4_D)) and not((select_ln573_fu_119_p3 = ap_const_lv4_F)) and not((select_ln573_fu_119_p3 = ap_const_lv4_1)) and (icmp_ln1057_fu_95_p2 = ap_const_lv1_0));
    end process;


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_state1, icmp_ln1057_fu_95_p2, ap_start_int)
    begin
        if (((icmp_ln1057_fu_95_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_state1, ap_loop_exit_ready, ap_done_reg, ap_start_int)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
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

    ap_ready_int_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_V_assign_proc : process(ap_CS_fsm_state1, i_V_4_fu_52, ap_loop_init)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_sig_allocacmp_i_V <= ap_const_lv2_0;
        else 
            ap_sig_allocacmp_i_V <= i_V_4_fu_52;
        end if; 
    end process;


    ap_sig_allocacmp_v_out_V_load_assign_proc : process(ap_CS_fsm_state1, ap_loop_init, v_out_V_fu_56)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_sig_allocacmp_v_out_V_load <= ap_const_lv4_0;
        else 
            ap_sig_allocacmp_v_out_V_load <= v_out_V_fu_56;
        end if; 
    end process;


    ap_sig_allocacmp_v_out_V_load_3_assign_proc : process(ap_CS_fsm_state1, ap_loop_init, v_out_V_fu_56)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_sig_allocacmp_v_out_V_load_3 <= ap_const_lv4_0;
        else 
            ap_sig_allocacmp_v_out_V_load_3 <= v_out_V_fu_56;
        end if; 
    end process;


    ap_sig_allocacmp_v_out_V_load_4_assign_proc : process(ap_CS_fsm_state1, ap_loop_init, v_out_V_fu_56)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_sig_allocacmp_v_out_V_load_4 <= ap_const_lv4_0;
        else 
            ap_sig_allocacmp_v_out_V_load_4 <= v_out_V_fu_56;
        end if; 
    end process;


    grp_load_fu_79_p1_assign_proc : process(ap_CS_fsm_state1, icmp_ln1057_fu_95_p2, ap_sig_allocacmp_v_out_V_load_4, ap_sig_allocacmp_v_out_V_load, ap_sig_allocacmp_v_out_V_load_3, select_ln573_fu_119_p3, ap_condition_164)
    begin
        if (((icmp_ln1057_fu_95_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
            if ((ap_const_boolean_1 = ap_condition_164)) then 
                grp_load_fu_79_p1 <= ap_sig_allocacmp_v_out_V_load_3;
            elsif ((select_ln573_fu_119_p3 = ap_const_lv4_F)) then 
                grp_load_fu_79_p1 <= ap_sig_allocacmp_v_out_V_load;
            elsif ((select_ln573_fu_119_p3 = ap_const_lv4_1)) then 
                grp_load_fu_79_p1 <= ap_sig_allocacmp_v_out_V_load_4;
            else 
                grp_load_fu_79_p1 <= "XXXX";
            end if;
        else 
            grp_load_fu_79_p1 <= "XXXX";
        end if; 
    end process;

    icmp_ln1057_fu_95_p2 <= "1" when (ap_sig_allocacmp_i_V = ap_const_lv2_2) else "0";
    select_ln223_1_fu_127_p3 <= 
        ap_const_lv4_3 when (trunc_ln1049_fu_107_p1(0) = '1') else 
        ap_const_lv4_C;
    select_ln223_fu_157_p3 <= 
        ap_const_lv4_2 when (trunc_ln1049_fu_107_p1(0) = '1') else 
        ap_const_lv4_8;
    select_ln573_1_fu_111_p3 <= 
        ap_const_lv4_1 when (trunc_ln1049_fu_107_p1(0) = '1') else 
        ap_const_lv4_4;
    select_ln573_fu_119_p3 <= 
        v_V_1_reload when (trunc_ln1049_fu_107_p1(0) = '1') else 
        v_V_0_reload;
    trunc_ln1049_fu_107_p1 <= ap_sig_allocacmp_i_V(1 - 1 downto 0);
    v_out_V_3_fu_165_p2 <= std_logic_vector(unsigned(select_ln223_fu_157_p3) + unsigned(grp_load_fu_79_p1));
    v_out_V_4_fu_146_p2 <= std_logic_vector(unsigned(select_ln573_1_fu_111_p3) + unsigned(grp_load_fu_79_p1));
    v_out_V_5_fu_135_p2 <= std_logic_vector(unsigned(select_ln223_1_fu_127_p3) + unsigned(grp_load_fu_79_p1));
    v_out_V_out <= v_out_V_fu_56;

    v_out_V_out_ap_vld_assign_proc : process(ap_CS_fsm_state1, icmp_ln1057_fu_95_p2, ap_start_int)
    begin
        if (((icmp_ln1057_fu_95_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            v_out_V_out_ap_vld <= ap_const_logic_1;
        else 
            v_out_V_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

end behav;
