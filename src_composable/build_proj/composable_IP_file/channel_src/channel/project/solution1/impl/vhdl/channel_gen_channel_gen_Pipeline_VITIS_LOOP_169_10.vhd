-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity channel_gen_channel_gen_Pipeline_VITIS_LOOP_169_10 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    i_V : IN STD_LOGIC_VECTOR (3 downto 0);
    x_real_6taps_V_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    x_real_6taps_V_ce0 : OUT STD_LOGIC;
    x_real_6taps_V_we0 : OUT STD_LOGIC;
    x_real_6taps_V_d0 : OUT STD_LOGIC_VECTOR (19 downto 0);
    x_real_6taps_V_address1 : OUT STD_LOGIC_VECTOR (2 downto 0);
    x_real_6taps_V_ce1 : OUT STD_LOGIC;
    x_real_6taps_V_q1 : IN STD_LOGIC_VECTOR (19 downto 0);
    x_imag_6taps_V_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    x_imag_6taps_V_ce0 : OUT STD_LOGIC;
    x_imag_6taps_V_we0 : OUT STD_LOGIC;
    x_imag_6taps_V_d0 : OUT STD_LOGIC_VECTOR (19 downto 0);
    x_imag_6taps_V_address1 : OUT STD_LOGIC_VECTOR (2 downto 0);
    x_imag_6taps_V_ce1 : OUT STD_LOGIC;
    x_imag_6taps_V_q1 : IN STD_LOGIC_VECTOR (19 downto 0) );
end;


architecture behav of channel_gen_channel_gen_Pipeline_VITIS_LOOP_169_10 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv64_FFFFFFFFFFFFFFFF : STD_LOGIC_VECTOR (63 downto 0) := "1111111111111111111111111111111111111111111111111111111111111111";
    constant ap_const_lv20_0 : STD_LOGIC_VECTOR (19 downto 0) := "00000000000000000000";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv3_7 : STD_LOGIC_VECTOR (2 downto 0) := "111";
    constant ap_const_lv4_F : STD_LOGIC_VECTOR (3 downto 0) := "1111";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln1065_fu_138_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal zext_ln573_3_fu_160_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln573_3_reg_273 : STD_LOGIC_VECTOR (63 downto 0);
    signal addr_cmp6_fu_167_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal addr_cmp6_reg_284 : STD_LOGIC_VECTOR (0 downto 0);
    signal addr_cmp_fu_181_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal addr_cmp_reg_294 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln573_fu_154_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal reuse_addr_reg3_fu_34 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal reuse_reg2_fu_38 : STD_LOGIC_VECTOR (19 downto 0);
    signal reuse_select7_fu_206_p3 : STD_LOGIC_VECTOR (19 downto 0);
    signal reuse_addr_reg_fu_42 : STD_LOGIC_VECTOR (63 downto 0);
    signal reuse_reg_fu_46 : STD_LOGIC_VECTOR (19 downto 0);
    signal reuse_select_fu_222_p3 : STD_LOGIC_VECTOR (19 downto 0);
    signal lhs_fu_50 : STD_LOGIC_VECTOR (3 downto 0);
    signal i_V_10_fu_192_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal trunc_ln1526_fu_144_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal ret_fu_148_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component channel_gen_flow_control_loop_pipe_sequential_init IS
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
    flow_control_loop_pipe_sequential_init_U : component channel_gen_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter1_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





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
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    lhs_fu_50_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    lhs_fu_50 <= i_V;
                elsif (((icmp_ln1065_fu_138_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    lhs_fu_50 <= i_V_10_fu_192_p2;
                end if;
            end if; 
        end if;
    end process;

    reuse_addr_reg3_fu_34_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    reuse_addr_reg3_fu_34 <= ap_const_lv64_FFFFFFFFFFFFFFFF;
                elsif (((icmp_ln1065_fu_138_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    reuse_addr_reg3_fu_34 <= zext_ln573_3_fu_160_p1;
                end if;
            end if; 
        end if;
    end process;

    reuse_addr_reg_fu_42_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    reuse_addr_reg_fu_42 <= ap_const_lv64_FFFFFFFFFFFFFFFF;
                elsif (((icmp_ln1065_fu_138_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    reuse_addr_reg_fu_42 <= zext_ln573_3_fu_160_p1;
                end if;
            end if; 
        end if;
    end process;

    reuse_reg2_fu_38_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                    reuse_reg2_fu_38 <= ap_const_lv20_0;
                elsif ((ap_enable_reg_pp0_iter2 = ap_const_logic_1)) then 
                    reuse_reg2_fu_38 <= reuse_select7_fu_206_p3;
                end if;
            end if; 
        end if;
    end process;

    reuse_reg_fu_46_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                    reuse_reg_fu_46 <= ap_const_lv20_0;
                elsif ((ap_enable_reg_pp0_iter2 = ap_const_logic_1)) then 
                    reuse_reg_fu_46 <= reuse_select_fu_222_p3;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln1065_fu_138_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                addr_cmp6_reg_284 <= addr_cmp6_fu_167_p2;
                addr_cmp_reg_294 <= addr_cmp_fu_181_p2;
                    zext_ln573_3_reg_273(3 downto 0) <= zext_ln573_3_fu_160_p1(3 downto 0);
            end if;
        end if;
    end process;
    zext_ln573_3_reg_273(63 downto 4) <= "000000000000000000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    addr_cmp6_fu_167_p2 <= "1" when (reuse_addr_reg3_fu_34 = zext_ln573_fu_154_p1) else "0";
    addr_cmp_fu_181_p2 <= "1" when (reuse_addr_reg_fu_42 = zext_ln573_fu_154_p1) else "0";
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone, icmp_ln1065_fu_138_p2)
    begin
        if (((icmp_ln1065_fu_138_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_loop_exit_ready, ap_done_reg)
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


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter1_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;

    i_V_10_fu_192_p2 <= std_logic_vector(unsigned(lhs_fu_50) + unsigned(ap_const_lv4_F));
    icmp_ln1065_fu_138_p2 <= "1" when (lhs_fu_50 = ap_const_lv4_0) else "0";
    ret_fu_148_p2 <= std_logic_vector(unsigned(trunc_ln1526_fu_144_p1) + unsigned(ap_const_lv3_7));
    reuse_select7_fu_206_p3 <= 
        reuse_reg2_fu_38 when (addr_cmp6_reg_284(0) = '1') else 
        x_real_6taps_V_q1;
    reuse_select_fu_222_p3 <= 
        reuse_reg_fu_46 when (addr_cmp_reg_294(0) = '1') else 
        x_imag_6taps_V_q1;
    trunc_ln1526_fu_144_p1 <= lhs_fu_50(3 - 1 downto 0);
    x_imag_6taps_V_address0 <= zext_ln573_3_reg_273(3 - 1 downto 0);
    x_imag_6taps_V_address1 <= zext_ln573_fu_154_p1(3 - 1 downto 0);

    x_imag_6taps_V_ce0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            x_imag_6taps_V_ce0 <= ap_const_logic_1;
        else 
            x_imag_6taps_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    x_imag_6taps_V_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            x_imag_6taps_V_ce1 <= ap_const_logic_1;
        else 
            x_imag_6taps_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    x_imag_6taps_V_d0 <= 
        reuse_reg_fu_46 when (addr_cmp_reg_294(0) = '1') else 
        x_imag_6taps_V_q1;

    x_imag_6taps_V_we0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            x_imag_6taps_V_we0 <= ap_const_logic_1;
        else 
            x_imag_6taps_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    x_real_6taps_V_address0 <= zext_ln573_3_reg_273(3 - 1 downto 0);
    x_real_6taps_V_address1 <= zext_ln573_fu_154_p1(3 - 1 downto 0);

    x_real_6taps_V_ce0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            x_real_6taps_V_ce0 <= ap_const_logic_1;
        else 
            x_real_6taps_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    x_real_6taps_V_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            x_real_6taps_V_ce1 <= ap_const_logic_1;
        else 
            x_real_6taps_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    x_real_6taps_V_d0 <= 
        reuse_reg2_fu_38 when (addr_cmp6_reg_284(0) = '1') else 
        x_real_6taps_V_q1;

    x_real_6taps_V_we0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            x_real_6taps_V_we0 <= ap_const_logic_1;
        else 
            x_real_6taps_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln573_3_fu_160_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(lhs_fu_50),64));
    zext_ln573_fu_154_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ret_fu_148_p2),64));
end behav;
