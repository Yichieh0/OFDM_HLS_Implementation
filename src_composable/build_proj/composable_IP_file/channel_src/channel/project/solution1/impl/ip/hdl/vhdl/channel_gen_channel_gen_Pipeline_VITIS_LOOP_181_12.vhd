-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity channel_gen_channel_gen_Pipeline_VITIS_LOOP_181_12 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    conv_i_i_i131_le3933 : IN STD_LOGIC_VECTOR (21 downto 0);
    conv_i_i_i205_le3926 : IN STD_LOGIC_VECTOR (21 downto 0);
    n_6taps_V_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    n_6taps_V_ce0 : OUT STD_LOGIC;
    n_6taps_V_q0 : IN STD_LOGIC_VECTOR (21 downto 0);
    x_real_6taps_V_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    x_real_6taps_V_ce0 : OUT STD_LOGIC;
    x_real_6taps_V_q0 : IN STD_LOGIC_VECTOR (21 downto 0);
    x_imag_6taps_V_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    x_imag_6taps_V_ce0 : OUT STD_LOGIC;
    x_imag_6taps_V_q0 : IN STD_LOGIC_VECTOR (21 downto 0);
    lhs_V_18_out : OUT STD_LOGIC_VECTOR (21 downto 0);
    lhs_V_18_out_ap_vld : OUT STD_LOGIC;
    lhs_V_16_out : OUT STD_LOGIC_VECTOR (21 downto 0);
    lhs_V_16_out_ap_vld : OUT STD_LOGIC );
end;


architecture behav of channel_gen_channel_gen_Pipeline_VITIS_LOOP_181_12 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv3_6 : STD_LOGIC_VECTOR (2 downto 0) := "110";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv32_24 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100100";
    constant ap_const_lv15_0 : STD_LOGIC_VECTOR (14 downto 0) := "000000000000000";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter4 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter4 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln1057_fu_164_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal weight_6taps_address0 : STD_LOGIC_VECTOR (2 downto 0);
    signal weight_6taps_ce0 : STD_LOGIC;
    signal weight_6taps_q0 : STD_LOGIC_VECTOR (14 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln1057_reg_330 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1057_reg_330_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1057_reg_330_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal i_V_19_cast_fu_176_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_V_19_cast_reg_334 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_V_19_cast_reg_334_pp0_iter1_reg : STD_LOGIC_VECTOR (63 downto 0);
    signal i_V_19_cast_reg_334_pp0_iter2_reg : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal lhs_V_fu_56 : STD_LOGIC_VECTOR (21 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal lhs_V_8_fu_60 : STD_LOGIC_VECTOR (21 downto 0);
    signal i_V_fu_64 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_sig_allocacmp_i_V_8 : STD_LOGIC_VECTOR (2 downto 0);
    signal add_ln870_fu_170_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal grp_fu_300_p2 : STD_LOGIC_VECTOR (36 downto 0);
    signal r_V_21_fu_201_p4 : STD_LOGIC_VECTOR (21 downto 0);
    signal mul_ln1245_fu_226_p0 : STD_LOGIC_VECTOR (21 downto 0);
    signal sext_ln1171_3_fu_210_p1 : STD_LOGIC_VECTOR (36 downto 0);
    signal lhs_V_9_fu_218_p3 : STD_LOGIC_VECTOR (36 downto 0);
    signal mul_ln1245_fu_226_p2 : STD_LOGIC_VECTOR (36 downto 0);
    signal ret_V_fu_232_p2 : STD_LOGIC_VECTOR (36 downto 0);
    signal mul_ln1245_2_fu_260_p0 : STD_LOGIC_VECTOR (21 downto 0);
    signal lhs_V_10_fu_252_p3 : STD_LOGIC_VECTOR (36 downto 0);
    signal mul_ln1245_2_fu_260_p2 : STD_LOGIC_VECTOR (36 downto 0);
    signal ret_V_13_fu_266_p2 : STD_LOGIC_VECTOR (36 downto 0);
    signal grp_fu_300_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter3_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal grp_fu_300_p10 : STD_LOGIC_VECTOR (36 downto 0);
    signal ap_ce_reg : STD_LOGIC;

    component channel_gen_mul_22s_22s_37_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (21 downto 0);
        din1 : IN STD_LOGIC_VECTOR (21 downto 0);
        dout : OUT STD_LOGIC_VECTOR (36 downto 0) );
    end component;


    component channel_gen_mul_mul_22s_15ns_37_4_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (21 downto 0);
        din1 : IN STD_LOGIC_VECTOR (14 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (36 downto 0) );
    end component;


    component channel_gen_channel_gen_Pipeline_VITIS_LOOP_181_12_weight_6taps IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (2 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (14 downto 0) );
    end component;


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
    weight_6taps_U : component channel_gen_channel_gen_Pipeline_VITIS_LOOP_181_12_weight_6taps
    generic map (
        DataWidth => 15,
        AddressRange => 6,
        AddressWidth => 3)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => weight_6taps_address0,
        ce0 => weight_6taps_ce0,
        q0 => weight_6taps_q0);

    mul_22s_22s_37_1_1_U71 : component channel_gen_mul_22s_22s_37_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 22,
        din1_WIDTH => 22,
        dout_WIDTH => 37)
    port map (
        din0 => mul_ln1245_fu_226_p0,
        din1 => x_real_6taps_V_q0,
        dout => mul_ln1245_fu_226_p2);

    mul_22s_22s_37_1_1_U72 : component channel_gen_mul_22s_22s_37_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 22,
        din1_WIDTH => 22,
        dout_WIDTH => 37)
    port map (
        din0 => mul_ln1245_2_fu_260_p0,
        din1 => x_imag_6taps_V_q0,
        dout => mul_ln1245_2_fu_260_p2);

    mul_mul_22s_15ns_37_4_1_U73 : component channel_gen_mul_mul_22s_15ns_37_4_1
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 22,
        din1_WIDTH => 15,
        dout_WIDTH => 37)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => n_6taps_V_q0,
        din1 => grp_fu_300_p1,
        ce => ap_const_logic_1,
        dout => grp_fu_300_p2);

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
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
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
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter3_reg = ap_const_logic_1))) then 
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


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter4_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter4 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
                end if; 
            end if;
        end if;
    end process;


    i_V_fu_64_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln1057_fu_164_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    i_V_fu_64 <= add_ln870_fu_170_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_V_fu_64 <= ap_const_lv3_0;
                end if;
            end if; 
        end if;
    end process;

    lhs_V_8_fu_60_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                    lhs_V_8_fu_60 <= conv_i_i_i131_le3933;
                elsif ((ap_enable_reg_pp0_iter4 = ap_const_logic_1)) then 
                    lhs_V_8_fu_60 <= ret_V_13_fu_266_p2(36 downto 15);
                end if;
            end if; 
        end if;
    end process;

    lhs_V_fu_56_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                    lhs_V_fu_56 <= conv_i_i_i205_le3926;
                elsif ((ap_enable_reg_pp0_iter4 = ap_const_logic_1)) then 
                    lhs_V_fu_56 <= ret_V_fu_232_p2(36 downto 15);
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
                    i_V_19_cast_reg_334_pp0_iter1_reg(2 downto 0) <= i_V_19_cast_reg_334(2 downto 0);
                icmp_ln1057_reg_330 <= icmp_ln1057_fu_164_p2;
                icmp_ln1057_reg_330_pp0_iter1_reg <= icmp_ln1057_reg_330;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
                    i_V_19_cast_reg_334_pp0_iter2_reg(2 downto 0) <= i_V_19_cast_reg_334_pp0_iter1_reg(2 downto 0);
                icmp_ln1057_reg_330_pp0_iter2_reg <= icmp_ln1057_reg_330_pp0_iter1_reg;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln1057_fu_164_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                    i_V_19_cast_reg_334(2 downto 0) <= i_V_19_cast_fu_176_p1(2 downto 0);
            end if;
        end if;
    end process;
    i_V_19_cast_reg_334(63 downto 3) <= "0000000000000000000000000000000000000000000000000000000000000";
    i_V_19_cast_reg_334_pp0_iter1_reg(63 downto 3) <= "0000000000000000000000000000000000000000000000000000000000000";
    i_V_19_cast_reg_334_pp0_iter2_reg(63 downto 3) <= "0000000000000000000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln870_fu_170_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_V_8) + unsigned(ap_const_lv3_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter4 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln1057_fu_164_p2)
    begin
        if (((icmp_ln1057_fu_164_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter3_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter3_reg = ap_const_logic_1))) then 
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


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3, ap_enable_reg_pp0_iter4)
    begin
        if (((ap_enable_reg_pp0_iter4 = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_V_8_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, i_V_fu_64)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_i_V_8 <= ap_const_lv3_0;
        else 
            ap_sig_allocacmp_i_V_8 <= i_V_fu_64;
        end if; 
    end process;

    grp_fu_300_p1 <= grp_fu_300_p10(15 - 1 downto 0);
    grp_fu_300_p10 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(weight_6taps_q0),37));
    i_V_19_cast_fu_176_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_i_V_8),64));
    icmp_ln1057_fu_164_p2 <= "1" when (ap_sig_allocacmp_i_V_8 = ap_const_lv3_6) else "0";
    lhs_V_10_fu_252_p3 <= (lhs_V_8_fu_60 & ap_const_lv15_0);
    lhs_V_16_out <= lhs_V_fu_56;

    lhs_V_16_out_ap_vld_assign_proc : process(ap_block_pp0_stage0_11001, icmp_ln1057_reg_330_pp0_iter2_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln1057_reg_330_pp0_iter2_reg = ap_const_lv1_1))) then 
            lhs_V_16_out_ap_vld <= ap_const_logic_1;
        else 
            lhs_V_16_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    lhs_V_18_out <= lhs_V_8_fu_60;

    lhs_V_18_out_ap_vld_assign_proc : process(ap_block_pp0_stage0_11001, icmp_ln1057_reg_330_pp0_iter2_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln1057_reg_330_pp0_iter2_reg = ap_const_lv1_1))) then 
            lhs_V_18_out_ap_vld <= ap_const_logic_1;
        else 
            lhs_V_18_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    lhs_V_9_fu_218_p3 <= (lhs_V_fu_56 & ap_const_lv15_0);
    mul_ln1245_2_fu_260_p0 <= sext_ln1171_3_fu_210_p1(22 - 1 downto 0);
    mul_ln1245_fu_226_p0 <= sext_ln1171_3_fu_210_p1(22 - 1 downto 0);
    n_6taps_V_address0 <= i_V_19_cast_fu_176_p1(3 - 1 downto 0);

    n_6taps_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            n_6taps_V_ce0 <= ap_const_logic_1;
        else 
            n_6taps_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    r_V_21_fu_201_p4 <= grp_fu_300_p2(36 downto 15);
    ret_V_13_fu_266_p2 <= std_logic_vector(unsigned(lhs_V_10_fu_252_p3) + unsigned(mul_ln1245_2_fu_260_p2));
    ret_V_fu_232_p2 <= std_logic_vector(unsigned(lhs_V_9_fu_218_p3) + unsigned(mul_ln1245_fu_226_p2));
        sext_ln1171_3_fu_210_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(r_V_21_fu_201_p4),37));

    weight_6taps_address0 <= i_V_19_cast_fu_176_p1(3 - 1 downto 0);

    weight_6taps_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            weight_6taps_ce0 <= ap_const_logic_1;
        else 
            weight_6taps_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    x_imag_6taps_V_address0 <= i_V_19_cast_reg_334_pp0_iter2_reg(3 - 1 downto 0);

    x_imag_6taps_V_ce0_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            x_imag_6taps_V_ce0 <= ap_const_logic_1;
        else 
            x_imag_6taps_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    x_real_6taps_V_address0 <= i_V_19_cast_reg_334_pp0_iter2_reg(3 - 1 downto 0);

    x_real_6taps_V_ce0_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            x_real_6taps_V_ce0 <= ap_const_logic_1;
        else 
            x_real_6taps_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

end behav;
