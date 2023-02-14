// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fft_top0_fft_top0_Pipeline_VITIS_LOOP_55_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        data_in_TVALID,
        data_out_TREADY,
        data_in_TDATA,
        data_in_TREADY,
        data_in_TKEEP,
        data_in_TSTRB,
        data_in_TUSER,
        data_in_TLAST,
        data_in_TID,
        data_in_TDEST,
        data_out_TDATA,
        data_out_TVALID,
        data_out_TKEEP,
        data_out_TSTRB,
        data_out_TUSER,
        data_out_TLAST,
        data_out_TID,
        data_out_TDEST,
        pilot_width_4_out,
        pilot_width_4_out_ap_vld,
        sym_num_2_out,
        sym_num_2_out_ap_vld,
        DATA_LEN_1_out,
        DATA_LEN_1_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   data_in_TVALID;
input   data_out_TREADY;
input  [63:0] data_in_TDATA;
output   data_in_TREADY;
input  [7:0] data_in_TKEEP;
input  [7:0] data_in_TSTRB;
input  [0:0] data_in_TUSER;
input  [0:0] data_in_TLAST;
input  [0:0] data_in_TID;
input  [0:0] data_in_TDEST;
output  [63:0] data_out_TDATA;
output   data_out_TVALID;
output  [7:0] data_out_TKEEP;
output  [7:0] data_out_TSTRB;
output  [0:0] data_out_TUSER;
output  [0:0] data_out_TLAST;
output  [0:0] data_out_TID;
output  [0:0] data_out_TDEST;
output  [31:0] pilot_width_4_out;
output   pilot_width_4_out_ap_vld;
output  [31:0] sym_num_2_out;
output   sym_num_2_out_ap_vld;
output  [31:0] DATA_LEN_1_out;
output   DATA_LEN_1_out_ap_vld;

reg ap_idle;
reg data_in_TREADY;
reg data_out_TVALID;
reg pilot_width_4_out_ap_vld;
reg sym_num_2_out_ap_vld;
reg DATA_LEN_1_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] icmp_ln58_reg_258;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_state2_io;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln75_fu_217_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    data_in_TDATA_blk_n;
wire    ap_block_pp0_stage0;
reg    data_out_TDATA_blk_n;
reg   [63:0] tmp_reg_253;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln58_fu_182_p2;
reg   [0:0] icmp_ln75_reg_265;
reg   [31:0] DATA_LEN_fu_86;
wire   [31:0] pilot_width_2_fu_198_p1;
wire   [15:0] p_Result_s_61_fu_188_p4;
reg   [31:0] sym_num_fu_90;
reg   [31:0] pilot_width_fu_94;
reg    ap_block_pp0_stage0_01001;
wire   [15:0] p_Result_s_fu_172_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_loop_init;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
end

fft_top0_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
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
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if (((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
            ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln58_fu_182_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (p_Result_s_61_fu_188_p4 == 16'd0))) begin
        DATA_LEN_fu_86 <= pilot_width_2_fu_198_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln58_reg_258 <= icmp_ln58_fu_182_p2;
        icmp_ln75_reg_265 <= icmp_ln75_fu_217_p2;
        tmp_reg_253 <= data_in_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln58_fu_182_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (p_Result_s_61_fu_188_p4 == 16'd2))) begin
        pilot_width_fu_94 <= pilot_width_2_fu_198_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln58_fu_182_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (p_Result_s_61_fu_188_p4 == 16'd1))) begin
        sym_num_fu_90 <= pilot_width_2_fu_198_p1;
    end
end

always @ (*) begin
    if (((icmp_ln75_reg_265 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_LEN_1_out_ap_vld = 1'b1;
    end else begin
        DATA_LEN_1_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln75_fu_217_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_in_TDATA_blk_n = data_in_TVALID;
    end else begin
        data_in_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_in_TREADY = 1'b1;
    end else begin
        data_in_TREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln58_reg_258 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_out_TDATA_blk_n = data_out_TREADY;
    end else begin
        data_out_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln58_reg_258 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_out_TVALID = 1'b1;
    end else begin
        data_out_TVALID = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln75_reg_265 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        pilot_width_4_out_ap_vld = 1'b1;
    end else begin
        pilot_width_4_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln75_reg_265 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sym_num_2_out_ap_vld = 1'b1;
    end else begin
        sym_num_2_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign DATA_LEN_1_out = DATA_LEN_fu_86;

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((icmp_ln58_reg_258 == 1'd0) & (data_out_TREADY == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((data_in_TVALID == 1'b0) & (ap_start_int == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state2_io) | ((icmp_ln58_reg_258 == 1'd0) & (data_out_TREADY == 1'b0)))) | ((data_in_TVALID == 1'b0) & (ap_start_int == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state2_io) | ((icmp_ln58_reg_258 == 1'd0) & (data_out_TREADY == 1'b0)))) | ((data_in_TVALID == 1'b0) & (ap_start_int == 1'b1)));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (data_in_TVALID == 1'b0);
end

always @ (*) begin
    ap_block_state2_io = ((icmp_ln58_reg_258 == 1'd0) & (data_out_TREADY == 1'b0));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((icmp_ln58_reg_258 == 1'd0) & (data_out_TREADY == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign data_out_TDATA = tmp_reg_253;

assign data_out_TDEST = 1'd0;

assign data_out_TID = 1'd0;

assign data_out_TKEEP = 8'd0;

assign data_out_TLAST = 1'd0;

assign data_out_TSTRB = 8'd0;

assign data_out_TUSER = 1'd0;

assign icmp_ln58_fu_182_p2 = ((p_Result_s_fu_172_p4 == 16'd4) ? 1'b1 : 1'b0);

assign icmp_ln75_fu_217_p2 = ((p_Result_s_fu_172_p4 == 16'd65535) ? 1'b1 : 1'b0);

assign p_Result_s_61_fu_188_p4 = {{data_in_TDATA[47:32]}};

assign p_Result_s_fu_172_p4 = {{data_in_TDATA[63:48]}};

assign pilot_width_2_fu_198_p1 = data_in_TDATA[31:0];

assign pilot_width_4_out = pilot_width_fu_94;

assign sym_num_2_out = sym_num_fu_90;

endmodule //fft_top0_fft_top0_Pipeline_VITIS_LOOP_55_1
