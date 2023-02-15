-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity syn_CP_removal_syn_CP_removal_Pipeline_VITIS_LOOP_219_11 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    data_in_TVALID : IN STD_LOGIC;
    data_out_TREADY : IN STD_LOGIC;
    add273 : IN STD_LOGIC_VECTOR (31 downto 0);
    data_in_TDATA : IN STD_LOGIC_VECTOR (63 downto 0);
    data_in_TREADY : OUT STD_LOGIC;
    data_in_TKEEP : IN STD_LOGIC_VECTOR (7 downto 0);
    data_in_TSTRB : IN STD_LOGIC_VECTOR (7 downto 0);
    data_in_TUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    data_in_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
    data_in_TID : IN STD_LOGIC_VECTOR (0 downto 0);
    data_in_TDEST : IN STD_LOGIC_VECTOR (0 downto 0);
    data_out_TDATA : OUT STD_LOGIC_VECTOR (63 downto 0);
    data_out_TVALID : OUT STD_LOGIC;
    data_out_TKEEP : OUT STD_LOGIC_VECTOR (7 downto 0);
    data_out_TSTRB : OUT STD_LOGIC_VECTOR (7 downto 0);
    data_out_TUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    data_out_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
    data_out_TID : OUT STD_LOGIC_VECTOR (0 downto 0);
    data_out_TDEST : OUT STD_LOGIC_VECTOR (0 downto 0);
    i_9_reload : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of syn_CP_removal_syn_CP_removal_Pipeline_VITIS_LOOP_219_11 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv31_0 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000000";
    constant ap_const_lv31_1 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000001";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal icmp_ln219_fu_135_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal icmp_ln220_reg_196 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state2_io : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal data_in_TDATA_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal data_out_TDATA_blk_n : STD_LOGIC;
    signal icmp_ln220_fu_147_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal empty_reg_200_0 : STD_LOGIC_VECTOR (63 downto 0);
    signal empty_reg_200_1 : STD_LOGIC_VECTOR (7 downto 0);
    signal empty_reg_200_2 : STD_LOGIC_VECTOR (7 downto 0);
    signal empty_reg_200_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal empty_reg_200_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal empty_reg_200_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal empty_reg_200_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fu_64 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_i_1 : STD_LOGIC_VECTOR (30 downto 0);
    signal i_2_fu_141_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal i_cast_fu_131_p1 : STD_LOGIC_VECTOR (31 downto 0);
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


    i_fu_64_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln219_fu_135_p2 = ap_const_lv1_1) and (ap_start_int = ap_const_logic_1))) then 
                    i_fu_64 <= i_2_fu_141_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_64 <= ap_const_lv31_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln219_fu_135_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                empty_reg_200_0 <= data_in_TDATA;
                empty_reg_200_1 <= data_in_TKEEP;
                empty_reg_200_2 <= data_in_TSTRB;
                empty_reg_200_3 <= data_in_TUSER;
                empty_reg_200_4 <= data_in_TLAST;
                empty_reg_200_5 <= data_in_TID;
                empty_reg_200_6 <= data_in_TDEST;
                icmp_ln220_reg_196 <= icmp_ln220_fu_147_p2;
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

    ap_block_pp0_stage0_01001_assign_proc : process(ap_enable_reg_pp0_iter1, data_in_TVALID, icmp_ln219_fu_135_p2, data_out_TREADY, icmp_ln220_reg_196, ap_start_int)
    begin
                ap_block_pp0_stage0_01001 <= (((icmp_ln220_reg_196 = ap_const_lv1_0) and (data_out_TREADY = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((icmp_ln219_fu_135_p2 = ap_const_lv1_1) and (data_in_TVALID = ap_const_logic_0) and (ap_start_int = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter1, data_in_TVALID, icmp_ln219_fu_135_p2, data_out_TREADY, icmp_ln220_reg_196, ap_block_state2_io, ap_start_int)
    begin
                ap_block_pp0_stage0_11001 <= (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((ap_const_boolean_1 = ap_block_state2_io) or ((icmp_ln220_reg_196 = ap_const_lv1_0) and (data_out_TREADY = ap_const_logic_0)))) or ((icmp_ln219_fu_135_p2 = ap_const_lv1_1) and (data_in_TVALID = ap_const_logic_0) and (ap_start_int = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter1, data_in_TVALID, icmp_ln219_fu_135_p2, data_out_TREADY, icmp_ln220_reg_196, ap_block_state2_io, ap_start_int)
    begin
                ap_block_pp0_stage0_subdone <= (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((ap_const_boolean_1 = ap_block_state2_io) or ((icmp_ln220_reg_196 = ap_const_lv1_0) and (data_out_TREADY = ap_const_logic_0)))) or ((icmp_ln219_fu_135_p2 = ap_const_lv1_1) and (data_in_TVALID = ap_const_logic_0) and (ap_start_int = ap_const_logic_1)));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(data_in_TVALID, icmp_ln219_fu_135_p2)
    begin
                ap_block_state1_pp0_stage0_iter0 <= ((icmp_ln219_fu_135_p2 = ap_const_lv1_1) and (data_in_TVALID = ap_const_logic_0));
    end process;


    ap_block_state2_io_assign_proc : process(data_out_TREADY, icmp_ln220_reg_196)
    begin
                ap_block_state2_io <= ((icmp_ln220_reg_196 = ap_const_lv1_0) and (data_out_TREADY = ap_const_logic_0));
    end process;


    ap_block_state2_pp0_stage0_iter1_assign_proc : process(data_out_TREADY, icmp_ln220_reg_196)
    begin
                ap_block_state2_pp0_stage0_iter1 <= ((icmp_ln220_reg_196 = ap_const_lv1_0) and (data_out_TREADY = ap_const_logic_0));
    end process;


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln219_fu_135_p2, ap_block_pp0_stage0_subdone, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (icmp_ln219_fu_135_p2 = ap_const_lv1_0) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, i_fu_64, ap_loop_init)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_i_1 <= ap_const_lv31_0;
        else 
            ap_sig_allocacmp_i_1 <= i_fu_64;
        end if; 
    end process;


    data_in_TDATA_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, data_in_TVALID, icmp_ln219_fu_135_p2, ap_block_pp0_stage0, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (icmp_ln219_fu_135_p2 = ap_const_lv1_1) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            data_in_TDATA_blk_n <= data_in_TVALID;
        else 
            data_in_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    data_in_TREADY_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln219_fu_135_p2, ap_block_pp0_stage0_11001, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln219_fu_135_p2 = ap_const_lv1_1) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            data_in_TREADY <= ap_const_logic_1;
        else 
            data_in_TREADY <= ap_const_logic_0;
        end if; 
    end process;

    data_out_TDATA <= empty_reg_200_0;

    data_out_TDATA_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, data_out_TREADY, icmp_ln220_reg_196, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (icmp_ln220_reg_196 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            data_out_TDATA_blk_n <= data_out_TREADY;
        else 
            data_out_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    data_out_TDEST <= empty_reg_200_6;
    data_out_TID <= empty_reg_200_5;
    data_out_TKEEP <= empty_reg_200_1;
    data_out_TLAST <= empty_reg_200_4;
    data_out_TSTRB <= empty_reg_200_2;
    data_out_TUSER <= empty_reg_200_3;

    data_out_TVALID_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln220_reg_196, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln220_reg_196 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            data_out_TVALID <= ap_const_logic_1;
        else 
            data_out_TVALID <= ap_const_logic_0;
        end if; 
    end process;

    i_2_fu_141_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_1) + unsigned(ap_const_lv31_1));
    i_cast_fu_131_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_i_1),32));
    icmp_ln219_fu_135_p2 <= "1" when (signed(i_cast_fu_131_p1) < signed(add273)) else "0";
    icmp_ln220_fu_147_p2 <= "1" when (signed(i_cast_fu_131_p1) < signed(i_9_reload)) else "0";
end behav;