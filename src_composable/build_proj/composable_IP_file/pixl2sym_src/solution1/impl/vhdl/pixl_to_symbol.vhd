-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity pixl_to_symbol is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    data_in_TDATA : IN STD_LOGIC_VECTOR (63 downto 0);
    data_in_TVALID : IN STD_LOGIC;
    data_in_TREADY : OUT STD_LOGIC;
    data_in_TKEEP : IN STD_LOGIC_VECTOR (7 downto 0);
    data_in_TSTRB : IN STD_LOGIC_VECTOR (7 downto 0);
    data_in_TUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    data_in_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
    data_in_TID : IN STD_LOGIC_VECTOR (0 downto 0);
    data_in_TDEST : IN STD_LOGIC_VECTOR (0 downto 0);
    data_out_V_TDATA : OUT STD_LOGIC_VECTOR (63 downto 0);
    data_out_V_TVALID : OUT STD_LOGIC;
    data_out_V_TREADY : IN STD_LOGIC );
end;


architecture behav of pixl_to_symbol is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "pixl_to_symbol_pixl_to_symbol,hls_ip_2021_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xck26-sfvc784-2LV-c,HLS_INPUT_CLOCK=20.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=1.541000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=26649,HLS_SYN_LUT=20208,HLS_VERSION=2021_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (6 downto 0) := "0000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (6 downto 0) := "0000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (6 downto 0) := "0001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (6 downto 0) := "0010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (6 downto 0) := "0100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (6 downto 0) := "1000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";

    signal ap_rst_n_inv : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal shl_ln_fu_107_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal shl_ln_reg_131 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_ap_start : STD_LOGIC;
    signal grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_ap_done : STD_LOGIC;
    signal grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_ap_idle : STD_LOGIC;
    signal grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_ap_ready : STD_LOGIC;
    signal grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_data_out_V_TREADY : STD_LOGIC;
    signal grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_data_in_TREADY : STD_LOGIC;
    signal grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_data_out_V_TDATA : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_data_out_V_TVALID : STD_LOGIC;
    signal grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_DATA_LEN_1_out : STD_LOGIC_VECTOR (30 downto 0);
    signal grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_DATA_LEN_1_out_ap_vld : STD_LOGIC;
    signal grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_qam_num_2_out : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_qam_num_2_out_ap_vld : STD_LOGIC;
    signal grp_pixl_to_symbol_Pipeline_VITIS_LOOP_45_2_fu_76_ap_start : STD_LOGIC;
    signal grp_pixl_to_symbol_Pipeline_VITIS_LOOP_45_2_fu_76_ap_done : STD_LOGIC;
    signal grp_pixl_to_symbol_Pipeline_VITIS_LOOP_45_2_fu_76_ap_idle : STD_LOGIC;
    signal grp_pixl_to_symbol_Pipeline_VITIS_LOOP_45_2_fu_76_ap_ready : STD_LOGIC;
    signal grp_pixl_to_symbol_Pipeline_VITIS_LOOP_45_2_fu_76_data_out_V_TREADY : STD_LOGIC;
    signal grp_pixl_to_symbol_Pipeline_VITIS_LOOP_45_2_fu_76_data_in_TREADY : STD_LOGIC;
    signal grp_pixl_to_symbol_Pipeline_VITIS_LOOP_45_2_fu_76_data_out_V_TDATA : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_pixl_to_symbol_Pipeline_VITIS_LOOP_45_2_fu_76_data_out_V_TVALID : STD_LOGIC;
    signal grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal DATA_LEN_1_loc_fu_50 : STD_LOGIC_VECTOR (30 downto 0);
    signal grp_pixl_to_symbol_Pipeline_VITIS_LOOP_45_2_fu_76_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal regslice_both_data_out_V_U_apdone_blk : STD_LOGIC;
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
    signal regslice_both_data_in_V_user_V_U_apdone_blk : STD_LOGIC;
    signal data_in_TUSER_int_regslice : STD_LOGIC_VECTOR (0 downto 0);
    signal regslice_both_data_in_V_user_V_U_vld_out : STD_LOGIC;
    signal regslice_both_data_in_V_user_V_U_ack_in : STD_LOGIC;
    signal regslice_both_data_in_V_last_V_U_apdone_blk : STD_LOGIC;
    signal data_in_TLAST_int_regslice : STD_LOGIC_VECTOR (0 downto 0);
    signal regslice_both_data_in_V_last_V_U_vld_out : STD_LOGIC;
    signal regslice_both_data_in_V_last_V_U_ack_in : STD_LOGIC;
    signal regslice_both_data_in_V_id_V_U_apdone_blk : STD_LOGIC;
    signal data_in_TID_int_regslice : STD_LOGIC_VECTOR (0 downto 0);
    signal regslice_both_data_in_V_id_V_U_vld_out : STD_LOGIC;
    signal regslice_both_data_in_V_id_V_U_ack_in : STD_LOGIC;
    signal regslice_both_data_in_V_dest_V_U_apdone_blk : STD_LOGIC;
    signal data_in_TDEST_int_regslice : STD_LOGIC_VECTOR (0 downto 0);
    signal regslice_both_data_in_V_dest_V_U_vld_out : STD_LOGIC;
    signal regslice_both_data_in_V_dest_V_U_ack_in : STD_LOGIC;
    signal data_out_V_TDATA_int_regslice : STD_LOGIC_VECTOR (63 downto 0);
    signal data_out_V_TVALID_int_regslice : STD_LOGIC;
    signal data_out_V_TREADY_int_regslice : STD_LOGIC;
    signal regslice_both_data_out_V_U_vld_out : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component pixl_to_symbol_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        data_in_TVALID : IN STD_LOGIC;
        data_out_V_TREADY : IN STD_LOGIC;
        data_in_TDATA : IN STD_LOGIC_VECTOR (63 downto 0);
        data_in_TREADY : OUT STD_LOGIC;
        data_in_TKEEP : IN STD_LOGIC_VECTOR (7 downto 0);
        data_in_TSTRB : IN STD_LOGIC_VECTOR (7 downto 0);
        data_in_TUSER : IN STD_LOGIC_VECTOR (0 downto 0);
        data_in_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
        data_in_TID : IN STD_LOGIC_VECTOR (0 downto 0);
        data_in_TDEST : IN STD_LOGIC_VECTOR (0 downto 0);
        data_out_V_TDATA : OUT STD_LOGIC_VECTOR (63 downto 0);
        data_out_V_TVALID : OUT STD_LOGIC;
        DATA_LEN_1_out : OUT STD_LOGIC_VECTOR (30 downto 0);
        DATA_LEN_1_out_ap_vld : OUT STD_LOGIC;
        qam_num_2_out : OUT STD_LOGIC_VECTOR (31 downto 0);
        qam_num_2_out_ap_vld : OUT STD_LOGIC );
    end component;


    component pixl_to_symbol_pixl_to_symbol_Pipeline_VITIS_LOOP_45_2 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        data_in_TVALID : IN STD_LOGIC;
        data_out_V_TREADY : IN STD_LOGIC;
        shl_ln : IN STD_LOGIC_VECTOR (31 downto 0);
        qam_num_2_reload : IN STD_LOGIC_VECTOR (31 downto 0);
        data_in_TDATA : IN STD_LOGIC_VECTOR (63 downto 0);
        data_in_TREADY : OUT STD_LOGIC;
        data_in_TKEEP : IN STD_LOGIC_VECTOR (7 downto 0);
        data_in_TSTRB : IN STD_LOGIC_VECTOR (7 downto 0);
        data_in_TUSER : IN STD_LOGIC_VECTOR (0 downto 0);
        data_in_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
        data_in_TID : IN STD_LOGIC_VECTOR (0 downto 0);
        data_in_TDEST : IN STD_LOGIC_VECTOR (0 downto 0);
        conv_i_i86 : IN STD_LOGIC_VECTOR (31 downto 0);
        data_out_V_TDATA : OUT STD_LOGIC_VECTOR (63 downto 0);
        data_out_V_TVALID : OUT STD_LOGIC );
    end component;


    component pixl_to_symbol_regslice_both IS
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
    grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54 : component pixl_to_symbol_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_ap_start,
        ap_done => grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_ap_done,
        ap_idle => grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_ap_idle,
        ap_ready => grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_ap_ready,
        data_in_TVALID => data_in_TVALID_int_regslice,
        data_out_V_TREADY => grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_data_out_V_TREADY,
        data_in_TDATA => data_in_TDATA_int_regslice,
        data_in_TREADY => grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_data_in_TREADY,
        data_in_TKEEP => data_in_TKEEP_int_regslice,
        data_in_TSTRB => data_in_TSTRB_int_regslice,
        data_in_TUSER => data_in_TUSER_int_regslice,
        data_in_TLAST => data_in_TLAST_int_regslice,
        data_in_TID => data_in_TID_int_regslice,
        data_in_TDEST => data_in_TDEST_int_regslice,
        data_out_V_TDATA => grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_data_out_V_TDATA,
        data_out_V_TVALID => grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_data_out_V_TVALID,
        DATA_LEN_1_out => grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_DATA_LEN_1_out,
        DATA_LEN_1_out_ap_vld => grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_DATA_LEN_1_out_ap_vld,
        qam_num_2_out => grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_qam_num_2_out,
        qam_num_2_out_ap_vld => grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_qam_num_2_out_ap_vld);

    grp_pixl_to_symbol_Pipeline_VITIS_LOOP_45_2_fu_76 : component pixl_to_symbol_pixl_to_symbol_Pipeline_VITIS_LOOP_45_2
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => grp_pixl_to_symbol_Pipeline_VITIS_LOOP_45_2_fu_76_ap_start,
        ap_done => grp_pixl_to_symbol_Pipeline_VITIS_LOOP_45_2_fu_76_ap_done,
        ap_idle => grp_pixl_to_symbol_Pipeline_VITIS_LOOP_45_2_fu_76_ap_idle,
        ap_ready => grp_pixl_to_symbol_Pipeline_VITIS_LOOP_45_2_fu_76_ap_ready,
        data_in_TVALID => data_in_TVALID_int_regslice,
        data_out_V_TREADY => grp_pixl_to_symbol_Pipeline_VITIS_LOOP_45_2_fu_76_data_out_V_TREADY,
        shl_ln => shl_ln_reg_131,
        qam_num_2_reload => grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_qam_num_2_out,
        data_in_TDATA => data_in_TDATA_int_regslice,
        data_in_TREADY => grp_pixl_to_symbol_Pipeline_VITIS_LOOP_45_2_fu_76_data_in_TREADY,
        data_in_TKEEP => data_in_TKEEP_int_regslice,
        data_in_TSTRB => data_in_TSTRB_int_regslice,
        data_in_TUSER => data_in_TUSER_int_regslice,
        data_in_TLAST => data_in_TLAST_int_regslice,
        data_in_TID => data_in_TID_int_regslice,
        data_in_TDEST => data_in_TDEST_int_regslice,
        conv_i_i86 => grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_qam_num_2_out,
        data_out_V_TDATA => grp_pixl_to_symbol_Pipeline_VITIS_LOOP_45_2_fu_76_data_out_V_TDATA,
        data_out_V_TVALID => grp_pixl_to_symbol_Pipeline_VITIS_LOOP_45_2_fu_76_data_out_V_TVALID);

    regslice_both_data_in_V_data_V_U : component pixl_to_symbol_regslice_both
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

    regslice_both_data_in_V_keep_V_U : component pixl_to_symbol_regslice_both
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

    regslice_both_data_in_V_strb_V_U : component pixl_to_symbol_regslice_both
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

    regslice_both_data_in_V_user_V_U : component pixl_to_symbol_regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => data_in_TUSER,
        vld_in => data_in_TVALID,
        ack_in => regslice_both_data_in_V_user_V_U_ack_in,
        data_out => data_in_TUSER_int_regslice,
        vld_out => regslice_both_data_in_V_user_V_U_vld_out,
        ack_out => data_in_TREADY_int_regslice,
        apdone_blk => regslice_both_data_in_V_user_V_U_apdone_blk);

    regslice_both_data_in_V_last_V_U : component pixl_to_symbol_regslice_both
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

    regslice_both_data_in_V_id_V_U : component pixl_to_symbol_regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => data_in_TID,
        vld_in => data_in_TVALID,
        ack_in => regslice_both_data_in_V_id_V_U_ack_in,
        data_out => data_in_TID_int_regslice,
        vld_out => regslice_both_data_in_V_id_V_U_vld_out,
        ack_out => data_in_TREADY_int_regslice,
        apdone_blk => regslice_both_data_in_V_id_V_U_apdone_blk);

    regslice_both_data_in_V_dest_V_U : component pixl_to_symbol_regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => data_in_TDEST,
        vld_in => data_in_TVALID,
        ack_in => regslice_both_data_in_V_dest_V_U_ack_in,
        data_out => data_in_TDEST_int_regslice,
        vld_out => regslice_both_data_in_V_dest_V_U_vld_out,
        ack_out => data_in_TREADY_int_regslice,
        apdone_blk => regslice_both_data_in_V_dest_V_U_apdone_blk);

    regslice_both_data_out_V_U : component pixl_to_symbol_regslice_both
    generic map (
        DataWidth => 64)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => data_out_V_TDATA_int_regslice,
        vld_in => data_out_V_TVALID_int_regslice,
        ack_in => data_out_V_TREADY_int_regslice,
        data_out => data_out_V_TDATA,
        vld_out => regslice_both_data_out_V_U_vld_out,
        ack_out => data_out_V_TREADY,
        apdone_blk => regslice_both_data_out_V_U_apdone_blk);





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


    grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
                    grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_ap_ready = ap_const_logic_1)) then 
                    grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_pixl_to_symbol_Pipeline_VITIS_LOOP_45_2_fu_76_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                grp_pixl_to_symbol_Pipeline_VITIS_LOOP_45_2_fu_76_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                    grp_pixl_to_symbol_Pipeline_VITIS_LOOP_45_2_fu_76_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_pixl_to_symbol_Pipeline_VITIS_LOOP_45_2_fu_76_ap_ready = ap_const_logic_1)) then 
                    grp_pixl_to_symbol_Pipeline_VITIS_LOOP_45_2_fu_76_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_DATA_LEN_1_out_ap_vld = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                DATA_LEN_1_loc_fu_50 <= grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_DATA_LEN_1_out;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                    shl_ln_reg_131(31 downto 1) <= shl_ln_fu_107_p3(31 downto 1);
            end if;
        end if;
    end process;
    shl_ln_reg_131(0) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_ap_done, grp_pixl_to_symbol_Pipeline_VITIS_LOOP_45_2_fu_76_ap_done, ap_CS_fsm_state3, ap_CS_fsm_state6, ap_CS_fsm_state7, regslice_both_data_out_V_U_apdone_blk)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                if (((grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                if (((grp_pixl_to_symbol_Pipeline_VITIS_LOOP_45_2_fu_76_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then
                    ap_NS_fsm <= ap_ST_fsm_state7;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state7 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state7) and (regslice_both_data_out_V_U_apdone_blk = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start)
    begin
        if ((ap_start = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state2_blk <= ap_const_logic_0;

    ap_ST_fsm_state3_blk_assign_proc : process(grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_ap_done)
    begin
        if ((grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state3_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state3_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state4_blk <= ap_const_logic_0;
    ap_ST_fsm_state5_blk <= ap_const_logic_0;

    ap_ST_fsm_state6_blk_assign_proc : process(grp_pixl_to_symbol_Pipeline_VITIS_LOOP_45_2_fu_76_ap_done)
    begin
        if ((grp_pixl_to_symbol_Pipeline_VITIS_LOOP_45_2_fu_76_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state6_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state6_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state7_blk_assign_proc : process(regslice_both_data_out_V_U_apdone_blk)
    begin
        if ((regslice_both_data_out_V_U_apdone_blk = ap_const_logic_1)) then 
            ap_ST_fsm_state7_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state7_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_CS_fsm_state7, regslice_both_data_out_V_U_apdone_blk)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state7) and (regslice_both_data_out_V_U_apdone_blk = ap_const_logic_0))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state7, regslice_both_data_out_V_U_apdone_blk)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state7) and (regslice_both_data_out_V_U_apdone_blk = ap_const_logic_0))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    data_in_TREADY <= regslice_both_data_in_V_data_V_U_ack_in;

    data_in_TREADY_int_regslice_assign_proc : process(grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_data_in_TREADY, grp_pixl_to_symbol_Pipeline_VITIS_LOOP_45_2_fu_76_data_in_TREADY, ap_CS_fsm_state3, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            data_in_TREADY_int_regslice <= grp_pixl_to_symbol_Pipeline_VITIS_LOOP_45_2_fu_76_data_in_TREADY;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            data_in_TREADY_int_regslice <= grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_data_in_TREADY;
        else 
            data_in_TREADY_int_regslice <= ap_const_logic_0;
        end if; 
    end process;


    data_out_V_TDATA_int_regslice_assign_proc : process(grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_data_out_V_TDATA, grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_data_out_V_TVALID, grp_pixl_to_symbol_Pipeline_VITIS_LOOP_45_2_fu_76_data_out_V_TDATA, grp_pixl_to_symbol_Pipeline_VITIS_LOOP_45_2_fu_76_data_out_V_TVALID, ap_CS_fsm_state3, ap_CS_fsm_state6)
    begin
        if (((grp_pixl_to_symbol_Pipeline_VITIS_LOOP_45_2_fu_76_data_out_V_TVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            data_out_V_TDATA_int_regslice <= grp_pixl_to_symbol_Pipeline_VITIS_LOOP_45_2_fu_76_data_out_V_TDATA;
        elsif (((grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_data_out_V_TVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            data_out_V_TDATA_int_regslice <= grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_data_out_V_TDATA;
        else 
            data_out_V_TDATA_int_regslice <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    data_out_V_TVALID <= regslice_both_data_out_V_U_vld_out;

    data_out_V_TVALID_int_regslice_assign_proc : process(grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_data_out_V_TVALID, grp_pixl_to_symbol_Pipeline_VITIS_LOOP_45_2_fu_76_data_out_V_TVALID, ap_CS_fsm_state3, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            data_out_V_TVALID_int_regslice <= grp_pixl_to_symbol_Pipeline_VITIS_LOOP_45_2_fu_76_data_out_V_TVALID;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            data_out_V_TVALID_int_regslice <= grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_data_out_V_TVALID;
        else 
            data_out_V_TVALID_int_regslice <= ap_const_logic_0;
        end if; 
    end process;

    grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_ap_start <= grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_ap_start_reg;
    grp_pixl_to_symbol_Pipeline_VITIS_LOOP_21_1_fu_54_data_out_V_TREADY <= (data_out_V_TREADY_int_regslice and ap_CS_fsm_state3);
    grp_pixl_to_symbol_Pipeline_VITIS_LOOP_45_2_fu_76_ap_start <= grp_pixl_to_symbol_Pipeline_VITIS_LOOP_45_2_fu_76_ap_start_reg;
    grp_pixl_to_symbol_Pipeline_VITIS_LOOP_45_2_fu_76_data_out_V_TREADY <= (data_out_V_TREADY_int_regslice and ap_CS_fsm_state6);
    shl_ln_fu_107_p3 <= (DATA_LEN_1_loc_fu_50 & ap_const_lv1_0);
end behav;