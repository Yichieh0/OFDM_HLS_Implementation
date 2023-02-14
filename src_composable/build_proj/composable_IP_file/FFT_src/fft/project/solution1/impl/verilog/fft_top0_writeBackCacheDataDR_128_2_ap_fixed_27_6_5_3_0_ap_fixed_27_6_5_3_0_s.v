// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fft_top0_writeBackCacheDataDR_128_2_ap_fixed_27_6_5_3_0_ap_fixed_27_6_5_3_0_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        p_outData_0_0_0_0_0_din,
        p_outData_0_0_0_0_0_full_n,
        p_outData_0_0_0_0_0_write,
        p_outData_0_1_0_0_0_din,
        p_outData_0_1_0_0_0_full_n,
        p_outData_0_1_0_0_0_write,
        p_outData_0_0_0_0_03_din,
        p_outData_0_0_0_0_03_full_n,
        p_outData_0_0_0_0_03_write,
        p_outData_0_1_0_0_04_din,
        p_outData_0_1_0_0_04_full_n,
        p_outData_0_1_0_0_04_write,
        p_digitReseversedOutputBuff_M_real_address0,
        p_digitReseversedOutputBuff_M_real_ce0,
        p_digitReseversedOutputBuff_M_real_q0,
        p_digitReseversedOutputBuff_M_real1_address0,
        p_digitReseversedOutputBuff_M_real1_ce0,
        p_digitReseversedOutputBuff_M_real1_q0,
        p_digitReseversedOutputBuff_M_imag_address0,
        p_digitReseversedOutputBuff_M_imag_ce0,
        p_digitReseversedOutputBuff_M_imag_q0,
        p_digitReseversedOutputBuff_M_imag2_address0,
        p_digitReseversedOutputBuff_M_imag2_ce0,
        p_digitReseversedOutputBuff_M_imag2_q0
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_pp0_stage0 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [26:0] p_outData_0_0_0_0_0_din;
input   p_outData_0_0_0_0_0_full_n;
output   p_outData_0_0_0_0_0_write;
output  [26:0] p_outData_0_1_0_0_0_din;
input   p_outData_0_1_0_0_0_full_n;
output   p_outData_0_1_0_0_0_write;
output  [26:0] p_outData_0_0_0_0_03_din;
input   p_outData_0_0_0_0_03_full_n;
output   p_outData_0_0_0_0_03_write;
output  [26:0] p_outData_0_1_0_0_04_din;
input   p_outData_0_1_0_0_04_full_n;
output   p_outData_0_1_0_0_04_write;
output  [5:0] p_digitReseversedOutputBuff_M_real_address0;
output   p_digitReseversedOutputBuff_M_real_ce0;
input  [26:0] p_digitReseversedOutputBuff_M_real_q0;
output  [5:0] p_digitReseversedOutputBuff_M_real1_address0;
output   p_digitReseversedOutputBuff_M_real1_ce0;
input  [26:0] p_digitReseversedOutputBuff_M_real1_q0;
output  [5:0] p_digitReseversedOutputBuff_M_imag_address0;
output   p_digitReseversedOutputBuff_M_imag_ce0;
input  [26:0] p_digitReseversedOutputBuff_M_imag_q0;
output  [5:0] p_digitReseversedOutputBuff_M_imag2_address0;
output   p_digitReseversedOutputBuff_M_imag2_ce0;
input  [26:0] p_digitReseversedOutputBuff_M_imag2_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg p_outData_0_0_0_0_0_write;
reg p_outData_0_1_0_0_0_write;
reg p_outData_0_0_0_0_03_write;
reg p_outData_0_1_0_0_04_write;
reg p_digitReseversedOutputBuff_M_real_ce0;
reg p_digitReseversedOutputBuff_M_real1_ce0;
reg p_digitReseversedOutputBuff_M_imag_ce0;
reg p_digitReseversedOutputBuff_M_imag2_ce0;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] icmp_ln319_fu_236_p2;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    io_acc_block_signal_op43;
wire    io_acc_block_signal_op44;
reg    ap_block_state3_pp0_stage0_iter1;
reg    ap_enable_reg_pp0_iter1;
reg    ap_block_pp0_stage0_11001;
reg    p_outData_0_0_0_0_0_blk_n;
wire    ap_block_pp0_stage0;
reg    p_outData_0_0_0_0_03_blk_n;
reg    p_outData_0_1_0_0_0_blk_n;
reg    p_outData_0_1_0_0_04_blk_n;
reg   [5:0] r21_reg_142;
wire   [0:0] tmp_2_fu_156_p3;
reg   [0:0] tmp_2_reg_276;
wire   [5:0] r_fu_230_p2;
reg   [5:0] r_reg_304;
reg   [0:0] icmp_ln319_reg_309;
reg    ap_block_pp0_stage0_subdone;
reg   [5:0] ap_phi_mux_r21_phi_fu_146_p6;
wire   [63:0] zext_ln344_fu_194_p1;
wire   [63:0] zext_ln344_1_fu_224_p1;
reg    ap_block_pp0_stage0_01001;
wire   [0:0] trunc_ln150_fu_164_p1;
reg   [4:0] tmp_fu_176_p4;
wire   [5:0] out_r_fu_186_p3;
wire   [1:0] or_ln_fu_168_p3;
wire   [1:0] xor_ln150_fu_200_p2;
reg   [3:0] tmp_1_fu_206_p4;
wire   [5:0] out_r_1_fu_216_p3;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_96;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln319_reg_309 == 1'd0))) begin
        r21_reg_142 <= r_reg_304;
    end else if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln319_reg_309 == 1'd1)) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        r21_reg_142 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln319_reg_309 <= icmp_ln319_fu_236_p2;
        tmp_2_reg_276 <= ap_phi_mux_r21_phi_fu_146_p6[32'd5];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        r_reg_304 <= r_fu_230_p2;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln319_reg_309 == 1'd1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_96)) begin
        if ((icmp_ln319_reg_309 == 1'd1)) begin
            ap_phi_mux_r21_phi_fu_146_p6 = 6'd0;
        end else if ((icmp_ln319_reg_309 == 1'd0)) begin
            ap_phi_mux_r21_phi_fu_146_p6 = r_reg_304;
        end else begin
            ap_phi_mux_r21_phi_fu_146_p6 = r21_reg_142;
        end
    end else begin
        ap_phi_mux_r21_phi_fu_146_p6 = r21_reg_142;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln319_fu_236_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_digitReseversedOutputBuff_M_imag2_ce0 = 1'b1;
    end else begin
        p_digitReseversedOutputBuff_M_imag2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_digitReseversedOutputBuff_M_imag_ce0 = 1'b1;
    end else begin
        p_digitReseversedOutputBuff_M_imag_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_digitReseversedOutputBuff_M_real1_ce0 = 1'b1;
    end else begin
        p_digitReseversedOutputBuff_M_real1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_digitReseversedOutputBuff_M_real_ce0 = 1'b1;
    end else begin
        p_digitReseversedOutputBuff_M_real_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_outData_0_0_0_0_03_blk_n = p_outData_0_0_0_0_03_full_n;
    end else begin
        p_outData_0_0_0_0_03_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_outData_0_0_0_0_03_write = 1'b1;
    end else begin
        p_outData_0_0_0_0_03_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_outData_0_0_0_0_0_blk_n = p_outData_0_0_0_0_0_full_n;
    end else begin
        p_outData_0_0_0_0_0_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_outData_0_0_0_0_0_write = 1'b1;
    end else begin
        p_outData_0_0_0_0_0_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_outData_0_1_0_0_04_blk_n = p_outData_0_1_0_0_04_full_n;
    end else begin
        p_outData_0_1_0_0_04_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_outData_0_1_0_0_04_write = 1'b1;
    end else begin
        p_outData_0_1_0_0_04_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_outData_0_1_0_0_0_blk_n = p_outData_0_1_0_0_0_full_n;
    end else begin
        p_outData_0_1_0_0_0_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_outData_0_1_0_0_0_write = 1'b1;
    end else begin
        p_outData_0_1_0_0_0_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
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

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & ((io_acc_block_signal_op44 == 1'b0) | (io_acc_block_signal_op43 == 1'b0)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & ((io_acc_block_signal_op44 == 1'b0) | (io_acc_block_signal_op43 == 1'b0)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter1 == 1'b1) & ((io_acc_block_signal_op44 == 1'b0) | (io_acc_block_signal_op43 == 1'b0)));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = ((io_acc_block_signal_op44 == 1'b0) | (io_acc_block_signal_op43 == 1'b0));
end

always @ (*) begin
    ap_condition_96 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign icmp_ln319_fu_236_p2 = ((ap_phi_mux_r21_phi_fu_146_p6 == 6'd63) ? 1'b1 : 1'b0);

assign io_acc_block_signal_op43 = (p_outData_0_1_0_0_0_full_n & p_outData_0_0_0_0_0_full_n);

assign io_acc_block_signal_op44 = (p_outData_0_1_0_0_04_full_n & p_outData_0_0_0_0_03_full_n);

assign or_ln_fu_168_p3 = {{tmp_2_fu_156_p3}, {trunc_ln150_fu_164_p1}};

assign out_r_1_fu_216_p3 = {{xor_ln150_fu_200_p2}, {tmp_1_fu_206_p4}};

assign out_r_fu_186_p3 = {{tmp_2_fu_156_p3}, {tmp_fu_176_p4}};

assign p_digitReseversedOutputBuff_M_imag2_address0 = zext_ln344_1_fu_224_p1;

assign p_digitReseversedOutputBuff_M_imag_address0 = zext_ln344_fu_194_p1;

assign p_digitReseversedOutputBuff_M_real1_address0 = zext_ln344_1_fu_224_p1;

assign p_digitReseversedOutputBuff_M_real_address0 = zext_ln344_fu_194_p1;

assign p_outData_0_0_0_0_03_din = ((tmp_2_reg_276[0:0] == 1'b1) ? p_digitReseversedOutputBuff_M_real_q0 : p_digitReseversedOutputBuff_M_real1_q0);

assign p_outData_0_0_0_0_0_din = ((tmp_2_reg_276[0:0] == 1'b1) ? p_digitReseversedOutputBuff_M_real1_q0 : p_digitReseversedOutputBuff_M_real_q0);

assign p_outData_0_1_0_0_04_din = ((tmp_2_reg_276[0:0] == 1'b1) ? p_digitReseversedOutputBuff_M_imag_q0 : p_digitReseversedOutputBuff_M_imag2_q0);

assign p_outData_0_1_0_0_0_din = ((tmp_2_reg_276[0:0] == 1'b1) ? p_digitReseversedOutputBuff_M_imag2_q0 : p_digitReseversedOutputBuff_M_imag_q0);

assign r_fu_230_p2 = (ap_phi_mux_r21_phi_fu_146_p6 + 6'd1);

integer ap_tvar_int_0;

always @ (ap_phi_mux_r21_phi_fu_146_p6) begin
    for (ap_tvar_int_0 = 4 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 4 - 1) begin
            tmp_1_fu_206_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            tmp_1_fu_206_p4[ap_tvar_int_0] = ap_phi_mux_r21_phi_fu_146_p6[4 - ap_tvar_int_0];
        end
    end
end

assign tmp_2_fu_156_p3 = ap_phi_mux_r21_phi_fu_146_p6[32'd5];

integer ap_tvar_int_1;

always @ (ap_phi_mux_r21_phi_fu_146_p6) begin
    for (ap_tvar_int_1 = 5 - 1; ap_tvar_int_1 >= 0; ap_tvar_int_1 = ap_tvar_int_1 - 1) begin
        if (ap_tvar_int_1 > 4 - 0) begin
            tmp_fu_176_p4[ap_tvar_int_1] = 1'b0;
        end else begin
            tmp_fu_176_p4[ap_tvar_int_1] = ap_phi_mux_r21_phi_fu_146_p6[4 - ap_tvar_int_1];
        end
    end
end

assign trunc_ln150_fu_164_p1 = ap_phi_mux_r21_phi_fu_146_p6[0:0];

assign xor_ln150_fu_200_p2 = (or_ln_fu_168_p3 ^ 2'd2);

assign zext_ln344_1_fu_224_p1 = out_r_1_fu_216_p3;

assign zext_ln344_fu_194_p1 = out_r_fu_186_p3;

endmodule //fft_top0_writeBackCacheDataDR_128_2_ap_fixed_27_6_5_3_0_ap_fixed_27_6_5_3_0_s
