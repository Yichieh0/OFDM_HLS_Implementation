// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="encoder_encoder,hls_ip_2021_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xck26-sfvc784-2LV-c,HLS_INPUT_CLOCK=20.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.415938,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=324,HLS_SYN_LUT=435,HLS_VERSION=2021_1}" *)

module encoder (
        ap_clk,
        ap_rst_n,
        data_in_TDATA,
        data_in_TVALID,
        data_in_TREADY,
        data_in_TKEEP,
        data_in_TSTRB,
        data_in_TLAST,
        data_out_TDATA,
        data_out_TVALID,
        data_out_TREADY,
        data_out_TKEEP,
        data_out_TSTRB,
        data_out_TLAST
);

parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_state2 = 7'd2;
parameter    ap_ST_fsm_state3 = 7'd4;
parameter    ap_ST_fsm_state4 = 7'd8;
parameter    ap_ST_fsm_state5 = 7'd16;
parameter    ap_ST_fsm_state6 = 7'd32;
parameter    ap_ST_fsm_state7 = 7'd64;

input   ap_clk;
input   ap_rst_n;
input  [63:0] data_in_TDATA;
input   data_in_TVALID;
output   data_in_TREADY;
input  [7:0] data_in_TKEEP;
input  [7:0] data_in_TSTRB;
input  [0:0] data_in_TLAST;
output  [63:0] data_out_TDATA;
output   data_out_TVALID;
input   data_out_TREADY;
output  [7:0] data_out_TKEEP;
output  [7:0] data_out_TSTRB;
output  [0:0] data_out_TLAST;

 reg    ap_rst_n_inv;
reg   [5:0] s_V;
wire   [30:0] mul_cast_fu_119_p3;
reg   [30:0] mul_cast_reg_160;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state5;
wire   [0:0] icmp_ln50_fu_128_p2;
reg   [0:0] icmp_ln50_reg_165;
wire    grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_ap_start;
wire    grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_ap_done;
wire    grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_ap_idle;
wire    grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_ap_ready;
wire    grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TREADY;
wire    grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_in_TREADY;
wire   [63:0] grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TDATA;
wire    grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TVALID;
wire   [7:0] grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TKEEP;
wire   [7:0] grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TSTRB;
wire   [0:0] grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TLAST;
wire   [29:0] grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_DATA_LEN_1_out;
wire    grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_DATA_LEN_1_out_ap_vld;
wire    grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_ap_start;
wire    grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_ap_done;
wire    grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_ap_idle;
wire    grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_ap_ready;
wire    grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TREADY;
wire   [63:0] grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TDATA;
wire    grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TVALID;
wire   [7:0] grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TKEEP;
wire   [7:0] grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TSTRB;
wire   [0:0] grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TLAST;
wire    grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_in_TREADY;
wire   [5:0] grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_part_set_i_i_lcssa276_out;
wire    grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_part_set_i_i_lcssa276_out_ap_vld;
reg    grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_ap_start_reg;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
reg   [29:0] DATA_LEN_1_loc_fu_56;
reg    grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_ap_start_reg;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state7;
wire    regslice_both_data_out_V_data_V_U_apdone_blk;
wire   [28:0] empty_17_fu_107_p1;
wire   [31:0] mul_fu_111_p3;
reg   [6:0] ap_NS_fsm;
wire    ap_ST_fsm_state1_blk;
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
wire    regslice_both_data_in_V_last_V_U_apdone_blk;
wire   [0:0] data_in_TLAST_int_regslice;
wire    regslice_both_data_in_V_last_V_U_vld_out;
wire    regslice_both_data_in_V_last_V_U_ack_in;
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
wire    regslice_both_data_out_V_last_V_U_apdone_blk;
reg   [0:0] data_out_TLAST_int_regslice;
wire    regslice_both_data_out_V_last_V_U_ack_in_dummy;
wire    regslice_both_data_out_V_last_V_U_vld_out;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 s_V = 6'd0;
#0 ap_CS_fsm = 7'd1;
#0 grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_ap_start_reg = 1'b0;
#0 grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_ap_start_reg = 1'b0;
end

encoder_encoder_Pipeline_VITIS_LOOP_22_1 grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_ap_start),
    .ap_done(grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_ap_done),
    .ap_idle(grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_ap_idle),
    .ap_ready(grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_ap_ready),
    .data_in_TVALID(data_in_TVALID_int_regslice),
    .data_out_TREADY(grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TREADY),
    .data_in_TDATA(data_in_TDATA_int_regslice),
    .data_in_TREADY(grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_in_TREADY),
    .data_in_TKEEP(data_in_TKEEP_int_regslice),
    .data_in_TSTRB(data_in_TSTRB_int_regslice),
    .data_in_TLAST(data_in_TLAST_int_regslice),
    .data_out_TDATA(grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TDATA),
    .data_out_TVALID(grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TVALID),
    .data_out_TKEEP(grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TKEEP),
    .data_out_TSTRB(grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TSTRB),
    .data_out_TLAST(grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TLAST),
    .DATA_LEN_1_out(grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_DATA_LEN_1_out),
    .DATA_LEN_1_out_ap_vld(grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_DATA_LEN_1_out_ap_vld)
);

encoder_encoder_Pipeline_VITIS_LOOP_50_2 grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_ap_start),
    .ap_done(grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_ap_done),
    .ap_idle(grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_ap_idle),
    .ap_ready(grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_ap_ready),
    .data_in_TVALID(data_in_TVALID_int_regslice),
    .data_out_TREADY(grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TREADY),
    .s_V_load(s_V),
    .mul(mul_cast_reg_160),
    .data_out_TDATA(grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TDATA),
    .data_out_TVALID(grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TVALID),
    .data_out_TKEEP(grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TKEEP),
    .data_out_TSTRB(grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TSTRB),
    .data_out_TLAST(grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TLAST),
    .data_in_TDATA(data_in_TDATA_int_regslice),
    .data_in_TREADY(grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_in_TREADY),
    .data_in_TKEEP(data_in_TKEEP_int_regslice),
    .data_in_TSTRB(data_in_TSTRB_int_regslice),
    .data_in_TLAST(data_in_TLAST_int_regslice),
    .part_set_i_i_lcssa276_out(grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_part_set_i_i_lcssa276_out),
    .part_set_i_i_lcssa276_out_ap_vld(grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_part_set_i_i_lcssa276_out_ap_vld)
);

encoder_regslice_both #(
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

encoder_regslice_both #(
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

encoder_regslice_both #(
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

encoder_regslice_both #(
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

encoder_regslice_both #(
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

encoder_regslice_both #(
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

encoder_regslice_both #(
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

encoder_regslice_both #(
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

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_ap_start_reg <= 1'b1;
        end else if ((grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_ap_ready == 1'b1)) begin
            grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln50_fu_128_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
            grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_ap_start_reg <= 1'b1;
        end else if ((grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_ap_ready == 1'b1)) begin
            grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_DATA_LEN_1_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        DATA_LEN_1_loc_fu_56 <= grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_DATA_LEN_1_out;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        icmp_ln50_reg_165 <= icmp_ln50_fu_128_p2;
        mul_cast_reg_160[30 : 2] <= mul_cast_fu_119_p3[30 : 2];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln50_reg_165 == 1'd1) & (1'b1 == ap_CS_fsm_state7) & (regslice_both_data_out_V_data_V_U_apdone_blk == 1'b0))) begin
        s_V <= grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_part_set_i_i_lcssa276_out;
    end
end

assign ap_ST_fsm_state1_blk = 1'b0;

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

always @ (*) begin
    if ((grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_ap_done == 1'b0)) begin
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        data_in_TREADY_int_regslice = grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_in_TREADY;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        data_in_TREADY_int_regslice = grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_in_TREADY;
    end else begin
        data_in_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if (((grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        data_out_TDATA_int_regslice = grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TDATA;
    end else if (((grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        data_out_TDATA_int_regslice = grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TDATA;
    end else begin
        data_out_TDATA_int_regslice = 'bx;
    end
end

always @ (*) begin
    if (((grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        data_out_TKEEP_int_regslice = grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TKEEP;
    end else if (((grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        data_out_TKEEP_int_regslice = grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TKEEP;
    end else begin
        data_out_TKEEP_int_regslice = 'bx;
    end
end

always @ (*) begin
    if (((grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        data_out_TLAST_int_regslice = grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TLAST;
    end else if (((grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        data_out_TLAST_int_regslice = grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TLAST;
    end else begin
        data_out_TLAST_int_regslice = 'bx;
    end
end

always @ (*) begin
    if (((grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        data_out_TSTRB_int_regslice = grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TSTRB;
    end else if (((grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        data_out_TSTRB_int_regslice = grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TSTRB;
    end else begin
        data_out_TSTRB_int_regslice = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        data_out_TVALID_int_regslice = grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TVALID;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        data_out_TVALID_int_regslice = grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TVALID;
    end else begin
        data_out_TVALID_int_regslice = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((icmp_ln50_fu_128_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
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

assign empty_17_fu_107_p1 = DATA_LEN_1_loc_fu_56[28:0];

assign grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_ap_start = grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_ap_start_reg;

assign grp_encoder_Pipeline_VITIS_LOOP_22_1_fu_60_data_out_TREADY = (data_out_TREADY_int_regslice & ap_CS_fsm_state3);

assign grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_ap_start = grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_ap_start_reg;

assign grp_encoder_Pipeline_VITIS_LOOP_50_2_fu_81_data_out_TREADY = (data_out_TREADY_int_regslice & ap_CS_fsm_state6);

assign icmp_ln50_fu_128_p2 = (($signed(mul_fu_111_p3) > $signed(32'd0)) ? 1'b1 : 1'b0);

assign mul_cast_fu_119_p3 = {{empty_17_fu_107_p1}, {2'd0}};

assign mul_fu_111_p3 = {{DATA_LEN_1_loc_fu_56}, {2'd0}};

always @ (posedge ap_clk) begin
    mul_cast_reg_160[1:0] <= 2'b00;
end

endmodule //encoder
