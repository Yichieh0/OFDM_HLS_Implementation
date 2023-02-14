// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fft_top0_convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_s (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        fftOutData_local_dout,
        fftOutData_local_empty_n,
        fftOutData_local_read,
        p_outDataArray_0_0_0_0_0_din,
        p_outDataArray_0_0_0_0_0_full_n,
        p_outDataArray_0_0_0_0_0_write,
        p_outDataArray_0_1_0_0_0_din,
        p_outDataArray_0_1_0_0_0_full_n,
        p_outDataArray_0_1_0_0_0_write,
        p_outDataArray_0_0_0_0_01_din,
        p_outDataArray_0_0_0_0_01_full_n,
        p_outDataArray_0_0_0_0_01_write,
        p_outDataArray_0_1_0_0_02_din,
        p_outDataArray_0_1_0_0_02_full_n,
        p_outDataArray_0_1_0_0_02_write,
        start_out,
        start_write
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [127:0] fftOutData_local_dout;
input   fftOutData_local_empty_n;
output   fftOutData_local_read;
output  [26:0] p_outDataArray_0_0_0_0_0_din;
input   p_outDataArray_0_0_0_0_0_full_n;
output   p_outDataArray_0_0_0_0_0_write;
output  [26:0] p_outDataArray_0_1_0_0_0_din;
input   p_outDataArray_0_1_0_0_0_full_n;
output   p_outDataArray_0_1_0_0_0_write;
output  [26:0] p_outDataArray_0_0_0_0_01_din;
input   p_outDataArray_0_0_0_0_01_full_n;
output   p_outDataArray_0_0_0_0_01_write;
output  [26:0] p_outDataArray_0_1_0_0_02_din;
input   p_outDataArray_0_1_0_0_02_full_n;
output   p_outDataArray_0_1_0_0_02_write;
output   start_out;
output   start_write;

reg ap_idle;
reg fftOutData_local_read;
reg p_outDataArray_0_0_0_0_0_write;
reg p_outDataArray_0_1_0_0_0_write;
reg p_outDataArray_0_0_0_0_01_write;
reg p_outDataArray_0_1_0_0_02_write;
reg start_write;

reg    real_start;
reg    start_once_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    internal_ap_ready;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
wire    io_acc_block_signal_op43;
wire    io_acc_block_signal_op58;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln222_fu_130_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    fftOutData_local_blk_n;
wire    ap_block_pp0_stage0;
reg    p_outDataArray_0_0_0_0_0_blk_n;
reg    p_outDataArray_0_0_0_0_01_blk_n;
reg    p_outDataArray_0_1_0_0_0_blk_n;
reg    p_outDataArray_0_1_0_0_02_blk_n;
reg   [5:0] i_fu_92;
wire    ap_loop_init;
reg    ap_block_pp0_stage0_11001;
reg   [5:0] ap_sig_allocacmp_i_2;
wire   [5:0] i_3_fu_136_p2;
reg    ap_block_pp0_stage0_01001;
wire   [26:0] t_V_fu_147_p1;
wire   [26:0] sub_ln1201_fu_189_p2;
wire   [20:0] trunc_ln1201_1_fu_195_p4;
wire   [0:0] tmp_48_fu_181_p3;
wire   [20:0] sub_ln1201_1_fu_205_p2;
wire   [20:0] tmp_fu_211_p4;
wire   [20:0] select_ln1201_fu_221_p3;
wire   [26:0] t_V_1_fu_151_p4;
wire   [26:0] sub_ln1201_2_fu_246_p2;
wire   [20:0] trunc_ln1201_4_fu_252_p4;
wire   [0:0] tmp_49_fu_238_p3;
wire   [20:0] sub_ln1201_3_fu_262_p2;
wire   [20:0] tmp_s_fu_268_p4;
wire   [20:0] select_ln1201_1_fu_278_p3;
wire   [26:0] t_V_2_fu_161_p4;
wire   [26:0] sub_ln1201_4_fu_303_p2;
wire   [20:0] trunc_ln1201_7_fu_309_p4;
wire   [0:0] tmp_50_fu_295_p3;
wire   [20:0] sub_ln1201_5_fu_319_p2;
wire   [20:0] tmp_1_fu_325_p4;
wire   [20:0] select_ln1201_2_fu_335_p3;
wire   [26:0] t_V_3_fu_171_p4;
wire   [26:0] sub_ln1201_6_fu_360_p2;
wire   [20:0] trunc_ln1201_s_fu_366_p4;
wire   [0:0] tmp_51_fu_352_p3;
wire   [20:0] sub_ln1201_7_fu_376_p2;
wire   [20:0] tmp_2_fu_382_p4;
wire   [20:0] select_ln1201_3_fu_392_p3;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_117;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
end

fft_top0_flow_control_loop_pipe flow_control_loop_pipe_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(real_start),
    .ap_ready(internal_ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int),
    .ap_continue(ap_continue)
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((real_start == 1'b1) & (internal_ap_ready == 1'b0))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_117)) begin
        if ((icmp_ln222_fu_130_p2 == 1'd0)) begin
            i_fu_92 <= i_3_fu_136_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_92 <= 6'd0;
        end
    end
end

always @ (*) begin
    if (((icmp_ln222_fu_130_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_2 = 6'd0;
    end else begin
        ap_sig_allocacmp_i_2 = i_fu_92;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fftOutData_local_blk_n = fftOutData_local_empty_n;
    end else begin
        fftOutData_local_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fftOutData_local_read = 1'b1;
    end else begin
        fftOutData_local_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_outDataArray_0_0_0_0_01_blk_n = p_outDataArray_0_0_0_0_01_full_n;
    end else begin
        p_outDataArray_0_0_0_0_01_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_outDataArray_0_0_0_0_01_write = 1'b1;
    end else begin
        p_outDataArray_0_0_0_0_01_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_outDataArray_0_0_0_0_0_blk_n = p_outDataArray_0_0_0_0_0_full_n;
    end else begin
        p_outDataArray_0_0_0_0_0_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_outDataArray_0_0_0_0_0_write = 1'b1;
    end else begin
        p_outDataArray_0_0_0_0_0_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_outDataArray_0_1_0_0_02_blk_n = p_outDataArray_0_1_0_0_02_full_n;
    end else begin
        p_outDataArray_0_1_0_0_02_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_outDataArray_0_1_0_0_02_write = 1'b1;
    end else begin
        p_outDataArray_0_1_0_0_02_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_outDataArray_0_1_0_0_0_blk_n = p_outDataArray_0_1_0_0_0_full_n;
    end else begin
        p_outDataArray_0_1_0_0_0_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_outDataArray_0_1_0_0_0_write = 1'b1;
    end else begin
        p_outDataArray_0_1_0_0_0_write = 1'b0;
    end
end

always @ (*) begin
    if (((start_full_n == 1'b0) & (start_once_reg == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((real_start == 1'b1) & (start_once_reg == 1'b0))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
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

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((io_acc_block_signal_op58 == 1'b0) | (io_acc_block_signal_op43 == 1'b0) | (fftOutData_local_empty_n == 1'b0))) | ((ap_done_reg == 1'b1) & (ap_start_int == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((io_acc_block_signal_op58 == 1'b0) | (io_acc_block_signal_op43 == 1'b0) | (fftOutData_local_empty_n == 1'b0))) | ((ap_done_reg == 1'b1) & (ap_start_int == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((io_acc_block_signal_op58 == 1'b0) | (io_acc_block_signal_op43 == 1'b0) | (fftOutData_local_empty_n == 1'b0))) | ((ap_done_reg == 1'b1) & (ap_start_int == 1'b1)));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_done_reg == 1'b1);
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((io_acc_block_signal_op58 == 1'b0) | (io_acc_block_signal_op43 == 1'b0) | (fftOutData_local_empty_n == 1'b0));
end

always @ (*) begin
    ap_condition_117 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign ap_ready = internal_ap_ready;

assign i_3_fu_136_p2 = (ap_sig_allocacmp_i_2 + 6'd1);

assign icmp_ln222_fu_130_p2 = ((ap_sig_allocacmp_i_2 == 6'd32) ? 1'b1 : 1'b0);

assign io_acc_block_signal_op43 = (p_outDataArray_0_1_0_0_0_full_n & p_outDataArray_0_0_0_0_0_full_n);

assign io_acc_block_signal_op58 = (p_outDataArray_0_1_0_0_02_full_n & p_outDataArray_0_0_0_0_01_full_n);

assign p_outDataArray_0_0_0_0_01_din = {{select_ln1201_2_fu_335_p3}, {6'd0}};

assign p_outDataArray_0_0_0_0_0_din = {{select_ln1201_fu_221_p3}, {6'd0}};

assign p_outDataArray_0_1_0_0_02_din = {{select_ln1201_3_fu_392_p3}, {6'd0}};

assign p_outDataArray_0_1_0_0_0_din = {{select_ln1201_1_fu_278_p3}, {6'd0}};

assign select_ln1201_1_fu_278_p3 = ((tmp_49_fu_238_p3[0:0] == 1'b1) ? sub_ln1201_3_fu_262_p2 : tmp_s_fu_268_p4);

assign select_ln1201_2_fu_335_p3 = ((tmp_50_fu_295_p3[0:0] == 1'b1) ? sub_ln1201_5_fu_319_p2 : tmp_1_fu_325_p4);

assign select_ln1201_3_fu_392_p3 = ((tmp_51_fu_352_p3[0:0] == 1'b1) ? sub_ln1201_7_fu_376_p2 : tmp_2_fu_382_p4);

assign select_ln1201_fu_221_p3 = ((tmp_48_fu_181_p3[0:0] == 1'b1) ? sub_ln1201_1_fu_205_p2 : tmp_fu_211_p4);

assign start_out = real_start;

assign sub_ln1201_1_fu_205_p2 = (21'd0 - trunc_ln1201_1_fu_195_p4);

assign sub_ln1201_2_fu_246_p2 = (27'd0 - t_V_1_fu_151_p4);

assign sub_ln1201_3_fu_262_p2 = (21'd0 - trunc_ln1201_4_fu_252_p4);

assign sub_ln1201_4_fu_303_p2 = (27'd0 - t_V_2_fu_161_p4);

assign sub_ln1201_5_fu_319_p2 = (21'd0 - trunc_ln1201_7_fu_309_p4);

assign sub_ln1201_6_fu_360_p2 = (27'd0 - t_V_3_fu_171_p4);

assign sub_ln1201_7_fu_376_p2 = (21'd0 - trunc_ln1201_s_fu_366_p4);

assign sub_ln1201_fu_189_p2 = (27'd0 - t_V_fu_147_p1);

assign t_V_1_fu_151_p4 = {{fftOutData_local_dout[58:32]}};

assign t_V_2_fu_161_p4 = {{fftOutData_local_dout[90:64]}};

assign t_V_3_fu_171_p4 = {{fftOutData_local_dout[122:96]}};

assign t_V_fu_147_p1 = fftOutData_local_dout[26:0];

assign tmp_1_fu_325_p4 = {{fftOutData_local_dout[90:70]}};

assign tmp_2_fu_382_p4 = {{fftOutData_local_dout[122:102]}};

assign tmp_48_fu_181_p3 = fftOutData_local_dout[32'd26];

assign tmp_49_fu_238_p3 = fftOutData_local_dout[32'd58];

assign tmp_50_fu_295_p3 = fftOutData_local_dout[32'd90];

assign tmp_51_fu_352_p3 = fftOutData_local_dout[32'd122];

assign tmp_fu_211_p4 = {{fftOutData_local_dout[26:6]}};

assign tmp_s_fu_268_p4 = {{fftOutData_local_dout[58:38]}};

assign trunc_ln1201_1_fu_195_p4 = {{sub_ln1201_fu_189_p2[26:6]}};

assign trunc_ln1201_4_fu_252_p4 = {{sub_ln1201_2_fu_246_p2[26:6]}};

assign trunc_ln1201_7_fu_309_p4 = {{sub_ln1201_4_fu_303_p2[26:6]}};

assign trunc_ln1201_s_fu_366_p4 = {{sub_ln1201_6_fu_360_p2[26:6]}};

endmodule //fft_top0_convertSuperStreamToArrayNScale_1_1_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_8_5_3_0_s
