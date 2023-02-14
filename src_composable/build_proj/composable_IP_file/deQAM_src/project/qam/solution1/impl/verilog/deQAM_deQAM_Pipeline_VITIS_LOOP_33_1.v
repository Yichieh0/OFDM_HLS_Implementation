// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module deQAM_deQAM_Pipeline_VITIS_LOOP_33_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        data_in_TVALID,
        data_in_TDATA,
        data_in_TREADY,
        data_in_TKEEP,
        data_in_TSTRB,
        data_in_TUSER,
        data_in_TLAST,
        data_in_TID,
        data_in_TDEST,
        qam_num_3_out,
        qam_num_3_out_ap_vld,
        para_val_7_out,
        para_val_7_out_ap_vld,
        sym_num_4_out,
        sym_num_4_out_ap_vld
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   data_in_TVALID;
input  [63:0] data_in_TDATA;
output   data_in_TREADY;
input  [7:0] data_in_TKEEP;
input  [7:0] data_in_TSTRB;
input  [0:0] data_in_TUSER;
input  [0:0] data_in_TLAST;
input  [0:0] data_in_TID;
input  [0:0] data_in_TDEST;
output  [31:0] qam_num_3_out;
output   qam_num_3_out_ap_vld;
output  [31:0] para_val_7_out;
output   para_val_7_out_ap_vld;
output  [31:0] sym_num_4_out;
output   sym_num_4_out_ap_vld;

reg ap_idle;
reg data_in_TREADY;
reg qam_num_3_out_ap_vld;
reg para_val_7_out_ap_vld;
reg sym_num_4_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln58_fu_251_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    data_in_TDATA_blk_n;
reg   [31:0] sym_num_fu_66;
wire   [31:0] sym_num_8_fu_242_p3;
reg   [31:0] para_val_fu_70;
wire   [31:0] para_val_8_fu_225_p3;
reg   [31:0] qam_num_fu_74;
wire   [31:0] qam_num_6_fu_216_p3;
wire   [15:0] p_Result_s_fu_130_p4;
wire   [15:0] p_Result_1_fu_146_p4;
wire   [0:0] icmp_ln39_fu_160_p2;
wire   [31:0] para_val_1_fu_156_p1;
wire   [0:0] icmp_ln39_1_fu_174_p2;
wire   [31:0] para_val_6_fu_166_p3;
wire   [0:0] icmp_ln36_fu_140_p2;
wire   [31:0] para_val_7_fu_180_p3;
wire   [0:0] icmp_ln39_2_fu_204_p2;
wire   [0:0] and_ln39_fu_210_p2;
wire   [31:0] qam_num_5_fu_196_p3;
wire   [31:0] sym_num_6_fu_188_p3;
wire   [31:0] sym_num_7_fu_234_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_start_int;
wire    ap_loop_init;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_done_reg = 1'b0;
end

deQAM_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((~((data_in_TVALID == 1'b0) | (ap_start_int == 1'b0)) & (ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((data_in_TVALID == 1'b0) | (ap_start_int == 1'b0)) & (icmp_ln58_fu_251_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        para_val_fu_70 <= para_val_8_fu_225_p3;
        qam_num_fu_74 <= qam_num_6_fu_216_p3;
        sym_num_fu_66 <= sym_num_8_fu_242_p3;
    end
end

always @ (*) begin
    if (((data_in_TVALID == 1'b0) | (ap_start_int == 1'b0))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((~((data_in_TVALID == 1'b0) | (ap_start_int == 1'b0)) & (icmp_ln58_fu_251_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((data_in_TVALID == 1'b0) | (ap_start_int == 1'b0)) & (ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~((data_in_TVALID == 1'b0) | (ap_start_int == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        data_in_TDATA_blk_n = data_in_TVALID;
    end else begin
        data_in_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((data_in_TVALID == 1'b0) | (ap_start_int == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        data_in_TREADY = 1'b1;
    end else begin
        data_in_TREADY = 1'b0;
    end
end

always @ (*) begin
    if ((~((data_in_TVALID == 1'b0) | (ap_start_int == 1'b0)) & (icmp_ln58_fu_251_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        para_val_7_out_ap_vld = 1'b1;
    end else begin
        para_val_7_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((~((data_in_TVALID == 1'b0) | (ap_start_int == 1'b0)) & (icmp_ln58_fu_251_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        qam_num_3_out_ap_vld = 1'b1;
    end else begin
        qam_num_3_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((~((data_in_TVALID == 1'b0) | (ap_start_int == 1'b0)) & (icmp_ln58_fu_251_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        sym_num_4_out_ap_vld = 1'b1;
    end else begin
        sym_num_4_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign and_ln39_fu_210_p2 = (icmp_ln39_2_fu_204_p2 & icmp_ln36_fu_140_p2);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((data_in_TVALID == 1'b0) | (ap_start_int == 1'b0));
end

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln36_fu_140_p2 = ((p_Result_s_fu_130_p4 == 16'd11) ? 1'b1 : 1'b0);

assign icmp_ln39_1_fu_174_p2 = ((p_Result_1_fu_146_p4 == 16'd1) ? 1'b1 : 1'b0);

assign icmp_ln39_2_fu_204_p2 = ((p_Result_1_fu_146_p4 == 16'd0) ? 1'b1 : 1'b0);

assign icmp_ln39_fu_160_p2 = ((p_Result_1_fu_146_p4 == 16'd2) ? 1'b1 : 1'b0);

assign icmp_ln58_fu_251_p2 = ((p_Result_s_fu_130_p4 == 16'd65535) ? 1'b1 : 1'b0);

assign p_Result_1_fu_146_p4 = {{data_in_TDATA[47:32]}};

assign p_Result_s_fu_130_p4 = {{data_in_TDATA[63:48]}};

assign para_val_1_fu_156_p1 = data_in_TDATA[31:0];

assign para_val_6_fu_166_p3 = ((icmp_ln39_fu_160_p2[0:0] == 1'b1) ? para_val_1_fu_156_p1 : sym_num_fu_66);

assign para_val_7_fu_180_p3 = ((icmp_ln39_1_fu_174_p2[0:0] == 1'b1) ? para_val_1_fu_156_p1 : qam_num_fu_74);

assign para_val_7_out = ((and_ln39_fu_210_p2[0:0] == 1'b1) ? para_val_1_fu_156_p1 : para_val_fu_70);

assign para_val_8_fu_225_p3 = ((and_ln39_fu_210_p2[0:0] == 1'b1) ? para_val_1_fu_156_p1 : para_val_fu_70);

assign qam_num_3_out = ((and_ln39_fu_210_p2[0:0] == 1'b1) ? qam_num_fu_74 : qam_num_5_fu_196_p3);

assign qam_num_5_fu_196_p3 = ((icmp_ln36_fu_140_p2[0:0] == 1'b1) ? para_val_7_fu_180_p3 : qam_num_fu_74);

assign qam_num_6_fu_216_p3 = ((and_ln39_fu_210_p2[0:0] == 1'b1) ? qam_num_fu_74 : qam_num_5_fu_196_p3);

assign sym_num_4_out = ((and_ln39_fu_210_p2[0:0] == 1'b1) ? sym_num_fu_66 : sym_num_7_fu_234_p3);

assign sym_num_6_fu_188_p3 = ((icmp_ln39_1_fu_174_p2[0:0] == 1'b1) ? sym_num_fu_66 : para_val_6_fu_166_p3);

assign sym_num_7_fu_234_p3 = ((icmp_ln36_fu_140_p2[0:0] == 1'b1) ? sym_num_6_fu_188_p3 : sym_num_fu_66);

assign sym_num_8_fu_242_p3 = ((and_ln39_fu_210_p2[0:0] == 1'b1) ? sym_num_fu_66 : sym_num_7_fu_234_p3);

endmodule //deQAM_deQAM_Pipeline_VITIS_LOOP_33_1
