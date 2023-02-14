-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity encoder is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    data_in_TDATA : IN STD_LOGIC_VECTOR (63 downto 0);
    data_in_TVALID : IN STD_LOGIC;
    data_in_TREADY : OUT STD_LOGIC;
    data_in_TKEEP : IN STD_LOGIC_VECTOR (7 downto 0);
    data_in_TSTRB : IN STD_LOGIC_VECTOR (7 downto 0);
    data_in_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
    data_out_TDATA : OUT STD_LOGIC_VECTOR (63 downto 0);
    data_out_TVALID : OUT STD_LOGIC;
    data_out_TREADY : IN STD_LOGIC;
    data_out_TKEEP : OUT STD_LOGIC_VECTOR (7 downto 0);
    data_out_TSTRB : OUT STD_LOGIC_VECTOR (7 downto 0);
    data_out_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0) );
end;


architecture behav of encoder is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "encoder_encoder,hls_ip_2021_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xck26-sfvc784-2LV-c,HLS_INPUT_CLOCK=20.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=3.431938,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=346,HLS_SYN_LUT=496,HLS_VERSION=2021_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (6 downto 0) := "0000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (6 downto 0) := "0000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (6 downto 0) := "0001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (6 downto 0) := "0010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (6 downto 0) := "0100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (6 downto 0) := "1000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";

    signal ap_rst_n_inv : STD_LOGIC;
    signal s_V : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    signal mul_fu_108_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_reg_160 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal trunc_ln50_fu_123_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal trunc_ln50_reg_165 : STD_LOGIC_VECTOR (30 downto 0);
    signal icmp_ln50_fu_128_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln50_reg_170 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_ap_start : STD_LOGIC;
    signal grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_ap_done : STD_LOGIC;
    signal grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_ap_idle : STD_LOGIC;
    signal grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_ap_ready : STD_LOGIC;
    signal grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TREADY : STD_LOGIC;
    signal grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_in_TREADY : STD_LOGIC;
    signal grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TDATA : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TVALID : STD_LOGIC;
    signal grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TKEEP : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TSTRB : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TLAST : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_DATA_LEN_1_out : STD_LOGIC_VECTOR (29 downto 0);
    signal grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_DATA_LEN_1_out_ap_vld : STD_LOGIC;
    signal grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_ap_start : STD_LOGIC;
    signal grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_ap_done : STD_LOGIC;
    signal grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_ap_idle : STD_LOGIC;
    signal grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_ap_ready : STD_LOGIC;
    signal grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TREADY : STD_LOGIC;
    signal grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TDATA : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TVALID : STD_LOGIC;
    signal grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TKEEP : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TSTRB : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TLAST : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_in_TREADY : STD_LOGIC;
    signal grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_part_set_i_i_lcssa276_out : STD_LOGIC_VECTOR (5 downto 0);
    signal grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_part_set_i_i_lcssa276_out_ap_vld : STD_LOGIC;
    signal grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal DATA_LEN_1_loc_fu_56 : STD_LOGIC_VECTOR (29 downto 0);
    signal grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal regslice_both_data_out_V_data_V_U_apdone_blk : STD_LOGIC;
    signal add_fu_117_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ST_fsm_state4_blk : STD_LOGIC;
    signal ap_ST_fsm_state5_blk : STD_LOGIC;
    signal ap_ST_fsm_state6_blk : STD_LOGIC;
    signal ap_ST_fsm_state7_blk : STD_LOGIC;
    signal regslice_both_data_in_V_data_V_U_apdone_blk : STD_LOGIC;
    signal data_in_TDATA_int_regslice : STD_LOGIC_VECTOR (63 downto 0);
    signal data_in_TVALID_int_regslice : STD_LOGIC;
    signal data_in_TREADY_int_regslice : STD_LOGIC;
    signal regslice_both_data_in_V_data_V_U_ack_in : STD_LOGIC;
    signal regslice_both_data_in_V_keep_V_U_apdone_blk : STD_LOGIC;
    signal data_in_TKEEP_int_regslice : STD_LOGIC_VECTOR (7 downto 0);
    signal regslice_both_data_in_V_keep_V_U_vld_out : STD_LOGIC;
    signal regslice_both_data_in_V_keep_V_U_ack_in : STD_LOGIC;
    signal regslice_both_data_in_V_strb_V_U_apdone_blk : STD_LOGIC;
    signal data_in_TSTRB_int_regslice : STD_LOGIC_VECTOR (7 downto 0);
    signal regslice_both_data_in_V_strb_V_U_vld_out : STD_LOGIC;
    signal regslice_both_data_in_V_strb_V_U_ack_in : STD_LOGIC;
    signal regslice_both_data_in_V_last_V_U_apdone_blk : STD_LOGIC;
    signal data_in_TLAST_int_regslice : STD_LOGIC_VECTOR (0 downto 0);
    signal regslice_both_data_in_V_last_V_U_vld_out : STD_LOGIC;
    signal regslice_both_data_in_V_last_V_U_ack_in : STD_LOGIC;
    signal data_out_TDATA_int_regslice : STD_LOGIC_VECTOR (63 downto 0);
    signal data_out_TVALID_int_regslice : STD_LOGIC;
    signal data_out_TREADY_int_regslice : STD_LOGIC;
    signal regslice_both_data_out_V_data_V_U_vld_out : STD_LOGIC;
    signal regslice_both_data_out_V_keep_V_U_apdone_blk : STD_LOGIC;
    signal data_out_TKEEP_int_regslice : STD_LOGIC_VECTOR (7 downto 0);
    signal regslice_both_data_out_V_keep_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_data_out_V_keep_V_U_vld_out : STD_LOGIC;
    signal regslice_both_data_out_V_strb_V_U_apdone_blk : STD_LOGIC;
    signal data_out_TSTRB_int_regslice : STD_LOGIC_VECTOR (7 downto 0);
    signal regslice_both_data_out_V_strb_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_data_out_V_strb_V_U_vld_out : STD_LOGIC;
    signal regslice_both_data_out_V_last_V_U_apdone_blk : STD_LOGIC;
    signal data_out_TLAST_int_regslice : STD_LOGIC_VECTOR (0 downto 0);
    signal regslice_both_data_out_V_last_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_data_out_V_last_V_U_vld_out : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component encoder_encoder_Pipeline_VITIS_LOOP_22_1 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        data_in_TVALID : IN STD_LOGIC;
        data_out_TREADY : IN STD_LOGIC;
        data_in_TDATA : IN STD_LOGIC_VECTOR (63 downto 0);
        data_in_TREADY : OUT STD_LOGIC;
        data_in_TKEEP : IN STD_LOGIC_VECTOR (7 downto 0);
        data_in_TSTRB : IN STD_LOGIC_VECTOR (7 downto 0);
        data_in_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
        data_out_TDATA : OUT STD_LOGIC_VECTOR (63 downto 0);
        data_out_TVALID : OUT STD_LOGIC;
        data_out_TKEEP : OUT STD_LOGIC_VECTOR (7 downto 0);
        data_out_TSTRB : OUT STD_LOGIC_VECTOR (7 downto 0);
        data_out_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
        DATA_LEN_1_out : OUT STD_LOGIC_VECTOR (29 downto 0);
        DATA_LEN_1_out_ap_vld : OUT STD_LOGIC );
    end component;


    component encoder_encoder_Pipeline_VITIS_LOOP_50_2 IS
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
    end component;


    component encoder_regslice_both IS
    generic (
        DataWidth : INTEGER );
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        data_in : IN STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_in : IN STD_LOGIC;
        ack_in : OUT STD_LOGIC;
        data_out : OUT STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_out : OUT STD_LOGIC;
        ack_out : IN STD_LOGIC;
        apdone_blk : OUT STD_LOGIC );
    end component;



begin
    grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60 : component encoder_encoder_Pipeline_VITIS_LOOP_22_1
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_ap_start,
        ap_done => grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_ap_done,
        ap_idle => grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_ap_idle,
        ap_ready => grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_ap_ready,
        data_in_TVALID => data_in_TVALID_int_regslice,
        data_out_TREADY => grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TREADY,
        data_in_TDATA => data_in_TDATA_int_regslice,
        data_in_TREADY => grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_in_TREADY,
        data_in_TKEEP => data_in_TKEEP_int_regslice,
        data_in_TSTRB => data_in_TSTRB_int_regslice,
        data_in_TLAST => data_in_TLAST_int_regslice,
        data_out_TDATA => grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TDATA,
        data_out_TVALID => grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TVALID,
        data_out_TKEEP => grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TKEEP,
        data_out_TSTRB => grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TSTRB,
        data_out_TLAST => grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TLAST,
        DATA_LEN_1_out => grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_DATA_LEN_1_out,
        DATA_LEN_1_out_ap_vld => grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_DATA_LEN_1_out_ap_vld);

    grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81 : component encoder_encoder_Pipeline_VITIS_LOOP_50_2
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_ap_start,
        ap_done => grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_ap_done,
        ap_idle => grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_ap_idle,
        ap_ready => grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_ap_ready,
        data_in_TVALID => data_in_TVALID_int_regslice,
        data_out_TREADY => grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TREADY,
        s_V_load => s_V,
        add => trunc_ln50_reg_165,
        data_out_TDATA => grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TDATA,
        data_out_TVALID => grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TVALID,
        data_out_TKEEP => grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TKEEP,
        data_out_TSTRB => grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TSTRB,
        data_out_TLAST => grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TLAST,
        mul => mul_reg_160,
        data_in_TDATA => data_in_TDATA_int_regslice,
        data_in_TREADY => grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_in_TREADY,
        data_in_TKEEP => data_in_TKEEP_int_regslice,
        data_in_TSTRB => data_in_TSTRB_int_regslice,
        data_in_TLAST => data_in_TLAST_int_regslice,
        part_set_i_i_lcssa276_out => grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_part_set_i_i_lcssa276_out,
        part_set_i_i_lcssa276_out_ap_vld => grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_part_set_i_i_lcssa276_out_ap_vld);

    regslice_both_data_in_V_data_V_U : component encoder_regslice_both
    generic map (
        DataWidth => 64)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => data_in_TDATA,
        vld_in => data_in_TVALID,
        ack_in => regslice_both_data_in_V_data_V_U_ack_in,
        data_out => data_in_TDATA_int_regslice,
        vld_out => data_in_TVALID_int_regslice,
        ack_out => data_in_TREADY_int_regslice,
        apdone_blk => regslice_both_data_in_V_data_V_U_apdone_blk);

    regslice_both_data_in_V_keep_V_U : component encoder_regslice_both
    generic map (
        DataWidth => 8)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => data_in_TKEEP,
        vld_in => data_in_TVALID,
        ack_in => regslice_both_data_in_V_keep_V_U_ack_in,
        data_out => data_in_TKEEP_int_regslice,
        vld_out => regslice_both_data_in_V_keep_V_U_vld_out,
        ack_out => data_in_TREADY_int_regslice,
        apdone_blk => regslice_both_data_in_V_keep_V_U_apdone_blk);

    regslice_both_data_in_V_strb_V_U : component encoder_regslice_both
    generic map (
        DataWidth => 8)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => data_in_TSTRB,
        vld_in => data_in_TVALID,
        ack_in => regslice_both_data_in_V_strb_V_U_ack_in,
        data_out => data_in_TSTRB_int_regslice,
        vld_out => regslice_both_data_in_V_strb_V_U_vld_out,
        ack_out => data_in_TREADY_int_regslice,
        apdone_blk => regslice_both_data_in_V_strb_V_U_apdone_blk);

    regslice_both_data_in_V_last_V_U : component encoder_regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => data_in_TLAST,
        vld_in => data_in_TVALID,
        ack_in => regslice_both_data_in_V_last_V_U_ack_in,
        data_out => data_in_TLAST_int_regslice,
        vld_out => regslice_both_data_in_V_last_V_U_vld_out,
        ack_out => data_in_TREADY_int_regslice,
        apdone_blk => regslice_both_data_in_V_last_V_U_apdone_blk);

    regslice_both_data_out_V_data_V_U : component encoder_regslice_both
    generic map (
        DataWidth => 64)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => data_out_TDATA_int_regslice,
        vld_in => data_out_TVALID_int_regslice,
        ack_in => data_out_TREADY_int_regslice,
        data_out => data_out_TDATA,
        vld_out => regslice_both_data_out_V_data_V_U_vld_out,
        ack_out => data_out_TREADY,
        apdone_blk => regslice_both_data_out_V_data_V_U_apdone_blk);

    regslice_both_data_out_V_keep_V_U : component encoder_regslice_both
    generic map (
        DataWidth => 8)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => data_out_TKEEP_int_regslice,
        vld_in => data_out_TVALID_int_regslice,
        ack_in => regslice_both_data_out_V_keep_V_U_ack_in_dummy,
        data_out => data_out_TKEEP,
        vld_out => regslice_both_data_out_V_keep_V_U_vld_out,
        ack_out => data_out_TREADY,
        apdone_blk => regslice_both_data_out_V_keep_V_U_apdone_blk);

    regslice_both_data_out_V_strb_V_U : component encoder_regslice_both
    generic map (
        DataWidth => 8)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => data_out_TSTRB_int_regslice,
        vld_in => data_out_TVALID_int_regslice,
        ack_in => regslice_both_data_out_V_strb_V_U_ack_in_dummy,
        data_out => data_out_TSTRB,
        vld_out => regslice_both_data_out_V_strb_V_U_vld_out,
        ack_out => data_out_TREADY,
        apdone_blk => regslice_both_data_out_V_strb_V_U_apdone_blk);

    regslice_both_data_out_V_last_V_U : component encoder_regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => data_out_TLAST_int_regslice,
        vld_in => data_out_TVALID_int_regslice,
        ack_in => regslice_both_data_out_V_last_V_U_ack_in_dummy,
        data_out => data_out_TLAST,
        vld_out => regslice_both_data_out_V_last_V_U_vld_out,
        ack_out => data_out_TREADY,
        apdone_blk => regslice_both_data_out_V_last_V_U_apdone_blk);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
                    grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_ap_ready = ap_const_logic_1)) then 
                    grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_ap_start_reg <= ap_const_logic_0;
            else
                if (((icmp_ln50_fu_128_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                    grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_ap_ready = ap_const_logic_1)) then 
                    grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_DATA_LEN_1_out_ap_vld = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                DATA_LEN_1_loc_fu_56 <= grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_DATA_LEN_1_out;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                icmp_ln50_reg_170 <= icmp_ln50_fu_128_p2;
                    mul_reg_160(31 downto 2) <= mul_fu_108_p3(31 downto 2);
                    trunc_ln50_reg_165(30 downto 2) <= trunc_ln50_fu_123_p1(30 downto 2);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln50_reg_170 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state7) and (regslice_both_data_out_V_data_V_U_apdone_blk = ap_const_logic_0))) then
                s_V <= grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_part_set_i_i_lcssa276_out;
            end if;
        end if;
    end process;
    mul_reg_160(1 downto 0) <= "00";
    trunc_ln50_reg_165(1 downto 0) <= "00";

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_CS_fsm_state5, icmp_ln50_fu_128_p2, grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_ap_done, grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_ap_done, ap_CS_fsm_state3, ap_CS_fsm_state6, ap_CS_fsm_state7, regslice_both_data_out_V_data_V_U_apdone_blk)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                if (((grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                if (((icmp_ln50_fu_128_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    ap_NS_fsm <= ap_ST_fsm_state7;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state6 => 
                if (((grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then
                    ap_NS_fsm <= ap_ST_fsm_state7;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state7 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state7) and (regslice_both_data_out_V_data_V_U_apdone_blk = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXX";
        end case;
    end process;
    add_fu_117_p2 <= std_logic_vector(unsigned(mul_fu_108_p3) + unsigned(ap_const_lv32_10));
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_ST_fsm_state1_blk <= ap_const_logic_0;
    ap_ST_fsm_state2_blk <= ap_const_logic_0;

    ap_ST_fsm_state3_blk_assign_proc : process(grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_ap_done)
    begin
        if ((grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state3_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state3_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state4_blk <= ap_const_logic_0;
    ap_ST_fsm_state5_blk <= ap_const_logic_0;

    ap_ST_fsm_state6_blk_assign_proc : process(grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_ap_done)
    begin
        if ((grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state6_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state6_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state7_blk_assign_proc : process(regslice_both_data_out_V_data_V_U_apdone_blk)
    begin
        if ((regslice_both_data_out_V_data_V_U_apdone_blk = ap_const_logic_1)) then 
            ap_ST_fsm_state7_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state7_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    data_in_TREADY <= regslice_both_data_in_V_data_V_U_ack_in;

    data_in_TREADY_int_regslice_assign_proc : process(grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_in_TREADY, grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_in_TREADY, ap_CS_fsm_state3, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            data_in_TREADY_int_regslice <= grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_in_TREADY;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            data_in_TREADY_int_regslice <= grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_in_TREADY;
        else 
            data_in_TREADY_int_regslice <= ap_const_logic_0;
        end if; 
    end process;


    data_out_TDATA_int_regslice_assign_proc : process(grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TDATA, grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TVALID, grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TDATA, grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TVALID, ap_CS_fsm_state3, ap_CS_fsm_state6)
    begin
        if (((grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            data_out_TDATA_int_regslice <= grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TDATA;
        elsif (((grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            data_out_TDATA_int_regslice <= grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TDATA;
        else 
            data_out_TDATA_int_regslice <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    data_out_TKEEP_int_regslice_assign_proc : process(grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TVALID, grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TKEEP, grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TVALID, grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TKEEP, ap_CS_fsm_state3, ap_CS_fsm_state6)
    begin
        if (((grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            data_out_TKEEP_int_regslice <= grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TKEEP;
        elsif (((grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            data_out_TKEEP_int_regslice <= grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TKEEP;
        else 
            data_out_TKEEP_int_regslice <= "XXXXXXXX";
        end if; 
    end process;


    data_out_TLAST_int_regslice_assign_proc : process(grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TVALID, grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TLAST, grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TVALID, grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TLAST, ap_CS_fsm_state3, ap_CS_fsm_state6)
    begin
        if (((grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            data_out_TLAST_int_regslice <= grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TLAST;
        elsif (((grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            data_out_TLAST_int_regslice <= grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TLAST;
        else 
            data_out_TLAST_int_regslice <= "X";
        end if; 
    end process;


    data_out_TSTRB_int_regslice_assign_proc : process(grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TVALID, grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TSTRB, grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TVALID, grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TSTRB, ap_CS_fsm_state3, ap_CS_fsm_state6)
    begin
        if (((grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            data_out_TSTRB_int_regslice <= grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TSTRB;
        elsif (((grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            data_out_TSTRB_int_regslice <= grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TSTRB;
        else 
            data_out_TSTRB_int_regslice <= "XXXXXXXX";
        end if; 
    end process;

    data_out_TVALID <= regslice_both_data_out_V_data_V_U_vld_out;

    data_out_TVALID_int_regslice_assign_proc : process(grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TVALID, grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TVALID, ap_CS_fsm_state3, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            data_out_TVALID_int_regslice <= grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TVALID;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            data_out_TVALID_int_regslice <= grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TVALID;
        else 
            data_out_TVALID_int_regslice <= ap_const_logic_0;
        end if; 
    end process;

    grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_ap_start <= grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_ap_start_reg;
    grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TREADY <= (data_out_TREADY_int_regslice and ap_CS_fsm_state3);
    grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_ap_start <= grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_ap_start_reg;
    grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TREADY <= (data_out_TREADY_int_regslice and ap_CS_fsm_state6);
    icmp_ln50_fu_128_p2 <= "1" when (signed(add_fu_117_p2) > signed(ap_const_lv32_0)) else "0";
    mul_fu_108_p3 <= (DATA_LEN_1_loc_fu_56 & ap_const_lv2_0);
    trunc_ln50_fu_123_p1 <= add_fu_117_p2(31 - 1 downto 0);
end behav;
