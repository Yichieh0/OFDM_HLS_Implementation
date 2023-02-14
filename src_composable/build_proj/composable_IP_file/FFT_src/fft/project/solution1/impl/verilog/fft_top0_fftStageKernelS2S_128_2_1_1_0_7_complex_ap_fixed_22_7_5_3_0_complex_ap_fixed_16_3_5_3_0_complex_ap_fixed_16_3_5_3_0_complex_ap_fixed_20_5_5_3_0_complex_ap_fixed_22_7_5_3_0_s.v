// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fft_top0_fftStageKernelS2S_128_2_1_1_0_7_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_20_5_5_3_0_complex_ap_fixed_22_7_5_3_0_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        p_fftInData_reOrdered_dout,
        p_fftInData_reOrdered_empty_n,
        p_fftInData_reOrdered_read,
        fftOutData_local_din,
        fftOutData_local_full_n,
        fftOutData_local_write
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_pp0_stage0 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [127:0] p_fftInData_reOrdered_dout;
input   p_fftInData_reOrdered_empty_n;
output   p_fftInData_reOrdered_read;
output  [127:0] fftOutData_local_din;
input   fftOutData_local_full_n;
output   fftOutData_local_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg p_fftInData_reOrdered_read;
reg fftOutData_local_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] icmp_ln151_fu_356_p2;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
wire   [0:0] tmp_nbreadreq_fu_102_p3;
reg    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_state4_pp0_stage0_iter2;
wire    ap_block_state5_pp0_stage0_iter3;
reg   [0:0] tmp_reg_643;
reg   [0:0] tmp_reg_643_pp0_iter3_reg;
reg    ap_block_state6_pp0_stage0_iter4;
reg    ap_enable_reg_pp0_iter4;
reg    ap_block_pp0_stage0_11001;
wire   [4:0] twiddleObj_twiddleTable_M_imag_V_address0;
reg    twiddleObj_twiddleTable_M_imag_V_ce0;
wire   [13:0] twiddleObj_twiddleTable_M_imag_V_q0;
wire   [4:0] twiddleObj_twiddleTable_M_imag_V_address1;
reg    twiddleObj_twiddleTable_M_imag_V_ce1;
wire   [13:0] twiddleObj_twiddleTable_M_imag_V_q1;
reg    p_fftInData_reOrdered_blk_n;
wire    ap_block_pp0_stage0;
reg    fftOutData_local_blk_n;
reg   [31:0] k9_reg_163;
reg   [0:0] tmp_reg_643_pp0_iter1_reg;
reg   [0:0] tmp_reg_643_pp0_iter2_reg;
wire   [19:0] X_of_ns_M_real_V_0_fu_194_p1;
reg   [19:0] X_of_ns_M_real_V_0_reg_647;
reg   [19:0] X_of_ns_M_imag_V_0_reg_652;
reg  signed [19:0] X_of_ns_M_real_V_1_reg_657;
reg  signed [19:0] X_of_ns_M_imag_V_1_reg_663;
reg   [0:0] output_negate_control_imag_reg_669;
wire   [0:0] icmp_ln1049_fu_254_p2;
reg   [0:0] icmp_ln1049_reg_674;
wire   [0:0] icmp_ln1049_1_fu_260_p2;
reg   [0:0] icmp_ln1049_1_reg_679;
reg   [0:0] output_negate_control_real_V_reg_689;
wire   [0:0] icmp_ln1049_2_fu_305_p2;
reg   [0:0] icmp_ln1049_2_reg_694;
wire   [0:0] icmp_ln1049_3_fu_311_p2;
reg   [0:0] icmp_ln1049_3_reg_699;
wire   [31:0] k_fu_340_p2;
reg   [31:0] k_reg_709;
reg   [0:0] icmp_ln151_reg_714;
reg   [0:0] icmp_ln151_reg_714_pp0_iter1_reg;
reg   [0:0] icmp_ln151_reg_714_pp0_iter2_reg;
reg   [0:0] icmp_ln151_reg_714_pp0_iter3_reg;
wire   [20:0] complexExpMulOut_M_real_V_0_fu_368_p2;
reg   [20:0] complexExpMulOut_M_real_V_0_reg_718;
reg   [20:0] complexExpMulOut_M_real_V_0_reg_718_pp0_iter2_reg;
reg   [20:0] complexExpMulOut_M_real_V_0_reg_718_pp0_iter3_reg;
wire   [20:0] bflyOutData_M_imag_V_0_fu_380_p2;
reg   [20:0] bflyOutData_M_imag_V_0_reg_723;
reg   [20:0] bflyOutData_M_imag_V_0_reg_723_pp0_iter2_reg;
reg   [20:0] bflyOutData_M_imag_V_0_reg_723_pp0_iter3_reg;
wire  signed [34:0] sext_ln1171_fu_518_p1;
wire  signed [34:0] sext_ln1171_1_fu_522_p1;
wire  signed [34:0] sext_ln1171_2_fu_526_p1;
wire  signed [34:0] sext_ln1171_3_fu_530_p1;
reg    ap_enable_reg_pp0_iter1;
reg    ap_block_state1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg   [31:0] ap_phi_mux_k9_phi_fu_167_p6;
reg   [31:0] ap_phi_mux_k_1_phi_fu_180_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_k_1_reg_177;
wire   [31:0] k_3_fu_187_p2;
wire   [63:0] zext_ln573_fu_284_p1;
wire   [63:0] zext_ln573_1_fu_335_p1;
reg    ap_block_pp0_stage0_01001;
wire   [6:0] index_V_fu_228_p1;
wire   [4:0] lut_index_imag_V_fu_266_p1;
wire   [0:0] index_invert_control_imag_fu_238_p3;
wire   [4:0] lut_index_imag_V_1_fu_270_p2;
wire   [4:0] lut_index_imag_V_2_fu_276_p3;
wire   [6:0] index_cos_V_fu_232_p2;
wire   [4:0] lut_index_real_V_fu_317_p1;
wire   [0:0] index_invert_control_real_V_fu_289_p3;
wire   [4:0] lut_index_real_V_1_fu_321_p2;
wire   [4:0] lut_index_real_V_2_fu_327_p3;
wire   [25:0] tmp_31_fu_346_p4;
wire  signed [20:0] sext_ln712_fu_362_p1;
wire  signed [20:0] sext_ln712_1_fu_365_p1;
wire  signed [20:0] sext_ln712_2_fu_374_p1;
wire  signed [20:0] sext_ln712_3_fu_377_p1;
wire   [32:0] shl_ln_fu_386_p3;
wire   [32:0] r_V_fu_393_p2;
wire   [32:0] shl_ln1171_1_fu_409_p3;
wire   [32:0] r_V_3_fu_416_p2;
wire   [19:0] real1_V_4_fu_399_p4;
wire  signed [20:0] sext_ln1245_fu_432_p1;
wire   [19:0] imag2_V_5_fu_422_p4;
wire  signed [20:0] sext_ln1245_1_fu_442_p1;
wire   [0:0] output_saturation_control_imag_fu_452_p2;
wire  signed [13:0] temp_out_sin_V_fu_456_p3;
wire   [13:0] p_Val2_5_fu_468_p2;
wire  signed [14:0] sext_ln166_fu_464_p1;
wire   [14:0] zext_ln755_fu_474_p1;
wire   [0:0] output_saturation_control_real_V_fu_485_p2;
wire  signed [13:0] temp_out_cos_V_fu_489_p3;
wire   [13:0] p_Val2_7_fu_501_p2;
wire   [14:0] zext_ln755_1_fu_507_p1;
wire  signed [14:0] sext_ln183_fu_497_p1;
wire   [20:0] r_V_4_fu_436_p2;
wire   [14:0] p_Val2_s_fu_511_p3;
wire   [20:0] r_V_5_fu_446_p2;
wire   [14:0] temp_out_sin_V_2_fu_478_p3;
wire  signed [34:0] grp_fu_615_p2;
wire  signed [34:0] grp_fu_622_p2;
wire   [21:0] real1_V_fu_537_p4;
wire   [21:0] real2_V_fu_546_p4;
wire  signed [34:0] grp_fu_629_p2;
wire  signed [34:0] grp_fu_636_p2;
wire   [21:0] imag2_V_fu_570_p4;
wire   [21:0] imag1_V_fu_561_p4;
wire  signed [21:0] sext_ln174_fu_585_p1;
wire   [21:0] imag_out_V_fu_579_p2;
wire   [21:0] real_out_V_fu_555_p2;
wire   [31:0] zext_ln174_fu_588_p1;
wire  signed [21:0] sext_ln712_4_fu_534_p1;
wire   [117:0] tmp_2_fu_592_p7;
wire  signed [20:0] grp_fu_615_p0;
wire  signed [14:0] grp_fu_615_p1;
wire  signed [20:0] grp_fu_622_p0;
wire  signed [14:0] grp_fu_622_p1;
wire  signed [20:0] grp_fu_629_p0;
wire  signed [14:0] grp_fu_629_p1;
wire  signed [20:0] grp_fu_636_p0;
wire  signed [14:0] grp_fu_636_p1;
reg    grp_fu_615_ce;
reg    grp_fu_622_ce;
reg    grp_fu_629_ce;
reg    grp_fu_636_ce;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_idle_pp0_0to3;
reg    ap_reset_idle_pp0;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_178;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
end

fft_top0_fftStageKernelS2S_128_2_1_1_0_7_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_bkb #(
    .DataWidth( 14 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
twiddleObj_twiddleTable_M_imag_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(twiddleObj_twiddleTable_M_imag_V_address0),
    .ce0(twiddleObj_twiddleTable_M_imag_V_ce0),
    .q0(twiddleObj_twiddleTable_M_imag_V_q0),
    .address1(twiddleObj_twiddleTable_M_imag_V_address1),
    .ce1(twiddleObj_twiddleTable_M_imag_V_ce1),
    .q1(twiddleObj_twiddleTable_M_imag_V_q1)
);

fft_top0_mul_mul_21s_15s_35_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 21 ),
    .din1_WIDTH( 15 ),
    .dout_WIDTH( 35 ))
mul_mul_21s_15s_35_4_1_U79(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_615_p0),
    .din1(grp_fu_615_p1),
    .ce(grp_fu_615_ce),
    .dout(grp_fu_615_p2)
);

fft_top0_mul_mul_21s_15s_35_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 21 ),
    .din1_WIDTH( 15 ),
    .dout_WIDTH( 35 ))
mul_mul_21s_15s_35_4_1_U80(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_622_p0),
    .din1(grp_fu_622_p1),
    .ce(grp_fu_622_ce),
    .dout(grp_fu_622_p2)
);

fft_top0_mul_mul_21s_15s_35_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 21 ),
    .din1_WIDTH( 15 ),
    .dout_WIDTH( 35 ))
mul_mul_21s_15s_35_4_1_U81(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_629_p0),
    .din1(grp_fu_629_p1),
    .ce(grp_fu_629_ce),
    .dout(grp_fu_629_p2)
);

fft_top0_mul_mul_21s_15s_35_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 21 ),
    .din1_WIDTH( 15 ),
    .dout_WIDTH( 35 ))
mul_mul_21s_15s_35_4_1_U82(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_636_p0),
    .din1(grp_fu_636_p1),
    .ce(grp_fu_636_ce),
    .dout(grp_fu_636_p2)
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
        end else if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (icmp_ln151_reg_714_pp0_iter3_reg == 1'd0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
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
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln151_reg_714 == 1'd1))) begin
        k9_reg_163 <= k_reg_709;
    end else if ((((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln151_reg_714 == 1'd0)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1)))) begin
        k9_reg_163 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_nbreadreq_fu_102_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        X_of_ns_M_imag_V_0_reg_652 <= {{p_fftInData_reOrdered_dout[51:32]}};
        X_of_ns_M_imag_V_1_reg_663 <= {{p_fftInData_reOrdered_dout[115:96]}};
        X_of_ns_M_real_V_0_reg_647 <= X_of_ns_M_real_V_0_fu_194_p1;
        X_of_ns_M_real_V_1_reg_657 <= {{p_fftInData_reOrdered_dout[83:64]}};
        icmp_ln1049_1_reg_679 <= icmp_ln1049_1_fu_260_p2;
        icmp_ln1049_2_reg_694 <= icmp_ln1049_2_fu_305_p2;
        icmp_ln1049_3_reg_699 <= icmp_ln1049_3_fu_311_p2;
        icmp_ln1049_reg_674 <= icmp_ln1049_fu_254_p2;
        output_negate_control_imag_reg_669 <= ap_phi_mux_k9_phi_fu_167_p6[32'd6];
        output_negate_control_real_V_reg_689 <= index_cos_V_fu_232_p2[32'd6];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_reg_643 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bflyOutData_M_imag_V_0_reg_723 <= bflyOutData_M_imag_V_0_fu_380_p2;
        complexExpMulOut_M_real_V_0_reg_718 <= complexExpMulOut_M_real_V_0_fu_368_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        bflyOutData_M_imag_V_0_reg_723_pp0_iter2_reg <= bflyOutData_M_imag_V_0_reg_723;
        bflyOutData_M_imag_V_0_reg_723_pp0_iter3_reg <= bflyOutData_M_imag_V_0_reg_723_pp0_iter2_reg;
        complexExpMulOut_M_real_V_0_reg_718_pp0_iter2_reg <= complexExpMulOut_M_real_V_0_reg_718;
        complexExpMulOut_M_real_V_0_reg_718_pp0_iter3_reg <= complexExpMulOut_M_real_V_0_reg_718_pp0_iter2_reg;
        icmp_ln151_reg_714_pp0_iter2_reg <= icmp_ln151_reg_714_pp0_iter1_reg;
        icmp_ln151_reg_714_pp0_iter3_reg <= icmp_ln151_reg_714_pp0_iter2_reg;
        tmp_reg_643_pp0_iter2_reg <= tmp_reg_643_pp0_iter1_reg;
        tmp_reg_643_pp0_iter3_reg <= tmp_reg_643_pp0_iter2_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln151_reg_714 <= icmp_ln151_fu_356_p2;
        icmp_ln151_reg_714_pp0_iter1_reg <= icmp_ln151_reg_714;
        tmp_reg_643 <= tmp_nbreadreq_fu_102_p3;
        tmp_reg_643_pp0_iter1_reg <= tmp_reg_643;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_reg_709 <= k_fu_340_p2;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) | (ap_done_reg == 1'b1))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (icmp_ln151_reg_714_pp0_iter3_reg == 1'd0))) begin
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
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_0to3 = 1'b1;
    end else begin
        ap_idle_pp0_0to3 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_178)) begin
        if ((icmp_ln151_reg_714 == 1'd0)) begin
            ap_phi_mux_k9_phi_fu_167_p6 = 32'd0;
        end else if ((icmp_ln151_reg_714 == 1'd1)) begin
            ap_phi_mux_k9_phi_fu_167_p6 = k_reg_709;
        end else begin
            ap_phi_mux_k9_phi_fu_167_p6 = k9_reg_163;
        end
    end else begin
        ap_phi_mux_k9_phi_fu_167_p6 = k9_reg_163;
    end
end

always @ (*) begin
    if ((tmp_nbreadreq_fu_102_p3 == 1'd0)) begin
        ap_phi_mux_k_1_phi_fu_180_p4 = k_3_fu_187_p2;
    end else if ((tmp_nbreadreq_fu_102_p3 == 1'd1)) begin
        ap_phi_mux_k_1_phi_fu_180_p4 = ap_phi_mux_k9_phi_fu_167_p6;
    end else begin
        ap_phi_mux_k_1_phi_fu_180_p4 = ap_phi_reg_pp0_iter0_k_1_reg_177;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (icmp_ln151_fu_356_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to3 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (tmp_reg_643_pp0_iter3_reg == 1'd1))) begin
        fftOutData_local_blk_n = fftOutData_local_full_n;
    end else begin
        fftOutData_local_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (tmp_reg_643_pp0_iter3_reg == 1'd1))) begin
        fftOutData_local_write = 1'b1;
    end else begin
        fftOutData_local_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_615_ce = 1'b1;
    end else begin
        grp_fu_615_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_622_ce = 1'b1;
    end else begin
        grp_fu_622_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_629_ce = 1'b1;
    end else begin
        grp_fu_629_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_636_ce = 1'b1;
    end else begin
        grp_fu_636_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (tmp_nbreadreq_fu_102_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_fftInData_reOrdered_blk_n = p_fftInData_reOrdered_empty_n;
    end else begin
        p_fftInData_reOrdered_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_nbreadreq_fu_102_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_fftInData_reOrdered_read = 1'b1;
    end else begin
        p_fftInData_reOrdered_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        twiddleObj_twiddleTable_M_imag_V_ce0 = 1'b1;
    end else begin
        twiddleObj_twiddleTable_M_imag_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        twiddleObj_twiddleTable_M_imag_V_ce1 = 1'b1;
    end else begin
        twiddleObj_twiddleTable_M_imag_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((ap_reset_idle_pp0 == 1'b0)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_reset_idle_pp0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign X_of_ns_M_real_V_0_fu_194_p1 = p_fftInData_reOrdered_dout[19:0];

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (tmp_reg_643_pp0_iter3_reg == 1'd1) & (fftOutData_local_full_n == 1'b0)) | ((tmp_nbreadreq_fu_102_p3 == 1'd1) & (p_fftInData_reOrdered_empty_n == 1'b0) & (ap_start == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (tmp_reg_643_pp0_iter3_reg == 1'd1) & (fftOutData_local_full_n == 1'b0)) | ((tmp_nbreadreq_fu_102_p3 == 1'd1) & (p_fftInData_reOrdered_empty_n == 1'b0) & (ap_start == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (tmp_reg_643_pp0_iter3_reg == 1'd1) & (fftOutData_local_full_n == 1'b0)) | ((tmp_nbreadreq_fu_102_p3 == 1'd1) & (p_fftInData_reOrdered_empty_n == 1'b0) & (ap_start == 1'b1)));
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter0 = ((tmp_nbreadreq_fu_102_p3 == 1'd1) & (p_fftInData_reOrdered_empty_n == 1'b0));
end

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state6_pp0_stage0_iter4 = ((tmp_reg_643_pp0_iter3_reg == 1'd1) & (fftOutData_local_full_n == 1'b0));
end

always @ (*) begin
    ap_condition_178 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_phi_reg_pp0_iter0_k_1_reg_177 = 'bx;

assign bflyOutData_M_imag_V_0_fu_380_p2 = ($signed(sext_ln712_2_fu_374_p1) + $signed(sext_ln712_3_fu_377_p1));

assign complexExpMulOut_M_real_V_0_fu_368_p2 = ($signed(sext_ln712_fu_362_p1) + $signed(sext_ln712_1_fu_365_p1));

assign fftOutData_local_din = tmp_2_fu_592_p7;

assign grp_fu_615_p0 = sext_ln1171_fu_518_p1;

assign grp_fu_615_p1 = sext_ln1171_1_fu_522_p1;

assign grp_fu_622_p0 = sext_ln1171_2_fu_526_p1;

assign grp_fu_622_p1 = sext_ln1171_3_fu_530_p1;

assign grp_fu_629_p0 = sext_ln1171_fu_518_p1;

assign grp_fu_629_p1 = sext_ln1171_3_fu_530_p1;

assign grp_fu_636_p0 = sext_ln1171_2_fu_526_p1;

assign grp_fu_636_p1 = sext_ln1171_1_fu_522_p1;

assign icmp_ln1049_1_fu_260_p2 = ((index_V_fu_228_p1 == 7'd96) ? 1'b1 : 1'b0);

assign icmp_ln1049_2_fu_305_p2 = ((index_cos_V_fu_232_p2 == 7'd32) ? 1'b1 : 1'b0);

assign icmp_ln1049_3_fu_311_p2 = ((index_V_fu_228_p1 == 7'd0) ? 1'b1 : 1'b0);

assign icmp_ln1049_fu_254_p2 = ((index_V_fu_228_p1 == 7'd32) ? 1'b1 : 1'b0);

assign icmp_ln151_fu_356_p2 = (($signed(tmp_31_fu_346_p4) < $signed(26'd1)) ? 1'b1 : 1'b0);

assign imag1_V_fu_561_p4 = {{grp_fu_629_p2[34:13]}};

assign imag2_V_5_fu_422_p4 = {{r_V_3_fu_416_p2[32:13]}};

assign imag2_V_fu_570_p4 = {{grp_fu_636_p2[34:13]}};

assign imag_out_V_fu_579_p2 = (imag2_V_fu_570_p4 + imag1_V_fu_561_p4);

assign index_V_fu_228_p1 = ap_phi_mux_k9_phi_fu_167_p6[6:0];

assign index_cos_V_fu_232_p2 = ($signed(index_V_fu_228_p1) + $signed(7'd96));

assign index_invert_control_imag_fu_238_p3 = ap_phi_mux_k9_phi_fu_167_p6[32'd5];

assign index_invert_control_real_V_fu_289_p3 = index_cos_V_fu_232_p2[32'd5];

assign k_3_fu_187_p2 = ($signed(ap_phi_mux_k9_phi_fu_167_p6) + $signed(32'd4294967295));

assign k_fu_340_p2 = (ap_phi_mux_k_1_phi_fu_180_p4 + 32'd1);

assign lut_index_imag_V_1_fu_270_p2 = (5'd0 - lut_index_imag_V_fu_266_p1);

assign lut_index_imag_V_2_fu_276_p3 = ((index_invert_control_imag_fu_238_p3[0:0] == 1'b1) ? lut_index_imag_V_1_fu_270_p2 : lut_index_imag_V_fu_266_p1);

assign lut_index_imag_V_fu_266_p1 = ap_phi_mux_k9_phi_fu_167_p6[4:0];

assign lut_index_real_V_1_fu_321_p2 = (5'd0 - lut_index_real_V_fu_317_p1);

assign lut_index_real_V_2_fu_327_p3 = ((index_invert_control_real_V_fu_289_p3[0:0] == 1'b1) ? lut_index_real_V_1_fu_321_p2 : lut_index_real_V_fu_317_p1);

assign lut_index_real_V_fu_317_p1 = index_cos_V_fu_232_p2[4:0];

assign output_saturation_control_imag_fu_452_p2 = (icmp_ln1049_reg_674 | icmp_ln1049_1_reg_679);

assign output_saturation_control_real_V_fu_485_p2 = (icmp_ln1049_3_reg_699 | icmp_ln1049_2_reg_694);

assign p_Val2_5_fu_468_p2 = ($signed(14'd0) - $signed(temp_out_sin_V_fu_456_p3));

assign p_Val2_7_fu_501_p2 = ($signed(14'd0) - $signed(temp_out_cos_V_fu_489_p3));

assign p_Val2_s_fu_511_p3 = ((output_negate_control_real_V_reg_689[0:0] == 1'b1) ? zext_ln755_1_fu_507_p1 : sext_ln183_fu_497_p1);

assign r_V_3_fu_416_p2 = (33'd0 - shl_ln1171_1_fu_409_p3);

assign r_V_4_fu_436_p2 = ($signed(sext_ln1245_fu_432_p1) + $signed(sext_ln712_1_fu_365_p1));

assign r_V_5_fu_446_p2 = ($signed(sext_ln1245_1_fu_442_p1) + $signed(sext_ln712_3_fu_377_p1));

assign r_V_fu_393_p2 = (33'd0 - shl_ln_fu_386_p3);

assign real1_V_4_fu_399_p4 = {{r_V_fu_393_p2[32:13]}};

assign real1_V_fu_537_p4 = {{grp_fu_615_p2[34:13]}};

assign real2_V_fu_546_p4 = {{grp_fu_622_p2[34:13]}};

assign real_out_V_fu_555_p2 = (real1_V_fu_537_p4 - real2_V_fu_546_p4);

assign sext_ln1171_1_fu_522_p1 = $signed(p_Val2_s_fu_511_p3);

assign sext_ln1171_2_fu_526_p1 = $signed(r_V_5_fu_446_p2);

assign sext_ln1171_3_fu_530_p1 = $signed(temp_out_sin_V_2_fu_478_p3);

assign sext_ln1171_fu_518_p1 = $signed(r_V_4_fu_436_p2);

assign sext_ln1245_1_fu_442_p1 = $signed(imag2_V_5_fu_422_p4);

assign sext_ln1245_fu_432_p1 = $signed(real1_V_4_fu_399_p4);

assign sext_ln166_fu_464_p1 = temp_out_sin_V_fu_456_p3;

assign sext_ln174_fu_585_p1 = $signed(bflyOutData_M_imag_V_0_reg_723_pp0_iter3_reg);

assign sext_ln183_fu_497_p1 = temp_out_cos_V_fu_489_p3;

assign sext_ln712_1_fu_365_p1 = $signed(X_of_ns_M_real_V_0_reg_647);

assign sext_ln712_2_fu_374_p1 = X_of_ns_M_imag_V_1_reg_663;

assign sext_ln712_3_fu_377_p1 = $signed(X_of_ns_M_imag_V_0_reg_652);

assign sext_ln712_4_fu_534_p1 = $signed(complexExpMulOut_M_real_V_0_reg_718_pp0_iter3_reg);

assign sext_ln712_fu_362_p1 = X_of_ns_M_real_V_1_reg_657;

assign shl_ln1171_1_fu_409_p3 = {{X_of_ns_M_imag_V_1_reg_663}, {13'd0}};

assign shl_ln_fu_386_p3 = {{X_of_ns_M_real_V_1_reg_657}, {13'd0}};

assign temp_out_cos_V_fu_489_p3 = ((output_saturation_control_real_V_fu_485_p2[0:0] == 1'b1) ? 14'd8192 : twiddleObj_twiddleTable_M_imag_V_q0);

assign temp_out_sin_V_2_fu_478_p3 = ((output_negate_control_imag_reg_669[0:0] == 1'b1) ? sext_ln166_fu_464_p1 : zext_ln755_fu_474_p1);

assign temp_out_sin_V_fu_456_p3 = ((output_saturation_control_imag_fu_452_p2[0:0] == 1'b1) ? 14'd8192 : twiddleObj_twiddleTable_M_imag_V_q1);

assign tmp_2_fu_592_p7 = {{{{{{imag_out_V_fu_579_p2}, {10'd0}}, {real_out_V_fu_555_p2}}, {zext_ln174_fu_588_p1}}, {10'd0}}, {sext_ln712_4_fu_534_p1}};

assign tmp_31_fu_346_p4 = {{k_fu_340_p2[31:6]}};

assign tmp_nbreadreq_fu_102_p3 = p_fftInData_reOrdered_empty_n;

assign twiddleObj_twiddleTable_M_imag_V_address0 = zext_ln573_1_fu_335_p1;

assign twiddleObj_twiddleTable_M_imag_V_address1 = zext_ln573_fu_284_p1;

assign zext_ln174_fu_588_p1 = $unsigned(sext_ln174_fu_585_p1);

assign zext_ln573_1_fu_335_p1 = lut_index_real_V_2_fu_327_p3;

assign zext_ln573_fu_284_p1 = lut_index_imag_V_2_fu_276_p3;

assign zext_ln755_1_fu_507_p1 = p_Val2_7_fu_501_p2;

assign zext_ln755_fu_474_p1 = p_Val2_5_fu_468_p2;

endmodule //fft_top0_fftStageKernelS2S_128_2_1_1_0_7_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_20_5_5_3_0_complex_ap_fixed_22_7_5_3_0_s
