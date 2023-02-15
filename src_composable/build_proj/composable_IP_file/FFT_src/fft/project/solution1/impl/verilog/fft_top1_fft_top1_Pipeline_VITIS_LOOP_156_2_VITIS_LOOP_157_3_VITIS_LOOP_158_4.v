// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fft_top1_fft_top1_Pipeline_VITIS_LOOP_156_2_VITIS_LOOP_157_3_VITIS_LOOP_158_4 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        data_in_TVALID,
        p_inData_V_M_real_V_0_din,
        p_inData_V_M_real_V_0_full_n,
        p_inData_V_M_real_V_0_write,
        p_inData_V_M_imag_V_0_din,
        p_inData_V_M_imag_V_0_full_n,
        p_inData_V_M_imag_V_0_write,
        p_inData_V_M_real_V_1_din,
        p_inData_V_M_real_V_1_full_n,
        p_inData_V_M_real_V_1_write,
        p_inData_V_M_imag_V_1_din,
        p_inData_V_M_imag_V_1_full_n,
        p_inData_V_M_imag_V_1_write,
        zext_ln156,
        data_in_TDATA,
        data_in_TREADY,
        data_in_TKEEP,
        data_in_TSTRB,
        data_in_TUSER,
        data_in_TLAST,
        data_in_TID,
        data_in_TDEST
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   data_in_TVALID;
output  [19:0] p_inData_V_M_real_V_0_din;
input   p_inData_V_M_real_V_0_full_n;
output   p_inData_V_M_real_V_0_write;
output  [19:0] p_inData_V_M_imag_V_0_din;
input   p_inData_V_M_imag_V_0_full_n;
output   p_inData_V_M_imag_V_0_write;
output  [19:0] p_inData_V_M_real_V_1_din;
input   p_inData_V_M_real_V_1_full_n;
output   p_inData_V_M_real_V_1_write;
output  [19:0] p_inData_V_M_imag_V_1_din;
input   p_inData_V_M_imag_V_1_full_n;
output   p_inData_V_M_imag_V_1_write;
input  [38:0] zext_ln156;
input  [63:0] data_in_TDATA;
output   data_in_TREADY;
input  [7:0] data_in_TKEEP;
input  [7:0] data_in_TSTRB;
input  [0:0] data_in_TUSER;
input  [0:0] data_in_TLAST;
input  [0:0] data_in_TID;
input  [0:0] data_in_TDEST;

reg ap_idle;
reg p_inData_V_M_real_V_0_write;
reg p_inData_V_M_imag_V_0_write;
reg p_inData_V_M_real_V_1_write;
reg p_inData_V_M_imag_V_1_write;
reg data_in_TREADY;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln156_fu_162_p2;
reg    ap_block_state2_pp0_stage0_iter1;
wire    io_acc_block_signal_op56;
reg   [0:0] trunc_ln174_reg_319;
wire    io_acc_block_signal_op58;
reg    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    p_inData_V_M_real_V_0_blk_n;
wire    ap_block_pp0_stage0;
reg    p_inData_V_M_imag_V_0_blk_n;
reg    data_in_TDATA_blk_n;
reg    p_inData_V_M_real_V_1_blk_n;
reg    p_inData_V_M_imag_V_1_blk_n;
reg    ap_block_pp0_stage0_11001;
reg   [19:0] p_Result_s_reg_307;
wire   [19:0] p_Result_3_fu_231_p1;
reg   [19:0] p_Result_3_reg_313;
wire   [0:0] trunc_ln174_fu_235_p1;
reg   [1:0] i_fu_88;
wire   [1:0] add_ln158_fu_242_p2;
wire    ap_loop_init;
reg   [8:0] indvar_flatten_fu_92;
wire   [8:0] select_ln157_1_fu_254_p3;
reg   [38:0] indvar_flatten11_fu_96;
wire   [38:0] add_ln156_fu_167_p2;
reg    ap_block_pp0_stage0_01001;
wire   [0:0] icmp_ln157_fu_179_p2;
wire   [0:0] icmp_ln158_fu_191_p2;
wire   [0:0] xor_ln156_fu_185_p2;
wire   [0:0] and_ln156_fu_197_p2;
wire   [0:0] or_ln157_fu_203_p2;
wire   [1:0] select_ln157_fu_209_p3;
wire   [8:0] add_ln157_fu_248_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
end

fft_top1_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_fu_88 <= 2'd0;
        end else if (((icmp_ln156_fu_162_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            i_fu_88 <= add_ln158_fu_242_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten11_fu_96 <= 39'd0;
        end else if (((icmp_ln156_fu_162_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten11_fu_96 <= add_ln156_fu_167_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_92 <= 9'd0;
        end else if (((icmp_ln156_fu_162_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten_fu_92 <= select_ln157_1_fu_254_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln156_fu_162_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_Result_3_reg_313 <= p_Result_3_fu_231_p1;
        p_Result_s_reg_307 <= {{data_in_TDATA[51:32]}};
        trunc_ln174_reg_319 <= trunc_ln174_fu_235_p1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln156_fu_162_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln156_fu_162_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_in_TDATA_blk_n = data_in_TVALID;
    end else begin
        data_in_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln156_fu_162_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_in_TREADY = 1'b1;
    end else begin
        data_in_TREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln174_reg_319 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        p_inData_V_M_imag_V_0_blk_n = p_inData_V_M_imag_V_0_full_n;
    end else begin
        p_inData_V_M_imag_V_0_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln174_reg_319 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        p_inData_V_M_imag_V_0_write = 1'b1;
    end else begin
        p_inData_V_M_imag_V_0_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln174_reg_319 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        p_inData_V_M_imag_V_1_blk_n = p_inData_V_M_imag_V_1_full_n;
    end else begin
        p_inData_V_M_imag_V_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln174_reg_319 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        p_inData_V_M_imag_V_1_write = 1'b1;
    end else begin
        p_inData_V_M_imag_V_1_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln174_reg_319 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        p_inData_V_M_real_V_0_blk_n = p_inData_V_M_real_V_0_full_n;
    end else begin
        p_inData_V_M_real_V_0_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln174_reg_319 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        p_inData_V_M_real_V_0_write = 1'b1;
    end else begin
        p_inData_V_M_real_V_0_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln174_reg_319 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        p_inData_V_M_real_V_1_blk_n = p_inData_V_M_real_V_1_full_n;
    end else begin
        p_inData_V_M_real_V_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln174_reg_319 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        p_inData_V_M_real_V_1_write = 1'b1;
    end else begin
        p_inData_V_M_real_V_1_write = 1'b0;
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

assign add_ln156_fu_167_p2 = (indvar_flatten11_fu_96 + 39'd1);

assign add_ln157_fu_248_p2 = (indvar_flatten_fu_92 + 9'd1);

assign add_ln158_fu_242_p2 = (select_ln157_fu_209_p3 + 2'd1);

assign and_ln156_fu_197_p2 = (xor_ln156_fu_185_p2 & icmp_ln158_fu_191_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((ap_enable_reg_pp0_iter2 == 1'b1) & (((io_acc_block_signal_op58 == 1'b0) & (trunc_ln174_reg_319 == 1'd1)) | ((trunc_ln174_reg_319 == 1'd0) & (io_acc_block_signal_op56 == 1'b0)))) | ((icmp_ln156_fu_162_p2 == 1'd0) & (data_in_TVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_enable_reg_pp0_iter2 == 1'b1) & (((io_acc_block_signal_op58 == 1'b0) & (trunc_ln174_reg_319 == 1'd1)) | ((trunc_ln174_reg_319 == 1'd0) & (io_acc_block_signal_op56 == 1'b0)))) | ((icmp_ln156_fu_162_p2 == 1'd0) & (data_in_TVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_enable_reg_pp0_iter2 == 1'b1) & (((io_acc_block_signal_op58 == 1'b0) & (trunc_ln174_reg_319 == 1'd1)) | ((trunc_ln174_reg_319 == 1'd0) & (io_acc_block_signal_op56 == 1'b0)))) | ((icmp_ln156_fu_162_p2 == 1'd0) & (data_in_TVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((icmp_ln156_fu_162_p2 == 1'd0) & (data_in_TVALID == 1'b0));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter2 = (((io_acc_block_signal_op58 == 1'b0) & (trunc_ln174_reg_319 == 1'd1)) | ((trunc_ln174_reg_319 == 1'd0) & (io_acc_block_signal_op56 == 1'b0)));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;

assign icmp_ln156_fu_162_p2 = ((indvar_flatten11_fu_96 == zext_ln156) ? 1'b1 : 1'b0);

assign icmp_ln157_fu_179_p2 = ((indvar_flatten_fu_92 == 9'd128) ? 1'b1 : 1'b0);

assign icmp_ln158_fu_191_p2 = ((i_fu_88 == 2'd2) ? 1'b1 : 1'b0);

assign io_acc_block_signal_op56 = (p_inData_V_M_real_V_0_full_n & p_inData_V_M_imag_V_0_full_n);

assign io_acc_block_signal_op58 = (p_inData_V_M_real_V_1_full_n & p_inData_V_M_imag_V_1_full_n);

assign or_ln157_fu_203_p2 = (icmp_ln157_fu_179_p2 | and_ln156_fu_197_p2);

assign p_Result_3_fu_231_p1 = data_in_TDATA[19:0];

assign p_inData_V_M_imag_V_0_din = p_Result_3_reg_313;

assign p_inData_V_M_imag_V_1_din = p_Result_3_reg_313;

assign p_inData_V_M_real_V_0_din = p_Result_s_reg_307;

assign p_inData_V_M_real_V_1_din = p_Result_s_reg_307;

assign select_ln157_1_fu_254_p3 = ((icmp_ln157_fu_179_p2[0:0] == 1'b1) ? 9'd1 : add_ln157_fu_248_p2);

assign select_ln157_fu_209_p3 = ((or_ln157_fu_203_p2[0:0] == 1'b1) ? 2'd0 : i_fu_88);

assign trunc_ln174_fu_235_p1 = select_ln157_fu_209_p3[0:0];

assign xor_ln156_fu_185_p2 = (icmp_ln157_fu_179_p2 ^ 1'd1);

endmodule //fft_top1_fft_top1_Pipeline_VITIS_LOOP_156_2_VITIS_LOOP_157_3_VITIS_LOOP_158_4