
wire kernel_monitor_reset;
wire kernel_monitor_clock;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
wire [7:0] axis_block_sigs;
wire [7:0] inst_idle_sigs;
wire [0:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~grp_syn_CP_removal_Pipeline_VITIS_LOOP_29_1_fu_1930.data_in_TDATA_blk_n;
assign axis_block_sigs[1] = ~grp_syn_CP_removal_Pipeline_VITIS_LOOP_29_1_fu_1930.data_out_TDATA_blk_n;
assign axis_block_sigs[2] = ~grp_syn_CP_removal_Pipeline_VITIS_LOOP_147_7_fu_1966.data_in_TDATA_blk_n;
assign axis_block_sigs[3] = ~grp_syn_CP_removal_Pipeline_VITIS_LOOP_225_11_fu_2324.data_in_TDATA_blk_n;
assign axis_block_sigs[4] = ~grp_syn_CP_removal_Pipeline_VITIS_LOOP_211_9_fu_2345.data_out_TDATA_blk_n;
assign axis_block_sigs[5] = ~grp_syn_CP_removal_Pipeline_VITIS_LOOP_217_10_fu_2371.data_out_TDATA_blk_n;
assign axis_block_sigs[6] = ~grp_syn_CP_removal_Pipeline_VITIS_LOOP_117_5_fu_2397.data_in_TDATA_blk_n;
assign axis_block_sigs[7] = ~grp_syn_CP_removal_Pipeline_VITIS_LOOP_230_12_fu_2707.data_out_TDATA_blk_n;

assign inst_block_sigs[0] = 1'b0;

assign inst_idle_sigs[0] = 1'b0;
assign inst_idle_sigs[1] = grp_syn_CP_removal_Pipeline_VITIS_LOOP_29_1_fu_1930.ap_idle;
assign inst_idle_sigs[2] = grp_syn_CP_removal_Pipeline_VITIS_LOOP_147_7_fu_1966.ap_idle;
assign inst_idle_sigs[3] = grp_syn_CP_removal_Pipeline_VITIS_LOOP_225_11_fu_2324.ap_idle;
assign inst_idle_sigs[4] = grp_syn_CP_removal_Pipeline_VITIS_LOOP_211_9_fu_2345.ap_idle;
assign inst_idle_sigs[5] = grp_syn_CP_removal_Pipeline_VITIS_LOOP_217_10_fu_2371.ap_idle;
assign inst_idle_sigs[6] = grp_syn_CP_removal_Pipeline_VITIS_LOOP_117_5_fu_2397.ap_idle;
assign inst_idle_sigs[7] = grp_syn_CP_removal_Pipeline_VITIS_LOOP_230_12_fu_2707.ap_idle;

syn_CP_removal_hls_deadlock_idx0_monitor syn_CP_removal_hls_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);

