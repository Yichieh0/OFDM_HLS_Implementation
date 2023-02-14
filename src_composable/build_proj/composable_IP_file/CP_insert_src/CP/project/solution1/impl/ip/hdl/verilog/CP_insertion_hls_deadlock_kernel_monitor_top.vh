
wire kernel_monitor_reset;
wire kernel_monitor_clock;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
wire [3:0] axis_block_sigs;
wire [2:0] inst_idle_sigs;
wire [0:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~grp_CP_insertion_Pipeline_VITIS_LOOP_30_1_fu_80.data_in_TDATA_blk_n;
assign axis_block_sigs[1] = ~grp_CP_insertion_Pipeline_VITIS_LOOP_30_1_fu_80.data_out_TDATA_blk_n;
assign axis_block_sigs[2] = ~grp_CP_insertion_Pipeline_VITIS_LOOP_55_2_VITIS_LOOP_56_3_fu_116.data_out_TDATA_blk_n;
assign axis_block_sigs[3] = ~grp_CP_insertion_Pipeline_VITIS_LOOP_55_2_VITIS_LOOP_56_3_fu_116.data_in_TDATA_blk_n;

assign inst_block_sigs[0] = 1'b0;

assign inst_idle_sigs[0] = 1'b0;
assign inst_idle_sigs[1] = grp_CP_insertion_Pipeline_VITIS_LOOP_30_1_fu_80.ap_idle;
assign inst_idle_sigs[2] = grp_CP_insertion_Pipeline_VITIS_LOOP_55_2_VITIS_LOOP_56_3_fu_116.ap_idle;

CP_insertion_hls_deadlock_idx0_monitor CP_insertion_hls_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);

