`timescale 1 ns / 1 ps

module syn_CP_removal_hls_deadlock_idx0_monitor ( // for module syn_CP_removal_syn_CP_removal_inst
    input wire clock,
    input wire reset,
    input wire [7:0] axis_block_sigs,
    input wire [7:0] inst_idle_sigs,
    input wire [0:0] inst_block_sigs,
    output wire [3:0] axis_block_info,
    output wire block
);

// signal declare
reg [3:0] monitor_axis_block_info;
reg monitor_find_block;
wire idx6_block;
wire idx1_block;
wire idx3_block;
wire idx2_block;
wire idx5_block;
wire idx7_block;
wire idx4_block;
wire sub_parallel_block;
wire all_sub_parallel_has_block;
wire all_sub_single_has_block;
wire cur_axis_has_block;
wire seq_is_axis_block;

assign axis_block_info = (monitor_find_block == 1'b1) ? monitor_axis_block_info : 4'h0;
assign block = monitor_find_block;
assign idx6_block = axis_block_sigs[6];
assign idx3_block = axis_block_sigs[3];
assign idx2_block = axis_block_sigs[2];
assign idx5_block = axis_block_sigs[5];
assign idx7_block = axis_block_sigs[7];
assign idx4_block = axis_block_sigs[4];
assign sub_parallel_block = 1'b0 | ((idx3_block & (axis_block_sigs[3])) & ((idx2_block | inst_idle_sigs[2]))) | ((idx2_block & (axis_block_sigs[2])) & ((idx3_block | inst_idle_sigs[3])));
assign all_sub_parallel_has_block = sub_parallel_block;
assign all_sub_single_has_block = 1'b0 | (idx6_block & (axis_block_sigs[6])) | (idx1_block & (axis_block_sigs[0] | axis_block_sigs[1])) | (idx5_block & (axis_block_sigs[5])) | (idx7_block & (axis_block_sigs[7])) | (idx4_block & (axis_block_sigs[4]));
assign cur_axis_has_block = 1'b0;
assign seq_is_axis_block = all_sub_parallel_has_block | all_sub_single_has_block | cur_axis_has_block;

always @(posedge clock) begin
    if (reset == 1'b1)
        monitor_find_block <= 1'b0;
    else if (seq_is_axis_block == 1'b1)
        monitor_find_block <= 1'b1;
    else
        monitor_find_block <= 1'b0;
end

always @(posedge clock) begin
    if (reset == 1'b1)
        monitor_axis_block_info[1:0] <= 2'h0;
    else if (axis_block_sigs[6] | axis_block_sigs[0] | axis_block_sigs[3] | axis_block_sigs[2])
        monitor_axis_block_info[1:0] <= ~(2'h1 << 0);
    else
        monitor_axis_block_info[1:0] <= 2'h0;
end
always @(posedge clock) begin
    if (reset == 1'b1)
        monitor_axis_block_info[3:2] <= 2'h0;
    else if (axis_block_sigs[5] | axis_block_sigs[1] | axis_block_sigs[7] | axis_block_sigs[4])
        monitor_axis_block_info[3:2] <= ~(2'h1 << 1);
    else
        monitor_axis_block_info[3:2] <= 2'h0;
end

// instant sub module
 syn_CP_removal_hls_deadlock_idx1_monitor syn_CP_removal_hls_deadlock_idx1_monitor_U (
    .clock(clock),
    .reset(reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(idx1_block)
);

endmodule
