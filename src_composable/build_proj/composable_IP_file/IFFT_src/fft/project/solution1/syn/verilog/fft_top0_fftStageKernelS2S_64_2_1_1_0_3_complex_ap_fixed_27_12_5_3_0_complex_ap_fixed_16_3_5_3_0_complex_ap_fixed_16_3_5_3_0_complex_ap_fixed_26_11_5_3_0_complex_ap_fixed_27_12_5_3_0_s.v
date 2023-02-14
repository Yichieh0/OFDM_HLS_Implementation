// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fft_top0_fftStageKernelS2S_64_2_1_1_0_3_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_27_12_5_3_0_s (
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
parameter    ap_ST_fsm_state8 = 4'd8;

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
wire   [3:0] twiddleObj_twiddleTable_M_imag_V_3_address0;
reg    twiddleObj_twiddleTable_M_imag_V_3_ce0;
wire   [13:0] twiddleObj_twiddleTable_M_imag_V_3_q0;
wire   [3:0] twiddleObj_twiddleTable_M_imag_V_3_address1;
reg    twiddleObj_twiddleTable_M_imag_V_3_ce1;
wire   [13:0] twiddleObj_twiddleTable_M_imag_V_3_q1;
reg    fftOutData_local2_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage0;
wire   [0:0] tmp_nbreadreq_fu_120_p3;
reg    fftOutData_local_blk_n;
reg    ap_enable_reg_pp0_iter4;
reg   [0:0] tmp_reg_660;
reg   [0:0] tmp_reg_660_pp0_iter3_reg;
reg   [31:0] k9_reg_178;
wire   [2:0] f_fu_199_p2;
reg   [2:0] f_reg_655;
wire    ap_CS_fsm_state2;
reg    ap_block_state3_pp0_stage0_iter0;
wire    ap_block_state4_pp0_stage0_iter1;
wire    ap_block_state5_pp0_stage0_iter2;
wire    ap_block_state6_pp0_stage0_iter3;
reg    ap_block_state7_pp0_stage0_iter4;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] tmp_reg_660_pp0_iter1_reg;
reg   [0:0] tmp_reg_660_pp0_iter2_reg;
wire   [25:0] X_of_ns_M_real_V_0_fu_212_p1;
reg   [25:0] X_of_ns_M_real_V_0_reg_664;
reg   [25:0] X_of_ns_M_imag_V_0_reg_670;
reg   [25:0] X_of_ns_M_real_V_1_reg_676;
reg   [25:0] X_of_ns_M_imag_V_1_reg_682;
wire   [2:0] trunc_ln177_fu_246_p1;
reg   [2:0] trunc_ln177_reg_688;
reg   [0:0] output_negate_control_imag_reg_695;
reg   [0:0] output_negate_control_real_V_reg_705;
wire   [0:0] icmp_ln1049_11_fu_327_p2;
reg   [0:0] icmp_ln1049_11_reg_710;
wire   [31:0] k_fu_356_p2;
reg   [31:0] k_reg_720;
wire   [0:0] icmp_ln151_fu_372_p2;
reg   [0:0] icmp_ln151_reg_725;
wire   [25:0] complexExpMulOut_M_real_V_0_fu_378_p2;
reg   [25:0] complexExpMulOut_M_real_V_0_reg_729;
reg   [25:0] complexExpMulOut_M_real_V_0_reg_729_pp0_iter2_reg;
reg   [25:0] complexExpMulOut_M_real_V_0_reg_729_pp0_iter3_reg;
wire   [25:0] bflyOutData_M_imag_V_0_fu_382_p2;
reg   [25:0] bflyOutData_M_imag_V_0_reg_734;
reg   [25:0] bflyOutData_M_imag_V_0_reg_734_pp0_iter2_reg;
reg   [25:0] bflyOutData_M_imag_V_0_reg_734_pp0_iter3_reg;
wire  signed [39:0] sext_ln1171_fu_526_p1;
wire  signed [39:0] sext_ln1171_10_fu_530_p1;
wire  signed [39:0] sext_ln1171_11_fu_534_p1;
wire  signed [39:0] sext_ln1171_12_fu_538_p1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_flush_enable;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg   [2:0] f10_reg_166;
reg    ap_block_state1;
wire    ap_CS_fsm_state8;
wire   [0:0] icmp_ln149_fu_621_p2;
reg   [31:0] ap_phi_mux_k9_phi_fu_182_p4;
reg   [31:0] ap_phi_mux_k_1_phi_fu_192_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_k_1_reg_189;
wire   [31:0] k_6_fu_205_p2;
wire   [63:0] zext_ln573_fu_306_p1;
wire   [63:0] zext_ln573_4_fu_351_p1;
reg    ap_block_pp0_stage0_01001;
wire   [5:0] index_V_fu_250_p3;
wire   [0:0] trunc_ln674_fu_280_p1;
wire   [3:0] lut_index_imag_V_fu_284_p3;
wire   [0:0] index_invert_control_imag_fu_264_p3;
wire   [3:0] lut_index_imag_V_7_fu_292_p2;
wire   [3:0] lut_index_imag_V_8_fu_298_p3;
wire   [5:0] index_cos_V_fu_258_p2;
wire   [3:0] lut_index_real_V_fu_333_p1;
wire   [0:0] index_invert_control_real_V_fu_311_p3;
wire   [3:0] lut_index_real_V_7_fu_337_p2;
wire   [3:0] lut_index_real_V_8_fu_343_p3;
wire   [29:0] tmp_43_fu_362_p4;
wire   [38:0] shl_ln_fu_386_p3;
wire   [38:0] r_V_fu_393_p2;
wire   [38:0] shl_ln1171_4_fu_409_p3;
wire   [38:0] r_V_18_fu_416_p2;
wire   [25:0] real1_V_16_fu_399_p4;
wire   [25:0] imag2_V_20_fu_422_p4;
wire   [0:0] icmp_ln1049_fu_442_p2;
wire   [0:0] icmp_ln1049_10_fu_447_p2;
wire   [0:0] output_saturation_control_imag_fu_452_p2;
wire  signed [13:0] temp_out_sin_V_fu_458_p3;
wire   [13:0] p_Val2_16_fu_470_p2;
wire  signed [14:0] sext_ln166_fu_466_p1;
wire   [14:0] zext_ln755_fu_476_p1;
wire   [0:0] icmp_ln1049_12_fu_487_p2;
wire   [0:0] output_saturation_control_real_V_fu_492_p2;
wire  signed [13:0] temp_out_cos_V_fu_497_p3;
wire   [13:0] p_Val2_18_fu_509_p2;
wire   [14:0] zext_ln755_4_fu_515_p1;
wire  signed [14:0] sext_ln183_fu_505_p1;
wire   [25:0] r_V_19_fu_432_p2;
wire   [14:0] p_Val2_s_fu_519_p3;
wire   [25:0] r_V_20_fu_437_p2;
wire   [14:0] temp_out_sin_V_8_fu_480_p3;
wire  signed [39:0] grp_fu_627_p2;
wire  signed [39:0] grp_fu_634_p2;
wire   [26:0] real1_V_fu_545_p4;
wire   [26:0] real2_V_fu_554_p4;
wire  signed [39:0] grp_fu_641_p2;
wire  signed [39:0] grp_fu_648_p2;
wire   [26:0] imag2_V_fu_578_p4;
wire   [26:0] imag1_V_fu_569_p4;
wire  signed [26:0] sext_ln174_fu_593_p1;
wire   [26:0] imag_out_V_fu_587_p2;
wire   [26:0] real_out_V_fu_563_p2;
wire   [31:0] zext_ln174_fu_596_p1;
wire  signed [26:0] sext_ln712_fu_542_p1;
wire   [122:0] tmp_5_fu_600_p7;
wire  signed [25:0] grp_fu_627_p0;
wire  signed [14:0] grp_fu_627_p1;
wire  signed [25:0] grp_fu_634_p0;
wire  signed [14:0] grp_fu_634_p1;
wire  signed [25:0] grp_fu_641_p0;
wire  signed [14:0] grp_fu_641_p1;
wire  signed [25:0] grp_fu_648_p0;
wire  signed [14:0] grp_fu_648_p1;
reg    grp_fu_627_ce;
reg    grp_fu_634_ce;
reg    grp_fu_641_ce;
reg    grp_fu_648_ce;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state8_blk;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
end

fft_top0_fftStageKernelS2S_64_2_1_1_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_1bkb #(
    .DataWidth( 14 ),
    .AddressRange( 16 ),
    .AddressWidth( 4 ))
twiddleObj_twiddleTable_M_imag_V_3_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(twiddleObj_twiddleTable_M_imag_V_3_address0),
    .ce0(twiddleObj_twiddleTable_M_imag_V_3_ce0),
    .q0(twiddleObj_twiddleTable_M_imag_V_3_q0),
    .address1(twiddleObj_twiddleTable_M_imag_V_3_address1),
    .ce1(twiddleObj_twiddleTable_M_imag_V_3_ce1),
    .q1(twiddleObj_twiddleTable_M_imag_V_3_q1)
);

fft_top0_mul_mul_26s_15s_40_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 26 ),
    .din1_WIDTH( 15 ),
    .dout_WIDTH( 40 ))
mul_mul_26s_15s_40_4_1_U90(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_627_p0),
    .din1(grp_fu_627_p1),
    .ce(grp_fu_627_ce),
    .dout(grp_fu_627_p2)
);

fft_top0_mul_mul_26s_15s_40_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 26 ),
    .din1_WIDTH( 15 ),
    .dout_WIDTH( 40 ))
mul_mul_26s_15s_40_4_1_U91(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_634_p0),
    .din1(grp_fu_634_p1),
    .ce(grp_fu_634_ce),
    .dout(grp_fu_634_p2)
);

fft_top0_mul_mul_26s_15s_40_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 26 ),
    .din1_WIDTH( 15 ),
    .dout_WIDTH( 40 ))
mul_mul_26s_15s_40_4_1_U92(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_641_p0),
    .din1(grp_fu_641_p1),
    .ce(grp_fu_641_ce),
    .dout(grp_fu_641_p2)
);

fft_top0_mul_mul_26s_15s_40_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 26 ),
    .din1_WIDTH( 15 ),
    .dout_WIDTH( 40 ))
mul_mul_26s_15s_40_4_1_U93(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_648_p0),
    .din1(grp_fu_648_p1),
    .ce(grp_fu_648_ce),
    .dout(grp_fu_648_p2)
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
        end else if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln149_fu_621_p2 == 1'd1))) begin
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
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end else if ((1'b1 == ap_CS_fsm_state2)) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln149_fu_621_p2 == 1'd0))) begin
        f10_reg_166 <= f_reg_655;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        f10_reg_166 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln151_reg_725 == 1'd1))) begin
        k9_reg_178 <= k_reg_720;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        k9_reg_178 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_nbreadreq_fu_120_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        X_of_ns_M_imag_V_0_reg_670 <= {{fftOutData_local2_dout[57:32]}};
        X_of_ns_M_imag_V_1_reg_682 <= {{fftOutData_local2_dout[121:96]}};
        X_of_ns_M_real_V_0_reg_664 <= X_of_ns_M_real_V_0_fu_212_p1;
        X_of_ns_M_real_V_1_reg_676 <= {{fftOutData_local2_dout[89:64]}};
        icmp_ln1049_11_reg_710 <= icmp_ln1049_11_fu_327_p2;
        output_negate_control_imag_reg_695 <= ap_phi_mux_k9_phi_fu_182_p4[32'd2];
        output_negate_control_real_V_reg_705 <= index_cos_V_fu_258_p2[32'd5];
        trunc_ln177_reg_688 <= trunc_ln177_fu_246_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_reg_660 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bflyOutData_M_imag_V_0_reg_734 <= bflyOutData_M_imag_V_0_fu_382_p2;
        complexExpMulOut_M_real_V_0_reg_729 <= complexExpMulOut_M_real_V_0_fu_378_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        bflyOutData_M_imag_V_0_reg_734_pp0_iter2_reg <= bflyOutData_M_imag_V_0_reg_734;
        bflyOutData_M_imag_V_0_reg_734_pp0_iter3_reg <= bflyOutData_M_imag_V_0_reg_734_pp0_iter2_reg;
        complexExpMulOut_M_real_V_0_reg_729_pp0_iter2_reg <= complexExpMulOut_M_real_V_0_reg_729;
        complexExpMulOut_M_real_V_0_reg_729_pp0_iter3_reg <= complexExpMulOut_M_real_V_0_reg_729_pp0_iter2_reg;
        tmp_reg_660_pp0_iter2_reg <= tmp_reg_660_pp0_iter1_reg;
        tmp_reg_660_pp0_iter3_reg <= tmp_reg_660_pp0_iter2_reg;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        f_reg_655 <= f_fu_199_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln151_reg_725 <= icmp_ln151_fu_372_p2;
        tmp_reg_660 <= tmp_nbreadreq_fu_120_p3;
        tmp_reg_660_pp0_iter1_reg <= tmp_reg_660;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_reg_720 <= k_fu_356_p2;
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

assign ap_ST_fsm_state8_blk = 1'b0;

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln151_fu_372_p2 == 1'd0))) begin
        ap_condition_pp0_flush_enable = 1'b1;
    end else begin
        ap_condition_pp0_flush_enable = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln149_fu_621_p2 == 1'd1))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln151_reg_725 == 1'd1))) begin
        ap_phi_mux_k9_phi_fu_182_p4 = k_reg_720;
    end else begin
        ap_phi_mux_k9_phi_fu_182_p4 = k9_reg_178;
    end
end

always @ (*) begin
    if ((tmp_nbreadreq_fu_120_p3 == 1'd0)) begin
        ap_phi_mux_k_1_phi_fu_192_p4 = k_6_fu_205_p2;
    end else if ((tmp_nbreadreq_fu_120_p3 == 1'd1)) begin
        ap_phi_mux_k_1_phi_fu_192_p4 = ap_phi_mux_k9_phi_fu_182_p4;
    end else begin
        ap_phi_mux_k_1_phi_fu_192_p4 = ap_phi_reg_pp0_iter0_k_1_reg_189;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln149_fu_621_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_nbreadreq_fu_120_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fftOutData_local2_blk_n = fftOutData_local2_empty_n;
    end else begin
        fftOutData_local2_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_nbreadreq_fu_120_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fftOutData_local2_read = 1'b1;
    end else begin
        fftOutData_local2_read = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_reg_660_pp0_iter3_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        fftOutData_local_blk_n = fftOutData_local_full_n;
    end else begin
        fftOutData_local_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_reg_660_pp0_iter3_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        fftOutData_local_write = 1'b1;
    end else begin
        fftOutData_local_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_627_ce = 1'b1;
    end else begin
        grp_fu_627_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_634_ce = 1'b1;
    end else begin
        grp_fu_634_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_641_ce = 1'b1;
    end else begin
        grp_fu_641_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_648_ce = 1'b1;
    end else begin
        grp_fu_648_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        twiddleObj_twiddleTable_M_imag_V_3_ce0 = 1'b1;
    end else begin
        twiddleObj_twiddleTable_M_imag_V_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        twiddleObj_twiddleTable_M_imag_V_3_ce1 = 1'b1;
    end else begin
        twiddleObj_twiddleTable_M_imag_V_3_ce1 = 1'b0;
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
            if (~((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln149_fu_621_p2 == 1'd1))) begin
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

assign X_of_ns_M_real_V_0_fu_212_p1 = fftOutData_local2_dout[25:0];

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((tmp_reg_660_pp0_iter3_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (fftOutData_local_full_n == 1'b0)) | ((tmp_nbreadreq_fu_120_p3 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (fftOutData_local2_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((tmp_reg_660_pp0_iter3_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (fftOutData_local_full_n == 1'b0)) | ((tmp_nbreadreq_fu_120_p3 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (fftOutData_local2_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((tmp_reg_660_pp0_iter3_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (fftOutData_local_full_n == 1'b0)) | ((tmp_nbreadreq_fu_120_p3 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (fftOutData_local2_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter0 = ((tmp_nbreadreq_fu_120_p3 == 1'd1) & (fftOutData_local2_empty_n == 1'b0));
end

assign ap_block_state4_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state7_pp0_stage0_iter4 = ((tmp_reg_660_pp0_iter3_reg == 1'd1) & (fftOutData_local_full_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_phi_reg_pp0_iter0_k_1_reg_189 = 'bx;

assign bflyOutData_M_imag_V_0_fu_382_p2 = (X_of_ns_M_imag_V_1_reg_682 + X_of_ns_M_imag_V_0_reg_670);

assign complexExpMulOut_M_real_V_0_fu_378_p2 = (X_of_ns_M_real_V_1_reg_676 + X_of_ns_M_real_V_0_reg_664);

assign f_fu_199_p2 = (f10_reg_166 + 3'd1);

assign fftOutData_local_din = tmp_5_fu_600_p7;

assign grp_fu_627_p0 = sext_ln1171_fu_526_p1;

assign grp_fu_627_p1 = sext_ln1171_10_fu_530_p1;

assign grp_fu_634_p0 = sext_ln1171_11_fu_534_p1;

assign grp_fu_634_p1 = sext_ln1171_12_fu_538_p1;

assign grp_fu_641_p0 = sext_ln1171_fu_526_p1;

assign grp_fu_641_p1 = sext_ln1171_12_fu_538_p1;

assign grp_fu_648_p0 = sext_ln1171_11_fu_534_p1;

assign grp_fu_648_p1 = sext_ln1171_10_fu_530_p1;

assign icmp_ln1049_10_fu_447_p2 = ((trunc_ln177_reg_688 == 3'd6) ? 1'b1 : 1'b0);

assign icmp_ln1049_11_fu_327_p2 = ((index_cos_V_fu_258_p2 == 6'd16) ? 1'b1 : 1'b0);

assign icmp_ln1049_12_fu_487_p2 = ((trunc_ln177_reg_688 == 3'd0) ? 1'b1 : 1'b0);

assign icmp_ln1049_fu_442_p2 = ((trunc_ln177_reg_688 == 3'd2) ? 1'b1 : 1'b0);

assign icmp_ln149_fu_621_p2 = ((f10_reg_166 == 3'd7) ? 1'b1 : 1'b0);

assign icmp_ln151_fu_372_p2 = (($signed(tmp_43_fu_362_p4) < $signed(30'd1)) ? 1'b1 : 1'b0);

assign imag1_V_fu_569_p4 = {{grp_fu_641_p2[39:13]}};

assign imag2_V_20_fu_422_p4 = {{r_V_18_fu_416_p2[38:13]}};

assign imag2_V_fu_578_p4 = {{grp_fu_648_p2[39:13]}};

assign imag_out_V_fu_587_p2 = (imag2_V_fu_578_p4 + imag1_V_fu_569_p4);

assign index_V_fu_250_p3 = {{trunc_ln177_fu_246_p1}, {3'd0}};

assign index_cos_V_fu_258_p2 = ($signed(index_V_fu_250_p3) + $signed(6'd48));

assign index_invert_control_imag_fu_264_p3 = ap_phi_mux_k9_phi_fu_182_p4[32'd1];

assign index_invert_control_real_V_fu_311_p3 = index_cos_V_fu_258_p2[32'd4];

assign k_6_fu_205_p2 = ($signed(ap_phi_mux_k9_phi_fu_182_p4) + $signed(32'd4294967295));

assign k_fu_356_p2 = (ap_phi_mux_k_1_phi_fu_192_p4 + 32'd1);

assign lut_index_imag_V_7_fu_292_p2 = (4'd0 - lut_index_imag_V_fu_284_p3);

assign lut_index_imag_V_8_fu_298_p3 = ((index_invert_control_imag_fu_264_p3[0:0] == 1'b1) ? lut_index_imag_V_7_fu_292_p2 : lut_index_imag_V_fu_284_p3);

assign lut_index_imag_V_fu_284_p3 = {{trunc_ln674_fu_280_p1}, {3'd0}};

assign lut_index_real_V_7_fu_337_p2 = (4'd0 - lut_index_real_V_fu_333_p1);

assign lut_index_real_V_8_fu_343_p3 = ((index_invert_control_real_V_fu_311_p3[0:0] == 1'b1) ? lut_index_real_V_7_fu_337_p2 : lut_index_real_V_fu_333_p1);

assign lut_index_real_V_fu_333_p1 = index_cos_V_fu_258_p2[3:0];

assign output_saturation_control_imag_fu_452_p2 = (icmp_ln1049_fu_442_p2 | icmp_ln1049_10_fu_447_p2);

assign output_saturation_control_real_V_fu_492_p2 = (icmp_ln1049_12_fu_487_p2 | icmp_ln1049_11_reg_710);

assign p_Val2_16_fu_470_p2 = ($signed(14'd0) - $signed(temp_out_sin_V_fu_458_p3));

assign p_Val2_18_fu_509_p2 = ($signed(14'd0) - $signed(temp_out_cos_V_fu_497_p3));

assign p_Val2_s_fu_519_p3 = ((output_negate_control_real_V_reg_705[0:0] == 1'b1) ? zext_ln755_4_fu_515_p1 : sext_ln183_fu_505_p1);

assign r_V_18_fu_416_p2 = (39'd0 - shl_ln1171_4_fu_409_p3);

assign r_V_19_fu_432_p2 = (real1_V_16_fu_399_p4 + X_of_ns_M_real_V_0_reg_664);

assign r_V_20_fu_437_p2 = (imag2_V_20_fu_422_p4 + X_of_ns_M_imag_V_0_reg_670);

assign r_V_fu_393_p2 = (39'd0 - shl_ln_fu_386_p3);

assign real1_V_16_fu_399_p4 = {{r_V_fu_393_p2[38:13]}};

assign real1_V_fu_545_p4 = {{grp_fu_627_p2[39:13]}};

assign real2_V_fu_554_p4 = {{grp_fu_634_p2[39:13]}};

assign real_out_V_fu_563_p2 = (real1_V_fu_545_p4 - real2_V_fu_554_p4);

assign sext_ln1171_10_fu_530_p1 = $signed(p_Val2_s_fu_519_p3);

assign sext_ln1171_11_fu_534_p1 = $signed(r_V_20_fu_437_p2);

assign sext_ln1171_12_fu_538_p1 = $signed(temp_out_sin_V_8_fu_480_p3);

assign sext_ln1171_fu_526_p1 = $signed(r_V_19_fu_432_p2);

assign sext_ln166_fu_466_p1 = temp_out_sin_V_fu_458_p3;

assign sext_ln174_fu_593_p1 = $signed(bflyOutData_M_imag_V_0_reg_734_pp0_iter3_reg);

assign sext_ln183_fu_505_p1 = temp_out_cos_V_fu_497_p3;

assign sext_ln712_fu_542_p1 = $signed(complexExpMulOut_M_real_V_0_reg_729_pp0_iter3_reg);

assign shl_ln1171_4_fu_409_p3 = {{X_of_ns_M_imag_V_1_reg_682}, {13'd0}};

assign shl_ln_fu_386_p3 = {{X_of_ns_M_real_V_1_reg_676}, {13'd0}};

assign temp_out_cos_V_fu_497_p3 = ((output_saturation_control_real_V_fu_492_p2[0:0] == 1'b1) ? 14'd8192 : twiddleObj_twiddleTable_M_imag_V_3_q0);

assign temp_out_sin_V_8_fu_480_p3 = ((output_negate_control_imag_reg_695[0:0] == 1'b1) ? sext_ln166_fu_466_p1 : zext_ln755_fu_476_p1);

assign temp_out_sin_V_fu_458_p3 = ((output_saturation_control_imag_fu_452_p2[0:0] == 1'b1) ? 14'd8192 : twiddleObj_twiddleTable_M_imag_V_3_q1);

assign tmp_43_fu_362_p4 = {{k_fu_356_p2[31:2]}};

assign tmp_5_fu_600_p7 = {{{{{{imag_out_V_fu_587_p2}, {5'd0}}, {real_out_V_fu_563_p2}}, {zext_ln174_fu_596_p1}}, {5'd0}}, {sext_ln712_fu_542_p1}};

assign tmp_nbreadreq_fu_120_p3 = fftOutData_local2_empty_n;

assign trunc_ln177_fu_246_p1 = ap_phi_mux_k9_phi_fu_182_p4[2:0];

assign trunc_ln674_fu_280_p1 = ap_phi_mux_k9_phi_fu_182_p4[0:0];

assign twiddleObj_twiddleTable_M_imag_V_3_address0 = zext_ln573_4_fu_351_p1;

assign twiddleObj_twiddleTable_M_imag_V_3_address1 = zext_ln573_fu_306_p1;

assign zext_ln174_fu_596_p1 = $unsigned(sext_ln174_fu_593_p1);

assign zext_ln573_4_fu_351_p1 = lut_index_real_V_8_fu_343_p3;

assign zext_ln573_fu_306_p1 = lut_index_imag_V_8_fu_298_p3;

assign zext_ln755_4_fu_515_p1 = p_Val2_18_fu_509_p2;

assign zext_ln755_fu_476_p1 = p_Val2_16_fu_470_p2;

endmodule //fft_top0_fftStageKernelS2S_64_2_1_1_0_3_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_27_12_5_3_0_s
