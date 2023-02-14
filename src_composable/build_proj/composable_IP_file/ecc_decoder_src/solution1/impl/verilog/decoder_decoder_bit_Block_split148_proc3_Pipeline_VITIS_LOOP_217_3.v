// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module decoder_decoder_bit_Block_split148_proc3_Pipeline_VITIS_LOOP_217_3 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        best_metric,
        temp_trellis_metric_address0,
        temp_trellis_metric_ce0,
        temp_trellis_metric_q0,
        best_branch_out,
        best_branch_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] best_metric;
output  [5:0] temp_trellis_metric_address0;
output   temp_trellis_metric_ce0;
input  [31:0] temp_trellis_metric_q0;
output  [31:0] best_branch_out;
output   best_branch_out_ap_vld;

reg ap_idle;
reg temp_trellis_metric_ce0;
reg best_branch_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln217_fu_107_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] count_load_reg_284;
wire   [0:0] empty_24_fu_116_p1;
reg   [0:0] empty_24_reg_289;
wire   [63:0] zext_ln219_fu_120_p1;
wire    ap_block_pp0_stage0;
reg   [0:0] flag_fu_34;
wire   [0:0] flag_1_fu_188_p3;
reg   [6:0] i_2_fu_38;
wire   [6:0] i_4_fu_139_p2;
wire    ap_loop_init;
reg   [31:0] temp_fu_42;
wire   [31:0] temp_1_fu_209_p3;
reg   [31:0] best_metric_1_fu_46;
wire   [31:0] best_metric_2_fu_202_p3;
reg   [31:0] best_branch_fu_50;
wire   [31:0] best_branch_2_fu_195_p3;
reg   [31:0] count_1_1_fu_54;
wire   [31:0] count_1_fu_131_p3;
wire    ap_block_pp0_stage0_01001;
wire   [31:0] count_2_fu_125_p2;
wire   [0:0] flag_2_fu_167_p2;
wire   [31:0] best_branch_3_fu_173_p3;
wire   [31:0] best_metric_3_fu_180_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
end

decoder_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
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
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            best_branch_fu_50 <= 32'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            best_branch_fu_50 <= best_branch_2_fu_195_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            best_metric_1_fu_46 <= best_metric;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            best_metric_1_fu_46 <= best_metric_2_fu_202_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            count_1_1_fu_54 <= 32'd1;
        end else if (((icmp_ln217_fu_107_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            count_1_1_fu_54 <= count_1_fu_131_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_2_fu_38 <= 7'd1;
        end else if (((icmp_ln217_fu_107_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            i_2_fu_38 <= i_4_fu_139_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln217_fu_107_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        count_load_reg_284 <= count_1_1_fu_54;
        empty_24_reg_289 <= empty_24_fu_116_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        flag_fu_34 <= flag_1_fu_188_p3;
        temp_fu_42 <= temp_1_fu_209_p3;
    end
end

always @ (*) begin
    if (((icmp_ln217_fu_107_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((icmp_ln217_fu_107_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        best_branch_out_ap_vld = 1'b1;
    end else begin
        best_branch_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp_trellis_metric_ce0 = 1'b1;
    end else begin
        temp_trellis_metric_ce0 = 1'b0;
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

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;

assign best_branch_2_fu_195_p3 = ((empty_24_reg_289[0:0] == 1'b1) ? best_branch_fu_50 : best_branch_3_fu_173_p3);

assign best_branch_3_fu_173_p3 = ((flag_fu_34[0:0] == 1'b1) ? count_load_reg_284 : best_branch_fu_50);

assign best_branch_out = best_branch_fu_50;

assign best_metric_2_fu_202_p3 = ((empty_24_reg_289[0:0] == 1'b1) ? best_metric_1_fu_46 : best_metric_3_fu_180_p3);

assign best_metric_3_fu_180_p3 = ((flag_fu_34[0:0] == 1'b1) ? temp_fu_42 : best_metric_1_fu_46);

assign count_1_fu_131_p3 = ((empty_24_fu_116_p1[0:0] == 1'b1) ? count_1_1_fu_54 : count_2_fu_125_p2);

assign count_2_fu_125_p2 = (count_1_1_fu_54 + 32'd1);

assign empty_24_fu_116_p1 = i_2_fu_38[0:0];

assign flag_1_fu_188_p3 = ((empty_24_reg_289[0:0] == 1'b1) ? flag_2_fu_167_p2 : flag_fu_34);

assign flag_2_fu_167_p2 = (($signed(best_metric_1_fu_46) > $signed(temp_trellis_metric_q0)) ? 1'b1 : 1'b0);

assign i_4_fu_139_p2 = (i_2_fu_38 + 7'd1);

assign icmp_ln217_fu_107_p2 = ((i_2_fu_38 == 7'd127) ? 1'b1 : 1'b0);

assign temp_1_fu_209_p3 = ((empty_24_reg_289[0:0] == 1'b1) ? temp_trellis_metric_q0 : temp_fu_42);

assign temp_trellis_metric_address0 = zext_ln219_fu_120_p1;

assign zext_ln219_fu_120_p1 = count_1_1_fu_54;

endmodule //decoder_decoder_bit_Block_split148_proc3_Pipeline_VITIS_LOOP_217_3
