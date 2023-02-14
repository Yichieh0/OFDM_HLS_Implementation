// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module equalizer_pilot_removal_equalizer_pilot_removal_Pipeline_VITIS_LOOP_129_4_VITIS_LOOP_130_5 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        data_in_TVALID,
        data_out_TREADY,
        zext_ln129,
        data_in_TDATA,
        data_in_TREADY,
        data_in_TKEEP,
        data_in_TSTRB,
        data_in_TUSER,
        data_in_TLAST,
        data_in_TID,
        data_in_TDEST,
        pilot_width_4_reload,
        data_out_TDATA,
        data_out_TVALID,
        data_out_TKEEP,
        data_out_TSTRB,
        data_out_TUSER,
        data_out_TLAST,
        data_out_TID,
        data_out_TDEST
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
input  [37:0] zext_ln129;
input  [63:0] data_in_TDATA;
output   data_in_TREADY;
input  [7:0] data_in_TKEEP;
input  [7:0] data_in_TSTRB;
input  [0:0] data_in_TUSER;
input  [0:0] data_in_TLAST;
input  [0:0] data_in_TID;
input  [0:0] data_in_TDEST;
input  [31:0] pilot_width_4_reload;
output  [63:0] data_out_TDATA;
output   data_out_TVALID;
output  [7:0] data_out_TKEEP;
output  [7:0] data_out_TSTRB;
output  [0:0] data_out_TUSER;
output  [0:0] data_out_TLAST;
output  [0:0] data_out_TID;
output  [0:0] data_out_TDEST;

reg ap_idle;
reg data_in_TREADY;
reg data_out_TVALID;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln129_fu_204_p2;
reg    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
wire    ap_block_state7_pp0_stage0_iter6;
wire    ap_block_state8_pp0_stage0_iter7;
wire    ap_block_state9_pp0_stage0_iter8;
wire    ap_block_state10_pp0_stage0_iter9;
wire    ap_block_state11_pp0_stage0_iter10;
wire    ap_block_state12_pp0_stage0_iter11;
wire    ap_block_state13_pp0_stage0_iter12;
wire    ap_block_state14_pp0_stage0_iter13;
wire    ap_block_state15_pp0_stage0_iter14;
reg   [0:0] icmp_ln131_reg_531;
reg   [0:0] icmp_ln131_reg_531_pp0_iter14_reg;
reg    ap_block_state16_pp0_stage0_iter15;
reg    ap_block_state16_io;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    data_in_TDATA_blk_n;
wire    ap_block_pp0_stage0;
reg    data_out_TDATA_blk_n;
reg    ap_block_pp0_stage0_11001;
reg   [63:0] empty_reg_520_0;
reg   [7:0] empty_reg_520_1;
reg   [7:0] empty_reg_520_2;
reg   [0:0] empty_reg_520_3;
reg   [0:0] empty_reg_520_4;
reg   [0:0] empty_reg_520_5;
reg   [0:0] empty_reg_520_6;
reg   [63:0] empty_reg_520_pp0_iter2_reg_0;
reg   [7:0] empty_reg_520_pp0_iter2_reg_1;
reg   [7:0] empty_reg_520_pp0_iter2_reg_2;
reg   [0:0] empty_reg_520_pp0_iter2_reg_3;
reg   [0:0] empty_reg_520_pp0_iter2_reg_4;
reg   [0:0] empty_reg_520_pp0_iter2_reg_5;
reg   [0:0] empty_reg_520_pp0_iter2_reg_6;
reg   [63:0] empty_reg_520_pp0_iter3_reg_0;
reg   [7:0] empty_reg_520_pp0_iter3_reg_1;
reg   [7:0] empty_reg_520_pp0_iter3_reg_2;
reg   [0:0] empty_reg_520_pp0_iter3_reg_3;
reg   [0:0] empty_reg_520_pp0_iter3_reg_4;
reg   [0:0] empty_reg_520_pp0_iter3_reg_5;
reg   [0:0] empty_reg_520_pp0_iter3_reg_6;
reg   [63:0] empty_reg_520_pp0_iter4_reg_0;
reg   [7:0] empty_reg_520_pp0_iter4_reg_1;
reg   [7:0] empty_reg_520_pp0_iter4_reg_2;
reg   [0:0] empty_reg_520_pp0_iter4_reg_3;
reg   [0:0] empty_reg_520_pp0_iter4_reg_4;
reg   [0:0] empty_reg_520_pp0_iter4_reg_5;
reg   [0:0] empty_reg_520_pp0_iter4_reg_6;
reg   [63:0] empty_reg_520_pp0_iter5_reg_0;
reg   [7:0] empty_reg_520_pp0_iter5_reg_1;
reg   [7:0] empty_reg_520_pp0_iter5_reg_2;
reg   [0:0] empty_reg_520_pp0_iter5_reg_3;
reg   [0:0] empty_reg_520_pp0_iter5_reg_4;
reg   [0:0] empty_reg_520_pp0_iter5_reg_5;
reg   [0:0] empty_reg_520_pp0_iter5_reg_6;
reg   [63:0] empty_reg_520_pp0_iter6_reg_0;
reg   [7:0] empty_reg_520_pp0_iter6_reg_1;
reg   [7:0] empty_reg_520_pp0_iter6_reg_2;
reg   [0:0] empty_reg_520_pp0_iter6_reg_3;
reg   [0:0] empty_reg_520_pp0_iter6_reg_4;
reg   [0:0] empty_reg_520_pp0_iter6_reg_5;
reg   [0:0] empty_reg_520_pp0_iter6_reg_6;
reg   [63:0] empty_reg_520_pp0_iter7_reg_0;
reg   [7:0] empty_reg_520_pp0_iter7_reg_1;
reg   [7:0] empty_reg_520_pp0_iter7_reg_2;
reg   [0:0] empty_reg_520_pp0_iter7_reg_3;
reg   [0:0] empty_reg_520_pp0_iter7_reg_4;
reg   [0:0] empty_reg_520_pp0_iter7_reg_5;
reg   [0:0] empty_reg_520_pp0_iter7_reg_6;
reg   [63:0] empty_reg_520_pp0_iter8_reg_0;
reg   [7:0] empty_reg_520_pp0_iter8_reg_1;
reg   [7:0] empty_reg_520_pp0_iter8_reg_2;
reg   [0:0] empty_reg_520_pp0_iter8_reg_3;
reg   [0:0] empty_reg_520_pp0_iter8_reg_4;
reg   [0:0] empty_reg_520_pp0_iter8_reg_5;
reg   [0:0] empty_reg_520_pp0_iter8_reg_6;
reg   [63:0] empty_reg_520_pp0_iter9_reg_0;
reg   [7:0] empty_reg_520_pp0_iter9_reg_1;
reg   [7:0] empty_reg_520_pp0_iter9_reg_2;
reg   [0:0] empty_reg_520_pp0_iter9_reg_3;
reg   [0:0] empty_reg_520_pp0_iter9_reg_4;
reg   [0:0] empty_reg_520_pp0_iter9_reg_5;
reg   [0:0] empty_reg_520_pp0_iter9_reg_6;
reg   [63:0] empty_reg_520_pp0_iter10_reg_0;
reg   [7:0] empty_reg_520_pp0_iter10_reg_1;
reg   [7:0] empty_reg_520_pp0_iter10_reg_2;
reg   [0:0] empty_reg_520_pp0_iter10_reg_3;
reg   [0:0] empty_reg_520_pp0_iter10_reg_4;
reg   [0:0] empty_reg_520_pp0_iter10_reg_5;
reg   [0:0] empty_reg_520_pp0_iter10_reg_6;
reg   [63:0] empty_reg_520_pp0_iter11_reg_0;
reg   [7:0] empty_reg_520_pp0_iter11_reg_1;
reg   [7:0] empty_reg_520_pp0_iter11_reg_2;
reg   [0:0] empty_reg_520_pp0_iter11_reg_3;
reg   [0:0] empty_reg_520_pp0_iter11_reg_4;
reg   [0:0] empty_reg_520_pp0_iter11_reg_5;
reg   [0:0] empty_reg_520_pp0_iter11_reg_6;
wire   [0:0] icmp_ln131_fu_261_p2;
reg   [0:0] icmp_ln131_reg_531_pp0_iter13_reg;
reg   [7:0] p_028_load_reg_545;
reg   [7:0] p_028_load_reg_545_pp0_iter14_reg;
reg   [7:0] tmp_7_load_reg_550;
reg   [7:0] tmp_7_load_reg_550_pp0_iter14_reg;
reg   [0:0] tmp_8_load_reg_555;
reg   [0:0] tmp_8_load_reg_555_pp0_iter14_reg;
reg   [0:0] tmp_9_load_reg_560;
reg   [0:0] tmp_9_load_reg_560_pp0_iter14_reg;
reg   [0:0] tmp_10_load_reg_565;
reg   [0:0] tmp_10_load_reg_565_pp0_iter14_reg;
reg   [0:0] tmp_11_load_reg_570;
reg   [0:0] tmp_11_load_reg_570_pp0_iter14_reg;
reg   [6:0] i_fu_96;
wire   [6:0] i_3_fu_241_p2;
wire    ap_loop_init;
reg   [37:0] indvar_flatten7_fu_100;
wire   [37:0] add_ln129_fu_209_p2;
reg   [31:0] p_Val2_2_fu_104;
wire   [31:0] p_Result_6_fu_382_p5;
reg   [31:0] p_Val2_s_fu_108;
wire   [31:0] p_Result_7_fu_394_p5;
reg   [7:0] tmp_fu_112;
reg   [7:0] tmp_7_fu_116;
reg   [0:0] tmp_8_fu_120;
reg   [0:0] tmp_9_fu_124;
reg   [0:0] tmp_10_fu_128;
reg   [0:0] tmp_11_fu_132;
reg    ap_block_pp0_stage0_01001;
wire   [0:0] icmp_ln130_fu_218_p2;
wire   [6:0] select_ln28_fu_224_p3;
wire   [7:0] grp_fu_236_p0;
wire   [7:0] grp_fu_236_p2;
wire   [7:0] trunc_ln131_fu_257_p1;
wire  signed [21:0] p_Result_s_fu_270_p4;
wire  signed [21:0] p_Result_5_fu_280_p1;
wire  signed [36:0] grp_fu_425_p2;
wire  signed [36:0] grp_fu_432_p2;
wire   [21:0] in_re_temp_V_fu_364_p4;
wire   [21:0] in_im_temp_V_fu_373_p4;
wire   [16:0] grp_fu_425_p1;
wire   [16:0] grp_fu_432_p1;
reg    grp_fu_236_ce;
reg    grp_fu_425_ce;
reg    grp_fu_432_ce;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire   [31:0] grp_fu_236_p00;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_done_reg = 1'b0;
end

equalizer_pilot_removal_srem_8ns_32ns_8_12_1 #(
    .ID( 1 ),
    .NUM_STAGE( 12 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 8 ))
srem_8ns_32ns_8_12_1_U72(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_236_p0),
    .din1(pilot_width_4_reload),
    .ce(grp_fu_236_ce),
    .dout(grp_fu_236_p2)
);

equalizer_pilot_removal_mul_mul_22s_17ns_37_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 22 ),
    .din1_WIDTH( 17 ),
    .dout_WIDTH( 37 ))
mul_mul_22s_17ns_37_4_1_U73(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(p_Result_s_fu_270_p4),
    .din1(grp_fu_425_p1),
    .ce(grp_fu_425_ce),
    .dout(grp_fu_425_p2)
);

equalizer_pilot_removal_mul_mul_22s_17ns_37_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 22 ),
    .din1_WIDTH( 17 ),
    .dout_WIDTH( 37 ))
mul_mul_22s_17ns_37_4_1_U74(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(p_Result_5_fu_280_p1),
    .din1(grp_fu_432_p1),
    .ce(grp_fu_432_ce),
    .dout(grp_fu_432_p2)
);

equalizer_pilot_removal_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
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
        end else if (((ap_loop_exit_ready_pp0_iter14_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
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
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_fu_96 <= 7'd0;
        end else if (((icmp_ln129_fu_204_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            i_fu_96 <= i_3_fu_241_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten7_fu_100 <= 38'd0;
        end else if (((icmp_ln129_fu_204_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten7_fu_100 <= add_ln129_fu_209_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        empty_reg_520_pp0_iter10_reg_0 <= empty_reg_520_pp0_iter9_reg_0;
        empty_reg_520_pp0_iter10_reg_1 <= empty_reg_520_pp0_iter9_reg_1;
        empty_reg_520_pp0_iter10_reg_2 <= empty_reg_520_pp0_iter9_reg_2;
        empty_reg_520_pp0_iter10_reg_3 <= empty_reg_520_pp0_iter9_reg_3;
        empty_reg_520_pp0_iter10_reg_4 <= empty_reg_520_pp0_iter9_reg_4;
        empty_reg_520_pp0_iter10_reg_5 <= empty_reg_520_pp0_iter9_reg_5;
        empty_reg_520_pp0_iter10_reg_6 <= empty_reg_520_pp0_iter9_reg_6;
        empty_reg_520_pp0_iter11_reg_0 <= empty_reg_520_pp0_iter10_reg_0;
        empty_reg_520_pp0_iter11_reg_1 <= empty_reg_520_pp0_iter10_reg_1;
        empty_reg_520_pp0_iter11_reg_2 <= empty_reg_520_pp0_iter10_reg_2;
        empty_reg_520_pp0_iter11_reg_3 <= empty_reg_520_pp0_iter10_reg_3;
        empty_reg_520_pp0_iter11_reg_4 <= empty_reg_520_pp0_iter10_reg_4;
        empty_reg_520_pp0_iter11_reg_5 <= empty_reg_520_pp0_iter10_reg_5;
        empty_reg_520_pp0_iter11_reg_6 <= empty_reg_520_pp0_iter10_reg_6;
        empty_reg_520_pp0_iter2_reg_0 <= empty_reg_520_0;
        empty_reg_520_pp0_iter2_reg_1 <= empty_reg_520_1;
        empty_reg_520_pp0_iter2_reg_2 <= empty_reg_520_2;
        empty_reg_520_pp0_iter2_reg_3 <= empty_reg_520_3;
        empty_reg_520_pp0_iter2_reg_4 <= empty_reg_520_4;
        empty_reg_520_pp0_iter2_reg_5 <= empty_reg_520_5;
        empty_reg_520_pp0_iter2_reg_6 <= empty_reg_520_6;
        empty_reg_520_pp0_iter3_reg_0 <= empty_reg_520_pp0_iter2_reg_0;
        empty_reg_520_pp0_iter3_reg_1 <= empty_reg_520_pp0_iter2_reg_1;
        empty_reg_520_pp0_iter3_reg_2 <= empty_reg_520_pp0_iter2_reg_2;
        empty_reg_520_pp0_iter3_reg_3 <= empty_reg_520_pp0_iter2_reg_3;
        empty_reg_520_pp0_iter3_reg_4 <= empty_reg_520_pp0_iter2_reg_4;
        empty_reg_520_pp0_iter3_reg_5 <= empty_reg_520_pp0_iter2_reg_5;
        empty_reg_520_pp0_iter3_reg_6 <= empty_reg_520_pp0_iter2_reg_6;
        empty_reg_520_pp0_iter4_reg_0 <= empty_reg_520_pp0_iter3_reg_0;
        empty_reg_520_pp0_iter4_reg_1 <= empty_reg_520_pp0_iter3_reg_1;
        empty_reg_520_pp0_iter4_reg_2 <= empty_reg_520_pp0_iter3_reg_2;
        empty_reg_520_pp0_iter4_reg_3 <= empty_reg_520_pp0_iter3_reg_3;
        empty_reg_520_pp0_iter4_reg_4 <= empty_reg_520_pp0_iter3_reg_4;
        empty_reg_520_pp0_iter4_reg_5 <= empty_reg_520_pp0_iter3_reg_5;
        empty_reg_520_pp0_iter4_reg_6 <= empty_reg_520_pp0_iter3_reg_6;
        empty_reg_520_pp0_iter5_reg_0 <= empty_reg_520_pp0_iter4_reg_0;
        empty_reg_520_pp0_iter5_reg_1 <= empty_reg_520_pp0_iter4_reg_1;
        empty_reg_520_pp0_iter5_reg_2 <= empty_reg_520_pp0_iter4_reg_2;
        empty_reg_520_pp0_iter5_reg_3 <= empty_reg_520_pp0_iter4_reg_3;
        empty_reg_520_pp0_iter5_reg_4 <= empty_reg_520_pp0_iter4_reg_4;
        empty_reg_520_pp0_iter5_reg_5 <= empty_reg_520_pp0_iter4_reg_5;
        empty_reg_520_pp0_iter5_reg_6 <= empty_reg_520_pp0_iter4_reg_6;
        empty_reg_520_pp0_iter6_reg_0 <= empty_reg_520_pp0_iter5_reg_0;
        empty_reg_520_pp0_iter6_reg_1 <= empty_reg_520_pp0_iter5_reg_1;
        empty_reg_520_pp0_iter6_reg_2 <= empty_reg_520_pp0_iter5_reg_2;
        empty_reg_520_pp0_iter6_reg_3 <= empty_reg_520_pp0_iter5_reg_3;
        empty_reg_520_pp0_iter6_reg_4 <= empty_reg_520_pp0_iter5_reg_4;
        empty_reg_520_pp0_iter6_reg_5 <= empty_reg_520_pp0_iter5_reg_5;
        empty_reg_520_pp0_iter6_reg_6 <= empty_reg_520_pp0_iter5_reg_6;
        empty_reg_520_pp0_iter7_reg_0 <= empty_reg_520_pp0_iter6_reg_0;
        empty_reg_520_pp0_iter7_reg_1 <= empty_reg_520_pp0_iter6_reg_1;
        empty_reg_520_pp0_iter7_reg_2 <= empty_reg_520_pp0_iter6_reg_2;
        empty_reg_520_pp0_iter7_reg_3 <= empty_reg_520_pp0_iter6_reg_3;
        empty_reg_520_pp0_iter7_reg_4 <= empty_reg_520_pp0_iter6_reg_4;
        empty_reg_520_pp0_iter7_reg_5 <= empty_reg_520_pp0_iter6_reg_5;
        empty_reg_520_pp0_iter7_reg_6 <= empty_reg_520_pp0_iter6_reg_6;
        empty_reg_520_pp0_iter8_reg_0 <= empty_reg_520_pp0_iter7_reg_0;
        empty_reg_520_pp0_iter8_reg_1 <= empty_reg_520_pp0_iter7_reg_1;
        empty_reg_520_pp0_iter8_reg_2 <= empty_reg_520_pp0_iter7_reg_2;
        empty_reg_520_pp0_iter8_reg_3 <= empty_reg_520_pp0_iter7_reg_3;
        empty_reg_520_pp0_iter8_reg_4 <= empty_reg_520_pp0_iter7_reg_4;
        empty_reg_520_pp0_iter8_reg_5 <= empty_reg_520_pp0_iter7_reg_5;
        empty_reg_520_pp0_iter8_reg_6 <= empty_reg_520_pp0_iter7_reg_6;
        empty_reg_520_pp0_iter9_reg_0 <= empty_reg_520_pp0_iter8_reg_0;
        empty_reg_520_pp0_iter9_reg_1 <= empty_reg_520_pp0_iter8_reg_1;
        empty_reg_520_pp0_iter9_reg_2 <= empty_reg_520_pp0_iter8_reg_2;
        empty_reg_520_pp0_iter9_reg_3 <= empty_reg_520_pp0_iter8_reg_3;
        empty_reg_520_pp0_iter9_reg_4 <= empty_reg_520_pp0_iter8_reg_4;
        empty_reg_520_pp0_iter9_reg_5 <= empty_reg_520_pp0_iter8_reg_5;
        empty_reg_520_pp0_iter9_reg_6 <= empty_reg_520_pp0_iter8_reg_6;
        icmp_ln131_reg_531 <= icmp_ln131_fu_261_p2;
        icmp_ln131_reg_531_pp0_iter13_reg <= icmp_ln131_reg_531;
        icmp_ln131_reg_531_pp0_iter14_reg <= icmp_ln131_reg_531_pp0_iter13_reg;
        p_028_load_reg_545_pp0_iter14_reg <= p_028_load_reg_545;
        tmp_10_load_reg_565_pp0_iter14_reg <= tmp_10_load_reg_565;
        tmp_11_load_reg_570_pp0_iter14_reg <= tmp_11_load_reg_570;
        tmp_7_load_reg_550_pp0_iter14_reg <= tmp_7_load_reg_550;
        tmp_8_load_reg_555_pp0_iter14_reg <= tmp_8_load_reg_555;
        tmp_9_load_reg_560_pp0_iter14_reg <= tmp_9_load_reg_560;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln129_fu_204_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        empty_reg_520_0 <= data_in_TDATA;
        empty_reg_520_1 <= data_in_TKEEP;
        empty_reg_520_2 <= data_in_TSTRB;
        empty_reg_520_3 <= data_in_TUSER;
        empty_reg_520_4 <= data_in_TLAST;
        empty_reg_520_5 <= data_in_TID;
        empty_reg_520_6 <= data_in_TDEST;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln131_reg_531 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_028_load_reg_545 <= tmp_fu_112;
        tmp_10_load_reg_565 <= tmp_10_fu_128;
        tmp_11_load_reg_570 <= tmp_11_fu_132;
        tmp_7_load_reg_550 <= tmp_7_fu_116;
        tmp_8_load_reg_555 <= tmp_8_fu_120;
        tmp_9_load_reg_560 <= tmp_9_fu_124;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln131_reg_531_pp0_iter14_reg == 1'd0) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_Val2_2_fu_104 <= p_Result_6_fu_382_p5;
        p_Val2_s_fu_108 <= p_Result_7_fu_394_p5;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter12 == 1'b1) & (icmp_ln131_fu_261_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_10_fu_128 <= empty_reg_520_pp0_iter11_reg_5;
        tmp_11_fu_132 <= empty_reg_520_pp0_iter11_reg_6;
        tmp_7_fu_116 <= empty_reg_520_pp0_iter11_reg_2;
        tmp_8_fu_120 <= empty_reg_520_pp0_iter11_reg_3;
        tmp_9_fu_124 <= empty_reg_520_pp0_iter11_reg_4;
        tmp_fu_112 <= empty_reg_520_pp0_iter11_reg_1;
    end
end

always @ (*) begin
    if (((icmp_ln129_fu_204_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter14_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln129_fu_204_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        data_in_TDATA_blk_n = data_in_TVALID;
    end else begin
        data_in_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln129_fu_204_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_in_TREADY = 1'b1;
    end else begin
        data_in_TREADY = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln131_reg_531_pp0_iter14_reg == 1'd0) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        data_out_TDATA_blk_n = data_out_TREADY;
    end else begin
        data_out_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln131_reg_531_pp0_iter14_reg == 1'd0) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_out_TVALID = 1'b1;
    end else begin
        data_out_TVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        grp_fu_236_ce = 1'b1;
    end else begin
        grp_fu_236_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        grp_fu_425_ce = 1'b1;
    end else begin
        grp_fu_425_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        grp_fu_432_ce = 1'b1;
    end else begin
        grp_fu_432_ce = 1'b0;
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

assign add_ln129_fu_209_p2 = (indvar_flatten7_fu_100 + 38'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((icmp_ln131_reg_531_pp0_iter14_reg == 1'd0) & (data_out_TREADY == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b1)) | ((icmp_ln129_fu_204_p2 == 1'd0) & (data_in_TVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((icmp_ln129_fu_204_p2 == 1'd0) & (data_in_TVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_enable_reg_pp0_iter15 == 1'b1) & ((1'b1 == ap_block_state16_io) | ((icmp_ln131_reg_531_pp0_iter14_reg == 1'd0) & (data_out_TREADY == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((icmp_ln129_fu_204_p2 == 1'd0) & (data_in_TVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_enable_reg_pp0_iter15 == 1'b1) & ((1'b1 == ap_block_state16_io) | ((icmp_ln131_reg_531_pp0_iter14_reg == 1'd0) & (data_out_TREADY == 1'b0)))));
end

assign ap_block_state10_pp0_stage0_iter9 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter10 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage0_iter11 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter12 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage0_iter13 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage0_iter14 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state16_io = ((icmp_ln131_reg_531_pp0_iter14_reg == 1'd0) & (data_out_TREADY == 1'b0));
end

always @ (*) begin
    ap_block_state16_pp0_stage0_iter15 = ((icmp_ln131_reg_531_pp0_iter14_reg == 1'd0) & (data_out_TREADY == 1'b0));
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((icmp_ln129_fu_204_p2 == 1'd0) & (data_in_TVALID == 1'b0));
end

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter8 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;

assign data_out_TDATA = {{p_Result_6_fu_382_p5}, {p_Result_7_fu_394_p5}};

assign data_out_TDEST = tmp_11_load_reg_570_pp0_iter14_reg;

assign data_out_TID = tmp_10_load_reg_565_pp0_iter14_reg;

assign data_out_TKEEP = p_028_load_reg_545_pp0_iter14_reg;

assign data_out_TLAST = tmp_9_load_reg_560_pp0_iter14_reg;

assign data_out_TSTRB = tmp_7_load_reg_550_pp0_iter14_reg;

assign data_out_TUSER = tmp_8_load_reg_555_pp0_iter14_reg;

assign grp_fu_236_p0 = grp_fu_236_p00;

assign grp_fu_236_p00 = select_ln28_fu_224_p3;

assign grp_fu_425_p1 = 37'd103621;

assign grp_fu_432_p1 = 37'd103621;

assign i_3_fu_241_p2 = (select_ln28_fu_224_p3 + 7'd1);

assign icmp_ln129_fu_204_p2 = ((indvar_flatten7_fu_100 == zext_ln129) ? 1'b1 : 1'b0);

assign icmp_ln130_fu_218_p2 = ((i_fu_96 == 7'd64) ? 1'b1 : 1'b0);

assign icmp_ln131_fu_261_p2 = ((trunc_ln131_fu_257_p1 == 8'd0) ? 1'b1 : 1'b0);

assign in_im_temp_V_fu_373_p4 = {{grp_fu_432_p2[36:15]}};

assign in_re_temp_V_fu_364_p4 = {{grp_fu_425_p2[36:15]}};

assign p_Result_5_fu_280_p1 = empty_reg_520_pp0_iter11_reg_0[21:0];

assign p_Result_6_fu_382_p5 = {{p_Val2_2_fu_104[31:22]}, {in_re_temp_V_fu_364_p4}};

assign p_Result_7_fu_394_p5 = {{p_Val2_s_fu_108[31:22]}, {in_im_temp_V_fu_373_p4}};

assign p_Result_s_fu_270_p4 = {{empty_reg_520_pp0_iter11_reg_0[53:32]}};

assign select_ln28_fu_224_p3 = ((icmp_ln130_fu_218_p2[0:0] == 1'b1) ? 7'd0 : i_fu_96);

assign trunc_ln131_fu_257_p1 = grp_fu_236_p2[7:0];

endmodule //equalizer_pilot_removal_equalizer_pilot_removal_Pipeline_VITIS_LOOP_129_4_VITIS_LOOP_130_5
