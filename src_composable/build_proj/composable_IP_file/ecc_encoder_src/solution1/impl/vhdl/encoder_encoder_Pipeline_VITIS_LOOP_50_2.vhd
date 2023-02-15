-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity encoder_encoder_Pipeline_VITIS_LOOP_50_2 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    data_in_TVALID : IN STD_LOGIC;
    data_out_TREADY : IN STD_LOGIC;
    s_V_load : IN STD_LOGIC_VECTOR (5 downto 0);
    add : IN STD_LOGIC_VECTOR (30 downto 0);
    data_out_TDATA : OUT STD_LOGIC_VECTOR (63 downto 0);
    data_out_TVALID : OUT STD_LOGIC;
    data_out_TKEEP : OUT STD_LOGIC_VECTOR (7 downto 0);
    data_out_TSTRB : OUT STD_LOGIC_VECTOR (7 downto 0);
    data_out_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
    mul : IN STD_LOGIC_VECTOR (31 downto 0);
    data_in_TDATA : IN STD_LOGIC_VECTOR (63 downto 0);
    data_in_TREADY : OUT STD_LOGIC;
    data_in_TKEEP : IN STD_LOGIC_VECTOR (7 downto 0);
    data_in_TSTRB : IN STD_LOGIC_VECTOR (7 downto 0);
    data_in_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
    part_set_i_i_lcssa276_out : OUT STD_LOGIC_VECTOR (5 downto 0);
    part_set_i_i_lcssa276_out_ap_vld : OUT STD_LOGIC );
end;


architecture behav of encoder_encoder_Pipeline_VITIS_LOOP_50_2 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv31_0 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000000";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv31_1 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000001";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal icmp_ln50_fu_186_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln51_fu_202_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal empty_11_fu_198_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op39_read_state1 : BOOLEAN;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal data_out_TDATA_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal data_in_TDATA_blk_n : STD_LOGIC;
    signal empty_11_reg_526 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal i_fu_92 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_i_1 : STD_LOGIC_VECTOR (30 downto 0);
    signal i_2_fu_192_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal part_set_i_i_lcssa276_fu_96 : STD_LOGIC_VECTOR (5 downto 0);
    signal p_Result_6_1_fu_459_p4 : STD_LOGIC_VECTOR (5 downto 0);
    signal data_in_axiu_last_V_fu_100 : STD_LOGIC_VECTOR (0 downto 0);
    signal data_in_axiu_strb_V_fu_104 : STD_LOGIC_VECTOR (7 downto 0);
    signal data_in_axiu_keep_V_fu_108 : STD_LOGIC_VECTOR (7 downto 0);
    signal data_in_temp_V_fu_112 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal i_cast18_fu_182_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul1_fu_272_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal zext_ln61_fu_279_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_4_fu_299_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_fu_291_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_6_fu_315_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_3_fu_283_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln844_5_fu_329_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_5_fu_307_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln844_6_fu_335_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln844_4_fu_323_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln63_fu_347_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln844_8_fu_357_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln844_9_fu_363_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln844_7_fu_351_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln62_fu_375_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal zext_ln819_fu_381_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_7_fu_393_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_3_1_fu_385_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln844_11_fu_407_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln844_12_fu_413_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln844_10_fu_401_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln844_13_fu_425_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln844_14_fu_431_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln844_3_fu_437_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln844_2_fu_419_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln844_1_fu_369_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln844_fu_341_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln1676_fu_455_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal data_in_axiu_data_V_fu_443_p5 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_condition_107 : BOOLEAN;
    signal ap_ce_reg : STD_LOGIC;

    component encoder_flow_control_loop_pipe_sequential_init IS
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
    flow_control_loop_pipe_sequential_init_U : component encoder_flow_control_loop_pipe_sequential_init
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


    data_in_temp_V_fu_112_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_107)) then
                if (((empty_11_fu_198_p1 = ap_const_lv1_0) and (icmp_ln51_fu_202_p2 = ap_const_lv1_1))) then 
                    data_in_temp_V_fu_112 <= data_in_TDATA;
                elsif ((icmp_ln51_fu_202_p2 = ap_const_lv1_0)) then 
                    data_in_temp_V_fu_112 <= ap_const_lv64_0;
                end if;
            end if; 
        end if;
    end process;

    i_fu_92_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln50_fu_186_p2 = ap_const_lv1_0) and (ap_start_int = ap_const_logic_1))) then 
                    i_fu_92 <= i_2_fu_192_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_92 <= ap_const_lv31_0;
                end if;
            end if; 
        end if;
    end process;

    part_set_i_i_lcssa276_fu_96_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    part_set_i_i_lcssa276_fu_96 <= s_V_load;
                elsif ((ap_enable_reg_pp0_iter1 = ap_const_logic_1)) then 
                    part_set_i_i_lcssa276_fu_96 <= p_Result_6_1_fu_459_p4;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (empty_11_fu_198_p1 = ap_const_lv1_0) and (icmp_ln51_fu_202_p2 = ap_const_lv1_1) and (icmp_ln50_fu_186_p2 = ap_const_lv1_0) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                data_in_axiu_keep_V_fu_108 <= data_in_TKEEP;
                data_in_axiu_last_V_fu_100 <= data_in_TLAST;
                data_in_axiu_strb_V_fu_104 <= data_in_TSTRB;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln50_fu_186_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                empty_11_reg_526 <= empty_11_fu_198_p1;
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

    ap_block_pp0_stage0_01001_assign_proc : process(ap_enable_reg_pp0_iter1, data_in_TVALID, ap_predicate_op39_read_state1, data_out_TREADY, ap_start_int)
    begin
                ap_block_pp0_stage0_01001 <= (((data_out_TREADY = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((ap_predicate_op39_read_state1 = ap_const_boolean_1) and (data_in_TVALID = ap_const_logic_0) and (ap_start_int = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter1, data_in_TVALID, ap_predicate_op39_read_state1, data_out_TREADY, ap_start_int)
    begin
                ap_block_pp0_stage0_11001 <= (((data_out_TREADY = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((ap_predicate_op39_read_state1 = ap_const_boolean_1) and (data_in_TVALID = ap_const_logic_0) and (ap_start_int = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter1, data_in_TVALID, ap_predicate_op39_read_state1, data_out_TREADY, ap_start_int)
    begin
                ap_block_pp0_stage0_subdone <= (((data_out_TREADY = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((ap_predicate_op39_read_state1 = ap_const_boolean_1) and (data_in_TVALID = ap_const_logic_0) and (ap_start_int = ap_const_logic_1)));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(data_in_TVALID, ap_predicate_op39_read_state1)
    begin
                ap_block_state1_pp0_stage0_iter0 <= ((ap_predicate_op39_read_state1 = ap_const_boolean_1) and (data_in_TVALID = ap_const_logic_0));
    end process;


    ap_block_state2_pp0_stage0_iter1_assign_proc : process(data_out_TREADY)
    begin
                ap_block_state2_pp0_stage0_iter1 <= (data_out_TREADY = ap_const_logic_0);
    end process;


    ap_condition_107_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln50_fu_186_p2, ap_block_pp0_stage0_11001, ap_start_int)
    begin
                ap_condition_107 <= ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln50_fu_186_p2 = ap_const_lv1_0) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
    end process;


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln50_fu_186_p2, ap_block_pp0_stage0_subdone, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (icmp_ln50_fu_186_p2 = ap_const_lv1_1) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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
        if (((ap_start_int = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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

    ap_predicate_op39_read_state1_assign_proc : process(icmp_ln50_fu_186_p2, icmp_ln51_fu_202_p2, empty_11_fu_198_p1)
    begin
                ap_predicate_op39_read_state1 <= ((empty_11_fu_198_p1 = ap_const_lv1_0) and (icmp_ln51_fu_202_p2 = ap_const_lv1_1) and (icmp_ln50_fu_186_p2 = ap_const_lv1_0));
    end process;


    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, i_fu_92, ap_loop_init)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_sig_allocacmp_i_1 <= ap_const_lv31_0;
        else 
            ap_sig_allocacmp_i_1 <= i_fu_92;
        end if; 
    end process;


    data_in_TDATA_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, data_in_TVALID, ap_predicate_op39_read_state1, ap_block_pp0_stage0, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_predicate_op39_read_state1 = ap_const_boolean_1) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            data_in_TDATA_blk_n <= data_in_TVALID;
        else 
            data_in_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    data_in_TREADY_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_predicate_op39_read_state1, ap_block_pp0_stage0_11001, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_predicate_op39_read_state1 = ap_const_boolean_1) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            data_in_TREADY <= ap_const_logic_1;
        else 
            data_in_TREADY <= ap_const_logic_0;
        end if; 
    end process;

    data_in_axiu_data_V_fu_443_p5 <= (((xor_ln844_3_fu_437_p2 & xor_ln844_2_fu_419_p2) & xor_ln844_1_fu_369_p2) & xor_ln844_fu_341_p2);
    data_out_TDATA <= std_logic_vector(IEEE.numeric_std.resize(unsigned(data_in_axiu_data_V_fu_443_p5),64));

    data_out_TDATA_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, data_out_TREADY, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            data_out_TDATA_blk_n <= data_out_TREADY;
        else 
            data_out_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    data_out_TKEEP <= data_in_axiu_keep_V_fu_108;
    data_out_TLAST <= data_in_axiu_last_V_fu_100;
    data_out_TSTRB <= data_in_axiu_strb_V_fu_104;

    data_out_TVALID_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            data_out_TVALID <= ap_const_logic_1;
        else 
            data_out_TVALID <= ap_const_logic_0;
        end if; 
    end process;

    empty_11_fu_198_p1 <= ap_sig_allocacmp_i_1(1 - 1 downto 0);
    i_2_fu_192_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_1) + unsigned(ap_const_lv31_1));
    i_cast18_fu_182_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_i_1),32));
    icmp_ln50_fu_186_p2 <= "1" when (ap_sig_allocacmp_i_1 = add) else "0";
    icmp_ln51_fu_202_p2 <= "1" when (signed(i_cast18_fu_182_p1) < signed(mul)) else "0";
    mul1_fu_272_p3 <= (empty_11_reg_526 & ap_const_lv1_0);
    or_ln62_fu_375_p2 <= (mul1_fu_272_p3 or ap_const_lv2_1);
    p_Result_3_1_fu_385_p3 <= data_in_temp_V_fu_112(to_integer(unsigned(zext_ln819_fu_381_p1)) downto to_integer(unsigned(zext_ln819_fu_381_p1))) when (to_integer(unsigned(zext_ln819_fu_381_p1))>= 0 and to_integer(unsigned(zext_ln819_fu_381_p1))<=63) else "-";
    p_Result_3_fu_283_p3 <= data_in_temp_V_fu_112(to_integer(unsigned(zext_ln61_fu_279_p1)) downto to_integer(unsigned(zext_ln61_fu_279_p1))) when (to_integer(unsigned(zext_ln61_fu_279_p1))>= 0 and to_integer(unsigned(zext_ln61_fu_279_p1))<=63) else "-";
    p_Result_6_1_fu_459_p4 <= ((trunc_ln1676_fu_455_p1 & p_Result_3_fu_283_p3) & p_Result_3_1_fu_385_p3);
    part_set_i_i_lcssa276_out <= part_set_i_i_lcssa276_fu_96;

    part_set_i_i_lcssa276_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln50_fu_186_p2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln50_fu_186_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            part_set_i_i_lcssa276_out_ap_vld <= ap_const_logic_1;
        else 
            part_set_i_i_lcssa276_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    tmp_4_fu_299_p3 <= part_set_i_i_lcssa276_fu_96(1 downto 1);
    tmp_5_fu_307_p3 <= part_set_i_i_lcssa276_fu_96(2 downto 2);
    tmp_6_fu_315_p3 <= part_set_i_i_lcssa276_fu_96(4 downto 4);
    tmp_7_fu_393_p3 <= part_set_i_i_lcssa276_fu_96(3 downto 3);
    tmp_fu_291_p3 <= part_set_i_i_lcssa276_fu_96(5 downto 5);
    trunc_ln1676_fu_455_p1 <= part_set_i_i_lcssa276_fu_96(4 - 1 downto 0);
    trunc_ln63_fu_347_p1 <= part_set_i_i_lcssa276_fu_96(1 - 1 downto 0);
    xor_ln844_10_fu_401_p2 <= (trunc_ln63_fu_347_p1 xor tmp_6_fu_315_p3);
    xor_ln844_11_fu_407_p2 <= (tmp_7_fu_393_p3 xor p_Result_3_1_fu_385_p3);
    xor_ln844_12_fu_413_p2 <= (xor_ln844_11_fu_407_p2 xor tmp_4_fu_299_p3);
    xor_ln844_13_fu_425_p2 <= (tmp_4_fu_299_p3 xor p_Result_3_1_fu_385_p3);
    xor_ln844_14_fu_431_p2 <= (xor_ln844_13_fu_425_p2 xor trunc_ln63_fu_347_p1);
    xor_ln844_1_fu_369_p2 <= (xor_ln844_9_fu_363_p2 xor xor_ln844_7_fu_351_p2);
    xor_ln844_2_fu_419_p2 <= (xor_ln844_12_fu_413_p2 xor xor_ln844_10_fu_401_p2);
    xor_ln844_3_fu_437_p2 <= (xor_ln844_5_fu_329_p2 xor xor_ln844_14_fu_431_p2);
    xor_ln844_4_fu_323_p2 <= (tmp_fu_291_p3 xor tmp_4_fu_299_p3);
    xor_ln844_5_fu_329_p2 <= (tmp_6_fu_315_p3 xor p_Result_3_fu_283_p3);
    xor_ln844_6_fu_335_p2 <= (xor_ln844_5_fu_329_p2 xor tmp_5_fu_307_p3);
    xor_ln844_7_fu_351_p2 <= (trunc_ln63_fu_347_p1 xor tmp_fu_291_p3);
    xor_ln844_8_fu_357_p2 <= (tmp_5_fu_307_p3 xor p_Result_3_fu_283_p3);
    xor_ln844_9_fu_363_p2 <= (xor_ln844_8_fu_357_p2 xor tmp_4_fu_299_p3);
    xor_ln844_fu_341_p2 <= (xor_ln844_6_fu_335_p2 xor xor_ln844_4_fu_323_p2);
    zext_ln61_fu_279_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(mul1_fu_272_p3),64));
    zext_ln819_fu_381_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln62_fu_375_p2),64));
end behav;