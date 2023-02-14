// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module deQAM_deQAM_Pipeline_VITIS_LOOP_103_5 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        v_V_1_reload,
        v_V_0_reload,
        v_out_V_out,
        v_out_V_out_ap_vld
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [3:0] v_V_1_reload;
input  [3:0] v_V_0_reload;
output  [3:0] v_out_V_out;
output   v_out_V_out_ap_vld;

reg ap_idle;
reg v_out_V_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln1057_fu_95_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [1:0] i_V_4_fu_52;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_i_V;
wire   [1:0] add_ln870_fu_101_p2;
reg   [3:0] v_out_V_fu_56;
reg   [3:0] ap_sig_allocacmp_v_out_V_load_4;
reg   [3:0] ap_sig_allocacmp_v_out_V_load;
reg   [3:0] ap_sig_allocacmp_v_out_V_load_3;
wire   [3:0] v_out_V_5_fu_135_p2;
wire   [3:0] select_ln573_fu_119_p3;
wire   [3:0] v_out_V_4_fu_146_p2;
wire   [3:0] v_out_V_3_fu_165_p2;
reg   [3:0] grp_load_fu_79_p1;
wire   [0:0] trunc_ln1049_fu_107_p1;
wire   [3:0] select_ln223_1_fu_127_p3;
wire   [3:0] select_ln573_1_fu_111_p3;
wire   [3:0] select_ln223_fu_157_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_start_int;
reg    ap_condition_164;
reg    ap_condition_72;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_done_reg = 1'b0;
end

deQAM_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
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
        ap_CS_fsm <= ap_ST_fsm_state1;
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        if ((icmp_ln1057_fu_95_p2 == 1'd0)) begin
            i_V_4_fu_52 <= add_ln870_fu_101_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_V_4_fu_52 <= 2'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        if ((1'b1 == ap_condition_72)) begin
            v_out_V_fu_56 <= v_out_V_3_fu_165_p2;
        end else if (((select_ln573_fu_119_p3 == 4'd15) & (icmp_ln1057_fu_95_p2 == 1'd0))) begin
            v_out_V_fu_56 <= v_out_V_4_fu_146_p2;
        end else if (((select_ln573_fu_119_p3 == 4'd1) & (icmp_ln1057_fu_95_p2 == 1'd0))) begin
            v_out_V_fu_56 <= v_out_V_5_fu_135_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v_out_V_fu_56 <= 4'd0;
        end
    end
end

always @ (*) begin
    if ((ap_start_int == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln1057_fu_95_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_i_V = 2'd0;
    end else begin
        ap_sig_allocacmp_i_V = i_V_4_fu_52;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_v_out_V_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v_out_V_load = v_out_V_fu_56;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_v_out_V_load_3 = 4'd0;
    end else begin
        ap_sig_allocacmp_v_out_V_load_3 = v_out_V_fu_56;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_v_out_V_load_4 = 4'd0;
    end else begin
        ap_sig_allocacmp_v_out_V_load_4 = v_out_V_fu_56;
    end
end

always @ (*) begin
    if (((icmp_ln1057_fu_95_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        if ((1'b1 == ap_condition_164)) begin
            grp_load_fu_79_p1 = ap_sig_allocacmp_v_out_V_load_3;
        end else if ((select_ln573_fu_119_p3 == 4'd15)) begin
            grp_load_fu_79_p1 = ap_sig_allocacmp_v_out_V_load;
        end else if ((select_ln573_fu_119_p3 == 4'd1)) begin
            grp_load_fu_79_p1 = ap_sig_allocacmp_v_out_V_load_4;
        end else begin
            grp_load_fu_79_p1 = 'bx;
        end
    end else begin
        grp_load_fu_79_p1 = 'bx;
    end
end

always @ (*) begin
    if (((icmp_ln1057_fu_95_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        v_out_V_out_ap_vld = 1'b1;
    end else begin
        v_out_V_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln870_fu_101_p2 = (ap_sig_allocacmp_i_V + 2'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end

always @ (*) begin
    ap_condition_164 = (~(select_ln573_fu_119_p3 == 4'd13) & ~(select_ln573_fu_119_p3 == 4'd15) & ~(select_ln573_fu_119_p3 == 4'd1));
end

always @ (*) begin
    ap_condition_72 = (~(select_ln573_fu_119_p3 == 4'd13) & ~(select_ln573_fu_119_p3 == 4'd15) & ~(select_ln573_fu_119_p3 == 4'd1) & (icmp_ln1057_fu_95_p2 == 1'd0));
end

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln1057_fu_95_p2 = ((ap_sig_allocacmp_i_V == 2'd2) ? 1'b1 : 1'b0);

assign select_ln223_1_fu_127_p3 = ((trunc_ln1049_fu_107_p1[0:0] == 1'b1) ? 4'd3 : 4'd12);

assign select_ln223_fu_157_p3 = ((trunc_ln1049_fu_107_p1[0:0] == 1'b1) ? 4'd2 : 4'd8);

assign select_ln573_1_fu_111_p3 = ((trunc_ln1049_fu_107_p1[0:0] == 1'b1) ? 4'd1 : 4'd4);

assign select_ln573_fu_119_p3 = ((trunc_ln1049_fu_107_p1[0:0] == 1'b1) ? v_V_1_reload : v_V_0_reload);

assign trunc_ln1049_fu_107_p1 = ap_sig_allocacmp_i_V[0:0];

assign v_out_V_3_fu_165_p2 = (select_ln223_fu_157_p3 + grp_load_fu_79_p1);

assign v_out_V_4_fu_146_p2 = (select_ln573_1_fu_111_p3 + grp_load_fu_79_p1);

assign v_out_V_5_fu_135_p2 = (select_ln223_1_fu_127_p3 + grp_load_fu_79_p1);

assign v_out_V_out = v_out_V_fu_56;

endmodule //deQAM_deQAM_Pipeline_VITIS_LOOP_103_5
