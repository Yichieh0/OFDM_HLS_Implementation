
wire kernel_monitor_reset;
wire kernel_monitor_clock;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
wire [3:0] axis_block_sigs;
wire [4:0] inst_idle_sigs;
wire [2:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~data_in_TDATA_blk_n;
assign axis_block_sigs[1] = ~data_out_TDATA_blk_n;
assign axis_block_sigs[2] = ~grp_decoder_Pipeline_VITIS_LOOP_27_1_fu_295.data_in_TDATA_blk_n;
assign axis_block_sigs[3] = ~grp_decoder_Pipeline_VITIS_LOOP_27_1_fu_295.data_out_TDATA_blk_n;

assign inst_idle_sigs[0] = grp_decoder_bit_fu_316.decoder_bit_Block_split148_proc3_U0.ap_idle;
assign inst_block_sigs[0] = (grp_decoder_bit_fu_316.decoder_bit_Block_split148_proc3_U0.ap_done & ~grp_decoder_bit_fu_316.decoder_bit_Block_split148_proc3_U0.ap_continue);
assign inst_idle_sigs[1] = grp_decoder_bit_fu_316.decoder_bit_Loop_VITIS_LOOP_227_6_proc_U0.ap_idle;
assign inst_block_sigs[1] = (grp_decoder_bit_fu_316.decoder_bit_Loop_VITIS_LOOP_227_6_proc_U0.ap_done & ~grp_decoder_bit_fu_316.decoder_bit_Loop_VITIS_LOOP_227_6_proc_U0.ap_continue);
assign inst_idle_sigs[2] = grp_decoder_bit_fu_316.decoder_bit_Block_split223_proc_U0.ap_idle;
assign inst_block_sigs[2] = (grp_decoder_bit_fu_316.decoder_bit_Block_split223_proc_U0.ap_done & ~grp_decoder_bit_fu_316.decoder_bit_Block_split223_proc_U0.ap_continue);

assign inst_idle_sigs[3] = 1'b0;
assign inst_idle_sigs[4] = grp_decoder_Pipeline_VITIS_LOOP_27_1_fu_295.ap_idle;

decoder_hls_deadlock_idx0_monitor decoder_hls_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);

