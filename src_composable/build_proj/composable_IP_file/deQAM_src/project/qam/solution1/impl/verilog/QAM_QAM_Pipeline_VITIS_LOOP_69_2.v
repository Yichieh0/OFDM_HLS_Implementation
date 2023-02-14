// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module QAM_QAM_Pipeline_VITIS_LOOP_69_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        data_in_TVALID,
        data_out_TREADY,
        mul,
        data_out_TDATA,
        data_out_TVALID,
        data_out_TKEEP,
        data_out_TSTRB,
        data_out_TUSER,
        data_out_TLAST,
        data_out_TID,
        data_out_TDEST,
        data_in_TDATA,
        data_in_TREADY,
        data_in_TKEEP,
        data_in_TSTRB,
        data_in_TUSER,
        data_in_TLAST,
        data_in_TID,
        data_in_TDEST,
        qam_num_2_reload
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
input  [31:0] mul;
output  [63:0] data_out_TDATA;
output   data_out_TVALID;
output  [7:0] data_out_TKEEP;
output  [7:0] data_out_TSTRB;
output  [0:0] data_out_TUSER;
output  [0:0] data_out_TLAST;
output  [0:0] data_out_TID;
output  [0:0] data_out_TDEST;
input  [63:0] data_in_TDATA;
output   data_in_TREADY;
input  [7:0] data_in_TKEEP;
input  [7:0] data_in_TSTRB;
input  [0:0] data_in_TUSER;
input  [0:0] data_in_TLAST;
input  [0:0] data_in_TID;
input  [0:0] data_in_TDEST;
input  [31:0] qam_num_2_reload;

reg ap_idle;
reg data_out_TVALID;
reg data_in_TREADY;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire   [0:0] icmp_ln69_fu_206_p2;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    data_out_TDATA_blk_n;
wire    ap_block_pp0_stage0;
reg    data_in_TDATA_blk_n;
wire   [31:0] qam_num_2_reload_read_read_fu_120_p2;
reg    ap_block_pp0_stage0_11001;
wire   [1:0] ret_fu_268_p1;
reg   [2:0] ap_phi_mux_out_temp_imag_V_1_phi_fu_184_p6;
wire   [2:0] select_ln29_1_cast_fu_278_p3;
wire   [2:0] ap_phi_reg_pp0_iter0_out_temp_imag_V_1_reg_181;
reg   [30:0] k_fu_108;
wire    ap_loop_init;
reg   [30:0] ap_sig_allocacmp_k_load;
wire   [30:0] k_1_fu_212_p2;
reg   [31:0] out_temp_real_V_fu_112;
wire   [31:0] select_ln110_fu_250_p3;
wire   [61:0] trunc_ln_fu_291_p4;
wire   [31:0] select_ln28_1_cast_fu_327_p3;
reg   [31:0] out_temp_imag_V_fu_116;
wire   [31:0] select_ln1049_fu_226_p3;
wire  signed [31:0] sext_ln29_fu_287_p1;
reg    ap_block_pp0_stage0_01001;
wire   [31:0] k_cast_fu_202_p1;
wire   [0:0] ret_1_fu_222_p1;
wire   [62:0] tmp_fu_234_p4;
wire   [0:0] icmp_ln1049_fu_244_p2;
wire   [0:0] icmp_ln1049_1_fu_272_p2;
wire   [0:0] icmp_ln1049_2_fu_321_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_297;
reg    ap_condition_131;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
end

QAM_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln69_fu_206_p2 == 1'd1) & (ap_start_int == 1'b1))) begin
            k_fu_108 <= k_1_fu_212_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            k_fu_108 <= 31'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((((qam_num_2_reload_read_read_fu_120_p2 == 32'd16) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln69_fu_206_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln_fu_291_p4 == 62'd0)) | ((qam_num_2_reload_read_read_fu_120_p2 == 32'd16) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln69_fu_206_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln_fu_291_p4 == 62'd1)) | (~(trunc_ln_fu_291_p4 == 62'd0) & ~(trunc_ln_fu_291_p4 == 62'd1) & (qam_num_2_reload_read_read_fu_120_p2 == 32'd16) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln69_fu_206_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        out_temp_imag_V_fu_116 <= sext_ln29_fu_287_p1;
    end else if (((qam_num_2_reload_read_read_fu_120_p2 == 32'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln69_fu_206_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_temp_imag_V_fu_116 <= select_ln1049_fu_226_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_131)) begin
        if ((1'b1 == ap_condition_297)) begin
                        out_temp_real_V_fu_112[31 : 1] <= select_ln28_1_cast_fu_327_p3[31 : 1];
        end else if (((qam_num_2_reload_read_read_fu_120_p2 == 32'd16) & (trunc_ln_fu_291_p4 == 62'd0))) begin
                        out_temp_real_V_fu_112[1] <= 1'b0;
            out_temp_real_V_fu_112[2] <= 1'b1;
            out_temp_real_V_fu_112[3] <= 1'b1;
            out_temp_real_V_fu_112[4] <= 1'b1;
            out_temp_real_V_fu_112[5] <= 1'b1;
            out_temp_real_V_fu_112[6] <= 1'b1;
            out_temp_real_V_fu_112[7] <= 1'b1;
            out_temp_real_V_fu_112[8] <= 1'b1;
            out_temp_real_V_fu_112[9] <= 1'b1;
            out_temp_real_V_fu_112[10] <= 1'b1;
            out_temp_real_V_fu_112[11] <= 1'b1;
            out_temp_real_V_fu_112[12] <= 1'b1;
            out_temp_real_V_fu_112[13] <= 1'b1;
            out_temp_real_V_fu_112[14] <= 1'b1;
            out_temp_real_V_fu_112[15] <= 1'b1;
            out_temp_real_V_fu_112[16] <= 1'b1;
            out_temp_real_V_fu_112[17] <= 1'b1;
            out_temp_real_V_fu_112[18] <= 1'b1;
            out_temp_real_V_fu_112[19] <= 1'b1;
            out_temp_real_V_fu_112[20] <= 1'b1;
            out_temp_real_V_fu_112[21] <= 1'b1;
            out_temp_real_V_fu_112[22] <= 1'b1;
            out_temp_real_V_fu_112[23] <= 1'b1;
            out_temp_real_V_fu_112[24] <= 1'b1;
            out_temp_real_V_fu_112[25] <= 1'b1;
            out_temp_real_V_fu_112[26] <= 1'b1;
            out_temp_real_V_fu_112[27] <= 1'b1;
            out_temp_real_V_fu_112[28] <= 1'b1;
            out_temp_real_V_fu_112[29] <= 1'b1;
            out_temp_real_V_fu_112[30] <= 1'b1;
            out_temp_real_V_fu_112[31] <= 1'b1;
        end else if (((qam_num_2_reload_read_read_fu_120_p2 == 32'd16) & (trunc_ln_fu_291_p4 == 62'd1))) begin
                        out_temp_real_V_fu_112[1] <= 1'b1;
            out_temp_real_V_fu_112[2] <= 1'b1;
            out_temp_real_V_fu_112[3] <= 1'b1;
            out_temp_real_V_fu_112[4] <= 1'b1;
            out_temp_real_V_fu_112[5] <= 1'b1;
            out_temp_real_V_fu_112[6] <= 1'b1;
            out_temp_real_V_fu_112[7] <= 1'b1;
            out_temp_real_V_fu_112[8] <= 1'b1;
            out_temp_real_V_fu_112[9] <= 1'b1;
            out_temp_real_V_fu_112[10] <= 1'b1;
            out_temp_real_V_fu_112[11] <= 1'b1;
            out_temp_real_V_fu_112[12] <= 1'b1;
            out_temp_real_V_fu_112[13] <= 1'b1;
            out_temp_real_V_fu_112[14] <= 1'b1;
            out_temp_real_V_fu_112[15] <= 1'b1;
            out_temp_real_V_fu_112[16] <= 1'b1;
            out_temp_real_V_fu_112[17] <= 1'b1;
            out_temp_real_V_fu_112[18] <= 1'b1;
            out_temp_real_V_fu_112[19] <= 1'b1;
            out_temp_real_V_fu_112[20] <= 1'b1;
            out_temp_real_V_fu_112[21] <= 1'b1;
            out_temp_real_V_fu_112[22] <= 1'b1;
            out_temp_real_V_fu_112[23] <= 1'b1;
            out_temp_real_V_fu_112[24] <= 1'b1;
            out_temp_real_V_fu_112[25] <= 1'b1;
            out_temp_real_V_fu_112[26] <= 1'b1;
            out_temp_real_V_fu_112[27] <= 1'b1;
            out_temp_real_V_fu_112[28] <= 1'b1;
            out_temp_real_V_fu_112[29] <= 1'b1;
            out_temp_real_V_fu_112[30] <= 1'b1;
            out_temp_real_V_fu_112[31] <= 1'b1;
        end else if ((qam_num_2_reload_read_read_fu_120_p2 == 32'd4)) begin
                        out_temp_real_V_fu_112[31 : 1] <= select_ln110_fu_250_p3[31 : 1];
        end
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln69_fu_206_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((qam_num_2_reload_read_read_fu_120_p2 == 32'd16) & (icmp_ln69_fu_206_p2 == 1'd1))) begin
        if ((ret_fu_268_p1 == 2'd1)) begin
            ap_phi_mux_out_temp_imag_V_1_phi_fu_184_p6 = 3'd7;
        end else if ((ret_fu_268_p1 == 2'd0)) begin
            ap_phi_mux_out_temp_imag_V_1_phi_fu_184_p6 = 3'd5;
        end else if ((~(ret_fu_268_p1 == 2'd1) & ~(ret_fu_268_p1 == 2'd0))) begin
            ap_phi_mux_out_temp_imag_V_1_phi_fu_184_p6 = select_ln29_1_cast_fu_278_p3;
        end else begin
            ap_phi_mux_out_temp_imag_V_1_phi_fu_184_p6 = ap_phi_reg_pp0_iter0_out_temp_imag_V_1_reg_181;
        end
    end else begin
        ap_phi_mux_out_temp_imag_V_1_phi_fu_184_p6 = ap_phi_reg_pp0_iter0_out_temp_imag_V_1_reg_181;
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_k_load = 31'd0;
    end else begin
        ap_sig_allocacmp_k_load = k_fu_108;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln69_fu_206_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_in_TDATA_blk_n = data_in_TVALID;
    end else begin
        data_in_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln69_fu_206_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_in_TREADY = 1'b1;
    end else begin
        data_in_TREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_out_TDATA_blk_n = data_out_TREADY;
    end else begin
        data_out_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_out_TVALID = 1'b1;
    end else begin
        data_out_TVALID = 1'b0;
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
    ap_block_pp0_stage0_01001 = (((data_out_TREADY == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((icmp_ln69_fu_206_p2 == 1'd1) & (data_in_TVALID == 1'b0) & (ap_start_int == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((data_out_TREADY == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((icmp_ln69_fu_206_p2 == 1'd1) & (data_in_TVALID == 1'b0) & (ap_start_int == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((data_out_TREADY == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((icmp_ln69_fu_206_p2 == 1'd1) & (data_in_TVALID == 1'b0) & (ap_start_int == 1'b1)));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((icmp_ln69_fu_206_p2 == 1'd1) & (data_in_TVALID == 1'b0));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (data_out_TREADY == 1'b0);
end

always @ (*) begin
    ap_condition_131 = ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln69_fu_206_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_condition_297 = (~(trunc_ln_fu_291_p4 == 62'd0) & ~(trunc_ln_fu_291_p4 == 62'd1) & (qam_num_2_reload_read_read_fu_120_p2 == 32'd16));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign ap_phi_reg_pp0_iter0_out_temp_imag_V_1_reg_181 = 'bx;

assign data_out_TDATA = {{out_temp_real_V_fu_112}, {out_temp_imag_V_fu_116}};

assign data_out_TDEST = 1'd0;

assign data_out_TID = 1'd0;

assign data_out_TKEEP = 8'd0;

assign data_out_TLAST = 1'd0;

assign data_out_TSTRB = 8'd0;

assign data_out_TUSER = 1'd0;

assign icmp_ln1049_1_fu_272_p2 = ((ret_fu_268_p1 == 2'd2) ? 1'b1 : 1'b0);

assign icmp_ln1049_2_fu_321_p2 = ((trunc_ln_fu_291_p4 == 62'd2) ? 1'b1 : 1'b0);

assign icmp_ln1049_fu_244_p2 = ((tmp_fu_234_p4 == 63'd0) ? 1'b1 : 1'b0);

assign icmp_ln69_fu_206_p2 = (($signed(k_cast_fu_202_p1) < $signed(mul)) ? 1'b1 : 1'b0);

assign k_1_fu_212_p2 = (ap_sig_allocacmp_k_load + 31'd1);

assign k_cast_fu_202_p1 = ap_sig_allocacmp_k_load;

assign qam_num_2_reload_read_read_fu_120_p2 = qam_num_2_reload;

assign ret_1_fu_222_p1 = data_in_TDATA[0:0];

assign ret_fu_268_p1 = data_in_TDATA[1:0];

assign select_ln1049_fu_226_p3 = ((ret_1_fu_222_p1[0:0] == 1'b1) ? 32'd1 : 32'd4294967295);

assign select_ln110_fu_250_p3 = ((icmp_ln1049_fu_244_p2[0:0] == 1'b1) ? 32'd4294967295 : 32'd1);

assign select_ln28_1_cast_fu_327_p3 = ((icmp_ln1049_2_fu_321_p2[0:0] == 1'b1) ? 32'd3 : 32'd1);

assign select_ln29_1_cast_fu_278_p3 = ((icmp_ln1049_1_fu_272_p2[0:0] == 1'b1) ? 3'd3 : 3'd1);

assign sext_ln29_fu_287_p1 = $signed(ap_phi_mux_out_temp_imag_V_1_phi_fu_184_p6);

assign tmp_fu_234_p4 = {{data_in_TDATA[63:1]}};

assign trunc_ln_fu_291_p4 = {{data_in_TDATA[63:2]}};

always @ (posedge ap_clk) begin
    out_temp_real_V_fu_112[0] <= 1'b1;
end

endmodule //QAM_QAM_Pipeline_VITIS_LOOP_69_2
