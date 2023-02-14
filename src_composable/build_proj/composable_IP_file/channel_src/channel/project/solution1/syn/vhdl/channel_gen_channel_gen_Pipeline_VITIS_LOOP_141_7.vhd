-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity channel_gen_channel_gen_Pipeline_VITIS_LOOP_141_7 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    x_imag_3taps_V_2_1 : IN STD_LOGIC_VECTOR (21 downto 0);
    x_imag_3taps_V_1_1 : IN STD_LOGIC_VECTOR (21 downto 0);
    x_imag_3taps_V_0_1 : IN STD_LOGIC_VECTOR (21 downto 0);
    x_real_3taps_V_2_1 : IN STD_LOGIC_VECTOR (21 downto 0);
    x_real_3taps_V_1_1 : IN STD_LOGIC_VECTOR (21 downto 0);
    x_real_3taps_V_0_1 : IN STD_LOGIC_VECTOR (21 downto 0);
    i_V : IN STD_LOGIC_VECTOR (3 downto 0);
    x_imag_3taps_V_2_2_out : OUT STD_LOGIC_VECTOR (21 downto 0);
    x_imag_3taps_V_2_2_out_ap_vld : OUT STD_LOGIC;
    x_imag_3taps_V_1_2_out : OUT STD_LOGIC_VECTOR (21 downto 0);
    x_imag_3taps_V_1_2_out_ap_vld : OUT STD_LOGIC;
    x_real_3taps_V_2_2_out : OUT STD_LOGIC_VECTOR (21 downto 0);
    x_real_3taps_V_2_2_out_ap_vld : OUT STD_LOGIC;
    x_real_3taps_V_1_2_out : OUT STD_LOGIC_VECTOR (21 downto 0);
    x_real_3taps_V_1_2_out_ap_vld : OUT STD_LOGIC );
end;


architecture behav of channel_gen_channel_gen_Pipeline_VITIS_LOOP_141_7 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv4_F : STD_LOGIC_VECTOR (3 downto 0) := "1111";

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
    signal icmp_ln1065_fu_188_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal i_V_6_fu_52 : STD_LOGIC_VECTOR (3 downto 0);
    signal i_V_14_fu_330_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal ap_loop_init : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal x_real_3taps_V_0_2_fu_56 : STD_LOGIC_VECTOR (21 downto 0);
    signal x_real_3taps_V_0_3_fu_234_p6 : STD_LOGIC_VECTOR (21 downto 0);
    signal x_real_3taps_V_1_2_fu_60 : STD_LOGIC_VECTOR (21 downto 0);
    signal x_real_3taps_V_1_3_fu_248_p6 : STD_LOGIC_VECTOR (21 downto 0);
    signal x_real_3taps_V_2_2_fu_64 : STD_LOGIC_VECTOR (21 downto 0);
    signal x_real_3taps_V_2_3_fu_262_p6 : STD_LOGIC_VECTOR (21 downto 0);
    signal x_imag_3taps_V_0_2_fu_68 : STD_LOGIC_VECTOR (21 downto 0);
    signal x_imag_3taps_V_0_3_fu_288_p6 : STD_LOGIC_VECTOR (21 downto 0);
    signal x_imag_3taps_V_1_2_fu_72 : STD_LOGIC_VECTOR (21 downto 0);
    signal x_imag_3taps_V_1_3_fu_302_p6 : STD_LOGIC_VECTOR (21 downto 0);
    signal x_imag_3taps_V_2_2_fu_76 : STD_LOGIC_VECTOR (21 downto 0);
    signal x_imag_3taps_V_2_3_fu_316_p6 : STD_LOGIC_VECTOR (21 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal trunc_ln1526_fu_212_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal add_ln142_fu_216_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal x_real_3taps_V_2_fu_222_p5 : STD_LOGIC_VECTOR (21 downto 0);
    signal x_imag_3taps_V_2_fu_276_p5 : STD_LOGIC_VECTOR (21 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component channel_gen_mux_32_22_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        din3_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (21 downto 0);
        din1 : IN STD_LOGIC_VECTOR (21 downto 0);
        din2 : IN STD_LOGIC_VECTOR (21 downto 0);
        din3 : IN STD_LOGIC_VECTOR (1 downto 0);
        dout : OUT STD_LOGIC_VECTOR (21 downto 0) );
    end component;


    component channel_gen_mux_42_22_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        din3_WIDTH : INTEGER;
        din4_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (21 downto 0);
        din1 : IN STD_LOGIC_VECTOR (21 downto 0);
        din2 : IN STD_LOGIC_VECTOR (21 downto 0);
        din3 : IN STD_LOGIC_VECTOR (21 downto 0);
        din4 : IN STD_LOGIC_VECTOR (1 downto 0);
        dout : OUT STD_LOGIC_VECTOR (21 downto 0) );
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
    mux_32_22_1_1_U84 : component channel_gen_mux_32_22_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 22,
        din1_WIDTH => 22,
        din2_WIDTH => 22,
        din3_WIDTH => 2,
        dout_WIDTH => 22)
    port map (
        din0 => x_real_3taps_V_0_2_fu_56,
        din1 => x_real_3taps_V_1_2_fu_60,
        din2 => x_real_3taps_V_2_2_fu_64,
        din3 => add_ln142_fu_216_p2,
        dout => x_real_3taps_V_2_fu_222_p5);

    mux_42_22_1_1_U85 : component channel_gen_mux_42_22_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 22,
        din1_WIDTH => 22,
        din2_WIDTH => 22,
        din3_WIDTH => 22,
        din4_WIDTH => 2,
        dout_WIDTH => 22)
    port map (
        din0 => x_real_3taps_V_2_fu_222_p5,
        din1 => x_real_3taps_V_0_2_fu_56,
        din2 => x_real_3taps_V_0_2_fu_56,
        din3 => x_real_3taps_V_0_2_fu_56,
        din4 => trunc_ln1526_fu_212_p1,
        dout => x_real_3taps_V_0_3_fu_234_p6);

    mux_42_22_1_1_U86 : component channel_gen_mux_42_22_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 22,
        din1_WIDTH => 22,
        din2_WIDTH => 22,
        din3_WIDTH => 22,
        din4_WIDTH => 2,
        dout_WIDTH => 22)
    port map (
        din0 => x_real_3taps_V_1_2_fu_60,
        din1 => x_real_3taps_V_2_fu_222_p5,
        din2 => x_real_3taps_V_1_2_fu_60,
        din3 => x_real_3taps_V_1_2_fu_60,
        din4 => trunc_ln1526_fu_212_p1,
        dout => x_real_3taps_V_1_3_fu_248_p6);

    mux_42_22_1_1_U87 : component channel_gen_mux_42_22_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 22,
        din1_WIDTH => 22,
        din2_WIDTH => 22,
        din3_WIDTH => 22,
        din4_WIDTH => 2,
        dout_WIDTH => 22)
    port map (
        din0 => x_real_3taps_V_2_2_fu_64,
        din1 => x_real_3taps_V_2_2_fu_64,
        din2 => x_real_3taps_V_2_fu_222_p5,
        din3 => x_real_3taps_V_2_fu_222_p5,
        din4 => trunc_ln1526_fu_212_p1,
        dout => x_real_3taps_V_2_3_fu_262_p6);

    mux_32_22_1_1_U88 : component channel_gen_mux_32_22_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 22,
        din1_WIDTH => 22,
        din2_WIDTH => 22,
        din3_WIDTH => 2,
        dout_WIDTH => 22)
    port map (
        din0 => x_imag_3taps_V_0_2_fu_68,
        din1 => x_imag_3taps_V_1_2_fu_72,
        din2 => x_imag_3taps_V_2_2_fu_76,
        din3 => add_ln142_fu_216_p2,
        dout => x_imag_3taps_V_2_fu_276_p5);

    mux_42_22_1_1_U89 : component channel_gen_mux_42_22_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 22,
        din1_WIDTH => 22,
        din2_WIDTH => 22,
        din3_WIDTH => 22,
        din4_WIDTH => 2,
        dout_WIDTH => 22)
    port map (
        din0 => x_imag_3taps_V_2_fu_276_p5,
        din1 => x_imag_3taps_V_0_2_fu_68,
        din2 => x_imag_3taps_V_0_2_fu_68,
        din3 => x_imag_3taps_V_0_2_fu_68,
        din4 => trunc_ln1526_fu_212_p1,
        dout => x_imag_3taps_V_0_3_fu_288_p6);

    mux_42_22_1_1_U90 : component channel_gen_mux_42_22_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 22,
        din1_WIDTH => 22,
        din2_WIDTH => 22,
        din3_WIDTH => 22,
        din4_WIDTH => 2,
        dout_WIDTH => 22)
    port map (
        din0 => x_imag_3taps_V_1_2_fu_72,
        din1 => x_imag_3taps_V_2_fu_276_p5,
        din2 => x_imag_3taps_V_1_2_fu_72,
        din3 => x_imag_3taps_V_1_2_fu_72,
        din4 => trunc_ln1526_fu_212_p1,
        dout => x_imag_3taps_V_1_3_fu_302_p6);

    mux_42_22_1_1_U91 : component channel_gen_mux_42_22_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 22,
        din1_WIDTH => 22,
        din2_WIDTH => 22,
        din3_WIDTH => 22,
        din4_WIDTH => 2,
        dout_WIDTH => 22)
    port map (
        din0 => x_imag_3taps_V_2_2_fu_76,
        din1 => x_imag_3taps_V_2_2_fu_76,
        din2 => x_imag_3taps_V_2_fu_276_p5,
        din3 => x_imag_3taps_V_2_fu_276_p5,
        din4 => trunc_ln1526_fu_212_p1,
        dout => x_imag_3taps_V_2_3_fu_316_p6);

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


    i_V_6_fu_52_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    i_V_6_fu_52 <= i_V;
                elsif (((icmp_ln1065_fu_188_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    i_V_6_fu_52 <= i_V_14_fu_330_p2;
                end if;
            end if; 
        end if;
    end process;

    x_imag_3taps_V_0_2_fu_68_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    x_imag_3taps_V_0_2_fu_68 <= x_imag_3taps_V_0_1;
                elsif (((icmp_ln1065_fu_188_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    x_imag_3taps_V_0_2_fu_68 <= x_imag_3taps_V_0_3_fu_288_p6;
                end if;
            end if; 
        end if;
    end process;

    x_imag_3taps_V_1_2_fu_72_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    x_imag_3taps_V_1_2_fu_72 <= x_imag_3taps_V_1_1;
                elsif (((icmp_ln1065_fu_188_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    x_imag_3taps_V_1_2_fu_72 <= x_imag_3taps_V_1_3_fu_302_p6;
                end if;
            end if; 
        end if;
    end process;

    x_imag_3taps_V_2_2_fu_76_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    x_imag_3taps_V_2_2_fu_76 <= x_imag_3taps_V_2_1;
                elsif (((icmp_ln1065_fu_188_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    x_imag_3taps_V_2_2_fu_76 <= x_imag_3taps_V_2_3_fu_316_p6;
                end if;
            end if; 
        end if;
    end process;

    x_real_3taps_V_0_2_fu_56_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    x_real_3taps_V_0_2_fu_56 <= x_real_3taps_V_0_1;
                elsif (((icmp_ln1065_fu_188_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    x_real_3taps_V_0_2_fu_56 <= x_real_3taps_V_0_3_fu_234_p6;
                end if;
            end if; 
        end if;
    end process;

    x_real_3taps_V_1_2_fu_60_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    x_real_3taps_V_1_2_fu_60 <= x_real_3taps_V_1_1;
                elsif (((icmp_ln1065_fu_188_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    x_real_3taps_V_1_2_fu_60 <= x_real_3taps_V_1_3_fu_248_p6;
                end if;
            end if; 
        end if;
    end process;

    x_real_3taps_V_2_2_fu_64_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    x_real_3taps_V_2_2_fu_64 <= x_real_3taps_V_2_1;
                elsif (((icmp_ln1065_fu_188_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    x_real_3taps_V_2_2_fu_64 <= x_real_3taps_V_2_3_fu_262_p6;
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
    add_ln142_fu_216_p2 <= std_logic_vector(unsigned(trunc_ln1526_fu_212_p1) + unsigned(ap_const_lv2_3));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone, icmp_ln1065_fu_188_p2)
    begin
        if (((icmp_ln1065_fu_188_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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

    i_V_14_fu_330_p2 <= std_logic_vector(unsigned(i_V_6_fu_52) + unsigned(ap_const_lv4_F));
    icmp_ln1065_fu_188_p2 <= "1" when (i_V_6_fu_52 = ap_const_lv4_0) else "0";
    trunc_ln1526_fu_212_p1 <= i_V_6_fu_52(2 - 1 downto 0);
    x_imag_3taps_V_1_2_out <= x_imag_3taps_V_1_2_fu_72;

    x_imag_3taps_V_1_2_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln1065_fu_188_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln1065_fu_188_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            x_imag_3taps_V_1_2_out_ap_vld <= ap_const_logic_1;
        else 
            x_imag_3taps_V_1_2_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    x_imag_3taps_V_2_2_out <= x_imag_3taps_V_2_2_fu_76;

    x_imag_3taps_V_2_2_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln1065_fu_188_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln1065_fu_188_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            x_imag_3taps_V_2_2_out_ap_vld <= ap_const_logic_1;
        else 
            x_imag_3taps_V_2_2_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    x_real_3taps_V_1_2_out <= x_real_3taps_V_1_2_fu_60;

    x_real_3taps_V_1_2_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln1065_fu_188_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln1065_fu_188_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            x_real_3taps_V_1_2_out_ap_vld <= ap_const_logic_1;
        else 
            x_real_3taps_V_1_2_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    x_real_3taps_V_2_2_out <= x_real_3taps_V_2_2_fu_64;

    x_real_3taps_V_2_2_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln1065_fu_188_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln1065_fu_188_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            x_real_3taps_V_2_2_out_ap_vld <= ap_const_logic_1;
        else 
            x_real_3taps_V_2_2_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

end behav;
