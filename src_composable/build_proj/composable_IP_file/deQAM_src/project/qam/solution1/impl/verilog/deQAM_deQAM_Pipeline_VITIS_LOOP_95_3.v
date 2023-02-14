// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module deQAM_deQAM_Pipeline_VITIS_LOOP_95_3 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        select_ln70_1_cast,
        or_ln1827_1,
        op2_assign,
        read_in_imag_V_2,
        select_ln95,
        v_V_1_out,
        v_V_1_out_ap_vld
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [1:0] select_ln70_1_cast;
input  [0:0] or_ln1827_1;
input  [63:0] op2_assign;
input  [21:0] read_in_imag_V_2;
input  [2:0] select_ln95;
output  [3:0] v_V_1_out;
output   v_V_1_out_ap_vld;

reg ap_idle;
reg v_V_1_out_ap_vld;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state3;
wire    ap_block_state3_pp0_stage2_iter0;
wire   [0:0] and_ln1827_1_fu_174_p2;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_block_state1_pp0_stage0_iter0;
wire  signed [3:0] select_ln95_cast_fu_108_p1;
reg  signed [3:0] select_ln95_cast_reg_267;
reg   [3:0] i_V_1_reg_272;
wire   [63:0] grp_fu_105_p1;
reg   [63:0] conv_i_i1_reg_283;
wire    ap_CS_fsm_state2;
wire    ap_block_state2_pp0_stage1_iter0;
reg   [3:0] i_V_fu_56;
wire   [3:0] i_V_2_fu_218_p2;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_i_V_1;
reg   [3:0] v_V_1_fu_60;
wire   [3:0] select_ln96_fu_210_p3;
wire  signed [3:0] select_ln70_1_cast_cast_fu_112_p1;
wire   [31:0] grp_fu_105_p0;
wire   [63:0] bitcast_ln1827_fu_134_p1;
wire   [10:0] tmp_s_fu_137_p4;
wire   [51:0] trunc_ln1827_fu_147_p1;
wire   [0:0] icmp_ln1827_1_fu_157_p2;
wire   [0:0] icmp_ln1827_fu_151_p2;
wire   [0:0] tmp_1_fu_101_p2;
wire   [0:0] and_ln1827_fu_169_p2;
wire   [0:0] or_ln1827_fu_163_p2;
wire   [18:0] shl_ln737_1_fu_183_p3;
wire   [21:0] zext_ln1549_fu_190_p1;
wire   [0:0] icmp_ln1549_fu_194_p2;
wire   [0:0] xor_ln1549_fu_199_p2;
wire   [3:0] add_ln70_fu_205_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_done_reg = 1'b0;
end

deQAM_dcmp_64ns_64ns_1_1_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 1 ))
dcmp_64ns_64ns_1_1_no_dsp_1_U26(
    .din0(conv_i_i1_reg_283),
    .din1(op2_assign),
    .opcode(5'd4),
    .dout(tmp_1_fu_101_p2)
);

deQAM_uitodp_32ns_64_2_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
uitodp_32ns_64_2_no_dsp_1_U27(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_105_p0),
    .ce(1'b1),
    .dout(grp_fu_105_p1)
);

deQAM_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        i_V_fu_56 <= 4'd2;
    end else if (((1'd1 == and_ln1827_1_fu_174_p2) & (1'b1 == ap_CS_fsm_state3))) begin
        i_V_fu_56 <= i_V_2_fu_218_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        v_V_1_fu_60 <= select_ln70_1_cast_cast_fu_112_p1;
    end else if (((1'd1 == and_ln1827_1_fu_174_p2) & (1'b1 == ap_CS_fsm_state3))) begin
        v_V_1_fu_60 <= select_ln96_fu_210_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        conv_i_i1_reg_283 <= grp_fu_105_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        i_V_1_reg_272 <= ap_sig_allocacmp_i_V_1;
        select_ln95_cast_reg_267 <= select_ln95_cast_fu_108_p1;
    end
end

always @ (*) begin
    if ((ap_start_int == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

always @ (*) begin
    if (((1'd0 == and_ln1827_1_fu_174_p2) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
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
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_i_V_1 = 4'd2;
    end else begin
        ap_sig_allocacmp_i_V_1 = i_V_fu_56;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln1827_1_fu_174_p2) & (1'b1 == ap_CS_fsm_state3))) begin
        v_V_1_out_ap_vld = 1'b1;
    end else begin
        v_V_1_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln70_fu_205_p2 = ($signed(v_V_1_fu_60) + $signed(select_ln95_cast_reg_267));

assign and_ln1827_1_fu_174_p2 = (or_ln1827_fu_163_p2 & and_ln1827_fu_169_p2);

assign and_ln1827_fu_169_p2 = (tmp_1_fu_101_p2 & or_ln1827_1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage2_iter0 = ~(1'b1 == 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;

assign bitcast_ln1827_fu_134_p1 = conv_i_i1_reg_283;

assign grp_fu_105_p0 = ap_sig_allocacmp_i_V_1;

assign i_V_2_fu_218_p2 = (i_V_1_reg_272 + 4'd2);

assign icmp_ln1549_fu_194_p2 = (($signed(read_in_imag_V_2) < $signed(zext_ln1549_fu_190_p1)) ? 1'b1 : 1'b0);

assign icmp_ln1827_1_fu_157_p2 = ((trunc_ln1827_fu_147_p1 == 52'd0) ? 1'b1 : 1'b0);

assign icmp_ln1827_fu_151_p2 = ((tmp_s_fu_137_p4 != 11'd2047) ? 1'b1 : 1'b0);

assign or_ln1827_fu_163_p2 = (icmp_ln1827_fu_151_p2 | icmp_ln1827_1_fu_157_p2);

assign select_ln70_1_cast_cast_fu_112_p1 = $signed(select_ln70_1_cast);

assign select_ln95_cast_fu_108_p1 = $signed(select_ln95);

assign select_ln96_fu_210_p3 = ((xor_ln1549_fu_199_p2[0:0] == 1'b1) ? add_ln70_fu_205_p2 : v_V_1_fu_60);

assign shl_ln737_1_fu_183_p3 = {{i_V_1_reg_272}, {15'd0}};

assign tmp_s_fu_137_p4 = {{bitcast_ln1827_fu_134_p1[62:52]}};

assign trunc_ln1827_fu_147_p1 = bitcast_ln1827_fu_134_p1[51:0];

assign v_V_1_out = v_V_1_fu_60;

assign xor_ln1549_fu_199_p2 = (icmp_ln1549_fu_194_p2 ^ 1'd1);

assign zext_ln1549_fu_190_p1 = shl_ln737_1_fu_183_p3;

endmodule //deQAM_deQAM_Pipeline_VITIS_LOOP_95_3
