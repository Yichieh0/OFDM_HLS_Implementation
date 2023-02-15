// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module QAM_QAM_Pipeline_VITIS_LOOP_71_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        data_in_TVALID,
        data_out_TREADY,
        mul,
        sub57,
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
input  [31:0] sub57;
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
wire   [0:0] icmp_ln71_fu_214_p2;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    data_out_TDATA_blk_n;
wire    ap_block_pp0_stage0;
reg    data_in_TDATA_blk_n;
wire   [31:0] qam_num_2_reload_read_read_fu_128_p2;
reg    ap_block_pp0_stage0_11001;
reg   [63:0] p_Val2_s_reg_447;
reg   [7:0] tmp_1_reg_452;
reg   [7:0] tmp_2_reg_457;
reg   [0:0] tmp_3_reg_462;
reg   [0:0] tmp_4_reg_467;
reg   [0:0] tmp_5_reg_472;
wire   [1:0] ret_fu_296_p1;
wire   [0:0] out_temp_last_V_fu_373_p2;
reg   [0:0] out_temp_last_V_reg_484;
reg   [17:0] ap_phi_mux_out_temp_imag_V_1_phi_fu_192_p6;
wire   [17:0] select_ln30_1_cast_fu_306_p3;
wire   [17:0] ap_phi_reg_pp0_iter0_out_temp_imag_V_1_reg_189;
reg   [30:0] k_fu_116;
wire    ap_loop_init;
reg   [30:0] ap_sig_allocacmp_k_1;
wire   [30:0] k_2_fu_220_p2;
reg   [21:0] out_temp_real_V_fu_120;
wire   [21:0] select_ln114_fu_278_p3;
wire   [61:0] trunc_ln_fu_319_p4;
wire   [21:0] select_ln29_1_cast_fu_355_p3;
reg   [21:0] out_temp_imag_V_fu_124;
wire   [21:0] select_ln1049_fu_254_p3;
wire  signed [21:0] sext_ln30_fu_315_p1;
reg    ap_block_pp0_stage0_01001;
wire   [31:0] k_cast_fu_210_p1;
wire   [0:0] ret_1_fu_250_p1;
wire   [62:0] tmp_fu_262_p4;
wire   [0:0] icmp_ln1049_fu_272_p2;
wire   [0:0] icmp_ln1049_1_fu_300_p2;
wire   [0:0] icmp_ln1049_2_fu_349_p2;
wire   [63:0] p_Result_s_fu_390_p5;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_368;
reg    ap_condition_147;
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
        if (((icmp_ln71_fu_214_p2 == 1'd1) & (ap_start_int == 1'b1))) begin
            k_fu_116 <= k_2_fu_220_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            k_fu_116 <= 31'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((~(trunc_ln_fu_319_p4 == 62'd0) & ~(trunc_ln_fu_319_p4 == 62'd1) & (qam_num_2_reload_read_read_fu_128_p2 == 32'd16) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln71_fu_214_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((qam_num_2_reload_read_read_fu_128_p2 == 32'd16) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln71_fu_214_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln_fu_319_p4 == 62'd0)) | ((qam_num_2_reload_read_read_fu_128_p2 == 32'd16) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln71_fu_214_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln_fu_319_p4 == 62'd1)))) begin
        out_temp_imag_V_fu_124 <= sext_ln30_fu_315_p1;
    end else if (((qam_num_2_reload_read_read_fu_128_p2 == 32'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln71_fu_214_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_temp_imag_V_fu_124 <= select_ln1049_fu_254_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_147)) begin
        if ((1'b1 == ap_condition_368)) begin
                        out_temp_real_V_fu_120[21 : 16] <= select_ln29_1_cast_fu_355_p3[21 : 16];
        end else if (((qam_num_2_reload_read_read_fu_128_p2 == 32'd16) & (trunc_ln_fu_319_p4 == 62'd0))) begin
                        out_temp_real_V_fu_120[16] <= 1'b0;
            out_temp_real_V_fu_120[17] <= 1'b1;
            out_temp_real_V_fu_120[18] <= 1'b1;
            out_temp_real_V_fu_120[19] <= 1'b1;
            out_temp_real_V_fu_120[20] <= 1'b1;
            out_temp_real_V_fu_120[21] <= 1'b1;
        end else if (((qam_num_2_reload_read_read_fu_128_p2 == 32'd16) & (trunc_ln_fu_319_p4 == 62'd1))) begin
                        out_temp_real_V_fu_120[16] <= 1'b1;
            out_temp_real_V_fu_120[17] <= 1'b1;
            out_temp_real_V_fu_120[18] <= 1'b1;
            out_temp_real_V_fu_120[19] <= 1'b1;
            out_temp_real_V_fu_120[20] <= 1'b1;
            out_temp_real_V_fu_120[21] <= 1'b1;
        end else if ((qam_num_2_reload_read_read_fu_128_p2 == 32'd4)) begin
                        out_temp_real_V_fu_120[21 : 16] <= select_ln114_fu_278_p3[21 : 16];
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln71_fu_214_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_temp_last_V_reg_484 <= out_temp_last_V_fu_373_p2;
        p_Val2_s_reg_447 <= data_in_TDATA;
        tmp_1_reg_452 <= data_in_TKEEP;
        tmp_2_reg_457 <= data_in_TSTRB;
        tmp_3_reg_462 <= data_in_TUSER;
        tmp_4_reg_467 <= data_in_TID;
        tmp_5_reg_472 <= data_in_TDEST;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln71_fu_214_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((qam_num_2_reload_read_read_fu_128_p2 == 32'd16) & (icmp_ln71_fu_214_p2 == 1'd1))) begin
        if ((ret_fu_296_p1 == 2'd1)) begin
            ap_phi_mux_out_temp_imag_V_1_phi_fu_192_p6 = 18'd229376;
        end else if ((ret_fu_296_p1 == 2'd0)) begin
            ap_phi_mux_out_temp_imag_V_1_phi_fu_192_p6 = 18'd163840;
        end else if ((~(ret_fu_296_p1 == 2'd1) & ~(ret_fu_296_p1 == 2'd0))) begin
            ap_phi_mux_out_temp_imag_V_1_phi_fu_192_p6 = select_ln30_1_cast_fu_306_p3;
        end else begin
            ap_phi_mux_out_temp_imag_V_1_phi_fu_192_p6 = ap_phi_reg_pp0_iter0_out_temp_imag_V_1_reg_189;
        end
    end else begin
        ap_phi_mux_out_temp_imag_V_1_phi_fu_192_p6 = ap_phi_reg_pp0_iter0_out_temp_imag_V_1_reg_189;
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
        ap_sig_allocacmp_k_1 = 31'd0;
    end else begin
        ap_sig_allocacmp_k_1 = k_fu_116;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln71_fu_214_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_in_TDATA_blk_n = data_in_TVALID;
    end else begin
        data_in_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln71_fu_214_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    ap_block_pp0_stage0_01001 = (((data_out_TREADY == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((icmp_ln71_fu_214_p2 == 1'd1) & (data_in_TVALID == 1'b0) & (ap_start_int == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((data_out_TREADY == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((icmp_ln71_fu_214_p2 == 1'd1) & (data_in_TVALID == 1'b0) & (ap_start_int == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((data_out_TREADY == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((icmp_ln71_fu_214_p2 == 1'd1) & (data_in_TVALID == 1'b0) & (ap_start_int == 1'b1)));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((icmp_ln71_fu_214_p2 == 1'd1) & (data_in_TVALID == 1'b0));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (data_out_TREADY == 1'b0);
end

always @ (*) begin
    ap_condition_147 = ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln71_fu_214_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_condition_368 = (~(trunc_ln_fu_319_p4 == 62'd0) & ~(trunc_ln_fu_319_p4 == 62'd1) & (qam_num_2_reload_read_read_fu_128_p2 == 32'd16));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign ap_phi_reg_pp0_iter0_out_temp_imag_V_1_reg_189 = 'bx;

assign data_out_TDATA = {{p_Result_s_fu_390_p5[63:22]}, {out_temp_imag_V_fu_124}};

assign data_out_TDEST = tmp_5_reg_472;

assign data_out_TID = tmp_4_reg_467;

assign data_out_TKEEP = tmp_1_reg_452;

assign data_out_TLAST = out_temp_last_V_reg_484;

assign data_out_TSTRB = tmp_2_reg_457;

assign data_out_TUSER = tmp_3_reg_462;

assign icmp_ln1049_1_fu_300_p2 = ((ret_fu_296_p1 == 2'd2) ? 1'b1 : 1'b0);

assign icmp_ln1049_2_fu_349_p2 = ((trunc_ln_fu_319_p4 == 62'd2) ? 1'b1 : 1'b0);

assign icmp_ln1049_fu_272_p2 = ((tmp_fu_262_p4 == 63'd0) ? 1'b1 : 1'b0);

assign icmp_ln71_fu_214_p2 = (($signed(k_cast_fu_210_p1) < $signed(mul)) ? 1'b1 : 1'b0);

assign k_2_fu_220_p2 = (ap_sig_allocacmp_k_1 + 31'd1);

assign k_cast_fu_210_p1 = ap_sig_allocacmp_k_1;

assign out_temp_last_V_fu_373_p2 = ((k_cast_fu_210_p1 == sub57) ? 1'b1 : 1'b0);

assign p_Result_s_fu_390_p5 = {{p_Val2_s_reg_447[63:54]}, {out_temp_real_V_fu_120}, {p_Val2_s_reg_447[31:0]}};

assign qam_num_2_reload_read_read_fu_128_p2 = qam_num_2_reload;

assign ret_1_fu_250_p1 = data_in_TDATA[0:0];

assign ret_fu_296_p1 = data_in_TDATA[1:0];

assign select_ln1049_fu_254_p3 = ((ret_1_fu_250_p1[0:0] == 1'b1) ? 22'd32768 : 22'd4161536);

assign select_ln114_fu_278_p3 = ((icmp_ln1049_fu_272_p2[0:0] == 1'b1) ? 22'd4161536 : 22'd32768);

assign select_ln29_1_cast_fu_355_p3 = ((icmp_ln1049_2_fu_349_p2[0:0] == 1'b1) ? 22'd98304 : 22'd32768);

assign select_ln30_1_cast_fu_306_p3 = ((icmp_ln1049_1_fu_300_p2[0:0] == 1'b1) ? 18'd98304 : 18'd32768);

assign sext_ln30_fu_315_p1 = $signed(ap_phi_mux_out_temp_imag_V_1_phi_fu_192_p6);

assign tmp_fu_262_p4 = {{data_in_TDATA[63:1]}};

assign trunc_ln_fu_319_p4 = {{data_in_TDATA[63:2]}};

always @ (posedge ap_clk) begin
    out_temp_real_V_fu_120[15:0] <= 16'b1000000000000000;
end

endmodule //QAM_QAM_Pipeline_VITIS_LOOP_71_2