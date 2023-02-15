-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity channel_gen_channel_gen_Pipeline_VITIS_LOOP_156_9 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    conv_i_i_i131_le3928 : IN STD_LOGIC_VECTOR (19 downto 0);
    conv_i_i_i205_le3921 : IN STD_LOGIC_VECTOR (19 downto 0);
    n_3taps_V_0_5 : IN STD_LOGIC_VECTOR (19 downto 0);
    n_3taps_V_1_5 : IN STD_LOGIC_VECTOR (19 downto 0);
    n_3taps_V_2_5 : IN STD_LOGIC_VECTOR (19 downto 0);
    p_Result_17 : IN STD_LOGIC_VECTOR (19 downto 0);
    x_real_3taps_V_1_2_reload : IN STD_LOGIC_VECTOR (19 downto 0);
    x_real_3taps_V_2_2_reload : IN STD_LOGIC_VECTOR (19 downto 0);
    p_Result_18 : IN STD_LOGIC_VECTOR (19 downto 0);
    x_imag_3taps_V_1_2_reload : IN STD_LOGIC_VECTOR (19 downto 0);
    x_imag_3taps_V_2_2_reload : IN STD_LOGIC_VECTOR (19 downto 0);
    lhs_V_14_out : OUT STD_LOGIC_VECTOR (19 downto 0);
    lhs_V_14_out_ap_vld : OUT STD_LOGIC;
    lhs_V_12_out : OUT STD_LOGIC_VECTOR (19 downto 0);
    lhs_V_12_out_ap_vld : OUT STD_LOGIC );
end;


architecture behav of channel_gen_channel_gen_Pipeline_VITIS_LOOP_156_9 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv20_6666 : STD_LOGIC_VECTOR (19 downto 0) := "00000110011001100110";
    constant ap_const_lv20_4000 : STD_LOGIC_VECTOR (19 downto 0) := "00000100000000000000";
    constant ap_const_lv20_2A75 : STD_LOGIC_VECTOR (19 downto 0) := "00000010101001110101";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv32_22 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100010";
    constant ap_const_lv15_0 : STD_LOGIC_VECTOR (14 downto 0) := "000000000000000";

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
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal lhs_V_fu_72 : STD_LOGIC_VECTOR (19 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal lhs_V_11_fu_76 : STD_LOGIC_VECTOR (19 downto 0);
    signal i_V_fu_80 : STD_LOGIC_VECTOR (1 downto 0);
    signal add_ln870_fu_188_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal r_V_fu_200_p5 : STD_LOGIC_VECTOR (19 downto 0);
    signal tmp_1_fu_216_p5 : STD_LOGIC_VECTOR (19 downto 0);
    signal mul_ln1168_fu_229_p1 : STD_LOGIC_VECTOR (19 downto 0);
    signal mul_ln1168_fu_229_p2 : STD_LOGIC_VECTOR (34 downto 0);
    signal r_V_22_fu_235_p4 : STD_LOGIC_VECTOR (19 downto 0);
    signal tmp_2_fu_245_p5 : STD_LOGIC_VECTOR (19 downto 0);
    signal mul_ln1245_fu_270_p0 : STD_LOGIC_VECTOR (19 downto 0);
    signal sext_ln1171_fu_254_p1 : STD_LOGIC_VECTOR (34 downto 0);
    signal lhs_V_12_fu_262_p3 : STD_LOGIC_VECTOR (34 downto 0);
    signal mul_ln1245_fu_270_p2 : STD_LOGIC_VECTOR (34 downto 0);
    signal ret_V_fu_276_p2 : STD_LOGIC_VECTOR (34 downto 0);
    signal tmp_3_fu_292_p5 : STD_LOGIC_VECTOR (19 downto 0);
    signal mul_ln1245_3_fu_313_p0 : STD_LOGIC_VECTOR (19 downto 0);
    signal lhs_V_13_fu_305_p3 : STD_LOGIC_VECTOR (34 downto 0);
    signal mul_ln1245_3_fu_313_p2 : STD_LOGIC_VECTOR (34 downto 0);
    signal ret_V_14_fu_319_p2 : STD_LOGIC_VECTOR (34 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal mul_ln1168_fu_229_p10 : STD_LOGIC_VECTOR (34 downto 0);
    signal ap_ce_reg : STD_LOGIC;

    component channel_gen_mux_32_20_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        din3_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (19 downto 0);
        din1 : IN STD_LOGIC_VECTOR (19 downto 0);
        din2 : IN STD_LOGIC_VECTOR (19 downto 0);
        din3 : IN STD_LOGIC_VECTOR (1 downto 0);
        dout : OUT STD_LOGIC_VECTOR (19 downto 0) );
    end component;


    component channel_gen_mul_20s_20ns_35_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (19 downto 0);
        din1 : IN STD_LOGIC_VECTOR (19 downto 0);
        dout : OUT STD_LOGIC_VECTOR (34 downto 0) );
    end component;


    component channel_gen_mul_20s_20s_35_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (19 downto 0);
        din1 : IN STD_LOGIC_VECTOR (19 downto 0);
        dout : OUT STD_LOGIC_VECTOR (34 downto 0) );
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
    mux_32_20_1_1_U105 : component channel_gen_mux_32_20_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 20,
        din1_WIDTH => 20,
        din2_WIDTH => 20,
        din3_WIDTH => 2,
        dout_WIDTH => 20)
    port map (
        din0 => ap_const_lv20_6666,
        din1 => ap_const_lv20_4000,
        din2 => ap_const_lv20_2A75,
        din3 => i_V_fu_80,
        dout => r_V_fu_200_p5);

    mux_32_20_1_1_U106 : component channel_gen_mux_32_20_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 20,
        din1_WIDTH => 20,
        din2_WIDTH => 20,
        din3_WIDTH => 2,
        dout_WIDTH => 20)
    port map (
        din0 => n_3taps_V_0_5,
        din1 => n_3taps_V_1_5,
        din2 => n_3taps_V_2_5,
        din3 => i_V_fu_80,
        dout => tmp_1_fu_216_p5);

    mul_20s_20ns_35_1_1_U107 : component channel_gen_mul_20s_20ns_35_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 20,
        din1_WIDTH => 20,
        dout_WIDTH => 35)
    port map (
        din0 => tmp_1_fu_216_p5,
        din1 => mul_ln1168_fu_229_p1,
        dout => mul_ln1168_fu_229_p2);

    mux_32_20_1_1_U108 : component channel_gen_mux_32_20_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 20,
        din1_WIDTH => 20,
        din2_WIDTH => 20,
        din3_WIDTH => 2,
        dout_WIDTH => 20)
    port map (
        din0 => p_Result_17,
        din1 => x_real_3taps_V_1_2_reload,
        din2 => x_real_3taps_V_2_2_reload,
        din3 => i_V_fu_80,
        dout => tmp_2_fu_245_p5);

    mul_20s_20s_35_1_1_U109 : component channel_gen_mul_20s_20s_35_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 20,
        din1_WIDTH => 20,
        dout_WIDTH => 35)
    port map (
        din0 => mul_ln1245_fu_270_p0,
        din1 => tmp_2_fu_245_p5,
        dout => mul_ln1245_fu_270_p2);

    mux_32_20_1_1_U110 : component channel_gen_mux_32_20_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 20,
        din1_WIDTH => 20,
        din2_WIDTH => 20,
        din3_WIDTH => 2,
        dout_WIDTH => 20)
    port map (
        din0 => p_Result_18,
        din1 => x_imag_3taps_V_1_2_reload,
        din2 => x_imag_3taps_V_2_2_reload,
        din3 => i_V_fu_80,
        dout => tmp_3_fu_292_p5);

    mul_20s_20s_35_1_1_U111 : component channel_gen_mul_20s_20s_35_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 20,
        din1_WIDTH => 20,
        dout_WIDTH => 35)
    port map (
        din0 => mul_ln1245_3_fu_313_p0,
        din1 => tmp_3_fu_292_p5,
        dout => mul_ln1245_3_fu_313_p2);

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


    i_V_fu_80_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    i_V_fu_80 <= ap_const_lv2_0;
                elsif (((icmp_ln1057_fu_182_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    i_V_fu_80 <= add_ln870_fu_188_p2;
                end if;
            end if; 
        end if;
    end process;

    lhs_V_11_fu_76_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    lhs_V_11_fu_76 <= conv_i_i_i131_le3928;
                elsif (((icmp_ln1057_fu_182_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    lhs_V_11_fu_76 <= ret_V_14_fu_319_p2(34 downto 15);
                end if;
            end if; 
        end if;
    end process;

    lhs_V_fu_72_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    lhs_V_fu_72 <= conv_i_i_i205_le3921;
                elsif (((icmp_ln1057_fu_182_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    lhs_V_fu_72 <= ret_V_fu_276_p2(34 downto 15);
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
    add_ln870_fu_188_p2 <= std_logic_vector(unsigned(i_V_fu_80) + unsigned(ap_const_lv2_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone, icmp_ln1057_fu_182_p2)
    begin
        if (((icmp_ln1057_fu_182_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
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

    icmp_ln1057_fu_182_p2 <= "1" when (i_V_fu_80 = ap_const_lv2_3) else "0";
    lhs_V_12_fu_262_p3 <= (lhs_V_fu_72 & ap_const_lv15_0);
    lhs_V_12_out <= lhs_V_fu_72;

    lhs_V_12_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln1057_fu_182_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln1057_fu_182_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            lhs_V_12_out_ap_vld <= ap_const_logic_1;
        else 
            lhs_V_12_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    lhs_V_13_fu_305_p3 <= (lhs_V_11_fu_76 & ap_const_lv15_0);
    lhs_V_14_out <= lhs_V_11_fu_76;

    lhs_V_14_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln1057_fu_182_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln1057_fu_182_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            lhs_V_14_out_ap_vld <= ap_const_logic_1;
        else 
            lhs_V_14_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    mul_ln1168_fu_229_p1 <= mul_ln1168_fu_229_p10(20 - 1 downto 0);
    mul_ln1168_fu_229_p10 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(r_V_fu_200_p5),35));
    mul_ln1245_3_fu_313_p0 <= sext_ln1171_fu_254_p1(20 - 1 downto 0);
    mul_ln1245_fu_270_p0 <= sext_ln1171_fu_254_p1(20 - 1 downto 0);
    r_V_22_fu_235_p4 <= mul_ln1168_fu_229_p2(34 downto 15);
    ret_V_14_fu_319_p2 <= std_logic_vector(unsigned(lhs_V_13_fu_305_p3) + unsigned(mul_ln1245_3_fu_313_p2));
    ret_V_fu_276_p2 <= std_logic_vector(unsigned(lhs_V_12_fu_262_p3) + unsigned(mul_ln1245_fu_270_p2));
        sext_ln1171_fu_254_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(r_V_22_fu_235_p4),35));

end behav;