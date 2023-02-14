// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="QAM_QAM,hls_ip_2021_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xck26-sfvc784-2LV-c,HLS_INPUT_CLOCK=15.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.276286,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=304,HLS_SYN_LUT=506,HLS_VERSION=2021_1}" *)

module QAM (
// synthesis translate_off
    kernel_block,
// synthesis translate_on
// synthesis translate_off
    kernel_block,
// synthesis translate_on
// synthesis translate_off
    kernel_block,
// synthesis translate_on
// synthesis translate_off
    kernel_block,
// synthesis translate_on
// synthesis translate_off
    kernel_block,
// synthesis translate_on
// synthesis translate_off
    kernel_block,
// synthesis translate_on
// synthesis translate_off
    kernel_block,
// synthesis translate_on
// synthesis translate_off
    kernel_block,
// synthesis translate_on
// synthesis translate_off
    kernel_block,
// synthesis translate_on
// synthesis translate_off
    kernel_block,
// synthesis translate_on
// synthesis translate_off
    kernel_block,
// synthesis translate_on
        ap_clk,
        ap_rst_n,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        data_in_TDATA,
        data_in_TVALID,
        data_in_TREADY,
        data_in_TKEEP,
        data_in_TSTRB,
        data_in_TUSER,
        data_in_TLAST,
        data_in_TID,
        data_in_TDEST,
        data_out_TDATA,
        data_out_TVALID,
        data_out_TREADY,
        data_out_TKEEP,
        data_out_TSTRB,
        data_out_TUSER,
        data_out_TLAST,
        data_out_TID,
        data_out_TDEST
);

parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_state2 = 7'd2;
parameter    ap_ST_fsm_state3 = 7'd4;
parameter    ap_ST_fsm_state4 = 7'd8;
parameter    ap_ST_fsm_state5 = 7'd16;
parameter    ap_ST_fsm_state6 = 7'd32;
parameter    ap_ST_fsm_state7 = 7'd64;

// synthesis translate_off
output kernel_block;
// synthesis translate_on
// synthesis translate_off
output kernel_block;
// synthesis translate_on
// synthesis translate_off
output kernel_block;
// synthesis translate_on
// synthesis translate_off
output kernel_block;
// synthesis translate_on
// synthesis translate_off
output kernel_block;
// synthesis translate_on
// synthesis translate_off
output kernel_block;
// synthesis translate_on
// synthesis translate_off
output kernel_block;
// synthesis translate_on
// synthesis translate_off
output kernel_block;
// synthesis translate_on
// synthesis translate_off
output kernel_block;
// synthesis translate_on
// synthesis translate_off
output kernel_block;
// synthesis translate_on
// synthesis translate_off
output kernel_block;
// synthesis translate_on
input   ap_clk;
input   ap_rst_n;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] data_in_TDATA;
input   data_in_TVALID;
output   data_in_TREADY;
input  [7:0] data_in_TKEEP;
input  [7:0] data_in_TSTRB;
input  [0:0] data_in_TUSER;
input  [0:0] data_in_TLAST;
input  [0:0] data_in_TID;
input  [0:0] data_in_TDEST;
output  [63:0] data_out_TDATA;
output   data_out_TVALID;
input   data_out_TREADY;
output  [7:0] data_out_TKEEP;
output  [7:0] data_out_TSTRB;
output  [0:0] data_out_TUSER;
output  [0:0] data_out_TLAST;
output  [0:0] data_out_TID;
output  [0:0] data_out_TDEST;

reg ap_done;
reg ap_idle;
reg ap_ready;

 reg    ap_rst_n_inv;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [31:0] mul_fu_145_p2;
reg   [31:0] mul_reg_173;
wire    ap_CS_fsm_state5;
wire    grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_ap_start;
wire    grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_ap_done;
wire    grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_ap_idle;
wire    grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_ap_ready;
wire    grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_data_out_TREADY;
wire    grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_data_in_TREADY;
wire   [63:0] grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_data_out_TDATA;
wire    grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_data_out_TVALID;
wire   [7:0] grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_data_out_TKEEP;
wire   [7:0] grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_data_out_TSTRB;
wire   [0:0] grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_data_out_TUSER;
wire   [0:0] grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_data_out_TLAST;
wire   [0:0] grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_data_out_TID;
wire   [0:0] grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_data_out_TDEST;
wire   [31:0] grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_qam_num_2_out;
wire    grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_qam_num_2_out_ap_vld;
wire  signed [31:0] grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_DATA_LEN_1_out;
wire    grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_DATA_LEN_1_out_ap_vld;
wire  signed [31:0] grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_sym_num_3_out;
wire    grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_sym_num_3_out_ap_vld;
wire    grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_ap_start;
wire    grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_ap_done;
wire    grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_ap_idle;
wire    grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_ap_ready;
wire    grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_data_out_TREADY;
wire   [63:0] grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_data_out_TDATA;
wire    grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_data_out_TVALID;
wire   [7:0] grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_data_out_TKEEP;
wire   [7:0] grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_data_out_TSTRB;
wire   [0:0] grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_data_out_TUSER;
wire   [0:0] grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_data_out_TLAST;
wire   [0:0] grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_data_out_TID;
wire   [0:0] grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_data_out_TDEST;
wire    grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_data_in_TREADY;
reg    grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_ap_start_reg;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
reg    grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_ap_start_reg;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state7;
wire    regslice_both_data_out_V_data_V_U_apdone_blk;
reg   [6:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
reg    ap_ST_fsm_state7_blk;
wire    regslice_both_data_in_V_data_V_U_apdone_blk;
wire   [63:0] data_in_TDATA_int_regslice;
wire    data_in_TVALID_int_regslice;
reg    data_in_TREADY_int_regslice;
wire    regslice_both_data_in_V_data_V_U_ack_in;
wire    regslice_both_data_in_V_keep_V_U_apdone_blk;
wire   [7:0] data_in_TKEEP_int_regslice;
wire    regslice_both_data_in_V_keep_V_U_vld_out;
wire    regslice_both_data_in_V_keep_V_U_ack_in;
wire    regslice_both_data_in_V_strb_V_U_apdone_blk;
wire   [7:0] data_in_TSTRB_int_regslice;
wire    regslice_both_data_in_V_strb_V_U_vld_out;
wire    regslice_both_data_in_V_strb_V_U_ack_in;
wire    regslice_both_data_in_V_user_V_U_apdone_blk;
wire   [0:0] data_in_TUSER_int_regslice;
wire    regslice_both_data_in_V_user_V_U_vld_out;
wire    regslice_both_data_in_V_user_V_U_ack_in;
wire    regslice_both_data_in_V_last_V_U_apdone_blk;
wire   [0:0] data_in_TLAST_int_regslice;
wire    regslice_both_data_in_V_last_V_U_vld_out;
wire    regslice_both_data_in_V_last_V_U_ack_in;
wire    regslice_both_data_in_V_id_V_U_apdone_blk;
wire   [0:0] data_in_TID_int_regslice;
wire    regslice_both_data_in_V_id_V_U_vld_out;
wire    regslice_both_data_in_V_id_V_U_ack_in;
wire    regslice_both_data_in_V_dest_V_U_apdone_blk;
wire   [0:0] data_in_TDEST_int_regslice;
wire    regslice_both_data_in_V_dest_V_U_vld_out;
wire    regslice_both_data_in_V_dest_V_U_ack_in;
reg   [63:0] data_out_TDATA_int_regslice;
reg    data_out_TVALID_int_regslice;
wire    data_out_TREADY_int_regslice;
wire    regslice_both_data_out_V_data_V_U_vld_out;
wire    regslice_both_data_out_V_keep_V_U_apdone_blk;
reg   [7:0] data_out_TKEEP_int_regslice;
wire    regslice_both_data_out_V_keep_V_U_ack_in_dummy;
wire    regslice_both_data_out_V_keep_V_U_vld_out;
wire    regslice_both_data_out_V_strb_V_U_apdone_blk;
reg   [7:0] data_out_TSTRB_int_regslice;
wire    regslice_both_data_out_V_strb_V_U_ack_in_dummy;
wire    regslice_both_data_out_V_strb_V_U_vld_out;
wire    regslice_both_data_out_V_user_V_U_apdone_blk;
reg   [0:0] data_out_TUSER_int_regslice;
wire    regslice_both_data_out_V_user_V_U_ack_in_dummy;
wire    regslice_both_data_out_V_user_V_U_vld_out;
wire    regslice_both_data_out_V_last_V_U_apdone_blk;
reg   [0:0] data_out_TLAST_int_regslice;
wire    regslice_both_data_out_V_last_V_U_ack_in_dummy;
wire    regslice_both_data_out_V_last_V_U_vld_out;
wire    regslice_both_data_out_V_id_V_U_apdone_blk;
reg   [0:0] data_out_TID_int_regslice;
wire    regslice_both_data_out_V_id_V_U_ack_in_dummy;
wire    regslice_both_data_out_V_id_V_U_vld_out;
wire    regslice_both_data_out_V_dest_V_U_apdone_blk;
reg   [0:0] data_out_TDEST_int_regslice;
wire    regslice_both_data_out_V_dest_V_U_ack_in_dummy;
wire    regslice_both_data_out_V_dest_V_U_vld_out;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 7'd1;
#0 grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_ap_start_reg = 1'b0;
#0 grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_ap_start_reg = 1'b0;
end

QAM_QAM_Pipeline_VITIS_LOOP_43_1 grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_ap_start),
    .ap_done(grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_ap_done),
    .ap_idle(grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_ap_idle),
    .ap_ready(grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_ap_ready),
    .data_in_TVALID(data_in_TVALID_int_regslice),
    .data_out_TREADY(grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_data_out_TREADY),
    .data_in_TDATA(data_in_TDATA_int_regslice),
    .data_in_TREADY(grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_data_in_TREADY),
    .data_in_TKEEP(data_in_TKEEP_int_regslice),
    .data_in_TSTRB(data_in_TSTRB_int_regslice),
    .data_in_TUSER(data_in_TUSER_int_regslice),
    .data_in_TLAST(data_in_TLAST_int_regslice),
    .data_in_TID(data_in_TID_int_regslice),
    .data_in_TDEST(data_in_TDEST_int_regslice),
    .data_out_TDATA(grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_data_out_TDATA),
    .data_out_TVALID(grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_data_out_TVALID),
    .data_out_TKEEP(grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_data_out_TKEEP),
    .data_out_TSTRB(grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_data_out_TSTRB),
    .data_out_TUSER(grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_data_out_TUSER),
    .data_out_TLAST(grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_data_out_TLAST),
    .data_out_TID(grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_data_out_TID),
    .data_out_TDEST(grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_data_out_TDEST),
    .qam_num_2_out(grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_qam_num_2_out),
    .qam_num_2_out_ap_vld(grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_qam_num_2_out_ap_vld),
    .DATA_LEN_1_out(grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_DATA_LEN_1_out),
    .DATA_LEN_1_out_ap_vld(grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_DATA_LEN_1_out_ap_vld),
    .sym_num_3_out(grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_sym_num_3_out),
    .sym_num_3_out_ap_vld(grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_sym_num_3_out_ap_vld)
);

QAM_QAM_Pipeline_VITIS_LOOP_69_2 grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_ap_start),
    .ap_done(grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_ap_done),
    .ap_idle(grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_ap_idle),
    .ap_ready(grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_ap_ready),
    .data_in_TVALID(data_in_TVALID_int_regslice),
    .data_out_TREADY(grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_data_out_TREADY),
    .mul(mul_reg_173),
    .data_out_TDATA(grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_data_out_TDATA),
    .data_out_TVALID(grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_data_out_TVALID),
    .data_out_TKEEP(grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_data_out_TKEEP),
    .data_out_TSTRB(grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_data_out_TSTRB),
    .data_out_TUSER(grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_data_out_TUSER),
    .data_out_TLAST(grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_data_out_TLAST),
    .data_out_TID(grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_data_out_TID),
    .data_out_TDEST(grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_data_out_TDEST),
    .data_in_TDATA(data_in_TDATA_int_regslice),
    .data_in_TREADY(grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_data_in_TREADY),
    .data_in_TKEEP(data_in_TKEEP_int_regslice),
    .data_in_TSTRB(data_in_TSTRB_int_regslice),
    .data_in_TUSER(data_in_TUSER_int_regslice),
    .data_in_TLAST(data_in_TLAST_int_regslice),
    .data_in_TID(data_in_TID_int_regslice),
    .data_in_TDEST(data_in_TDEST_int_regslice),
    .qam_num_2_reload(grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_qam_num_2_out)
);

QAM_mul_32s_32s_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_1_1_U34(
    .din0(grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_DATA_LEN_1_out),
    .din1(grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_sym_num_3_out),
    .dout(mul_fu_145_p2)
);

QAM_regslice_both #(
    .DataWidth( 64 ))
regslice_both_data_in_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(data_in_TDATA),
    .vld_in(data_in_TVALID),
    .ack_in(regslice_both_data_in_V_data_V_U_ack_in),
    .data_out(data_in_TDATA_int_regslice),
    .vld_out(data_in_TVALID_int_regslice),
    .ack_out(data_in_TREADY_int_regslice),
    .apdone_blk(regslice_both_data_in_V_data_V_U_apdone_blk)
);

QAM_regslice_both #(
    .DataWidth( 8 ))
regslice_both_data_in_V_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(data_in_TKEEP),
    .vld_in(data_in_TVALID),
    .ack_in(regslice_both_data_in_V_keep_V_U_ack_in),
    .data_out(data_in_TKEEP_int_regslice),
    .vld_out(regslice_both_data_in_V_keep_V_U_vld_out),
    .ack_out(data_in_TREADY_int_regslice),
    .apdone_blk(regslice_both_data_in_V_keep_V_U_apdone_blk)
);

QAM_regslice_both #(
    .DataWidth( 8 ))
regslice_both_data_in_V_strb_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(data_in_TSTRB),
    .vld_in(data_in_TVALID),
    .ack_in(regslice_both_data_in_V_strb_V_U_ack_in),
    .data_out(data_in_TSTRB_int_regslice),
    .vld_out(regslice_both_data_in_V_strb_V_U_vld_out),
    .ack_out(data_in_TREADY_int_regslice),
    .apdone_blk(regslice_both_data_in_V_strb_V_U_apdone_blk)
);

QAM_regslice_both #(
    .DataWidth( 1 ))
regslice_both_data_in_V_user_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(data_in_TUSER),
    .vld_in(data_in_TVALID),
    .ack_in(regslice_both_data_in_V_user_V_U_ack_in),
    .data_out(data_in_TUSER_int_regslice),
    .vld_out(regslice_both_data_in_V_user_V_U_vld_out),
    .ack_out(data_in_TREADY_int_regslice),
    .apdone_blk(regslice_both_data_in_V_user_V_U_apdone_blk)
);

QAM_regslice_both #(
    .DataWidth( 1 ))
regslice_both_data_in_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(data_in_TLAST),
    .vld_in(data_in_TVALID),
    .ack_in(regslice_both_data_in_V_last_V_U_ack_in),
    .data_out(data_in_TLAST_int_regslice),
    .vld_out(regslice_both_data_in_V_last_V_U_vld_out),
    .ack_out(data_in_TREADY_int_regslice),
    .apdone_blk(regslice_both_data_in_V_last_V_U_apdone_blk)
);

QAM_regslice_both #(
    .DataWidth( 1 ))
regslice_both_data_in_V_id_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(data_in_TID),
    .vld_in(data_in_TVALID),
    .ack_in(regslice_both_data_in_V_id_V_U_ack_in),
    .data_out(data_in_TID_int_regslice),
    .vld_out(regslice_both_data_in_V_id_V_U_vld_out),
    .ack_out(data_in_TREADY_int_regslice),
    .apdone_blk(regslice_both_data_in_V_id_V_U_apdone_blk)
);

QAM_regslice_both #(
    .DataWidth( 1 ))
regslice_both_data_in_V_dest_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(data_in_TDEST),
    .vld_in(data_in_TVALID),
    .ack_in(regslice_both_data_in_V_dest_V_U_ack_in),
    .data_out(data_in_TDEST_int_regslice),
    .vld_out(regslice_both_data_in_V_dest_V_U_vld_out),
    .ack_out(data_in_TREADY_int_regslice),
    .apdone_blk(regslice_both_data_in_V_dest_V_U_apdone_blk)
);

QAM_regslice_both #(
    .DataWidth( 64 ))
regslice_both_data_out_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(data_out_TDATA_int_regslice),
    .vld_in(data_out_TVALID_int_regslice),
    .ack_in(data_out_TREADY_int_regslice),
    .data_out(data_out_TDATA),
    .vld_out(regslice_both_data_out_V_data_V_U_vld_out),
    .ack_out(data_out_TREADY),
    .apdone_blk(regslice_both_data_out_V_data_V_U_apdone_blk)
);

QAM_regslice_both #(
    .DataWidth( 8 ))
regslice_both_data_out_V_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(data_out_TKEEP_int_regslice),
    .vld_in(data_out_TVALID_int_regslice),
    .ack_in(regslice_both_data_out_V_keep_V_U_ack_in_dummy),
    .data_out(data_out_TKEEP),
    .vld_out(regslice_both_data_out_V_keep_V_U_vld_out),
    .ack_out(data_out_TREADY),
    .apdone_blk(regslice_both_data_out_V_keep_V_U_apdone_blk)
);

QAM_regslice_both #(
    .DataWidth( 8 ))
regslice_both_data_out_V_strb_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(data_out_TSTRB_int_regslice),
    .vld_in(data_out_TVALID_int_regslice),
    .ack_in(regslice_both_data_out_V_strb_V_U_ack_in_dummy),
    .data_out(data_out_TSTRB),
    .vld_out(regslice_both_data_out_V_strb_V_U_vld_out),
    .ack_out(data_out_TREADY),
    .apdone_blk(regslice_both_data_out_V_strb_V_U_apdone_blk)
);

QAM_regslice_both #(
    .DataWidth( 1 ))
regslice_both_data_out_V_user_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(data_out_TUSER_int_regslice),
    .vld_in(data_out_TVALID_int_regslice),
    .ack_in(regslice_both_data_out_V_user_V_U_ack_in_dummy),
    .data_out(data_out_TUSER),
    .vld_out(regslice_both_data_out_V_user_V_U_vld_out),
    .ack_out(data_out_TREADY),
    .apdone_blk(regslice_both_data_out_V_user_V_U_apdone_blk)
);

QAM_regslice_both #(
    .DataWidth( 1 ))
regslice_both_data_out_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(data_out_TLAST_int_regslice),
    .vld_in(data_out_TVALID_int_regslice),
    .ack_in(regslice_both_data_out_V_last_V_U_ack_in_dummy),
    .data_out(data_out_TLAST),
    .vld_out(regslice_both_data_out_V_last_V_U_vld_out),
    .ack_out(data_out_TREADY),
    .apdone_blk(regslice_both_data_out_V_last_V_U_apdone_blk)
);

QAM_regslice_both #(
    .DataWidth( 1 ))
regslice_both_data_out_V_id_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(data_out_TID_int_regslice),
    .vld_in(data_out_TVALID_int_regslice),
    .ack_in(regslice_both_data_out_V_id_V_U_ack_in_dummy),
    .data_out(data_out_TID),
    .vld_out(regslice_both_data_out_V_id_V_U_vld_out),
    .ack_out(data_out_TREADY),
    .apdone_blk(regslice_both_data_out_V_id_V_U_apdone_blk)
);

QAM_regslice_both #(
    .DataWidth( 1 ))
regslice_both_data_out_V_dest_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(data_out_TDEST_int_regslice),
    .vld_in(data_out_TVALID_int_regslice),
    .ack_in(regslice_both_data_out_V_dest_V_U_ack_in_dummy),
    .data_out(data_out_TDEST),
    .vld_out(regslice_both_data_out_V_dest_V_U_vld_out),
    .ack_out(data_out_TREADY),
    .apdone_blk(regslice_both_data_out_V_dest_V_U_apdone_blk)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_ap_start_reg <= 1'b1;
        end else if ((grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_ap_ready == 1'b1)) begin
            grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_ap_start_reg <= 1'b1;
        end else if ((grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_ap_ready == 1'b1)) begin
            grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        mul_reg_173 <= mul_fu_145_p2;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

always @ (*) begin
    if ((grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end

always @ (*) begin
    if ((regslice_both_data_out_V_data_V_U_apdone_blk == 1'b1)) begin
        ap_ST_fsm_state7_blk = 1'b1;
    end else begin
        ap_ST_fsm_state7_blk = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) & (regslice_both_data_out_V_data_V_U_apdone_blk == 1'b0))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) & (regslice_both_data_out_V_data_V_U_apdone_blk == 1'b0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        data_in_TREADY_int_regslice = grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_data_in_TREADY;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        data_in_TREADY_int_regslice = grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_data_in_TREADY;
    end else begin
        data_in_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if (((grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_data_out_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        data_out_TDATA_int_regslice = grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_data_out_TDATA;
    end else if (((grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_data_out_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        data_out_TDATA_int_regslice = grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_data_out_TDATA;
    end else begin
        data_out_TDATA_int_regslice = 'bx;
    end
end

always @ (*) begin
    if (((grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_data_out_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        data_out_TDEST_int_regslice = grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_data_out_TDEST;
    end else if (((grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_data_out_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        data_out_TDEST_int_regslice = grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_data_out_TDEST;
    end else begin
        data_out_TDEST_int_regslice = 'bx;
    end
end

always @ (*) begin
    if (((grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_data_out_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        data_out_TID_int_regslice = grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_data_out_TID;
    end else if (((grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_data_out_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        data_out_TID_int_regslice = grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_data_out_TID;
    end else begin
        data_out_TID_int_regslice = 'bx;
    end
end

always @ (*) begin
    if (((grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_data_out_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        data_out_TKEEP_int_regslice = grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_data_out_TKEEP;
    end else if (((grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_data_out_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        data_out_TKEEP_int_regslice = grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_data_out_TKEEP;
    end else begin
        data_out_TKEEP_int_regslice = 'bx;
    end
end

always @ (*) begin
    if (((grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_data_out_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        data_out_TLAST_int_regslice = grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_data_out_TLAST;
    end else if (((grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_data_out_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        data_out_TLAST_int_regslice = grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_data_out_TLAST;
    end else begin
        data_out_TLAST_int_regslice = 'bx;
    end
end

always @ (*) begin
    if (((grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_data_out_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        data_out_TSTRB_int_regslice = grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_data_out_TSTRB;
    end else if (((grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_data_out_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        data_out_TSTRB_int_regslice = grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_data_out_TSTRB;
    end else begin
        data_out_TSTRB_int_regslice = 'bx;
    end
end

always @ (*) begin
    if (((grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_data_out_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        data_out_TUSER_int_regslice = grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_data_out_TUSER;
    end else if (((grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_data_out_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        data_out_TUSER_int_regslice = grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_data_out_TUSER;
    end else begin
        data_out_TUSER_int_regslice = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        data_out_TVALID_int_regslice = grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_data_out_TVALID;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        data_out_TVALID_int_regslice = grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_data_out_TVALID;
    end else begin
        data_out_TVALID_int_regslice = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & (regslice_both_data_out_V_data_V_U_apdone_blk == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign data_in_TREADY = regslice_both_data_in_V_data_V_U_ack_in;

assign data_out_TVALID = regslice_both_data_out_V_data_V_U_vld_out;

assign grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_ap_start = grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_ap_start_reg;

assign grp_QAM_Pipeline_VITIS_LOOP_43_1_fu_66_data_out_TREADY = (data_out_TREADY_int_regslice & ap_CS_fsm_state3);

assign grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_ap_start = grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_ap_start_reg;

assign grp_QAM_Pipeline_VITIS_LOOP_69_2_fu_101_data_out_TREADY = (data_out_TREADY_int_regslice & ap_CS_fsm_state6);


// synthesis translate_off
`include "QAM_hls_deadlock_kernel_monitor_top.vh"
// synthesis translate_on


// synthesis translate_off
`include "QAM_hls_deadlock_kernel_monitor_top.vh"
// synthesis translate_on


// synthesis translate_off
`include "QAM_hls_deadlock_kernel_monitor_top.vh"
// synthesis translate_on


// synthesis translate_off
`include "QAM_hls_deadlock_kernel_monitor_top.vh"
// synthesis translate_on


// synthesis translate_off
`include "QAM_hls_deadlock_kernel_monitor_top.vh"
// synthesis translate_on


// synthesis translate_off
`include "QAM_hls_deadlock_kernel_monitor_top.vh"
// synthesis translate_on


// synthesis translate_off
`include "QAM_hls_deadlock_kernel_monitor_top.vh"
// synthesis translate_on


// synthesis translate_off
`include "QAM_hls_deadlock_kernel_monitor_top.vh"
// synthesis translate_on


// synthesis translate_off
`include "QAM_hls_deadlock_kernel_monitor_top.vh"
// synthesis translate_on


// synthesis translate_off
`include "QAM_hls_deadlock_kernel_monitor_top.vh"
// synthesis translate_on


// synthesis translate_off
`include "QAM_hls_deadlock_kernel_monitor_top.vh"
// synthesis translate_on

endmodule //QAM











