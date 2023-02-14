// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module decoder_decoder_bit_Loop_VITIS_LOOP_246_6_proc (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        p_read,
        temp_trellis_survivor_V_address0,
        temp_trellis_survivor_V_ce0,
        temp_trellis_survivor_V_q0,
        ap_return
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] p_read;
output  [5:0] temp_trellis_survivor_V_address0;
output   temp_trellis_survivor_V_ce0;
input  [32:0] temp_trellis_survivor_V_q0;
output  [0:0] ap_return;

reg ap_idle;
reg temp_trellis_survivor_V_ce0;
reg[0:0] ap_return;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln246_fu_89_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [5:0] i_reg_289;
reg    ap_block_pp0_stage0_11001;
reg   [31:0] best_branch_2_reg_294;
wire   [0:0] empty_fu_85_p1;
reg   [0:0] empty_reg_303;
wire   [63:0] zext_ln248_fu_101_p1;
wire    ap_block_pp0_stage0;
reg   [5:0] i_1_fu_42;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_i;
wire   [5:0] i_2_fu_95_p2;
reg   [31:0] best_branch_fu_46;
wire   [31:0] best_branch_1_fu_263_p3;
reg   [31:0] ap_sig_allocacmp_best_branch_2;
wire   [31:0] i_8_cast_i_fu_111_p1;
wire   [31:0] add_ln251_fu_122_p2;
wire   [31:0] sub_ln251_fu_135_p2;
wire   [30:0] lshr_ln251_1_fu_140_p4;
wire   [31:0] zext_ln251_fu_150_p1;
wire   [30:0] lshr_ln251_2_fu_160_p4;
wire   [0:0] tmp_fu_127_p3;
wire   [31:0] sub_ln251_1_fu_154_p2;
wire   [31:0] zext_ln251_1_fu_170_p1;
wire   [31:0] select_ln251_fu_174_p3;
wire   [0:0] tobool_i_fu_114_p3;
wire   [31:0] add_ln249_fu_182_p2;
wire   [31:0] sub_ln257_fu_203_p2;
wire   [30:0] lshr_ln257_1_fu_208_p4;
wire   [31:0] zext_ln257_fu_218_p1;
wire   [30:0] lshr_ln257_2_fu_228_p4;
wire   [0:0] tmp_1_fu_196_p3;
wire   [31:0] sub_ln257_1_fu_222_p2;
wire   [31:0] zext_ln257_1_fu_237_p1;
wire   [31:0] select_ln257_fu_241_p3;
wire   [31:0] add_ln255_fu_249_p2;
wire   [31:0] select_ln248_fu_188_p3;
wire   [31:0] select_ln254_fu_255_p3;
reg   [0:0] ap_return_preg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_87;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_return_preg = 1'd0;
end

decoder_flow_control_loop_pipe flow_control_loop_pipe_U(
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
    .ap_done_int(ap_done_int),
    .ap_continue(ap_continue)
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
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 1'd0;
    end else begin
        if (((icmp_ln246_fu_89_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_return_preg <= empty_fu_85_p1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1))) begin
            best_branch_fu_46 <= p_read;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            best_branch_fu_46 <= best_branch_1_fu_263_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_87)) begin
        if ((icmp_ln246_fu_89_p2 == 1'd0)) begin
            i_1_fu_42 <= i_2_fu_95_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_1_fu_42 <= 6'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        best_branch_2_reg_294 <= ap_sig_allocacmp_best_branch_2;
        empty_reg_303 <= empty_fu_85_p1;
        i_reg_289 <= ap_sig_allocacmp_i;
    end
end

always @ (*) begin
    if (((icmp_ln246_fu_89_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln246_fu_89_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_return = empty_fu_85_p1;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1))) begin
            ap_sig_allocacmp_best_branch_2 = p_read;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            ap_sig_allocacmp_best_branch_2 = best_branch_1_fu_263_p3;
        end else begin
            ap_sig_allocacmp_best_branch_2 = best_branch_fu_46;
        end
    end else begin
        ap_sig_allocacmp_best_branch_2 = best_branch_fu_46;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i = 6'd0;
    end else begin
        ap_sig_allocacmp_i = i_1_fu_42;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp_trellis_survivor_V_ce0 = 1'b1;
    end else begin
        temp_trellis_survivor_V_ce0 = 1'b0;
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

assign add_ln249_fu_182_p2 = (select_ln251_fu_174_p3 + 32'd32);

assign add_ln251_fu_122_p2 = ($signed(best_branch_2_reg_294) + $signed(32'd4294967295));

assign add_ln255_fu_249_p2 = (select_ln257_fu_241_p3 + 32'd32);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_done_reg == 1'b1) & (ap_start_int == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_done_reg == 1'b1) & (ap_start_int == 1'b1)));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_done_reg == 1'b1);
end

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_87 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign best_branch_1_fu_263_p3 = ((empty_reg_303[0:0] == 1'b1) ? select_ln248_fu_188_p3 : select_ln254_fu_255_p3);

assign empty_fu_85_p1 = ap_sig_allocacmp_best_branch_2[0:0];

assign i_2_fu_95_p2 = (ap_sig_allocacmp_i + 6'd1);

assign i_8_cast_i_fu_111_p1 = i_reg_289;

assign icmp_ln246_fu_89_p2 = ((ap_sig_allocacmp_i == 6'd32) ? 1'b1 : 1'b0);

assign lshr_ln251_1_fu_140_p4 = {{sub_ln251_fu_135_p2[31:1]}};

assign lshr_ln251_2_fu_160_p4 = {{add_ln251_fu_122_p2[31:1]}};

assign lshr_ln257_1_fu_208_p4 = {{sub_ln257_fu_203_p2[31:1]}};

assign lshr_ln257_2_fu_228_p4 = {{best_branch_2_reg_294[31:1]}};

assign select_ln248_fu_188_p3 = ((tobool_i_fu_114_p3[0:0] == 1'b1) ? add_ln249_fu_182_p2 : select_ln251_fu_174_p3);

assign select_ln251_fu_174_p3 = ((tmp_fu_127_p3[0:0] == 1'b1) ? sub_ln251_1_fu_154_p2 : zext_ln251_1_fu_170_p1);

assign select_ln254_fu_255_p3 = ((tobool_i_fu_114_p3[0:0] == 1'b1) ? add_ln255_fu_249_p2 : select_ln257_fu_241_p3);

assign select_ln257_fu_241_p3 = ((tmp_1_fu_196_p3[0:0] == 1'b1) ? sub_ln257_1_fu_222_p2 : zext_ln257_1_fu_237_p1);

assign sub_ln251_1_fu_154_p2 = (32'd0 - zext_ln251_fu_150_p1);

assign sub_ln251_fu_135_p2 = (32'd1 - best_branch_2_reg_294);

assign sub_ln257_1_fu_222_p2 = (32'd0 - zext_ln257_fu_218_p1);

assign sub_ln257_fu_203_p2 = (32'd0 - best_branch_2_reg_294);

assign temp_trellis_survivor_V_address0 = zext_ln248_fu_101_p1;

assign tmp_1_fu_196_p3 = best_branch_2_reg_294[32'd31];

assign tmp_fu_127_p3 = add_ln251_fu_122_p2[32'd31];

assign tobool_i_fu_114_p3 = temp_trellis_survivor_V_q0[i_8_cast_i_fu_111_p1];

assign zext_ln248_fu_101_p1 = ap_sig_allocacmp_best_branch_2;

assign zext_ln251_1_fu_170_p1 = lshr_ln251_2_fu_160_p4;

assign zext_ln251_fu_150_p1 = lshr_ln251_1_fu_140_p4;

assign zext_ln257_1_fu_237_p1 = lshr_ln257_2_fu_228_p4;

assign zext_ln257_fu_218_p1 = lshr_ln257_1_fu_208_p4;

endmodule //decoder_decoder_bit_Loop_VITIS_LOOP_246_6_proc
