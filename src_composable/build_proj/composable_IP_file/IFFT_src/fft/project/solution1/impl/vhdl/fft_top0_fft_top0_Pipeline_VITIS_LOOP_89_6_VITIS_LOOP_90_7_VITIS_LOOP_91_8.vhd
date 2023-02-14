-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fft_top0_fft_top0_Pipeline_VITIS_LOOP_89_6_VITIS_LOOP_90_7_VITIS_LOOP_91_8 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    p_outData_V_M_real_V_0_dout : IN STD_LOGIC_VECTOR (26 downto 0);
    p_outData_V_M_real_V_0_empty_n : IN STD_LOGIC;
    p_outData_V_M_real_V_0_read : OUT STD_LOGIC;
    p_outData_V_M_imag_V_0_dout : IN STD_LOGIC_VECTOR (26 downto 0);
    p_outData_V_M_imag_V_0_empty_n : IN STD_LOGIC;
    p_outData_V_M_imag_V_0_read : OUT STD_LOGIC;
    p_outData_V_M_real_V_1_dout : IN STD_LOGIC_VECTOR (26 downto 0);
    p_outData_V_M_real_V_1_empty_n : IN STD_LOGIC;
    p_outData_V_M_real_V_1_read : OUT STD_LOGIC;
    p_outData_V_M_imag_V_1_dout : IN STD_LOGIC_VECTOR (26 downto 0);
    p_outData_V_M_imag_V_1_empty_n : IN STD_LOGIC;
    p_outData_V_M_imag_V_1_read : OUT STD_LOGIC;
    data_out_TREADY : IN STD_LOGIC;
    zext_ln74 : IN STD_LOGIC_VECTOR (38 downto 0);
    data_out_TDATA : OUT STD_LOGIC_VECTOR (63 downto 0);
    data_out_TVALID : OUT STD_LOGIC;
    data_out_TKEEP : OUT STD_LOGIC_VECTOR (7 downto 0);
    data_out_TSTRB : OUT STD_LOGIC_VECTOR (7 downto 0);
    data_out_TUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    data_out_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
    data_out_TID : OUT STD_LOGIC_VECTOR (0 downto 0);
    data_out_TDEST : OUT STD_LOGIC_VECTOR (0 downto 0) );
end;


architecture behav of fft_top0_fft_top0_Pipeline_VITIS_LOOP_89_6_VITIS_LOOP_90_7_VITIS_LOOP_91_8 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv39_0 : STD_LOGIC_VECTOR (38 downto 0) := "000000000000000000000000000000000000000";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv39_1 : STD_LOGIC_VECTOR (38 downto 0) := "000000000000000000000000000000000000001";
    constant ap_const_lv9_80 : STD_LOGIC_VECTOR (8 downto 0) := "010000000";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv9_1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_19 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011001";
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
    signal io_acc_block_signal_op53 : STD_LOGIC;
    signal icmp_ln89_reg_430 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln145_reg_434 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op53_read_state3 : BOOLEAN;
    signal io_acc_block_signal_op57 : STD_LOGIC;
    signal ap_predicate_op57_read_state3 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln89_fu_205_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal data_out_TDATA_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal p_outData_V_M_real_V_0_blk_n : STD_LOGIC;
    signal p_outData_V_M_imag_V_0_blk_n : STD_LOGIC;
    signal p_outData_V_M_real_V_1_blk_n : STD_LOGIC;
    signal p_outData_V_M_imag_V_1_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal trunc_ln145_fu_260_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_mux_p_04_0_0_0_0_phi_fu_172_p4 : STD_LOGIC_VECTOR (26 downto 0);
    signal ap_phi_reg_pp0_iter2_p_04_0_0_0_0_reg_169 : STD_LOGIC_VECTOR (26 downto 0);
    signal ap_phi_mux_p_15_0_0_0_0_phi_fu_181_p4 : STD_LOGIC_VECTOR (26 downto 0);
    signal ap_phi_reg_pp0_iter2_p_15_0_0_0_0_reg_178 : STD_LOGIC_VECTOR (26 downto 0);
    signal p_Val2_s_fu_96 : STD_LOGIC_VECTOR (31 downto 0);
    signal fft_out_real_V_fu_348_p5 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Val2_1_fu_100 : STD_LOGIC_VECTOR (31 downto 0);
    signal fft_out_imag_V_fu_360_p5 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_fu_104 : STD_LOGIC_VECTOR (1 downto 0);
    signal add_ln91_fu_267_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal indvar_flatten18_fu_108 : STD_LOGIC_VECTOR (8 downto 0);
    signal select_ln90_fu_279_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal indvar_flatten34_fu_112 : STD_LOGIC_VECTOR (38 downto 0);
    signal add_ln89_fu_210_p2 : STD_LOGIC_VECTOR (38 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal icmp_ln90_fu_222_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln91_fu_234_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln33_fu_228_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln33_fu_240_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln33_fu_246_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln33_fu_252_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal add_ln90_fu_273_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal read_Tout0_in_r_V_fu_328_p4 : STD_LOGIC_VECTOR (19 downto 0);
    signal read_Tout0_in_i_V_fu_338_p4 : STD_LOGIC_VECTOR (19 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component fft_top0_flow_control_loop_pipe_sequential_init IS
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
    flow_control_loop_pipe_sequential_init_U : component fft_top0_flow_control_loop_pipe_sequential_init
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


    i_fu_104_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_104 <= ap_const_lv2_0;
                elsif (((icmp_ln89_fu_205_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    i_fu_104 <= add_ln91_fu_267_p2;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten18_fu_108_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten18_fu_108 <= ap_const_lv9_0;
                elsif (((icmp_ln89_fu_205_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    indvar_flatten18_fu_108 <= select_ln90_fu_279_p3;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten34_fu_112_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten34_fu_112 <= ap_const_lv39_0;
                elsif (((icmp_ln89_fu_205_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    indvar_flatten34_fu_112 <= add_ln89_fu_210_p2;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln89_reg_430 <= icmp_ln89_fu_205_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then
                p_Val2_1_fu_100 <= fft_out_imag_V_fu_360_p5;
                p_Val2_s_fu_96 <= fft_out_real_V_fu_348_p5;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln89_fu_205_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                trunc_ln145_reg_434 <= trunc_ln145_fu_260_p1;
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
    add_ln89_fu_210_p2 <= std_logic_vector(unsigned(indvar_flatten34_fu_112) + unsigned(ap_const_lv39_1));
    add_ln90_fu_273_p2 <= std_logic_vector(unsigned(indvar_flatten18_fu_108) + unsigned(ap_const_lv9_1));
    add_ln91_fu_267_p2 <= std_logic_vector(unsigned(select_ln33_fu_252_p3) + unsigned(ap_const_lv2_1));
    and_ln33_fu_240_p2 <= (xor_ln33_fu_228_p2 and icmp_ln91_fu_234_p2);
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_enable_reg_pp0_iter2, io_acc_block_signal_op53, ap_predicate_op53_read_state3, io_acc_block_signal_op57, ap_predicate_op57_read_state3, data_out_TREADY)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and ((data_out_TREADY = ap_const_logic_0) or ((ap_predicate_op57_read_state3 = ap_const_boolean_1) and (io_acc_block_signal_op57 = ap_const_logic_0)) or ((ap_predicate_op53_read_state3 = ap_const_boolean_1) and (io_acc_block_signal_op53 = ap_const_logic_0))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter2, io_acc_block_signal_op53, ap_predicate_op53_read_state3, io_acc_block_signal_op57, ap_predicate_op57_read_state3, data_out_TREADY)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and ((data_out_TREADY = ap_const_logic_0) or ((ap_predicate_op57_read_state3 = ap_const_boolean_1) and (io_acc_block_signal_op57 = ap_const_logic_0)) or ((ap_predicate_op53_read_state3 = ap_const_boolean_1) and (io_acc_block_signal_op53 = ap_const_logic_0))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter2, io_acc_block_signal_op53, ap_predicate_op53_read_state3, io_acc_block_signal_op57, ap_predicate_op57_read_state3, data_out_TREADY)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and ((data_out_TREADY = ap_const_logic_0) or ((ap_predicate_op57_read_state3 = ap_const_boolean_1) and (io_acc_block_signal_op57 = ap_const_logic_0)) or ((ap_predicate_op53_read_state3 = ap_const_boolean_1) and (io_acc_block_signal_op53 = ap_const_logic_0))));
    end process;

        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state3_pp0_stage0_iter2_assign_proc : process(io_acc_block_signal_op53, ap_predicate_op53_read_state3, io_acc_block_signal_op57, ap_predicate_op57_read_state3, data_out_TREADY)
    begin
                ap_block_state3_pp0_stage0_iter2 <= ((data_out_TREADY = ap_const_logic_0) or ((ap_predicate_op57_read_state3 = ap_const_boolean_1) and (io_acc_block_signal_op57 = ap_const_logic_0)) or ((ap_predicate_op53_read_state3 = ap_const_boolean_1) and (io_acc_block_signal_op53 = ap_const_logic_0)));
    end process;


    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone, icmp_ln89_fu_205_p2)
    begin
        if (((icmp_ln89_fu_205_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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
        if (((ap_start_int = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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

    ap_phi_mux_p_04_0_0_0_0_phi_fu_172_p4_assign_proc : process(p_outData_V_M_real_V_0_dout, icmp_ln89_reg_430, trunc_ln145_reg_434, p_outData_V_M_real_V_1_dout, ap_phi_reg_pp0_iter2_p_04_0_0_0_0_reg_169)
    begin
        if ((icmp_ln89_reg_430 = ap_const_lv1_0)) then
            if ((trunc_ln145_reg_434 = ap_const_lv1_0)) then 
                ap_phi_mux_p_04_0_0_0_0_phi_fu_172_p4 <= p_outData_V_M_real_V_0_dout;
            elsif ((trunc_ln145_reg_434 = ap_const_lv1_1)) then 
                ap_phi_mux_p_04_0_0_0_0_phi_fu_172_p4 <= p_outData_V_M_real_V_1_dout;
            else 
                ap_phi_mux_p_04_0_0_0_0_phi_fu_172_p4 <= ap_phi_reg_pp0_iter2_p_04_0_0_0_0_reg_169;
            end if;
        else 
            ap_phi_mux_p_04_0_0_0_0_phi_fu_172_p4 <= ap_phi_reg_pp0_iter2_p_04_0_0_0_0_reg_169;
        end if; 
    end process;


    ap_phi_mux_p_15_0_0_0_0_phi_fu_181_p4_assign_proc : process(p_outData_V_M_imag_V_0_dout, icmp_ln89_reg_430, trunc_ln145_reg_434, p_outData_V_M_imag_V_1_dout, ap_phi_reg_pp0_iter2_p_15_0_0_0_0_reg_178)
    begin
        if ((icmp_ln89_reg_430 = ap_const_lv1_0)) then
            if ((trunc_ln145_reg_434 = ap_const_lv1_0)) then 
                ap_phi_mux_p_15_0_0_0_0_phi_fu_181_p4 <= p_outData_V_M_imag_V_0_dout;
            elsif ((trunc_ln145_reg_434 = ap_const_lv1_1)) then 
                ap_phi_mux_p_15_0_0_0_0_phi_fu_181_p4 <= p_outData_V_M_imag_V_1_dout;
            else 
                ap_phi_mux_p_15_0_0_0_0_phi_fu_181_p4 <= ap_phi_reg_pp0_iter2_p_15_0_0_0_0_reg_178;
            end if;
        else 
            ap_phi_mux_p_15_0_0_0_0_phi_fu_181_p4 <= ap_phi_reg_pp0_iter2_p_15_0_0_0_0_reg_178;
        end if; 
    end process;

    ap_phi_reg_pp0_iter2_p_04_0_0_0_0_reg_169 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXX";
    ap_phi_reg_pp0_iter2_p_15_0_0_0_0_reg_178 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXX";

    ap_predicate_op53_read_state3_assign_proc : process(icmp_ln89_reg_430, trunc_ln145_reg_434)
    begin
                ap_predicate_op53_read_state3 <= ((trunc_ln145_reg_434 = ap_const_lv1_0) and (icmp_ln89_reg_430 = ap_const_lv1_0));
    end process;


    ap_predicate_op57_read_state3_assign_proc : process(icmp_ln89_reg_430, trunc_ln145_reg_434)
    begin
                ap_predicate_op57_read_state3 <= ((trunc_ln145_reg_434 = ap_const_lv1_1) and (icmp_ln89_reg_430 = ap_const_lv1_0));
    end process;


    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;

    data_out_TDATA <= (fft_out_real_V_fu_348_p5 & fft_out_imag_V_fu_360_p5);

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

    fft_out_imag_V_fu_360_p5 <= (p_Val2_1_fu_100(31 downto 20) & read_Tout0_in_i_V_fu_338_p4);
    fft_out_real_V_fu_348_p5 <= (p_Val2_s_fu_96(31 downto 20) & read_Tout0_in_r_V_fu_328_p4);
    icmp_ln89_fu_205_p2 <= "1" when (indvar_flatten34_fu_112 = zext_ln74) else "0";
    icmp_ln90_fu_222_p2 <= "1" when (indvar_flatten18_fu_108 = ap_const_lv9_80) else "0";
    icmp_ln91_fu_234_p2 <= "1" when (i_fu_104 = ap_const_lv2_2) else "0";
    io_acc_block_signal_op53 <= (p_outData_V_M_real_V_0_empty_n and p_outData_V_M_imag_V_0_empty_n);
    io_acc_block_signal_op57 <= (p_outData_V_M_real_V_1_empty_n and p_outData_V_M_imag_V_1_empty_n);
    or_ln33_fu_246_p2 <= (icmp_ln90_fu_222_p2 or and_ln33_fu_240_p2);

    p_outData_V_M_imag_V_0_blk_n_assign_proc : process(ap_enable_reg_pp0_iter2, p_outData_V_M_imag_V_0_empty_n, ap_predicate_op53_read_state3, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_predicate_op53_read_state3 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            p_outData_V_M_imag_V_0_blk_n <= p_outData_V_M_imag_V_0_empty_n;
        else 
            p_outData_V_M_imag_V_0_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    p_outData_V_M_imag_V_0_read_assign_proc : process(ap_enable_reg_pp0_iter2, ap_predicate_op53_read_state3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_predicate_op53_read_state3 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            p_outData_V_M_imag_V_0_read <= ap_const_logic_1;
        else 
            p_outData_V_M_imag_V_0_read <= ap_const_logic_0;
        end if; 
    end process;


    p_outData_V_M_imag_V_1_blk_n_assign_proc : process(ap_enable_reg_pp0_iter2, p_outData_V_M_imag_V_1_empty_n, ap_predicate_op57_read_state3, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_predicate_op57_read_state3 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            p_outData_V_M_imag_V_1_blk_n <= p_outData_V_M_imag_V_1_empty_n;
        else 
            p_outData_V_M_imag_V_1_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    p_outData_V_M_imag_V_1_read_assign_proc : process(ap_enable_reg_pp0_iter2, ap_predicate_op57_read_state3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_predicate_op57_read_state3 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            p_outData_V_M_imag_V_1_read <= ap_const_logic_1;
        else 
            p_outData_V_M_imag_V_1_read <= ap_const_logic_0;
        end if; 
    end process;


    p_outData_V_M_real_V_0_blk_n_assign_proc : process(ap_enable_reg_pp0_iter2, p_outData_V_M_real_V_0_empty_n, ap_predicate_op53_read_state3, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_predicate_op53_read_state3 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            p_outData_V_M_real_V_0_blk_n <= p_outData_V_M_real_V_0_empty_n;
        else 
            p_outData_V_M_real_V_0_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    p_outData_V_M_real_V_0_read_assign_proc : process(ap_enable_reg_pp0_iter2, ap_predicate_op53_read_state3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_predicate_op53_read_state3 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            p_outData_V_M_real_V_0_read <= ap_const_logic_1;
        else 
            p_outData_V_M_real_V_0_read <= ap_const_logic_0;
        end if; 
    end process;


    p_outData_V_M_real_V_1_blk_n_assign_proc : process(ap_enable_reg_pp0_iter2, p_outData_V_M_real_V_1_empty_n, ap_predicate_op57_read_state3, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_predicate_op57_read_state3 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            p_outData_V_M_real_V_1_blk_n <= p_outData_V_M_real_V_1_empty_n;
        else 
            p_outData_V_M_real_V_1_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    p_outData_V_M_real_V_1_read_assign_proc : process(ap_enable_reg_pp0_iter2, ap_predicate_op57_read_state3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_predicate_op57_read_state3 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            p_outData_V_M_real_V_1_read <= ap_const_logic_1;
        else 
            p_outData_V_M_real_V_1_read <= ap_const_logic_0;
        end if; 
    end process;

    read_Tout0_in_i_V_fu_338_p4 <= ap_phi_mux_p_15_0_0_0_0_phi_fu_181_p4(25 downto 6);
    read_Tout0_in_r_V_fu_328_p4 <= ap_phi_mux_p_04_0_0_0_0_phi_fu_172_p4(25 downto 6);
    select_ln33_fu_252_p3 <= 
        ap_const_lv2_0 when (or_ln33_fu_246_p2(0) = '1') else 
        i_fu_104;
    select_ln90_fu_279_p3 <= 
        ap_const_lv9_1 when (icmp_ln90_fu_222_p2(0) = '1') else 
        add_ln90_fu_273_p2;
    trunc_ln145_fu_260_p1 <= select_ln33_fu_252_p3(1 - 1 downto 0);
    xor_ln33_fu_228_p2 <= (icmp_ln90_fu_222_p2 xor ap_const_lv1_1);
end behav;
