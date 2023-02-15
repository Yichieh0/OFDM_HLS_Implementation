// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fft_top1_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        p_inData_0_0_0_0_0_dout,
        p_inData_0_0_0_0_0_empty_n,
        p_inData_0_0_0_0_0_read,
        p_inData_0_0_0_0_01_dout,
        p_inData_0_0_0_0_01_empty_n,
        p_inData_0_0_0_0_01_read,
        p_inData_0_1_0_0_0_dout,
        p_inData_0_1_0_0_0_empty_n,
        p_inData_0_1_0_0_0_read,
        p_inData_0_1_0_0_02_dout,
        p_inData_0_1_0_0_02_empty_n,
        p_inData_0_1_0_0_02_read,
        p_digitReseversedOutputBuff_M_real_address0,
        p_digitReseversedOutputBuff_M_real_ce0,
        p_digitReseversedOutputBuff_M_real_we0,
        p_digitReseversedOutputBuff_M_real_d0,
        p_digitReseversedOutputBuff_M_real3_address0,
        p_digitReseversedOutputBuff_M_real3_ce0,
        p_digitReseversedOutputBuff_M_real3_we0,
        p_digitReseversedOutputBuff_M_real3_d0,
        p_digitReseversedOutputBuff_M_imag_address0,
        p_digitReseversedOutputBuff_M_imag_ce0,
        p_digitReseversedOutputBuff_M_imag_we0,
        p_digitReseversedOutputBuff_M_imag_d0,
        p_digitReseversedOutputBuff_M_imag4_address0,
        p_digitReseversedOutputBuff_M_imag4_ce0,
        p_digitReseversedOutputBuff_M_imag4_we0,
        p_digitReseversedOutputBuff_M_imag4_d0
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [26:0] p_inData_0_0_0_0_0_dout;
input   p_inData_0_0_0_0_0_empty_n;
output   p_inData_0_0_0_0_0_read;
input  [26:0] p_inData_0_0_0_0_01_dout;
input   p_inData_0_0_0_0_01_empty_n;
output   p_inData_0_0_0_0_01_read;
input  [26:0] p_inData_0_1_0_0_0_dout;
input   p_inData_0_1_0_0_0_empty_n;
output   p_inData_0_1_0_0_0_read;
input  [26:0] p_inData_0_1_0_0_02_dout;
input   p_inData_0_1_0_0_02_empty_n;
output   p_inData_0_1_0_0_02_read;
output  [4:0] p_digitReseversedOutputBuff_M_real_address0;
output   p_digitReseversedOutputBuff_M_real_ce0;
output   p_digitReseversedOutputBuff_M_real_we0;
output  [26:0] p_digitReseversedOutputBuff_M_real_d0;
output  [4:0] p_digitReseversedOutputBuff_M_real3_address0;
output   p_digitReseversedOutputBuff_M_real3_ce0;
output   p_digitReseversedOutputBuff_M_real3_we0;
output  [26:0] p_digitReseversedOutputBuff_M_real3_d0;
output  [4:0] p_digitReseversedOutputBuff_M_imag_address0;
output   p_digitReseversedOutputBuff_M_imag_ce0;
output   p_digitReseversedOutputBuff_M_imag_we0;
output  [26:0] p_digitReseversedOutputBuff_M_imag_d0;
output  [4:0] p_digitReseversedOutputBuff_M_imag4_address0;
output   p_digitReseversedOutputBuff_M_imag4_ce0;
output   p_digitReseversedOutputBuff_M_imag4_we0;
output  [26:0] p_digitReseversedOutputBuff_M_imag4_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg p_inData_0_0_0_0_0_read;
reg p_inData_0_0_0_0_01_read;
reg p_inData_0_1_0_0_0_read;
reg p_inData_0_1_0_0_02_read;
reg p_digitReseversedOutputBuff_M_real_ce0;
reg p_digitReseversedOutputBuff_M_real_we0;
reg p_digitReseversedOutputBuff_M_real3_ce0;
reg p_digitReseversedOutputBuff_M_real3_we0;
reg p_digitReseversedOutputBuff_M_imag_ce0;
reg p_digitReseversedOutputBuff_M_imag_we0;
reg p_digitReseversedOutputBuff_M_imag4_ce0;
reg p_digitReseversedOutputBuff_M_imag4_we0;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    p_inData_0_0_0_0_0_blk_n;
wire    ap_CS_fsm_state2;
reg    p_inData_0_0_0_0_01_blk_n;
reg    p_inData_0_1_0_0_0_blk_n;
reg    p_inData_0_1_0_0_02_blk_n;
wire   [4:0] r_fu_233_p2;
wire    io_acc_block_signal_op19;
wire    io_acc_block_signal_op22;
reg    ap_block_state2;
wire   [0:0] icmp_ln171_fu_239_p2;
reg   [4:0] r21_reg_151;
wire   [63:0] zext_ln171_fu_165_p1;
wire   [0:0] tmp_fu_173_p3;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((~((io_acc_block_signal_op22 == 1'b0) | (io_acc_block_signal_op19 == 1'b0) | (ap_start == 1'b0)) & (icmp_ln171_fu_239_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        r21_reg_151 <= r_fu_233_p2;
    end else if (((~((io_acc_block_signal_op22 == 1'b0) | (io_acc_block_signal_op19 == 1'b0) | (ap_start == 1'b0)) & (icmp_ln171_fu_239_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        r21_reg_151 <= 5'd0;
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
    if (((io_acc_block_signal_op22 == 1'b0) | (io_acc_block_signal_op19 == 1'b0) | (ap_start == 1'b0))) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | (~((io_acc_block_signal_op22 == 1'b0) | (io_acc_block_signal_op19 == 1'b0) | (ap_start == 1'b0)) & (icmp_ln171_fu_239_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)))) begin
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
    if ((~((io_acc_block_signal_op22 == 1'b0) | (io_acc_block_signal_op19 == 1'b0) | (ap_start == 1'b0)) & (icmp_ln171_fu_239_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((io_acc_block_signal_op22 == 1'b0) | (io_acc_block_signal_op19 == 1'b0) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        p_digitReseversedOutputBuff_M_imag4_ce0 = 1'b1;
    end else begin
        p_digitReseversedOutputBuff_M_imag4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((io_acc_block_signal_op22 == 1'b0) | (io_acc_block_signal_op19 == 1'b0) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        p_digitReseversedOutputBuff_M_imag4_we0 = 1'b1;
    end else begin
        p_digitReseversedOutputBuff_M_imag4_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((io_acc_block_signal_op22 == 1'b0) | (io_acc_block_signal_op19 == 1'b0) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        p_digitReseversedOutputBuff_M_imag_ce0 = 1'b1;
    end else begin
        p_digitReseversedOutputBuff_M_imag_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((io_acc_block_signal_op22 == 1'b0) | (io_acc_block_signal_op19 == 1'b0) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        p_digitReseversedOutputBuff_M_imag_we0 = 1'b1;
    end else begin
        p_digitReseversedOutputBuff_M_imag_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((io_acc_block_signal_op22 == 1'b0) | (io_acc_block_signal_op19 == 1'b0) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        p_digitReseversedOutputBuff_M_real3_ce0 = 1'b1;
    end else begin
        p_digitReseversedOutputBuff_M_real3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((io_acc_block_signal_op22 == 1'b0) | (io_acc_block_signal_op19 == 1'b0) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        p_digitReseversedOutputBuff_M_real3_we0 = 1'b1;
    end else begin
        p_digitReseversedOutputBuff_M_real3_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((io_acc_block_signal_op22 == 1'b0) | (io_acc_block_signal_op19 == 1'b0) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        p_digitReseversedOutputBuff_M_real_ce0 = 1'b1;
    end else begin
        p_digitReseversedOutputBuff_M_real_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((io_acc_block_signal_op22 == 1'b0) | (io_acc_block_signal_op19 == 1'b0) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        p_digitReseversedOutputBuff_M_real_we0 = 1'b1;
    end else begin
        p_digitReseversedOutputBuff_M_real_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        p_inData_0_0_0_0_01_blk_n = p_inData_0_0_0_0_01_empty_n;
    end else begin
        p_inData_0_0_0_0_01_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((io_acc_block_signal_op22 == 1'b0) | (io_acc_block_signal_op19 == 1'b0) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        p_inData_0_0_0_0_01_read = 1'b1;
    end else begin
        p_inData_0_0_0_0_01_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        p_inData_0_0_0_0_0_blk_n = p_inData_0_0_0_0_0_empty_n;
    end else begin
        p_inData_0_0_0_0_0_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((io_acc_block_signal_op22 == 1'b0) | (io_acc_block_signal_op19 == 1'b0) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        p_inData_0_0_0_0_0_read = 1'b1;
    end else begin
        p_inData_0_0_0_0_0_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        p_inData_0_1_0_0_02_blk_n = p_inData_0_1_0_0_02_empty_n;
    end else begin
        p_inData_0_1_0_0_02_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((io_acc_block_signal_op22 == 1'b0) | (io_acc_block_signal_op19 == 1'b0) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        p_inData_0_1_0_0_02_read = 1'b1;
    end else begin
        p_inData_0_1_0_0_02_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        p_inData_0_1_0_0_0_blk_n = p_inData_0_1_0_0_0_empty_n;
    end else begin
        p_inData_0_1_0_0_0_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((io_acc_block_signal_op22 == 1'b0) | (io_acc_block_signal_op19 == 1'b0) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        p_inData_0_1_0_0_0_read = 1'b1;
    end else begin
        p_inData_0_1_0_0_0_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if ((~((io_acc_block_signal_op22 == 1'b0) | (io_acc_block_signal_op19 == 1'b0) | (ap_start == 1'b0)) & (icmp_ln171_fu_239_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if ((~((io_acc_block_signal_op22 == 1'b0) | (io_acc_block_signal_op19 == 1'b0) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

always @ (*) begin
    ap_block_state2 = ((io_acc_block_signal_op22 == 1'b0) | (io_acc_block_signal_op19 == 1'b0) | (ap_start == 1'b0));
end

assign icmp_ln171_fu_239_p2 = ((r21_reg_151 == 5'd31) ? 1'b1 : 1'b0);

assign io_acc_block_signal_op19 = (p_inData_0_1_0_0_0_empty_n & p_inData_0_0_0_0_0_empty_n);

assign io_acc_block_signal_op22 = (p_inData_0_1_0_0_02_empty_n & p_inData_0_0_0_0_01_empty_n);

assign p_digitReseversedOutputBuff_M_imag4_address0 = zext_ln171_fu_165_p1;

assign p_digitReseversedOutputBuff_M_imag4_d0 = ((tmp_fu_173_p3[0:0] == 1'b1) ? p_inData_0_1_0_0_0_dout : p_inData_0_1_0_0_02_dout);

assign p_digitReseversedOutputBuff_M_imag_address0 = zext_ln171_fu_165_p1;

assign p_digitReseversedOutputBuff_M_imag_d0 = ((tmp_fu_173_p3[0:0] == 1'b1) ? p_inData_0_1_0_0_02_dout : p_inData_0_1_0_0_0_dout);

assign p_digitReseversedOutputBuff_M_real3_address0 = zext_ln171_fu_165_p1;

assign p_digitReseversedOutputBuff_M_real3_d0 = ((tmp_fu_173_p3[0:0] == 1'b1) ? p_inData_0_0_0_0_0_dout : p_inData_0_0_0_0_01_dout);

assign p_digitReseversedOutputBuff_M_real_address0 = zext_ln171_fu_165_p1;

assign p_digitReseversedOutputBuff_M_real_d0 = ((tmp_fu_173_p3[0:0] == 1'b1) ? p_inData_0_0_0_0_01_dout : p_inData_0_0_0_0_0_dout);

assign r_fu_233_p2 = (r21_reg_151 + 5'd1);

assign tmp_fu_173_p3 = r21_reg_151[32'd4];

assign zext_ln171_fu_165_p1 = r21_reg_151;

endmodule //fft_top1_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s