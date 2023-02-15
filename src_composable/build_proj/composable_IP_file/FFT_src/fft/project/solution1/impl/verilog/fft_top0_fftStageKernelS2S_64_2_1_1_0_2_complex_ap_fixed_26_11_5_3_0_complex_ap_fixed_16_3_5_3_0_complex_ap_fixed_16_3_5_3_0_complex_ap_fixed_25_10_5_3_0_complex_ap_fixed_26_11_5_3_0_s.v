// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fft_top0_fftStageKernelS2S_64_2_1_1_0_2_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        fftOutData_local2_dout,
        fftOutData_local2_empty_n,
        fftOutData_local2_read,
        fftOutData_local_din,
        fftOutData_local_full_n,
        fftOutData_local_write
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state7 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [127:0] fftOutData_local2_dout;
input   fftOutData_local2_empty_n;
output   fftOutData_local2_read;
output  [127:0] fftOutData_local_din;
input   fftOutData_local_full_n;
output   fftOutData_local_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg fftOutData_local2_read;
reg fftOutData_local_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    fftOutData_local2_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage0;
wire   [0:0] tmp_nbreadreq_fu_112_p3;
reg    fftOutData_local_blk_n;
reg    ap_enable_reg_pp0_iter3;
reg   [0:0] tmp_reg_559;
reg   [0:0] tmp_reg_559_pp0_iter2_reg;
reg   [31:0] k1_reg_145;
wire   [3:0] f_fu_166_p2;
reg   [3:0] f_reg_554;
wire    ap_CS_fsm_state2;
reg    ap_block_state3_pp0_stage0_iter0;
wire    ap_block_state4_pp0_stage0_iter1;
wire    ap_block_state5_pp0_stage0_iter2;
reg    ap_block_state6_pp0_stage0_iter3;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] tmp_reg_559_pp0_iter1_reg;
wire   [24:0] complexExpMulOut_M_real_V_0_fu_213_p2;
reg   [24:0] complexExpMulOut_M_real_V_0_reg_563;
reg   [24:0] complexExpMulOut_M_real_V_0_reg_563_pp0_iter1_reg;
reg   [24:0] complexExpMulOut_M_real_V_0_reg_563_pp0_iter2_reg;
wire   [24:0] bflyOutData_M_imag_V_0_fu_219_p2;
reg   [24:0] bflyOutData_M_imag_V_0_reg_568;
reg   [24:0] bflyOutData_M_imag_V_0_reg_568_pp0_iter1_reg;
reg   [24:0] bflyOutData_M_imag_V_0_reg_568_pp0_iter2_reg;
wire  signed [38:0] sext_ln1171_fu_403_p1;
wire  signed [38:0] sext_ln1171_13_fu_407_p1;
wire  signed [38:0] sext_ln1171_14_fu_411_p1;
wire  signed [38:0] sext_ln1171_15_fu_415_p1;
wire   [31:0] k_fu_419_p2;
reg   [31:0] k_reg_597;
wire   [0:0] icmp_ln151_fu_435_p2;
reg   [0:0] icmp_ln151_reg_602;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_flush_enable;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg   [3:0] f_032_reg_133;
reg    ap_block_state1;
wire    ap_CS_fsm_state7;
wire   [0:0] icmp_ln149_fu_520_p2;
reg   [31:0] ap_phi_mux_k1_phi_fu_149_p4;
reg   [31:0] ap_phi_mux_k_1_phi_fu_159_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_k_1_reg_156;
wire   [31:0] k_7_fu_172_p2;
reg    ap_block_pp0_stage0_01001;
wire   [24:0] X_of_ns_M_real_V_1_fu_193_p4;
wire   [24:0] X_of_ns_M_real_V_0_fu_179_p1;
wire   [24:0] X_of_ns_M_imag_V_1_fu_203_p4;
wire   [24:0] X_of_ns_M_imag_V_0_fu_183_p4;
wire   [37:0] shl_ln_fu_225_p3;
wire   [37:0] r_V_fu_233_p2;
wire   [37:0] shl_ln1171_5_fu_249_p3;
wire   [37:0] r_V_23_fu_257_p2;
wire   [24:0] real1_V_20_fu_239_p4;
wire   [24:0] imag2_V_25_fu_263_p4;
wire   [1:0] trunc_ln177_fu_285_p1;
wire   [5:0] index_V_fu_289_p3;
wire   [0:0] icmp_ln1049_fu_311_p2;
wire   [0:0] icmp_ln1049_13_fu_317_p2;
wire   [0:0] output_saturation_control_imag_fu_323_p2;
wire   [0:0] output_negate_control_imag_fu_303_p3;
wire   [14:0] select_ln172_fu_329_p3;
wire   [14:0] select_ln172_1_fu_337_p3;
wire   [5:0] index_cos_V_fu_297_p2;
wire   [0:0] icmp_ln1049_14_fu_361_p2;
wire   [0:0] icmp_ln1049_15_fu_367_p2;
wire   [0:0] output_saturation_control_real_V_fu_373_p2;
wire   [0:0] output_negate_control_real_V_fu_353_p3;
wire   [14:0] select_ln188_fu_387_p3;
wire   [14:0] select_ln755_fu_379_p3;
wire   [24:0] r_V_24_fu_273_p2;
wire   [14:0] p_Val2_s_fu_395_p3;
wire   [24:0] r_V_25_fu_279_p2;
wire   [14:0] temp_out_sin_V_fu_345_p3;
wire   [30:0] tmp_46_fu_425_p4;
wire  signed [38:0] grp_fu_526_p2;
wire  signed [38:0] grp_fu_533_p2;
wire   [25:0] real1_V_fu_444_p4;
wire   [25:0] real2_V_fu_453_p4;
wire  signed [38:0] grp_fu_540_p2;
wire  signed [38:0] grp_fu_547_p2;
wire   [25:0] imag2_V_fu_477_p4;
wire   [25:0] imag1_V_fu_468_p4;
wire  signed [25:0] sext_ln174_fu_492_p1;
wire   [25:0] imag_out_V_fu_486_p2;
wire   [25:0] real_out_V_fu_462_p2;
wire   [31:0] zext_ln174_fu_495_p1;
wire  signed [25:0] sext_ln712_fu_441_p1;
wire   [121:0] tmp_6_fu_499_p7;
wire  signed [24:0] grp_fu_526_p0;
wire  signed [14:0] grp_fu_526_p1;
wire  signed [24:0] grp_fu_533_p0;
wire  signed [14:0] grp_fu_533_p1;
wire  signed [24:0] grp_fu_540_p0;
wire  signed [14:0] grp_fu_540_p1;
wire  signed [24:0] grp_fu_547_p0;
wire  signed [14:0] grp_fu_547_p1;
reg    grp_fu_526_ce;
reg    grp_fu_533_ce;
reg    grp_fu_540_ce;
reg    grp_fu_547_ce;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state7_blk;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
end

fft_top0_mul_mul_25s_15s_39_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 25 ),
    .din1_WIDTH( 15 ),
    .dout_WIDTH( 39 ))
mul_mul_25s_15s_39_4_1_U100(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_526_p0),
    .din1(grp_fu_526_p1),
    .ce(grp_fu_526_ce),
    .dout(grp_fu_526_p2)
);

fft_top0_mul_mul_25s_15s_39_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 25 ),
    .din1_WIDTH( 15 ),
    .dout_WIDTH( 39 ))
mul_mul_25s_15s_39_4_1_U101(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_533_p0),
    .din1(grp_fu_533_p1),
    .ce(grp_fu_533_ce),
    .dout(grp_fu_533_p2)
);

fft_top0_mul_mul_25s_15s_39_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 25 ),
    .din1_WIDTH( 15 ),
    .dout_WIDTH( 39 ))
mul_mul_25s_15s_39_4_1_U102(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_540_p0),
    .din1(grp_fu_540_p1),
    .ce(grp_fu_540_ce),
    .dout(grp_fu_540_p2)
);

fft_top0_mul_mul_25s_15s_39_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 25 ),
    .din1_WIDTH( 15 ),
    .dout_WIDTH( 39 ))
mul_mul_25s_15s_39_4_1_U103(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_547_p0),
    .din1(grp_fu_547_p1),
    .ce(grp_fu_547_ce),
    .dout(grp_fu_547_p2)
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
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln149_fu_520_p2 == 1'd1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_pp0_flush_enable)) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state2)) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end else if ((1'b1 == ap_CS_fsm_state2)) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln149_fu_520_p2 == 1'd0))) begin
        f_032_reg_133 <= f_reg_554;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        f_032_reg_133 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln151_reg_602 == 1'd1))) begin
        k1_reg_145 <= k_reg_597;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        k1_reg_145 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_nbreadreq_fu_112_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bflyOutData_M_imag_V_0_reg_568 <= bflyOutData_M_imag_V_0_fu_219_p2;
        complexExpMulOut_M_real_V_0_reg_563 <= complexExpMulOut_M_real_V_0_fu_213_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bflyOutData_M_imag_V_0_reg_568_pp0_iter1_reg <= bflyOutData_M_imag_V_0_reg_568;
        complexExpMulOut_M_real_V_0_reg_563_pp0_iter1_reg <= complexExpMulOut_M_real_V_0_reg_563;
        icmp_ln151_reg_602 <= icmp_ln151_fu_435_p2;
        tmp_reg_559 <= tmp_nbreadreq_fu_112_p3;
        tmp_reg_559_pp0_iter1_reg <= tmp_reg_559;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        bflyOutData_M_imag_V_0_reg_568_pp0_iter2_reg <= bflyOutData_M_imag_V_0_reg_568_pp0_iter1_reg;
        complexExpMulOut_M_real_V_0_reg_563_pp0_iter2_reg <= complexExpMulOut_M_real_V_0_reg_563_pp0_iter1_reg;
        tmp_reg_559_pp0_iter2_reg <= tmp_reg_559_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        f_reg_554 <= f_fu_166_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_reg_597 <= k_fu_419_p2;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) | (ap_done_reg == 1'b1))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state7_blk = 1'b0;

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln151_fu_435_p2 == 1'd0))) begin
        ap_condition_pp0_flush_enable = 1'b1;
    end else begin
        ap_condition_pp0_flush_enable = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln149_fu_520_p2 == 1'd1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln151_reg_602 == 1'd1))) begin
        ap_phi_mux_k1_phi_fu_149_p4 = k_reg_597;
    end else begin
        ap_phi_mux_k1_phi_fu_149_p4 = k1_reg_145;
    end
end

always @ (*) begin
    if ((tmp_nbreadreq_fu_112_p3 == 1'd0)) begin
        ap_phi_mux_k_1_phi_fu_159_p4 = k_7_fu_172_p2;
    end else if ((tmp_nbreadreq_fu_112_p3 == 1'd1)) begin
        ap_phi_mux_k_1_phi_fu_159_p4 = ap_phi_mux_k1_phi_fu_149_p4;
    end else begin
        ap_phi_mux_k_1_phi_fu_159_p4 = ap_phi_reg_pp0_iter0_k_1_reg_156;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln149_fu_520_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_nbreadreq_fu_112_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fftOutData_local2_blk_n = fftOutData_local2_empty_n;
    end else begin
        fftOutData_local2_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_nbreadreq_fu_112_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fftOutData_local2_read = 1'b1;
    end else begin
        fftOutData_local2_read = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_reg_559_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        fftOutData_local_blk_n = fftOutData_local_full_n;
    end else begin
        fftOutData_local_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_reg_559_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        fftOutData_local_write = 1'b1;
    end else begin
        fftOutData_local_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_526_ce = 1'b1;
    end else begin
        grp_fu_526_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_533_ce = 1'b1;
    end else begin
        grp_fu_533_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_540_ce = 1'b1;
    end else begin
        grp_fu_540_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_547_ce = 1'b1;
    end else begin
        grp_fu_547_ce = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln149_fu_520_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign X_of_ns_M_imag_V_0_fu_183_p4 = {{fftOutData_local2_dout[56:32]}};

assign X_of_ns_M_imag_V_1_fu_203_p4 = {{fftOutData_local2_dout[120:96]}};

assign X_of_ns_M_real_V_0_fu_179_p1 = fftOutData_local2_dout[24:0];

assign X_of_ns_M_real_V_1_fu_193_p4 = {{fftOutData_local2_dout[88:64]}};

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((tmp_reg_559_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (fftOutData_local_full_n == 1'b0)) | ((tmp_nbreadreq_fu_112_p3 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (fftOutData_local2_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((tmp_reg_559_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (fftOutData_local_full_n == 1'b0)) | ((tmp_nbreadreq_fu_112_p3 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (fftOutData_local2_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((tmp_reg_559_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (fftOutData_local_full_n == 1'b0)) | ((tmp_nbreadreq_fu_112_p3 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (fftOutData_local2_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter0 = ((tmp_nbreadreq_fu_112_p3 == 1'd1) & (fftOutData_local2_empty_n == 1'b0));
end

assign ap_block_state4_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state6_pp0_stage0_iter3 = ((tmp_reg_559_pp0_iter2_reg == 1'd1) & (fftOutData_local_full_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_phi_reg_pp0_iter0_k_1_reg_156 = 'bx;

assign bflyOutData_M_imag_V_0_fu_219_p2 = (X_of_ns_M_imag_V_1_fu_203_p4 + X_of_ns_M_imag_V_0_fu_183_p4);

assign complexExpMulOut_M_real_V_0_fu_213_p2 = (X_of_ns_M_real_V_1_fu_193_p4 + X_of_ns_M_real_V_0_fu_179_p1);

assign f_fu_166_p2 = (f_032_reg_133 + 4'd1);

assign fftOutData_local_din = tmp_6_fu_499_p7;

assign grp_fu_526_p0 = sext_ln1171_fu_403_p1;

assign grp_fu_526_p1 = sext_ln1171_13_fu_407_p1;

assign grp_fu_533_p0 = sext_ln1171_14_fu_411_p1;

assign grp_fu_533_p1 = sext_ln1171_15_fu_415_p1;

assign grp_fu_540_p0 = sext_ln1171_fu_403_p1;

assign grp_fu_540_p1 = sext_ln1171_15_fu_415_p1;

assign grp_fu_547_p0 = sext_ln1171_14_fu_411_p1;

assign grp_fu_547_p1 = sext_ln1171_13_fu_407_p1;

assign icmp_ln1049_13_fu_317_p2 = ((trunc_ln177_fu_285_p1 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln1049_14_fu_361_p2 = ((index_cos_V_fu_297_p2 == 6'd16) ? 1'b1 : 1'b0);

assign icmp_ln1049_15_fu_367_p2 = ((trunc_ln177_fu_285_p1 == 2'd0) ? 1'b1 : 1'b0);

assign icmp_ln1049_fu_311_p2 = ((trunc_ln177_fu_285_p1 == 2'd1) ? 1'b1 : 1'b0);

assign icmp_ln149_fu_520_p2 = ((f_032_reg_133 == 4'd15) ? 1'b1 : 1'b0);

assign icmp_ln151_fu_435_p2 = (($signed(tmp_46_fu_425_p4) < $signed(31'd1)) ? 1'b1 : 1'b0);

assign imag1_V_fu_468_p4 = {{grp_fu_540_p2[38:13]}};

assign imag2_V_25_fu_263_p4 = {{r_V_23_fu_257_p2[37:13]}};

assign imag2_V_fu_477_p4 = {{grp_fu_547_p2[38:13]}};

assign imag_out_V_fu_486_p2 = (imag2_V_fu_477_p4 + imag1_V_fu_468_p4);

assign index_V_fu_289_p3 = {{trunc_ln177_fu_285_p1}, {4'd0}};

assign index_cos_V_fu_297_p2 = ($signed(index_V_fu_289_p3) + $signed(6'd48));

assign k_7_fu_172_p2 = ($signed(ap_phi_mux_k1_phi_fu_149_p4) + $signed(32'd4294967295));

assign k_fu_419_p2 = (ap_phi_mux_k_1_phi_fu_159_p4 + 32'd1);

assign output_negate_control_imag_fu_303_p3 = ap_phi_mux_k1_phi_fu_149_p4[32'd1];

assign output_negate_control_real_V_fu_353_p3 = index_cos_V_fu_297_p2[32'd5];

assign output_saturation_control_imag_fu_323_p2 = (icmp_ln1049_fu_311_p2 | icmp_ln1049_13_fu_317_p2);

assign output_saturation_control_real_V_fu_373_p2 = (icmp_ln1049_15_fu_367_p2 | icmp_ln1049_14_fu_361_p2);

assign p_Val2_s_fu_395_p3 = ((output_negate_control_real_V_fu_353_p3[0:0] == 1'b1) ? select_ln188_fu_387_p3 : select_ln755_fu_379_p3);

assign r_V_23_fu_257_p2 = (38'd0 - shl_ln1171_5_fu_249_p3);

assign r_V_24_fu_273_p2 = (real1_V_20_fu_239_p4 + X_of_ns_M_real_V_0_fu_179_p1);

assign r_V_25_fu_279_p2 = (imag2_V_25_fu_263_p4 + X_of_ns_M_imag_V_0_fu_183_p4);

assign r_V_fu_233_p2 = (38'd0 - shl_ln_fu_225_p3);

assign real1_V_20_fu_239_p4 = {{r_V_fu_233_p2[37:13]}};

assign real1_V_fu_444_p4 = {{grp_fu_526_p2[38:13]}};

assign real2_V_fu_453_p4 = {{grp_fu_533_p2[38:13]}};

assign real_out_V_fu_462_p2 = (real1_V_fu_444_p4 - real2_V_fu_453_p4);

assign select_ln172_1_fu_337_p3 = ((output_saturation_control_imag_fu_323_p2[0:0] == 1'b1) ? 15'd8192 : 15'd0);

assign select_ln172_fu_329_p3 = ((output_saturation_control_imag_fu_323_p2[0:0] == 1'b1) ? 15'd24576 : 15'd0);

assign select_ln188_fu_387_p3 = ((output_saturation_control_real_V_fu_373_p2[0:0] == 1'b1) ? 15'd8192 : 15'd0);

assign select_ln755_fu_379_p3 = ((output_saturation_control_real_V_fu_373_p2[0:0] == 1'b1) ? 15'd24576 : 15'd0);

assign sext_ln1171_13_fu_407_p1 = $signed(p_Val2_s_fu_395_p3);

assign sext_ln1171_14_fu_411_p1 = $signed(r_V_25_fu_279_p2);

assign sext_ln1171_15_fu_415_p1 = $signed(temp_out_sin_V_fu_345_p3);

assign sext_ln1171_fu_403_p1 = $signed(r_V_24_fu_273_p2);

assign sext_ln174_fu_492_p1 = $signed(bflyOutData_M_imag_V_0_reg_568_pp0_iter2_reg);

assign sext_ln712_fu_441_p1 = $signed(complexExpMulOut_M_real_V_0_reg_563_pp0_iter2_reg);

assign shl_ln1171_5_fu_249_p3 = {{X_of_ns_M_imag_V_1_fu_203_p4}, {13'd0}};

assign shl_ln_fu_225_p3 = {{X_of_ns_M_real_V_1_fu_193_p4}, {13'd0}};

assign temp_out_sin_V_fu_345_p3 = ((output_negate_control_imag_fu_303_p3[0:0] == 1'b1) ? select_ln172_fu_329_p3 : select_ln172_1_fu_337_p3);

assign tmp_46_fu_425_p4 = {{k_fu_419_p2[31:1]}};

assign tmp_6_fu_499_p7 = {{{{{{imag_out_V_fu_486_p2}, {6'd0}}, {real_out_V_fu_462_p2}}, {zext_ln174_fu_495_p1}}, {6'd0}}, {sext_ln712_fu_441_p1}};

assign tmp_nbreadreq_fu_112_p3 = fftOutData_local2_empty_n;

assign trunc_ln177_fu_285_p1 = ap_phi_mux_k1_phi_fu_149_p4[1:0];

assign zext_ln174_fu_495_p1 = $unsigned(sext_ln174_fu_492_p1);

endmodule //fft_top0_fftStageKernelS2S_64_2_1_1_0_2_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_s