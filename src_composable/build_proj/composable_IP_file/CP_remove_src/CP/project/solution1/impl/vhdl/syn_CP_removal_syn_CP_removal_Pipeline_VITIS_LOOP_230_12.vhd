-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity syn_CP_removal_syn_CP_removal_Pipeline_VITIS_LOOP_230_12 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    data_out_TREADY : IN STD_LOGIC;
    sext_ln230 : IN STD_LOGIC_VECTOR (31 downto 0);
    out_temp_r_V : IN STD_LOGIC_VECTOR (31 downto 0);
    out_temp_i_V : IN STD_LOGIC_VECTOR (31 downto 0);
    sext_ln14 : IN STD_LOGIC_VECTOR (32 downto 0);
    data_temp_real_V_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    data_temp_real_V_ce0 : OUT STD_LOGIC;
    data_temp_real_V_q0 : IN STD_LOGIC_VECTOR (19 downto 0);
    data_temp_imag_V_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    data_temp_imag_V_ce0 : OUT STD_LOGIC;
    data_temp_imag_V_q0 : IN STD_LOGIC_VECTOR (19 downto 0);
    data_out_TDATA : OUT STD_LOGIC_VECTOR (63 downto 0);
    data_out_TVALID : OUT STD_LOGIC;
    data_out_TKEEP : OUT STD_LOGIC_VECTOR (7 downto 0);
    data_out_TSTRB : OUT STD_LOGIC_VECTOR (7 downto 0);
    data_out_TUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    data_out_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
    data_out_TID : OUT STD_LOGIC_VECTOR (0 downto 0);
    data_out_TDEST : OUT STD_LOGIC_VECTOR (0 downto 0);
    out_temp_r_V_10_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    out_temp_r_V_10_out_ap_vld : OUT STD_LOGIC;
    out_temp_i_V_10_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    out_temp_i_V_10_out_ap_vld : OUT STD_LOGIC );
end;


architecture behav of syn_CP_removal_syn_CP_removal_Pipeline_VITIS_LOOP_230_12 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv64_1 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv32_13 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010011";

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
    signal icmp_ln1057_fu_213_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal data_out_TDATA_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal sext_ln14_cast_fu_181_p1 : STD_LOGIC_VECTOR (33 downto 0);
    signal sext_ln14_cast_reg_309 : STD_LOGIC_VECTOR (33 downto 0);
    signal p_Val2_1_fu_74 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Result_3_fu_247_p5 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal p_Val2_2_fu_78 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Result_s_fu_235_p5 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_fu_82 : STD_LOGIC_VECTOR (63 downto 0);
    signal add_ln230_fu_218_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal sext_ln230_cast_fu_185_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal trunc_ln1057_fu_209_p1 : STD_LOGIC_VECTOR (33 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component syn_CP_removal_flow_control_loop_pipe_sequential_init IS
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
    flow_control_loop_pipe_sequential_init_U : component syn_CP_removal_flow_control_loop_pipe_sequential_init
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


    i_fu_82_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_82 <= sext_ln230_cast_fu_185_p1;
                elsif (((icmp_ln1057_fu_213_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    i_fu_82 <= add_ln230_fu_218_p2;
                end if;
            end if; 
        end if;
    end process;

    p_Val2_1_fu_74_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                    p_Val2_1_fu_74 <= out_temp_i_V;
                elsif ((ap_enable_reg_pp0_iter2 = ap_const_logic_1)) then 
                    p_Val2_1_fu_74 <= p_Result_3_fu_247_p5;
                end if;
            end if; 
        end if;
    end process;

    p_Val2_2_fu_78_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                    p_Val2_2_fu_78 <= out_temp_r_V;
                elsif ((ap_enable_reg_pp0_iter2 = ap_const_logic_1)) then 
                    p_Val2_2_fu_78 <= p_Result_s_fu_235_p5;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                sext_ln14_cast_reg_309 <= sext_ln14_cast_fu_181_p1;
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
    add_ln230_fu_218_p2 <= std_logic_vector(unsigned(i_fu_82) + unsigned(ap_const_lv64_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_enable_reg_pp0_iter2, data_out_TREADY)
    begin
                ap_block_pp0_stage0_01001 <= ((data_out_TREADY = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter2, data_out_TREADY)
    begin
                ap_block_pp0_stage0_11001 <= ((data_out_TREADY = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter2, data_out_TREADY)
    begin
                ap_block_pp0_stage0_subdone <= ((data_out_TREADY = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1));
    end process;

        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state3_pp0_stage0_iter2_assign_proc : process(data_out_TREADY)
    begin
                ap_block_state3_pp0_stage0_iter2 <= (data_out_TREADY = ap_const_logic_0);
    end process;


    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone, icmp_ln1057_fu_213_p2)
    begin
        if (((icmp_ln1057_fu_213_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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

    data_out_TDATA <= (p_Result_s_fu_235_p5 & p_Result_3_fu_247_p5);

    data_out_TDATA_blk_n_assign_proc : process(ap_enable_reg_pp0_iter2, data_out_TREADY, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            data_out_TDATA_blk_n <= data_out_TREADY;
        else 
            data_out_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    data_out_TDEST <= ap_const_lv1_0;
    data_out_TID <= ap_const_lv1_0;
    data_out_TKEEP <= ap_const_lv8_0;
    data_out_TLAST <= ap_const_lv1_0;
    data_out_TSTRB <= ap_const_lv8_0;
    data_out_TUSER <= ap_const_lv1_0;

    data_out_TVALID_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            data_out_TVALID <= ap_const_logic_1;
        else 
            data_out_TVALID <= ap_const_logic_0;
        end if; 
    end process;

    data_temp_imag_V_address0 <= i_fu_82(8 - 1 downto 0);

    data_temp_imag_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            data_temp_imag_V_ce0 <= ap_const_logic_1;
        else 
            data_temp_imag_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    data_temp_real_V_address0 <= i_fu_82(8 - 1 downto 0);

    data_temp_real_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            data_temp_real_V_ce0 <= ap_const_logic_1;
        else 
            data_temp_real_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln1057_fu_213_p2 <= "1" when (signed(trunc_ln1057_fu_209_p1) < signed(sext_ln14_cast_reg_309)) else "0";
    out_temp_i_V_10_out <= p_Val2_1_fu_74;

    out_temp_i_V_10_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln1057_fu_213_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln1057_fu_213_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            out_temp_i_V_10_out_ap_vld <= ap_const_logic_1;
        else 
            out_temp_i_V_10_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    out_temp_r_V_10_out <= p_Val2_2_fu_78;

    out_temp_r_V_10_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln1057_fu_213_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln1057_fu_213_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            out_temp_r_V_10_out_ap_vld <= ap_const_logic_1;
        else 
            out_temp_r_V_10_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    p_Result_3_fu_247_p5 <= (p_Val2_1_fu_74(31 downto 20) & data_temp_imag_V_q0);
    p_Result_s_fu_235_p5 <= (p_Val2_2_fu_78(31 downto 20) & data_temp_real_V_q0);
        sext_ln14_cast_fu_181_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(sext_ln14),34));

        sext_ln230_cast_fu_185_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(sext_ln230),64));

    trunc_ln1057_fu_209_p1 <= i_fu_82(34 - 1 downto 0);
end behav;
