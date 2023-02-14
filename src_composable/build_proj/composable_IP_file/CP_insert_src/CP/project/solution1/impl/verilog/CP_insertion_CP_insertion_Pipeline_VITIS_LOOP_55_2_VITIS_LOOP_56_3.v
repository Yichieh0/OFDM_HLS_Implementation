// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module CP_insertion_CP_insertion_Pipeline_VITIS_LOOP_55_2_VITIS_LOOP_56_3 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        data_in_TVALID,
        data_out_TREADY,
        bound,
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
        sub50
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
input  [38:0] bound;
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
input  [31:0] sub50;

reg ap_idle;
reg[63:0] data_out_TDATA;
reg data_out_TVALID;
reg data_in_TREADY;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln55_fu_244_p2;
wire   [0:0] icmp_ln57_fu_296_p2;
reg    ap_predicate_op52_read_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg   [0:0] icmp_ln57_reg_474;
reg   [0:0] icmp_ln68_reg_498;
reg    ap_predicate_op82_write_state3;
reg    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_state3_io;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    data_out_TDATA_blk_n;
wire    ap_block_pp0_stage0;
reg    data_in_TDATA_blk_n;
reg    ap_block_pp0_stage0_11001;
reg   [19:0] p_Result_9_reg_488;
wire   [19:0] p_Result_10_fu_323_p1;
reg   [19:0] p_Result_10_reg_493;
wire   [0:0] icmp_ln68_fu_328_p2;
reg   [5:0] in_r_V_address0;
reg    in_r_V_ce0;
reg    in_r_V_we0;
wire   [19:0] in_r_V_d0;
wire   [19:0] in_r_V_q0;
reg   [5:0] in_i_V_address0;
reg    in_i_V_ce0;
reg    in_i_V_we0;
wire   [19:0] in_i_V_d0;
wire   [19:0] in_i_V_q0;
wire   [63:0] zext_ln640_fu_302_p1;
wire   [63:0] t_cast3_fu_272_p1;
reg   [7:0] t_fu_102;
wire   [7:0] add_ln56_fu_333_p2;
wire    ap_loop_init;
reg   [38:0] indvar_flatten_fu_106;
wire   [38:0] add_ln55_fu_249_p2;
reg   [31:0] p_Val2_s_fu_110;
wire   [31:0] p_Result_s_fu_349_p5;
wire   [31:0] p_Result_11_fu_392_p5;
reg   [31:0] p_Val2_1_fu_114;
wire   [31:0] p_Result_7_fu_361_p5;
wire   [31:0] p_Result_12_fu_403_p5;
wire   [63:0] p_Result_8_fu_373_p3;
reg    ap_block_pp0_stage0_01001;
wire   [63:0] p_Result_13_fu_414_p3;
wire   [0:0] icmp_ln56_fu_258_p2;
wire   [7:0] select_ln12_fu_264_p3;
wire   [1:0] tmp_fu_286_p4;
wire   [5:0] empty_fu_278_p1;
wire   [31:0] t_cast1_fu_282_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_176;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
end

CP_insertion_CP_insertion_Pipeline_VITIS_LOOP_55_2_VITIS_LOOP_56_3_in_r_V #(
    .DataWidth( 20 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
in_r_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(in_r_V_address0),
    .ce0(in_r_V_ce0),
    .we0(in_r_V_we0),
    .d0(in_r_V_d0),
    .q0(in_r_V_q0)
);

CP_insertion_CP_insertion_Pipeline_VITIS_LOOP_55_2_VITIS_LOOP_56_3_in_r_V #(
    .DataWidth( 20 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
in_i_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(in_i_V_address0),
    .ce0(in_i_V_ce0),
    .we0(in_i_V_we0),
    .d0(in_i_V_d0),
    .q0(in_i_V_q0)
);

CP_insertion_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
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
            indvar_flatten_fu_106 <= 39'd0;
        end else if (((icmp_ln55_fu_244_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten_fu_106 <= add_ln55_fu_249_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if (((icmp_ln68_reg_498 == 1'd0) & (icmp_ln57_reg_474 == 1'd1))) begin
            p_Val2_1_fu_114 <= p_Result_12_fu_403_p5;
        end else if ((icmp_ln57_reg_474 == 1'd0)) begin
            p_Val2_1_fu_114 <= p_Result_7_fu_361_p5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if (((icmp_ln68_reg_498 == 1'd0) & (icmp_ln57_reg_474 == 1'd1))) begin
            p_Val2_s_fu_110 <= p_Result_11_fu_392_p5;
        end else if ((icmp_ln57_reg_474 == 1'd0)) begin
            p_Val2_s_fu_110 <= p_Result_s_fu_349_p5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            t_fu_102 <= 8'd0;
        end else if (((icmp_ln55_fu_244_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            t_fu_102 <= add_ln56_fu_333_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln55_fu_244_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln57_reg_474 <= icmp_ln57_fu_296_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln57_fu_296_p2 == 1'd1) & (icmp_ln55_fu_244_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln68_reg_498 <= icmp_ln68_fu_328_p2;
        p_Result_10_reg_493 <= p_Result_10_fu_323_p1;
        p_Result_9_reg_488 <= {{data_in_TDATA[51:32]}};
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln55_fu_244_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_predicate_op52_read_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_in_TDATA_blk_n = data_in_TVALID;
    end else begin
        data_in_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op52_read_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_in_TREADY = 1'b1;
    end else begin
        data_in_TREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((ap_predicate_op82_write_state3 == 1'b1)) begin
            data_out_TDATA = p_Result_13_fu_414_p3;
        end else if ((icmp_ln57_reg_474 == 1'd0)) begin
            data_out_TDATA = p_Result_8_fu_373_p3;
        end else begin
            data_out_TDATA = 'bx;
        end
    end else begin
        data_out_TDATA = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_predicate_op82_write_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0) & (icmp_ln57_reg_474 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        data_out_TDATA_blk_n = data_out_TREADY;
    end else begin
        data_out_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op82_write_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln57_reg_474 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        data_out_TVALID = 1'b1;
    end else begin
        data_out_TVALID = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_176)) begin
        if ((icmp_ln57_fu_296_p2 == 1'd1)) begin
            in_i_V_address0 = t_cast3_fu_272_p1;
        end else if ((icmp_ln57_fu_296_p2 == 1'd0)) begin
            in_i_V_address0 = zext_ln640_fu_302_p1;
        end else begin
            in_i_V_address0 = 'bx;
        end
    end else begin
        in_i_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln57_fu_296_p2 == 1'd1) & (icmp_ln55_fu_244_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln57_fu_296_p2 == 1'd0) & (icmp_ln55_fu_244_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        in_i_V_ce0 = 1'b1;
    end else begin
        in_i_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln57_fu_296_p2 == 1'd1) & (icmp_ln55_fu_244_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        in_i_V_we0 = 1'b1;
    end else begin
        in_i_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_176)) begin
        if ((icmp_ln57_fu_296_p2 == 1'd1)) begin
            in_r_V_address0 = t_cast3_fu_272_p1;
        end else if ((icmp_ln57_fu_296_p2 == 1'd0)) begin
            in_r_V_address0 = zext_ln640_fu_302_p1;
        end else begin
            in_r_V_address0 = 'bx;
        end
    end else begin
        in_r_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln57_fu_296_p2 == 1'd1) & (icmp_ln55_fu_244_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln57_fu_296_p2 == 1'd0) & (icmp_ln55_fu_244_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        in_r_V_ce0 = 1'b1;
    end else begin
        in_r_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln57_fu_296_p2 == 1'd1) & (icmp_ln55_fu_244_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        in_r_V_we0 = 1'b1;
    end else begin
        in_r_V_we0 = 1'b0;
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

assign add_ln55_fu_249_p2 = (indvar_flatten_fu_106 + 39'd1);

assign add_ln56_fu_333_p2 = (select_ln12_fu_264_p3 + 8'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((ap_enable_reg_pp0_iter2 == 1'b1) & (((ap_predicate_op82_write_state3 == 1'b1) & (data_out_TREADY == 1'b0)) | ((icmp_ln57_reg_474 == 1'd0) & (data_out_TREADY == 1'b0)))) | ((ap_predicate_op52_read_state2 == 1'b1) & (data_in_TVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_enable_reg_pp0_iter2 == 1'b1) & ((1'b1 == ap_block_state3_io) | ((ap_predicate_op82_write_state3 == 1'b1) & (data_out_TREADY == 1'b0)) | ((icmp_ln57_reg_474 == 1'd0) & (data_out_TREADY == 1'b0)))) | ((ap_predicate_op52_read_state2 == 1'b1) & (data_in_TVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_enable_reg_pp0_iter2 == 1'b1) & ((1'b1 == ap_block_state3_io) | ((ap_predicate_op82_write_state3 == 1'b1) & (data_out_TREADY == 1'b0)) | ((icmp_ln57_reg_474 == 1'd0) & (data_out_TREADY == 1'b0)))) | ((ap_predicate_op52_read_state2 == 1'b1) & (data_in_TVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((ap_predicate_op52_read_state2 == 1'b1) & (data_in_TVALID == 1'b0));
end

always @ (*) begin
    ap_block_state3_io = (((ap_predicate_op82_write_state3 == 1'b1) & (data_out_TREADY == 1'b0)) | ((icmp_ln57_reg_474 == 1'd0) & (data_out_TREADY == 1'b0)));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter2 = (((ap_predicate_op82_write_state3 == 1'b1) & (data_out_TREADY == 1'b0)) | ((icmp_ln57_reg_474 == 1'd0) & (data_out_TREADY == 1'b0)));
end

always @ (*) begin
    ap_condition_176 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln55_fu_244_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;

always @ (*) begin
    ap_predicate_op52_read_state2 = ((icmp_ln57_fu_296_p2 == 1'd1) & (icmp_ln55_fu_244_p2 == 1'd0));
end

always @ (*) begin
    ap_predicate_op82_write_state3 = ((icmp_ln68_reg_498 == 1'd0) & (icmp_ln57_reg_474 == 1'd1));
end

assign data_out_TDEST = 1'd0;

assign data_out_TID = 1'd0;

assign data_out_TKEEP = 8'd0;

assign data_out_TLAST = 1'd0;

assign data_out_TSTRB = 8'd0;

assign data_out_TUSER = 1'd0;

assign empty_fu_278_p1 = select_ln12_fu_264_p3[5:0];

assign icmp_ln55_fu_244_p2 = ((indvar_flatten_fu_106 == bound) ? 1'b1 : 1'b0);

assign icmp_ln56_fu_258_p2 = ((t_fu_102 == 8'd128) ? 1'b1 : 1'b0);

assign icmp_ln57_fu_296_p2 = ((tmp_fu_286_p4 == 2'd0) ? 1'b1 : 1'b0);

assign icmp_ln68_fu_328_p2 = (($signed(t_cast1_fu_282_p1) < $signed(sub50)) ? 1'b1 : 1'b0);

assign in_i_V_d0 = data_in_TDATA[19:0];

assign in_r_V_d0 = {{data_in_TDATA[51:32]}};

assign p_Result_10_fu_323_p1 = data_in_TDATA[19:0];

assign p_Result_11_fu_392_p5 = {{p_Val2_s_fu_110[31:20]}, {p_Result_9_reg_488}};

assign p_Result_12_fu_403_p5 = {{p_Val2_1_fu_114[31:20]}, {p_Result_10_reg_493}};

assign p_Result_13_fu_414_p3 = {{p_Result_11_fu_392_p5}, {p_Result_12_fu_403_p5}};

assign p_Result_7_fu_361_p5 = {{p_Val2_1_fu_114[31:20]}, {in_i_V_q0}};

assign p_Result_8_fu_373_p3 = {{p_Result_s_fu_349_p5}, {p_Result_7_fu_361_p5}};

assign p_Result_s_fu_349_p5 = {{p_Val2_s_fu_110[31:20]}, {in_r_V_q0}};

assign select_ln12_fu_264_p3 = ((icmp_ln56_fu_258_p2[0:0] == 1'b1) ? 8'd0 : t_fu_102);

assign t_cast1_fu_282_p1 = select_ln12_fu_264_p3;

assign t_cast3_fu_272_p1 = select_ln12_fu_264_p3;

assign tmp_fu_286_p4 = {{select_ln12_fu_264_p3[7:6]}};

assign zext_ln640_fu_302_p1 = empty_fu_278_p1;

endmodule //CP_insertion_CP_insertion_Pipeline_VITIS_LOOP_55_2_VITIS_LOOP_56_3
