-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity channel_gen_channel_gen_Pipeline_VITIS_LOOP_207_15 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    conv_i_i_i131_le3933 : IN STD_LOGIC_VECTOR (21 downto 0);
    conv_i_i_i205_le3926 : IN STD_LOGIC_VECTOR (21 downto 0);
    TAPS_NUM_5_reload : IN STD_LOGIC_VECTOR (30 downto 0);
    n_9taps_V_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    n_9taps_V_ce0 : OUT STD_LOGIC;
    n_9taps_V_q0 : IN STD_LOGIC_VECTOR (21 downto 0);
    x_real_9taps_V_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    x_real_9taps_V_ce0 : OUT STD_LOGIC;
    x_real_9taps_V_q0 : IN STD_LOGIC_VECTOR (21 downto 0);
    x_imag_9taps_V_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    x_imag_9taps_V_ce0 : OUT STD_LOGIC;
    x_imag_9taps_V_q0 : IN STD_LOGIC_VECTOR (21 downto 0);
    lhs_V_6_out : OUT STD_LOGIC_VECTOR (21 downto 0);
    lhs_V_6_out_ap_vld : OUT STD_LOGIC;
    lhs_V_out : OUT STD_LOGIC_VECTOR (21 downto 0);
    lhs_V_out_ap_vld : OUT STD_LOGIC );
end;


architecture behav of channel_gen_channel_gen_Pipeline_VITIS_LOOP_207_15 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv15_0 : STD_LOGIC_VECTOR (14 downto 0) := "000000000000000";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv32_24 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100100";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln1057_fu_182_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal weight_9taps_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal weight_9taps_ce0 : STD_LOGIC;
    signal weight_9taps_q0 : STD_LOGIC_VECTOR (14 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal zext_ln573_fu_194_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal i_V_fu_60 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_i_V_3 : STD_LOGIC_VECTOR (3 downto 0);
    signal i_V_4_fu_188_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal lhs_V_fu_64 : STD_LOGIC_VECTOR (21 downto 0);
    signal lhs_V_6_fu_68 : STD_LOGIC_VECTOR (21 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal zext_ln1057_fu_178_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal TAPS_NUM_5_reload_cast_fu_156_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln712_fu_213_p1 : STD_LOGIC_VECTOR (21 downto 0);
    signal r_V_fu_217_p2 : STD_LOGIC_VECTOR (21 downto 0);
    signal mul_ln1245_fu_239_p1 : STD_LOGIC_VECTOR (21 downto 0);
    signal sext_ln1171_1_fu_227_p1 : STD_LOGIC_VECTOR (36 downto 0);
    signal lhs_V_5_fu_231_p3 : STD_LOGIC_VECTOR (36 downto 0);
    signal mul_ln1245_fu_239_p2 : STD_LOGIC_VECTOR (36 downto 0);
    signal ret_V_fu_245_p2 : STD_LOGIC_VECTOR (36 downto 0);
    signal mul_ln1245_1_fu_273_p1 : STD_LOGIC_VECTOR (21 downto 0);
    signal lhs_V_7_fu_265_p3 : STD_LOGIC_VECTOR (36 downto 0);
    signal mul_ln1245_1_fu_273_p2 : STD_LOGIC_VECTOR (36 downto 0);
    signal ret_V_12_fu_279_p2 : STD_LOGIC_VECTOR (36 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
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


    component channel_gen_channel_gen_Pipeline_VITIS_LOOP_207_15_weight_9taps IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (3 downto 0);
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
    weight_9taps_U : component channel_gen_channel_gen_Pipeline_VITIS_LOOP_207_15_weight_9taps
    generic map (
        DataWidth => 15,
        AddressRange => 9,
        AddressWidth => 4)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => weight_9taps_address0,
        ce0 => weight_9taps_ce0,
        q0 => weight_9taps_q0);

    mul_22s_22s_37_1_1_U150 : component channel_gen_mul_22s_22s_37_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 22,
        din1_WIDTH => 22,
        dout_WIDTH => 37)
    port map (
        din0 => x_real_9taps_V_q0,
        din1 => mul_ln1245_fu_239_p1,
        dout => mul_ln1245_fu_239_p2);

    mul_22s_22s_37_1_1_U151 : component channel_gen_mul_22s_22s_37_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 22,
        din1_WIDTH => 22,
        dout_WIDTH => 37)
    port map (
        din0 => x_imag_9taps_V_q0,
        din1 => mul_ln1245_1_fu_273_p1,
        dout => mul_ln1245_1_fu_273_p2);

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


    i_V_fu_60_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln1057_fu_182_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    i_V_fu_60 <= i_V_4_fu_188_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_V_fu_60 <= ap_const_lv4_0;
                end if;
            end if; 
        end if;
    end process;

    lhs_V_6_fu_68_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    lhs_V_6_fu_68 <= conv_i_i_i131_le3933;
                elsif ((ap_enable_reg_pp0_iter1 = ap_const_logic_1)) then 
                    lhs_V_6_fu_68 <= ret_V_12_fu_279_p2(36 downto 15);
                end if;
            end if; 
        end if;
    end process;

    lhs_V_fu_64_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    lhs_V_fu_64 <= conv_i_i_i205_le3926;
                elsif ((ap_enable_reg_pp0_iter1 = ap_const_logic_1)) then 
                    lhs_V_fu_64 <= ret_V_fu_245_p2(36 downto 15);
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
    TAPS_NUM_5_reload_cast_fu_156_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(TAPS_NUM_5_reload),32));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln1057_fu_182_p2)
    begin
        if (((icmp_ln1057_fu_182_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
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


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
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


    ap_sig_allocacmp_i_V_3_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, i_V_fu_60, ap_loop_init)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_i_V_3 <= ap_const_lv4_0;
        else 
            ap_sig_allocacmp_i_V_3 <= i_V_fu_60;
        end if; 
    end process;

    i_V_4_fu_188_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_V_3) + unsigned(ap_const_lv4_1));
    icmp_ln1057_fu_182_p2 <= "1" when (unsigned(zext_ln1057_fu_178_p1) < unsigned(TAPS_NUM_5_reload_cast_fu_156_p1)) else "0";
    lhs_V_5_fu_231_p3 <= (lhs_V_fu_64 & ap_const_lv15_0);
    lhs_V_6_out <= lhs_V_6_fu_68;

    lhs_V_6_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln1057_fu_182_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln1057_fu_182_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            lhs_V_6_out_ap_vld <= ap_const_logic_1;
        else 
            lhs_V_6_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    lhs_V_7_fu_265_p3 <= (lhs_V_6_fu_68 & ap_const_lv15_0);
    lhs_V_out <= lhs_V_fu_64;

    lhs_V_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln1057_fu_182_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln1057_fu_182_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            lhs_V_out_ap_vld <= ap_const_logic_1;
        else 
            lhs_V_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    mul_ln1245_1_fu_273_p1 <= sext_ln1171_1_fu_227_p1(22 - 1 downto 0);
    mul_ln1245_fu_239_p1 <= sext_ln1171_1_fu_227_p1(22 - 1 downto 0);
    n_9taps_V_address0 <= zext_ln573_fu_194_p1(4 - 1 downto 0);

    n_9taps_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            n_9taps_V_ce0 <= ap_const_logic_1;
        else 
            n_9taps_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    r_V_fu_217_p2 <= std_logic_vector(unsigned(n_9taps_V_q0) + unsigned(zext_ln712_fu_213_p1));
    ret_V_12_fu_279_p2 <= std_logic_vector(unsigned(lhs_V_7_fu_265_p3) + unsigned(mul_ln1245_1_fu_273_p2));
    ret_V_fu_245_p2 <= std_logic_vector(unsigned(lhs_V_5_fu_231_p3) + unsigned(mul_ln1245_fu_239_p2));
        sext_ln1171_1_fu_227_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(r_V_fu_217_p2),37));

    weight_9taps_address0 <= zext_ln573_fu_194_p1(4 - 1 downto 0);

    weight_9taps_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            weight_9taps_ce0 <= ap_const_logic_1;
        else 
            weight_9taps_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    x_imag_9taps_V_address0 <= zext_ln573_fu_194_p1(4 - 1 downto 0);

    x_imag_9taps_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            x_imag_9taps_V_ce0 <= ap_const_logic_1;
        else 
            x_imag_9taps_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    x_real_9taps_V_address0 <= zext_ln573_fu_194_p1(4 - 1 downto 0);

    x_real_9taps_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            x_real_9taps_V_ce0 <= ap_const_logic_1;
        else 
            x_real_9taps_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln1057_fu_178_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_i_V_3),32));
    zext_ln573_fu_194_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_i_V_3),64));
    zext_ln712_fu_213_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(weight_9taps_q0),22));
end behav;
