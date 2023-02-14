
    wire dl_reset;
    wire dl_clock;
    assign dl_reset = ap_rst_n;
    assign dl_clock = ap_clk;
    wire [0:0] proc_0_data_FIFO_blk;
    wire [0:0] proc_0_data_PIPO_blk;
    wire [0:0] proc_0_start_FIFO_blk;
    wire [0:0] proc_0_TLF_FIFO_blk;
    wire [0:0] proc_0_input_sync_blk;
    wire [0:0] proc_0_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_0;
    reg [0:0] proc_dep_vld_vec_0_reg;
    wire [0:0] in_chan_dep_vld_vec_0;
    wire [21:0] in_chan_dep_data_vec_0;
    wire [0:0] token_in_vec_0;
    wire [0:0] out_chan_dep_vld_vec_0;
    wire [21:0] out_chan_dep_data_0;
    wire [0:0] token_out_vec_0;
    wire dl_detect_out_0;
    wire dep_chan_vld_1_0;
    wire [21:0] dep_chan_data_1_0;
    wire token_1_0;
    wire [2:0] proc_1_data_FIFO_blk;
    wire [2:0] proc_1_data_PIPO_blk;
    wire [2:0] proc_1_start_FIFO_blk;
    wire [2:0] proc_1_TLF_FIFO_blk;
    wire [2:0] proc_1_input_sync_blk;
    wire [2:0] proc_1_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_1;
    reg [2:0] proc_dep_vld_vec_1_reg;
    wire [2:0] in_chan_dep_vld_vec_1;
    wire [65:0] in_chan_dep_data_vec_1;
    wire [2:0] token_in_vec_1;
    wire [2:0] out_chan_dep_vld_vec_1;
    wire [21:0] out_chan_dep_data_1;
    wire [2:0] token_out_vec_1;
    wire dl_detect_out_1;
    wire dep_chan_vld_0_1;
    wire [21:0] dep_chan_data_0_1;
    wire token_0_1;
    wire dep_chan_vld_2_1;
    wire [21:0] dep_chan_data_2_1;
    wire token_2_1;
    wire dep_chan_vld_3_1;
    wire [21:0] dep_chan_data_3_1;
    wire token_3_1;
    wire [1:0] proc_2_data_FIFO_blk;
    wire [1:0] proc_2_data_PIPO_blk;
    wire [1:0] proc_2_start_FIFO_blk;
    wire [1:0] proc_2_TLF_FIFO_blk;
    wire [1:0] proc_2_input_sync_blk;
    wire [1:0] proc_2_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_2;
    reg [1:0] proc_dep_vld_vec_2_reg;
    wire [0:0] in_chan_dep_vld_vec_2;
    wire [21:0] in_chan_dep_data_vec_2;
    wire [0:0] token_in_vec_2;
    wire [1:0] out_chan_dep_vld_vec_2;
    wire [21:0] out_chan_dep_data_2;
    wire [1:0] token_out_vec_2;
    wire dl_detect_out_2;
    wire dep_chan_vld_1_2;
    wire [21:0] dep_chan_data_1_2;
    wire token_1_2;
    wire [2:0] proc_3_data_FIFO_blk;
    wire [2:0] proc_3_data_PIPO_blk;
    wire [2:0] proc_3_start_FIFO_blk;
    wire [2:0] proc_3_TLF_FIFO_blk;
    wire [2:0] proc_3_input_sync_blk;
    wire [2:0] proc_3_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_3;
    reg [2:0] proc_dep_vld_vec_3_reg;
    wire [2:0] in_chan_dep_vld_vec_3;
    wire [65:0] in_chan_dep_data_vec_3;
    wire [2:0] token_in_vec_3;
    wire [2:0] out_chan_dep_vld_vec_3;
    wire [21:0] out_chan_dep_data_3;
    wire [2:0] token_out_vec_3;
    wire dl_detect_out_3;
    wire dep_chan_vld_1_3;
    wire [21:0] dep_chan_data_1_3;
    wire token_1_3;
    wire dep_chan_vld_4_3;
    wire [21:0] dep_chan_data_4_3;
    wire token_4_3;
    wire dep_chan_vld_5_3;
    wire [21:0] dep_chan_data_5_3;
    wire token_5_3;
    wire [1:0] proc_4_data_FIFO_blk;
    wire [1:0] proc_4_data_PIPO_blk;
    wire [1:0] proc_4_start_FIFO_blk;
    wire [1:0] proc_4_TLF_FIFO_blk;
    wire [1:0] proc_4_input_sync_blk;
    wire [1:0] proc_4_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_4;
    reg [1:0] proc_dep_vld_vec_4_reg;
    wire [0:0] in_chan_dep_vld_vec_4;
    wire [21:0] in_chan_dep_data_vec_4;
    wire [0:0] token_in_vec_4;
    wire [1:0] out_chan_dep_vld_vec_4;
    wire [21:0] out_chan_dep_data_4;
    wire [1:0] token_out_vec_4;
    wire dl_detect_out_4;
    wire dep_chan_vld_3_4;
    wire [21:0] dep_chan_data_3_4;
    wire token_3_4;
    wire [2:0] proc_5_data_FIFO_blk;
    wire [2:0] proc_5_data_PIPO_blk;
    wire [2:0] proc_5_start_FIFO_blk;
    wire [2:0] proc_5_TLF_FIFO_blk;
    wire [2:0] proc_5_input_sync_blk;
    wire [2:0] proc_5_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_5;
    reg [2:0] proc_dep_vld_vec_5_reg;
    wire [2:0] in_chan_dep_vld_vec_5;
    wire [65:0] in_chan_dep_data_vec_5;
    wire [2:0] token_in_vec_5;
    wire [2:0] out_chan_dep_vld_vec_5;
    wire [21:0] out_chan_dep_data_5;
    wire [2:0] token_out_vec_5;
    wire dl_detect_out_5;
    wire dep_chan_vld_3_5;
    wire [21:0] dep_chan_data_3_5;
    wire token_3_5;
    wire dep_chan_vld_6_5;
    wire [21:0] dep_chan_data_6_5;
    wire token_6_5;
    wire dep_chan_vld_7_5;
    wire [21:0] dep_chan_data_7_5;
    wire token_7_5;
    wire [1:0] proc_6_data_FIFO_blk;
    wire [1:0] proc_6_data_PIPO_blk;
    wire [1:0] proc_6_start_FIFO_blk;
    wire [1:0] proc_6_TLF_FIFO_blk;
    wire [1:0] proc_6_input_sync_blk;
    wire [1:0] proc_6_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_6;
    reg [1:0] proc_dep_vld_vec_6_reg;
    wire [0:0] in_chan_dep_vld_vec_6;
    wire [21:0] in_chan_dep_data_vec_6;
    wire [0:0] token_in_vec_6;
    wire [1:0] out_chan_dep_vld_vec_6;
    wire [21:0] out_chan_dep_data_6;
    wire [1:0] token_out_vec_6;
    wire dl_detect_out_6;
    wire dep_chan_vld_5_6;
    wire [21:0] dep_chan_data_5_6;
    wire token_5_6;
    wire [1:0] proc_7_data_FIFO_blk;
    wire [1:0] proc_7_data_PIPO_blk;
    wire [1:0] proc_7_start_FIFO_blk;
    wire [1:0] proc_7_TLF_FIFO_blk;
    wire [1:0] proc_7_input_sync_blk;
    wire [1:0] proc_7_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_7;
    reg [1:0] proc_dep_vld_vec_7_reg;
    wire [1:0] in_chan_dep_vld_vec_7;
    wire [43:0] in_chan_dep_data_vec_7;
    wire [1:0] token_in_vec_7;
    wire [1:0] out_chan_dep_vld_vec_7;
    wire [21:0] out_chan_dep_data_7;
    wire [1:0] token_out_vec_7;
    wire dl_detect_out_7;
    wire dep_chan_vld_5_7;
    wire [21:0] dep_chan_data_5_7;
    wire token_5_7;
    wire dep_chan_vld_8_7;
    wire [21:0] dep_chan_data_8_7;
    wire token_8_7;
    wire [1:0] proc_8_data_FIFO_blk;
    wire [1:0] proc_8_data_PIPO_blk;
    wire [1:0] proc_8_start_FIFO_blk;
    wire [1:0] proc_8_TLF_FIFO_blk;
    wire [1:0] proc_8_input_sync_blk;
    wire [1:0] proc_8_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_8;
    reg [1:0] proc_dep_vld_vec_8_reg;
    wire [1:0] in_chan_dep_vld_vec_8;
    wire [43:0] in_chan_dep_data_vec_8;
    wire [1:0] token_in_vec_8;
    wire [1:0] out_chan_dep_vld_vec_8;
    wire [21:0] out_chan_dep_data_8;
    wire [1:0] token_out_vec_8;
    wire dl_detect_out_8;
    wire dep_chan_vld_7_8;
    wire [21:0] dep_chan_data_7_8;
    wire token_7_8;
    wire dep_chan_vld_9_8;
    wire [21:0] dep_chan_data_9_8;
    wire token_9_8;
    wire [1:0] proc_9_data_FIFO_blk;
    wire [1:0] proc_9_data_PIPO_blk;
    wire [1:0] proc_9_start_FIFO_blk;
    wire [1:0] proc_9_TLF_FIFO_blk;
    wire [1:0] proc_9_input_sync_blk;
    wire [1:0] proc_9_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_9;
    reg [1:0] proc_dep_vld_vec_9_reg;
    wire [4:0] in_chan_dep_vld_vec_9;
    wire [109:0] in_chan_dep_data_vec_9;
    wire [4:0] token_in_vec_9;
    wire [1:0] out_chan_dep_vld_vec_9;
    wire [21:0] out_chan_dep_data_9;
    wire [1:0] token_out_vec_9;
    wire dl_detect_out_9;
    wire dep_chan_vld_2_9;
    wire [21:0] dep_chan_data_2_9;
    wire token_2_9;
    wire dep_chan_vld_4_9;
    wire [21:0] dep_chan_data_4_9;
    wire token_4_9;
    wire dep_chan_vld_6_9;
    wire [21:0] dep_chan_data_6_9;
    wire token_6_9;
    wire dep_chan_vld_8_9;
    wire [21:0] dep_chan_data_8_9;
    wire token_8_9;
    wire dep_chan_vld_10_9;
    wire [21:0] dep_chan_data_10_9;
    wire token_10_9;
    wire [1:0] proc_10_data_FIFO_blk;
    wire [1:0] proc_10_data_PIPO_blk;
    wire [1:0] proc_10_start_FIFO_blk;
    wire [1:0] proc_10_TLF_FIFO_blk;
    wire [1:0] proc_10_input_sync_blk;
    wire [1:0] proc_10_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_10;
    reg [1:0] proc_dep_vld_vec_10_reg;
    wire [1:0] in_chan_dep_vld_vec_10;
    wire [43:0] in_chan_dep_data_vec_10;
    wire [1:0] token_in_vec_10;
    wire [1:0] out_chan_dep_vld_vec_10;
    wire [21:0] out_chan_dep_data_10;
    wire [1:0] token_out_vec_10;
    wire dl_detect_out_10;
    wire dep_chan_vld_9_10;
    wire [21:0] dep_chan_data_9_10;
    wire token_9_10;
    wire dep_chan_vld_11_10;
    wire [21:0] dep_chan_data_11_10;
    wire token_11_10;
    wire [1:0] proc_11_data_FIFO_blk;
    wire [1:0] proc_11_data_PIPO_blk;
    wire [1:0] proc_11_start_FIFO_blk;
    wire [1:0] proc_11_TLF_FIFO_blk;
    wire [1:0] proc_11_input_sync_blk;
    wire [1:0] proc_11_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_11;
    reg [1:0] proc_dep_vld_vec_11_reg;
    wire [1:0] in_chan_dep_vld_vec_11;
    wire [43:0] in_chan_dep_data_vec_11;
    wire [1:0] token_in_vec_11;
    wire [1:0] out_chan_dep_vld_vec_11;
    wire [21:0] out_chan_dep_data_11;
    wire [1:0] token_out_vec_11;
    wire dl_detect_out_11;
    wire dep_chan_vld_10_11;
    wire [21:0] dep_chan_data_10_11;
    wire token_10_11;
    wire dep_chan_vld_12_11;
    wire [21:0] dep_chan_data_12_11;
    wire token_12_11;
    wire [1:0] proc_12_data_FIFO_blk;
    wire [1:0] proc_12_data_PIPO_blk;
    wire [1:0] proc_12_start_FIFO_blk;
    wire [1:0] proc_12_TLF_FIFO_blk;
    wire [1:0] proc_12_input_sync_blk;
    wire [1:0] proc_12_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_12;
    reg [1:0] proc_dep_vld_vec_12_reg;
    wire [1:0] in_chan_dep_vld_vec_12;
    wire [43:0] in_chan_dep_data_vec_12;
    wire [1:0] token_in_vec_12;
    wire [1:0] out_chan_dep_vld_vec_12;
    wire [21:0] out_chan_dep_data_12;
    wire [1:0] token_out_vec_12;
    wire dl_detect_out_12;
    wire dep_chan_vld_11_12;
    wire [21:0] dep_chan_data_11_12;
    wire token_11_12;
    wire dep_chan_vld_13_12;
    wire [21:0] dep_chan_data_13_12;
    wire token_13_12;
    wire [1:0] proc_13_data_FIFO_blk;
    wire [1:0] proc_13_data_PIPO_blk;
    wire [1:0] proc_13_start_FIFO_blk;
    wire [1:0] proc_13_TLF_FIFO_blk;
    wire [1:0] proc_13_input_sync_blk;
    wire [1:0] proc_13_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_13;
    reg [1:0] proc_dep_vld_vec_13_reg;
    wire [1:0] in_chan_dep_vld_vec_13;
    wire [43:0] in_chan_dep_data_vec_13;
    wire [1:0] token_in_vec_13;
    wire [1:0] out_chan_dep_vld_vec_13;
    wire [21:0] out_chan_dep_data_13;
    wire [1:0] token_out_vec_13;
    wire dl_detect_out_13;
    wire dep_chan_vld_12_13;
    wire [21:0] dep_chan_data_12_13;
    wire token_12_13;
    wire dep_chan_vld_14_13;
    wire [21:0] dep_chan_data_14_13;
    wire token_14_13;
    wire [1:0] proc_14_data_FIFO_blk;
    wire [1:0] proc_14_data_PIPO_blk;
    wire [1:0] proc_14_start_FIFO_blk;
    wire [1:0] proc_14_TLF_FIFO_blk;
    wire [1:0] proc_14_input_sync_blk;
    wire [1:0] proc_14_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_14;
    reg [1:0] proc_dep_vld_vec_14_reg;
    wire [1:0] in_chan_dep_vld_vec_14;
    wire [43:0] in_chan_dep_data_vec_14;
    wire [1:0] token_in_vec_14;
    wire [1:0] out_chan_dep_vld_vec_14;
    wire [21:0] out_chan_dep_data_14;
    wire [1:0] token_out_vec_14;
    wire dl_detect_out_14;
    wire dep_chan_vld_13_14;
    wire [21:0] dep_chan_data_13_14;
    wire token_13_14;
    wire dep_chan_vld_15_14;
    wire [21:0] dep_chan_data_15_14;
    wire token_15_14;
    wire [1:0] proc_15_data_FIFO_blk;
    wire [1:0] proc_15_data_PIPO_blk;
    wire [1:0] proc_15_start_FIFO_blk;
    wire [1:0] proc_15_TLF_FIFO_blk;
    wire [1:0] proc_15_input_sync_blk;
    wire [1:0] proc_15_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_15;
    reg [1:0] proc_dep_vld_vec_15_reg;
    wire [1:0] in_chan_dep_vld_vec_15;
    wire [43:0] in_chan_dep_data_vec_15;
    wire [1:0] token_in_vec_15;
    wire [1:0] out_chan_dep_vld_vec_15;
    wire [21:0] out_chan_dep_data_15;
    wire [1:0] token_out_vec_15;
    wire dl_detect_out_15;
    wire dep_chan_vld_14_15;
    wire [21:0] dep_chan_data_14_15;
    wire token_14_15;
    wire dep_chan_vld_16_15;
    wire [21:0] dep_chan_data_16_15;
    wire token_16_15;
    wire [1:0] proc_16_data_FIFO_blk;
    wire [1:0] proc_16_data_PIPO_blk;
    wire [1:0] proc_16_start_FIFO_blk;
    wire [1:0] proc_16_TLF_FIFO_blk;
    wire [1:0] proc_16_input_sync_blk;
    wire [1:0] proc_16_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_16;
    reg [1:0] proc_dep_vld_vec_16_reg;
    wire [1:0] in_chan_dep_vld_vec_16;
    wire [43:0] in_chan_dep_data_vec_16;
    wire [1:0] token_in_vec_16;
    wire [1:0] out_chan_dep_vld_vec_16;
    wire [21:0] out_chan_dep_data_16;
    wire [1:0] token_out_vec_16;
    wire dl_detect_out_16;
    wire dep_chan_vld_15_16;
    wire [21:0] dep_chan_data_15_16;
    wire token_15_16;
    wire dep_chan_vld_17_16;
    wire [21:0] dep_chan_data_17_16;
    wire token_17_16;
    wire [1:0] proc_17_data_FIFO_blk;
    wire [1:0] proc_17_data_PIPO_blk;
    wire [1:0] proc_17_start_FIFO_blk;
    wire [1:0] proc_17_TLF_FIFO_blk;
    wire [1:0] proc_17_input_sync_blk;
    wire [1:0] proc_17_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_17;
    reg [1:0] proc_dep_vld_vec_17_reg;
    wire [1:0] in_chan_dep_vld_vec_17;
    wire [43:0] in_chan_dep_data_vec_17;
    wire [1:0] token_in_vec_17;
    wire [1:0] out_chan_dep_vld_vec_17;
    wire [21:0] out_chan_dep_data_17;
    wire [1:0] token_out_vec_17;
    wire dl_detect_out_17;
    wire dep_chan_vld_16_17;
    wire [21:0] dep_chan_data_16_17;
    wire token_16_17;
    wire dep_chan_vld_18_17;
    wire [21:0] dep_chan_data_18_17;
    wire token_18_17;
    wire [1:0] proc_18_data_FIFO_blk;
    wire [1:0] proc_18_data_PIPO_blk;
    wire [1:0] proc_18_start_FIFO_blk;
    wire [1:0] proc_18_TLF_FIFO_blk;
    wire [1:0] proc_18_input_sync_blk;
    wire [1:0] proc_18_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_18;
    reg [1:0] proc_dep_vld_vec_18_reg;
    wire [1:0] in_chan_dep_vld_vec_18;
    wire [43:0] in_chan_dep_data_vec_18;
    wire [1:0] token_in_vec_18;
    wire [1:0] out_chan_dep_vld_vec_18;
    wire [21:0] out_chan_dep_data_18;
    wire [1:0] token_out_vec_18;
    wire dl_detect_out_18;
    wire dep_chan_vld_17_18;
    wire [21:0] dep_chan_data_17_18;
    wire token_17_18;
    wire dep_chan_vld_19_18;
    wire [21:0] dep_chan_data_19_18;
    wire token_19_18;
    wire [1:0] proc_19_data_FIFO_blk;
    wire [1:0] proc_19_data_PIPO_blk;
    wire [1:0] proc_19_start_FIFO_blk;
    wire [1:0] proc_19_TLF_FIFO_blk;
    wire [1:0] proc_19_input_sync_blk;
    wire [1:0] proc_19_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_19;
    reg [1:0] proc_dep_vld_vec_19_reg;
    wire [1:0] in_chan_dep_vld_vec_19;
    wire [43:0] in_chan_dep_data_vec_19;
    wire [1:0] token_in_vec_19;
    wire [1:0] out_chan_dep_vld_vec_19;
    wire [21:0] out_chan_dep_data_19;
    wire [1:0] token_out_vec_19;
    wire dl_detect_out_19;
    wire dep_chan_vld_18_19;
    wire [21:0] dep_chan_data_18_19;
    wire token_18_19;
    wire dep_chan_vld_20_19;
    wire [21:0] dep_chan_data_20_19;
    wire token_20_19;
    wire [1:0] proc_20_data_FIFO_blk;
    wire [1:0] proc_20_data_PIPO_blk;
    wire [1:0] proc_20_start_FIFO_blk;
    wire [1:0] proc_20_TLF_FIFO_blk;
    wire [1:0] proc_20_input_sync_blk;
    wire [1:0] proc_20_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_20;
    reg [1:0] proc_dep_vld_vec_20_reg;
    wire [1:0] in_chan_dep_vld_vec_20;
    wire [43:0] in_chan_dep_data_vec_20;
    wire [1:0] token_in_vec_20;
    wire [1:0] out_chan_dep_vld_vec_20;
    wire [21:0] out_chan_dep_data_20;
    wire [1:0] token_out_vec_20;
    wire dl_detect_out_20;
    wire dep_chan_vld_19_20;
    wire [21:0] dep_chan_data_19_20;
    wire token_19_20;
    wire dep_chan_vld_21_20;
    wire [21:0] dep_chan_data_21_20;
    wire token_21_20;
    wire [0:0] proc_21_data_FIFO_blk;
    wire [0:0] proc_21_data_PIPO_blk;
    wire [0:0] proc_21_start_FIFO_blk;
    wire [0:0] proc_21_TLF_FIFO_blk;
    wire [0:0] proc_21_input_sync_blk;
    wire [0:0] proc_21_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_21;
    reg [0:0] proc_dep_vld_vec_21_reg;
    wire [0:0] in_chan_dep_vld_vec_21;
    wire [21:0] in_chan_dep_data_vec_21;
    wire [0:0] token_in_vec_21;
    wire [0:0] out_chan_dep_vld_vec_21;
    wire [21:0] out_chan_dep_data_21;
    wire [0:0] token_out_vec_21;
    wire dl_detect_out_21;
    wire dep_chan_vld_20_21;
    wire [21:0] dep_chan_data_20_21;
    wire token_20_21;
    wire [21:0] dl_in_vec;
    wire dl_detect_out;
    wire token_clear;
    reg [21:0] origin;

reg [15:0] trans_in_cnt_0;// for process grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_0 <= 16'h0;
    end
    else if (grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0.start_write == 1'b1) begin
        trans_in_cnt_0 <= trans_in_cnt_0 + 16'h1;
    end
    else begin
        trans_in_cnt_0 <= trans_in_cnt_0;
    end
end

reg [15:0] trans_out_cnt_0;// for process grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_0 <= 16'h0;
    end
    else if (grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0.ap_done == 1'b1 && grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0.ap_continue == 1'b1) begin
        trans_out_cnt_0 <= trans_out_cnt_0 + 16'h1;
    end
    else begin
        trans_out_cnt_0 <= trans_out_cnt_0;
    end
end

reg [15:0] trans_in_cnt_1;// for process grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_1 <= 16'h0;
    end
    else if (grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0.start_write == 1'b1) begin
        trans_in_cnt_1 <= trans_in_cnt_1 + 16'h1;
    end
    else begin
        trans_in_cnt_1 <= trans_in_cnt_1;
    end
end

reg [15:0] trans_out_cnt_1;// for process grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_1 <= 16'h0;
    end
    else if (grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0.ap_done == 1'b1 && grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0.ap_continue == 1'b1) begin
        trans_out_cnt_1 <= trans_out_cnt_1 + 16'h1;
    end
    else begin
        trans_out_cnt_1 <= trans_out_cnt_1;
    end
end

reg [15:0] trans_in_cnt_2;// for process grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_2 <= 16'h0;
    end
    else if (grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0.start_write == 1'b1) begin
        trans_in_cnt_2 <= trans_in_cnt_2 + 16'h1;
    end
    else begin
        trans_in_cnt_2 <= trans_in_cnt_2;
    end
end

reg [15:0] trans_out_cnt_2;// for process grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_2 <= 16'h0;
    end
    else if (grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0.ap_done == 1'b1 && grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0.ap_continue == 1'b1) begin
        trans_out_cnt_2 <= trans_out_cnt_2 + 16'h1;
    end
    else begin
        trans_out_cnt_2 <= trans_out_cnt_2;
    end
end

reg [15:0] trans_in_cnt_3;// for process grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_3 <= 16'h0;
    end
    else if (grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0.start_write == 1'b1) begin
        trans_in_cnt_3 <= trans_in_cnt_3 + 16'h1;
    end
    else begin
        trans_in_cnt_3 <= trans_in_cnt_3;
    end
end

reg [15:0] trans_out_cnt_3;// for process grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_3 <= 16'h0;
    end
    else if (grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0.ap_done == 1'b1 && grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0.ap_continue == 1'b1) begin
        trans_out_cnt_3 <= trans_out_cnt_3 + 16'h1;
    end
    else begin
        trans_out_cnt_3 <= trans_out_cnt_3;
    end
end

reg [15:0] trans_in_cnt_4;// for process grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStageKernelLastStageS2S_64_2_1_0_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_4 <= 16'h0;
    end
    else if (grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStageKernelLastStageS2S_64_2_1_0_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0.start_write == 1'b1) begin
        trans_in_cnt_4 <= trans_in_cnt_4 + 16'h1;
    end
    else begin
        trans_in_cnt_4 <= trans_in_cnt_4;
    end
end

reg [15:0] trans_out_cnt_4;// for process grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStageKernelLastStageS2S_64_2_1_0_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_4 <= 16'h0;
    end
    else if (grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStageKernelLastStageS2S_64_2_1_0_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0.ap_done == 1'b1 && grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStageKernelLastStageS2S_64_2_1_0_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0.ap_continue == 1'b1) begin
        trans_out_cnt_4 <= trans_out_cnt_4 + 16'h1;
    end
    else begin
        trans_out_cnt_4 <= trans_out_cnt_4;
    end
end

reg [15:0] trans_in_cnt_5;// for process grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.convertSuperStreamToArrayNScale_1_0_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_14_5_3_0_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_5 <= 16'h0;
    end
    else if (grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.convertSuperStreamToArrayNScale_1_0_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_14_5_3_0_U0.start_write == 1'b1) begin
        trans_in_cnt_5 <= trans_in_cnt_5 + 16'h1;
    end
    else begin
        trans_in_cnt_5 <= trans_in_cnt_5;
    end
end

reg [15:0] trans_out_cnt_5;// for process grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.convertSuperStreamToArrayNScale_1_0_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_14_5_3_0_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_5 <= 16'h0;
    end
    else if (grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.convertSuperStreamToArrayNScale_1_0_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_14_5_3_0_U0.ap_done == 1'b1 && grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.convertSuperStreamToArrayNScale_1_0_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_14_5_3_0_U0.ap_continue == 1'b1) begin
        trans_out_cnt_5 <= trans_out_cnt_5 + 16'h1;
    end
    else begin
        trans_out_cnt_5 <= trans_out_cnt_5;
    end
end

    // Process: grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0
    fft_top1_hls_deadlock_detect_unit #(22, 0, 1, 1) fft_top1_hls_deadlock_detect_unit_0 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_0),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_0),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_0),
        .token_in_vec(token_in_vec_0),
        .dl_detect_in(dl_detect_out),
        .origin(origin[0]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_0),
        .out_chan_dep_data(out_chan_dep_data_0),
        .token_out_vec(token_out_vec_0),
        .dl_detect_out(dl_in_vec[0]));

    assign proc_0_data_FIFO_blk[0] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_U0.casted_output_blk_n);
    assign proc_0_data_PIPO_blk[0] = 1'b0;
    assign proc_0_start_FIFO_blk[0] = 1'b0;
    assign proc_0_TLF_FIFO_blk[0] = 1'b0;
    assign proc_0_input_sync_blk[0] = 1'b0;
    assign proc_0_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_0[0] = dl_detect_out ? proc_dep_vld_vec_0_reg[0] : (proc_0_data_FIFO_blk[0] | proc_0_data_PIPO_blk[0] | proc_0_start_FIFO_blk[0] | proc_0_TLF_FIFO_blk[0] | proc_0_input_sync_blk[0] | proc_0_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_0_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_0_reg <= proc_dep_vld_vec_0;
        end
    end
    assign in_chan_dep_vld_vec_0[0] = dep_chan_vld_1_0;
    assign in_chan_dep_data_vec_0[21 : 0] = dep_chan_data_1_0;
    assign token_in_vec_0[0] = token_1_0;
    assign dep_chan_vld_0_1 = out_chan_dep_vld_vec_0[0];
    assign dep_chan_data_0_1 = out_chan_dep_data_0;
    assign token_0_1 = token_out_vec_0[0];

    // Process: grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0
    fft_top1_hls_deadlock_detect_unit #(22, 1, 3, 3) fft_top1_hls_deadlock_detect_unit_1 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_1),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_1),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_1),
        .token_in_vec(token_in_vec_1),
        .dl_detect_in(dl_detect_out),
        .origin(origin[1]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_1),
        .out_chan_dep_data(out_chan_dep_data_1),
        .token_out_vec(token_out_vec_1),
        .dl_detect_out(dl_in_vec[1]));

    assign proc_1_data_FIFO_blk[0] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0.casted_output_blk_n);
    assign proc_1_data_PIPO_blk[0] = 1'b0;
    assign proc_1_start_FIFO_blk[0] = 1'b0;
    assign proc_1_TLF_FIFO_blk[0] = 1'b0;
    assign proc_1_input_sync_blk[0] = 1'b0;
    assign proc_1_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_1[0] = dl_detect_out ? proc_dep_vld_vec_1_reg[0] : (proc_1_data_FIFO_blk[0] | proc_1_data_PIPO_blk[0] | proc_1_start_FIFO_blk[0] | proc_1_TLF_FIFO_blk[0] | proc_1_input_sync_blk[0] | proc_1_output_sync_blk[0]);
    assign proc_1_data_FIFO_blk[1] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0.temp_blk_n);
    assign proc_1_data_PIPO_blk[1] = 1'b0;
    assign proc_1_start_FIFO_blk[1] = 1'b0;
    assign proc_1_TLF_FIFO_blk[1] = 1'b0;
    assign proc_1_input_sync_blk[1] = 1'b0;
    assign proc_1_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_1[1] = dl_detect_out ? proc_dep_vld_vec_1_reg[1] : (proc_1_data_FIFO_blk[1] | proc_1_data_PIPO_blk[1] | proc_1_start_FIFO_blk[1] | proc_1_TLF_FIFO_blk[1] | proc_1_input_sync_blk[1] | proc_1_output_sync_blk[1]);
    assign proc_1_data_FIFO_blk[2] = 1'b0;
    assign proc_1_data_PIPO_blk[2] = 1'b0;
    assign proc_1_start_FIFO_blk[2] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.start_for_swap_complex_ap_fixed_22_7_5_3_0_1_U0_U.if_full_n & grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0.ap_start & ~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_U0.real_start & (trans_in_cnt_0 == trans_out_cnt_0) & ~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.start_for_swap_complex_ap_fixed_22_7_5_3_0_1_U0_U.if_read);
    assign proc_1_TLF_FIFO_blk[2] = 1'b0;
    assign proc_1_input_sync_blk[2] = 1'b0;
    assign proc_1_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_1[2] = dl_detect_out ? proc_dep_vld_vec_1_reg[2] : (proc_1_data_FIFO_blk[2] | proc_1_data_PIPO_blk[2] | proc_1_start_FIFO_blk[2] | proc_1_TLF_FIFO_blk[2] | proc_1_input_sync_blk[2] | proc_1_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_1_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_1_reg <= proc_dep_vld_vec_1;
        end
    end
    assign in_chan_dep_vld_vec_1[0] = dep_chan_vld_0_1;
    assign in_chan_dep_data_vec_1[21 : 0] = dep_chan_data_0_1;
    assign token_in_vec_1[0] = token_0_1;
    assign in_chan_dep_vld_vec_1[1] = dep_chan_vld_2_1;
    assign in_chan_dep_data_vec_1[43 : 22] = dep_chan_data_2_1;
    assign token_in_vec_1[1] = token_2_1;
    assign in_chan_dep_vld_vec_1[2] = dep_chan_vld_3_1;
    assign in_chan_dep_data_vec_1[65 : 44] = dep_chan_data_3_1;
    assign token_in_vec_1[2] = token_3_1;
    assign dep_chan_vld_1_0 = out_chan_dep_vld_vec_1[0];
    assign dep_chan_data_1_0 = out_chan_dep_data_1;
    assign token_1_0 = token_out_vec_1[0];
    assign dep_chan_vld_1_3 = out_chan_dep_vld_vec_1[1];
    assign dep_chan_data_1_3 = out_chan_dep_data_1;
    assign token_1_3 = token_out_vec_1[1];
    assign dep_chan_vld_1_2 = out_chan_dep_vld_vec_1[2];
    assign dep_chan_data_1_2 = out_chan_dep_data_1;
    assign token_1_2 = token_out_vec_1[2];

    // Process: grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0
    fft_top1_hls_deadlock_detect_unit #(22, 2, 1, 2) fft_top1_hls_deadlock_detect_unit_2 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_2),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_2),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_2),
        .token_in_vec(token_in_vec_2),
        .dl_detect_in(dl_detect_out),
        .origin(origin[2]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_2),
        .out_chan_dep_data(out_chan_dep_data_2),
        .token_out_vec(token_out_vec_2),
        .dl_detect_out(dl_in_vec[2]));

    assign proc_2_data_FIFO_blk[0] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0.temp_blk_n);
    assign proc_2_data_PIPO_blk[0] = 1'b0;
    assign proc_2_start_FIFO_blk[0] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.start_for_swap_complex_ap_fixed_22_7_5_3_0_1_U0_U.if_empty_n & grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.ap_idle & ~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.start_for_swap_complex_ap_fixed_22_7_5_3_0_1_U0_U.if_write);
    assign proc_2_TLF_FIFO_blk[0] = 1'b0;
    assign proc_2_input_sync_blk[0] = 1'b0;
    assign proc_2_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_2[0] = dl_detect_out ? proc_dep_vld_vec_2_reg[0] : (proc_2_data_FIFO_blk[0] | proc_2_data_PIPO_blk[0] | proc_2_start_FIFO_blk[0] | proc_2_TLF_FIFO_blk[0] | proc_2_input_sync_blk[0] | proc_2_output_sync_blk[0]);
    assign proc_2_data_FIFO_blk[1] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0.p_fftInData_reOrdered_blk_n);
    assign proc_2_data_PIPO_blk[1] = 1'b0;
    assign proc_2_start_FIFO_blk[1] = 1'b0;
    assign proc_2_TLF_FIFO_blk[1] = 1'b0;
    assign proc_2_input_sync_blk[1] = 1'b0;
    assign proc_2_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_2[1] = dl_detect_out ? proc_dep_vld_vec_2_reg[1] : (proc_2_data_FIFO_blk[1] | proc_2_data_PIPO_blk[1] | proc_2_start_FIFO_blk[1] | proc_2_TLF_FIFO_blk[1] | proc_2_input_sync_blk[1] | proc_2_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_2_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_2_reg <= proc_dep_vld_vec_2;
        end
    end
    assign in_chan_dep_vld_vec_2[0] = dep_chan_vld_1_2;
    assign in_chan_dep_data_vec_2[21 : 0] = dep_chan_data_1_2;
    assign token_in_vec_2[0] = token_1_2;
    assign dep_chan_vld_2_1 = out_chan_dep_vld_vec_2[0];
    assign dep_chan_data_2_1 = out_chan_dep_data_2;
    assign token_2_1 = token_out_vec_2[0];
    assign dep_chan_vld_2_9 = out_chan_dep_vld_vec_2[1];
    assign dep_chan_data_2_9 = out_chan_dep_data_2;
    assign token_2_9 = token_out_vec_2[1];

    // Process: grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0
    fft_top1_hls_deadlock_detect_unit #(22, 3, 3, 3) fft_top1_hls_deadlock_detect_unit_3 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_3),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_3),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_3),
        .token_in_vec(token_in_vec_3),
        .dl_detect_in(dl_detect_out),
        .origin(origin[3]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_3),
        .out_chan_dep_data(out_chan_dep_data_3),
        .token_out_vec(token_out_vec_3),
        .dl_detect_out(dl_in_vec[3]));

    assign proc_3_data_FIFO_blk[0] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0.temp_blk_n);
    assign proc_3_data_PIPO_blk[0] = 1'b0;
    assign proc_3_start_FIFO_blk[0] = 1'b0;
    assign proc_3_TLF_FIFO_blk[0] = 1'b0;
    assign proc_3_input_sync_blk[0] = 1'b0;
    assign proc_3_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_3[0] = dl_detect_out ? proc_dep_vld_vec_3_reg[0] : (proc_3_data_FIFO_blk[0] | proc_3_data_PIPO_blk[0] | proc_3_start_FIFO_blk[0] | proc_3_TLF_FIFO_blk[0] | proc_3_input_sync_blk[0] | proc_3_output_sync_blk[0]);
    assign proc_3_data_FIFO_blk[1] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0.temp1_blk_n);
    assign proc_3_data_PIPO_blk[1] = 1'b0;
    assign proc_3_start_FIFO_blk[1] = 1'b0;
    assign proc_3_TLF_FIFO_blk[1] = 1'b0;
    assign proc_3_input_sync_blk[1] = 1'b0;
    assign proc_3_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_3[1] = dl_detect_out ? proc_dep_vld_vec_3_reg[1] : (proc_3_data_FIFO_blk[1] | proc_3_data_PIPO_blk[1] | proc_3_start_FIFO_blk[1] | proc_3_TLF_FIFO_blk[1] | proc_3_input_sync_blk[1] | proc_3_output_sync_blk[1]);
    assign proc_3_data_FIFO_blk[2] = 1'b0;
    assign proc_3_data_PIPO_blk[2] = 1'b0;
    assign proc_3_start_FIFO_blk[2] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.start_for_swap_complex_ap_fixed_22_7_5_3_0_2_U0_U.if_full_n & grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0.ap_start & ~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_U0.real_start & (trans_in_cnt_1 == trans_out_cnt_1) & ~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.start_for_swap_complex_ap_fixed_22_7_5_3_0_2_U0_U.if_read);
    assign proc_3_TLF_FIFO_blk[2] = 1'b0;
    assign proc_3_input_sync_blk[2] = 1'b0;
    assign proc_3_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_3[2] = dl_detect_out ? proc_dep_vld_vec_3_reg[2] : (proc_3_data_FIFO_blk[2] | proc_3_data_PIPO_blk[2] | proc_3_start_FIFO_blk[2] | proc_3_TLF_FIFO_blk[2] | proc_3_input_sync_blk[2] | proc_3_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_3_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_3_reg <= proc_dep_vld_vec_3;
        end
    end
    assign in_chan_dep_vld_vec_3[0] = dep_chan_vld_1_3;
    assign in_chan_dep_data_vec_3[21 : 0] = dep_chan_data_1_3;
    assign token_in_vec_3[0] = token_1_3;
    assign in_chan_dep_vld_vec_3[1] = dep_chan_vld_4_3;
    assign in_chan_dep_data_vec_3[43 : 22] = dep_chan_data_4_3;
    assign token_in_vec_3[1] = token_4_3;
    assign in_chan_dep_vld_vec_3[2] = dep_chan_vld_5_3;
    assign in_chan_dep_data_vec_3[65 : 44] = dep_chan_data_5_3;
    assign token_in_vec_3[2] = token_5_3;
    assign dep_chan_vld_3_1 = out_chan_dep_vld_vec_3[0];
    assign dep_chan_data_3_1 = out_chan_dep_data_3;
    assign token_3_1 = token_out_vec_3[0];
    assign dep_chan_vld_3_5 = out_chan_dep_vld_vec_3[1];
    assign dep_chan_data_3_5 = out_chan_dep_data_3;
    assign token_3_5 = token_out_vec_3[1];
    assign dep_chan_vld_3_4 = out_chan_dep_vld_vec_3[2];
    assign dep_chan_data_3_4 = out_chan_dep_data_3;
    assign token_3_4 = token_out_vec_3[2];

    // Process: grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0
    fft_top1_hls_deadlock_detect_unit #(22, 4, 1, 2) fft_top1_hls_deadlock_detect_unit_4 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_4),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_4),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_4),
        .token_in_vec(token_in_vec_4),
        .dl_detect_in(dl_detect_out),
        .origin(origin[4]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_4),
        .out_chan_dep_data(out_chan_dep_data_4),
        .token_out_vec(token_out_vec_4),
        .dl_detect_out(dl_in_vec[4]));

    assign proc_4_data_FIFO_blk[0] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0.temp_blk_n);
    assign proc_4_data_PIPO_blk[0] = 1'b0;
    assign proc_4_start_FIFO_blk[0] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.start_for_swap_complex_ap_fixed_22_7_5_3_0_2_U0_U.if_empty_n & grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.ap_idle & ~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.start_for_swap_complex_ap_fixed_22_7_5_3_0_2_U0_U.if_write);
    assign proc_4_TLF_FIFO_blk[0] = 1'b0;
    assign proc_4_input_sync_blk[0] = 1'b0;
    assign proc_4_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_4[0] = dl_detect_out ? proc_dep_vld_vec_4_reg[0] : (proc_4_data_FIFO_blk[0] | proc_4_data_PIPO_blk[0] | proc_4_start_FIFO_blk[0] | proc_4_TLF_FIFO_blk[0] | proc_4_input_sync_blk[0] | proc_4_output_sync_blk[0]);
    assign proc_4_data_FIFO_blk[1] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0.p_fftInData_reOrdered_blk_n);
    assign proc_4_data_PIPO_blk[1] = 1'b0;
    assign proc_4_start_FIFO_blk[1] = 1'b0;
    assign proc_4_TLF_FIFO_blk[1] = 1'b0;
    assign proc_4_input_sync_blk[1] = 1'b0;
    assign proc_4_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_4[1] = dl_detect_out ? proc_dep_vld_vec_4_reg[1] : (proc_4_data_FIFO_blk[1] | proc_4_data_PIPO_blk[1] | proc_4_start_FIFO_blk[1] | proc_4_TLF_FIFO_blk[1] | proc_4_input_sync_blk[1] | proc_4_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_4_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_4_reg <= proc_dep_vld_vec_4;
        end
    end
    assign in_chan_dep_vld_vec_4[0] = dep_chan_vld_3_4;
    assign in_chan_dep_data_vec_4[21 : 0] = dep_chan_data_3_4;
    assign token_in_vec_4[0] = token_3_4;
    assign dep_chan_vld_4_3 = out_chan_dep_vld_vec_4[0];
    assign dep_chan_data_4_3 = out_chan_dep_data_4;
    assign token_4_3 = token_out_vec_4[0];
    assign dep_chan_vld_4_9 = out_chan_dep_vld_vec_4[1];
    assign dep_chan_data_4_9 = out_chan_dep_data_4;
    assign token_4_9 = token_out_vec_4[1];

    // Process: grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0
    fft_top1_hls_deadlock_detect_unit #(22, 5, 3, 3) fft_top1_hls_deadlock_detect_unit_5 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_5),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_5),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_5),
        .token_in_vec(token_in_vec_5),
        .dl_detect_in(dl_detect_out),
        .origin(origin[5]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_5),
        .out_chan_dep_data(out_chan_dep_data_5),
        .token_out_vec(token_out_vec_5),
        .dl_detect_out(dl_in_vec[5]));

    assign proc_5_data_FIFO_blk[0] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0.temp_blk_n);
    assign proc_5_data_PIPO_blk[0] = 1'b0;
    assign proc_5_start_FIFO_blk[0] = 1'b0;
    assign proc_5_TLF_FIFO_blk[0] = 1'b0;
    assign proc_5_input_sync_blk[0] = 1'b0;
    assign proc_5_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_5[0] = dl_detect_out ? proc_dep_vld_vec_5_reg[0] : (proc_5_data_FIFO_blk[0] | proc_5_data_PIPO_blk[0] | proc_5_start_FIFO_blk[0] | proc_5_TLF_FIFO_blk[0] | proc_5_input_sync_blk[0] | proc_5_output_sync_blk[0]);
    assign proc_5_data_FIFO_blk[1] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0.temp1_blk_n);
    assign proc_5_data_PIPO_blk[1] = 1'b0;
    assign proc_5_start_FIFO_blk[1] = 1'b0;
    assign proc_5_TLF_FIFO_blk[1] = 1'b0;
    assign proc_5_input_sync_blk[1] = 1'b0;
    assign proc_5_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_5[1] = dl_detect_out ? proc_dep_vld_vec_5_reg[1] : (proc_5_data_FIFO_blk[1] | proc_5_data_PIPO_blk[1] | proc_5_start_FIFO_blk[1] | proc_5_TLF_FIFO_blk[1] | proc_5_input_sync_blk[1] | proc_5_output_sync_blk[1]);
    assign proc_5_data_FIFO_blk[2] = 1'b0;
    assign proc_5_data_PIPO_blk[2] = 1'b0;
    assign proc_5_start_FIFO_blk[2] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.start_for_swap_complex_ap_fixed_22_7_5_3_0_3_U0_U.if_full_n & grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0.ap_start & ~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_U0.real_start & (trans_in_cnt_2 == trans_out_cnt_2) & ~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.start_for_swap_complex_ap_fixed_22_7_5_3_0_3_U0_U.if_read);
    assign proc_5_TLF_FIFO_blk[2] = 1'b0;
    assign proc_5_input_sync_blk[2] = 1'b0;
    assign proc_5_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_5[2] = dl_detect_out ? proc_dep_vld_vec_5_reg[2] : (proc_5_data_FIFO_blk[2] | proc_5_data_PIPO_blk[2] | proc_5_start_FIFO_blk[2] | proc_5_TLF_FIFO_blk[2] | proc_5_input_sync_blk[2] | proc_5_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_5_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_5_reg <= proc_dep_vld_vec_5;
        end
    end
    assign in_chan_dep_vld_vec_5[0] = dep_chan_vld_3_5;
    assign in_chan_dep_data_vec_5[21 : 0] = dep_chan_data_3_5;
    assign token_in_vec_5[0] = token_3_5;
    assign in_chan_dep_vld_vec_5[1] = dep_chan_vld_6_5;
    assign in_chan_dep_data_vec_5[43 : 22] = dep_chan_data_6_5;
    assign token_in_vec_5[1] = token_6_5;
    assign in_chan_dep_vld_vec_5[2] = dep_chan_vld_7_5;
    assign in_chan_dep_data_vec_5[65 : 44] = dep_chan_data_7_5;
    assign token_in_vec_5[2] = token_7_5;
    assign dep_chan_vld_5_3 = out_chan_dep_vld_vec_5[0];
    assign dep_chan_data_5_3 = out_chan_dep_data_5;
    assign token_5_3 = token_out_vec_5[0];
    assign dep_chan_vld_5_7 = out_chan_dep_vld_vec_5[1];
    assign dep_chan_data_5_7 = out_chan_dep_data_5;
    assign token_5_7 = token_out_vec_5[1];
    assign dep_chan_vld_5_6 = out_chan_dep_vld_vec_5[2];
    assign dep_chan_data_5_6 = out_chan_dep_data_5;
    assign token_5_6 = token_out_vec_5[2];

    // Process: grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0
    fft_top1_hls_deadlock_detect_unit #(22, 6, 1, 2) fft_top1_hls_deadlock_detect_unit_6 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_6),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_6),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_6),
        .token_in_vec(token_in_vec_6),
        .dl_detect_in(dl_detect_out),
        .origin(origin[6]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_6),
        .out_chan_dep_data(out_chan_dep_data_6),
        .token_out_vec(token_out_vec_6),
        .dl_detect_out(dl_in_vec[6]));

    assign proc_6_data_FIFO_blk[0] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0.temp_blk_n);
    assign proc_6_data_PIPO_blk[0] = 1'b0;
    assign proc_6_start_FIFO_blk[0] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.start_for_swap_complex_ap_fixed_22_7_5_3_0_3_U0_U.if_empty_n & grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.ap_idle & ~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.start_for_swap_complex_ap_fixed_22_7_5_3_0_3_U0_U.if_write);
    assign proc_6_TLF_FIFO_blk[0] = 1'b0;
    assign proc_6_input_sync_blk[0] = 1'b0;
    assign proc_6_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_6[0] = dl_detect_out ? proc_dep_vld_vec_6_reg[0] : (proc_6_data_FIFO_blk[0] | proc_6_data_PIPO_blk[0] | proc_6_start_FIFO_blk[0] | proc_6_TLF_FIFO_blk[0] | proc_6_input_sync_blk[0] | proc_6_output_sync_blk[0]);
    assign proc_6_data_FIFO_blk[1] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0.p_fftInData_reOrdered_blk_n);
    assign proc_6_data_PIPO_blk[1] = 1'b0;
    assign proc_6_start_FIFO_blk[1] = 1'b0;
    assign proc_6_TLF_FIFO_blk[1] = 1'b0;
    assign proc_6_input_sync_blk[1] = 1'b0;
    assign proc_6_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_6[1] = dl_detect_out ? proc_dep_vld_vec_6_reg[1] : (proc_6_data_FIFO_blk[1] | proc_6_data_PIPO_blk[1] | proc_6_start_FIFO_blk[1] | proc_6_TLF_FIFO_blk[1] | proc_6_input_sync_blk[1] | proc_6_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_6_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_6_reg <= proc_dep_vld_vec_6;
        end
    end
    assign in_chan_dep_vld_vec_6[0] = dep_chan_vld_5_6;
    assign in_chan_dep_data_vec_6[21 : 0] = dep_chan_data_5_6;
    assign token_in_vec_6[0] = token_5_6;
    assign dep_chan_vld_6_5 = out_chan_dep_vld_vec_6[0];
    assign dep_chan_data_6_5 = out_chan_dep_data_6;
    assign token_6_5 = token_out_vec_6[0];
    assign dep_chan_vld_6_9 = out_chan_dep_vld_vec_6[1];
    assign dep_chan_data_6_9 = out_chan_dep_data_6;
    assign token_6_9 = token_out_vec_6[1];

    // Process: grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0
    fft_top1_hls_deadlock_detect_unit #(22, 7, 2, 2) fft_top1_hls_deadlock_detect_unit_7 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_7),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_7),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_7),
        .token_in_vec(token_in_vec_7),
        .dl_detect_in(dl_detect_out),
        .origin(origin[7]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_7),
        .out_chan_dep_data(out_chan_dep_data_7),
        .token_out_vec(token_out_vec_7),
        .dl_detect_out(dl_in_vec[7]));

    assign proc_7_data_FIFO_blk[0] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0.temp_blk_n);
    assign proc_7_data_PIPO_blk[0] = 1'b0;
    assign proc_7_start_FIFO_blk[0] = 1'b0;
    assign proc_7_TLF_FIFO_blk[0] = 1'b0;
    assign proc_7_input_sync_blk[0] = 1'b0;
    assign proc_7_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_7[0] = dl_detect_out ? proc_dep_vld_vec_7_reg[0] : (proc_7_data_FIFO_blk[0] | proc_7_data_PIPO_blk[0] | proc_7_start_FIFO_blk[0] | proc_7_TLF_FIFO_blk[0] | proc_7_input_sync_blk[0] | proc_7_output_sync_blk[0]);
    assign proc_7_data_FIFO_blk[1] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0.temp1_blk_n);
    assign proc_7_data_PIPO_blk[1] = 1'b0;
    assign proc_7_start_FIFO_blk[1] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.start_for_streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0_U.if_full_n & grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0.ap_start & ~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_U0.real_start & (trans_in_cnt_3 == trans_out_cnt_3) & ~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.start_for_streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0_U.if_read);
    assign proc_7_TLF_FIFO_blk[1] = 1'b0;
    assign proc_7_input_sync_blk[1] = 1'b0;
    assign proc_7_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_7[1] = dl_detect_out ? proc_dep_vld_vec_7_reg[1] : (proc_7_data_FIFO_blk[1] | proc_7_data_PIPO_blk[1] | proc_7_start_FIFO_blk[1] | proc_7_TLF_FIFO_blk[1] | proc_7_input_sync_blk[1] | proc_7_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_7_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_7_reg <= proc_dep_vld_vec_7;
        end
    end
    assign in_chan_dep_vld_vec_7[0] = dep_chan_vld_5_7;
    assign in_chan_dep_data_vec_7[21 : 0] = dep_chan_data_5_7;
    assign token_in_vec_7[0] = token_5_7;
    assign in_chan_dep_vld_vec_7[1] = dep_chan_vld_8_7;
    assign in_chan_dep_data_vec_7[43 : 22] = dep_chan_data_8_7;
    assign token_in_vec_7[1] = token_8_7;
    assign dep_chan_vld_7_5 = out_chan_dep_vld_vec_7[0];
    assign dep_chan_data_7_5 = out_chan_dep_data_7;
    assign token_7_5 = token_out_vec_7[0];
    assign dep_chan_vld_7_8 = out_chan_dep_vld_vec_7[1];
    assign dep_chan_data_7_8 = out_chan_dep_data_7;
    assign token_7_8 = token_out_vec_7[1];

    // Process: grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0
    fft_top1_hls_deadlock_detect_unit #(22, 8, 2, 2) fft_top1_hls_deadlock_detect_unit_8 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_8),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_8),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_8),
        .token_in_vec(token_in_vec_8),
        .dl_detect_in(dl_detect_out),
        .origin(origin[8]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_8),
        .out_chan_dep_data(out_chan_dep_data_8),
        .token_out_vec(token_out_vec_8),
        .dl_detect_out(dl_in_vec[8]));

    assign proc_8_data_FIFO_blk[0] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0.temp_blk_n);
    assign proc_8_data_PIPO_blk[0] = 1'b0;
    assign proc_8_start_FIFO_blk[0] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.start_for_streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0_U.if_empty_n & grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0.ap_idle & ~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.start_for_streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0_U.if_write);
    assign proc_8_TLF_FIFO_blk[0] = 1'b0;
    assign proc_8_input_sync_blk[0] = 1'b0;
    assign proc_8_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_8[0] = dl_detect_out ? proc_dep_vld_vec_8_reg[0] : (proc_8_data_FIFO_blk[0] | proc_8_data_PIPO_blk[0] | proc_8_start_FIFO_blk[0] | proc_8_TLF_FIFO_blk[0] | proc_8_input_sync_blk[0] | proc_8_output_sync_blk[0]);
    assign proc_8_data_FIFO_blk[1] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.swap_complex_ap_fixed_22_7_5_3_0_U0.swap_complex_ap_fixed_22_7_5_3_0_1_U0.swap_complex_ap_fixed_22_7_5_3_0_2_U0.swap_complex_ap_fixed_22_7_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0.p_fftInData_reOrdered_blk_n);
    assign proc_8_data_PIPO_blk[1] = 1'b0;
    assign proc_8_start_FIFO_blk[1] = 1'b0;
    assign proc_8_TLF_FIFO_blk[1] = 1'b0;
    assign proc_8_input_sync_blk[1] = 1'b0;
    assign proc_8_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_8[1] = dl_detect_out ? proc_dep_vld_vec_8_reg[1] : (proc_8_data_FIFO_blk[1] | proc_8_data_PIPO_blk[1] | proc_8_start_FIFO_blk[1] | proc_8_TLF_FIFO_blk[1] | proc_8_input_sync_blk[1] | proc_8_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_8_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_8_reg <= proc_dep_vld_vec_8;
        end
    end
    assign in_chan_dep_vld_vec_8[0] = dep_chan_vld_7_8;
    assign in_chan_dep_data_vec_8[21 : 0] = dep_chan_data_7_8;
    assign token_in_vec_8[0] = token_7_8;
    assign in_chan_dep_vld_vec_8[1] = dep_chan_vld_9_8;
    assign in_chan_dep_data_vec_8[43 : 22] = dep_chan_data_9_8;
    assign token_in_vec_8[1] = token_9_8;
    assign dep_chan_vld_8_7 = out_chan_dep_vld_vec_8[0];
    assign dep_chan_data_8_7 = out_chan_dep_data_8;
    assign token_8_7 = token_out_vec_8[0];
    assign dep_chan_vld_8_9 = out_chan_dep_vld_vec_8[1];
    assign dep_chan_data_8_9 = out_chan_dep_data_8;
    assign token_8_9 = token_out_vec_8[1];

    // Process: grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStageKernelS2S_64_2_1_0_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_24_9_5_3_0_U0
    fft_top1_hls_deadlock_detect_unit #(22, 9, 5, 2) fft_top1_hls_deadlock_detect_unit_9 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_9),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_9),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_9),
        .token_in_vec(token_in_vec_9),
        .dl_detect_in(dl_detect_out),
        .origin(origin[9]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_9),
        .out_chan_dep_data(out_chan_dep_data_9),
        .token_out_vec(token_out_vec_9),
        .dl_detect_out(dl_in_vec[9]));

    assign proc_9_data_FIFO_blk[0] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStageKernelS2S_64_2_1_0_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_24_9_5_3_0_U0.p_fftInData_reOrdered_blk_n);
    assign proc_9_data_PIPO_blk[0] = 1'b0;
    assign proc_9_start_FIFO_blk[0] = 1'b0;
    assign proc_9_TLF_FIFO_blk[0] = 1'b0;
    assign proc_9_input_sync_blk[0] = 1'b0;
    assign proc_9_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_9[0] = dl_detect_out ? proc_dep_vld_vec_9_reg[0] : (proc_9_data_FIFO_blk[0] | proc_9_data_PIPO_blk[0] | proc_9_start_FIFO_blk[0] | proc_9_TLF_FIFO_blk[0] | proc_9_input_sync_blk[0] | proc_9_output_sync_blk[0]);
    assign proc_9_data_FIFO_blk[1] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStageKernelS2S_64_2_1_0_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_24_9_5_3_0_U0.fftOutData_local_blk_n);
    assign proc_9_data_PIPO_blk[1] = 1'b0;
    assign proc_9_start_FIFO_blk[1] = 1'b0;
    assign proc_9_TLF_FIFO_blk[1] = 1'b0;
    assign proc_9_input_sync_blk[1] = 1'b0;
    assign proc_9_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_9[1] = dl_detect_out ? proc_dep_vld_vec_9_reg[1] : (proc_9_data_FIFO_blk[1] | proc_9_data_PIPO_blk[1] | proc_9_start_FIFO_blk[1] | proc_9_TLF_FIFO_blk[1] | proc_9_input_sync_blk[1] | proc_9_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_9_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_9_reg <= proc_dep_vld_vec_9;
        end
    end
    assign in_chan_dep_vld_vec_9[0] = dep_chan_vld_2_9;
    assign in_chan_dep_data_vec_9[21 : 0] = dep_chan_data_2_9;
    assign token_in_vec_9[0] = token_2_9;
    assign in_chan_dep_vld_vec_9[1] = dep_chan_vld_4_9;
    assign in_chan_dep_data_vec_9[43 : 22] = dep_chan_data_4_9;
    assign token_in_vec_9[1] = token_4_9;
    assign in_chan_dep_vld_vec_9[2] = dep_chan_vld_6_9;
    assign in_chan_dep_data_vec_9[65 : 44] = dep_chan_data_6_9;
    assign token_in_vec_9[2] = token_6_9;
    assign in_chan_dep_vld_vec_9[3] = dep_chan_vld_8_9;
    assign in_chan_dep_data_vec_9[87 : 66] = dep_chan_data_8_9;
    assign token_in_vec_9[3] = token_8_9;
    assign in_chan_dep_vld_vec_9[4] = dep_chan_vld_10_9;
    assign in_chan_dep_data_vec_9[109 : 88] = dep_chan_data_10_9;
    assign token_in_vec_9[4] = token_10_9;
    assign dep_chan_vld_9_8 = out_chan_dep_vld_vec_9[0];
    assign dep_chan_data_9_8 = out_chan_dep_data_9;
    assign token_9_8 = token_out_vec_9[0];
    assign dep_chan_vld_9_10 = out_chan_dep_vld_vec_9[1];
    assign dep_chan_data_9_10 = out_chan_dep_data_9;
    assign token_9_10 = token_out_vec_9[1];

    // Process: grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_U0
    fft_top1_hls_deadlock_detect_unit #(22, 10, 2, 2) fft_top1_hls_deadlock_detect_unit_10 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_10),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_10),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_10),
        .token_in_vec(token_in_vec_10),
        .dl_detect_in(dl_detect_out),
        .origin(origin[10]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_10),
        .out_chan_dep_data(out_chan_dep_data_10),
        .token_out_vec(token_out_vec_10),
        .dl_detect_out(dl_in_vec[10]));

    assign proc_10_data_FIFO_blk[0] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_U0.fftOutData_local_blk_n);
    assign proc_10_data_PIPO_blk[0] = 1'b0;
    assign proc_10_start_FIFO_blk[0] = 1'b0;
    assign proc_10_TLF_FIFO_blk[0] = 1'b0;
    assign proc_10_input_sync_blk[0] = 1'b0;
    assign proc_10_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_10[0] = dl_detect_out ? proc_dep_vld_vec_10_reg[0] : (proc_10_data_FIFO_blk[0] | proc_10_data_PIPO_blk[0] | proc_10_start_FIFO_blk[0] | proc_10_TLF_FIFO_blk[0] | proc_10_input_sync_blk[0] | proc_10_output_sync_blk[0]);
    assign proc_10_data_FIFO_blk[1] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_U0.fftOutData_local2_blk_n);
    assign proc_10_data_PIPO_blk[1] = 1'b0;
    assign proc_10_start_FIFO_blk[1] = 1'b0;
    assign proc_10_TLF_FIFO_blk[1] = 1'b0;
    assign proc_10_input_sync_blk[1] = 1'b0;
    assign proc_10_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_10[1] = dl_detect_out ? proc_dep_vld_vec_10_reg[1] : (proc_10_data_FIFO_blk[1] | proc_10_data_PIPO_blk[1] | proc_10_start_FIFO_blk[1] | proc_10_TLF_FIFO_blk[1] | proc_10_input_sync_blk[1] | proc_10_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_10_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_10_reg <= proc_dep_vld_vec_10;
        end
    end
    assign in_chan_dep_vld_vec_10[0] = dep_chan_vld_9_10;
    assign in_chan_dep_data_vec_10[21 : 0] = dep_chan_data_9_10;
    assign token_in_vec_10[0] = token_9_10;
    assign in_chan_dep_vld_vec_10[1] = dep_chan_vld_11_10;
    assign in_chan_dep_data_vec_10[43 : 22] = dep_chan_data_11_10;
    assign token_in_vec_10[1] = token_11_10;
    assign dep_chan_vld_10_9 = out_chan_dep_vld_vec_10[0];
    assign dep_chan_data_10_9 = out_chan_dep_data_10;
    assign token_10_9 = token_out_vec_10[0];
    assign dep_chan_vld_10_11 = out_chan_dep_vld_vec_10[1];
    assign dep_chan_data_10_11 = out_chan_dep_data_10;
    assign token_10_11 = token_out_vec_10[1];

    // Process: grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStageKernelS2S_64_2_1_0_0_5_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_25_10_5_3_0_U0
    fft_top1_hls_deadlock_detect_unit #(22, 11, 2, 2) fft_top1_hls_deadlock_detect_unit_11 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_11),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_11),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_11),
        .token_in_vec(token_in_vec_11),
        .dl_detect_in(dl_detect_out),
        .origin(origin[11]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_11),
        .out_chan_dep_data(out_chan_dep_data_11),
        .token_out_vec(token_out_vec_11),
        .dl_detect_out(dl_in_vec[11]));

    assign proc_11_data_FIFO_blk[0] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStageKernelS2S_64_2_1_0_0_5_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_25_10_5_3_0_U0.fftOutData_local2_blk_n);
    assign proc_11_data_PIPO_blk[0] = 1'b0;
    assign proc_11_start_FIFO_blk[0] = 1'b0;
    assign proc_11_TLF_FIFO_blk[0] = 1'b0;
    assign proc_11_input_sync_blk[0] = 1'b0;
    assign proc_11_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_11[0] = dl_detect_out ? proc_dep_vld_vec_11_reg[0] : (proc_11_data_FIFO_blk[0] | proc_11_data_PIPO_blk[0] | proc_11_start_FIFO_blk[0] | proc_11_TLF_FIFO_blk[0] | proc_11_input_sync_blk[0] | proc_11_output_sync_blk[0]);
    assign proc_11_data_FIFO_blk[1] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStageKernelS2S_64_2_1_0_0_5_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_25_10_5_3_0_U0.fftOutData_local_blk_n);
    assign proc_11_data_PIPO_blk[1] = 1'b0;
    assign proc_11_start_FIFO_blk[1] = 1'b0;
    assign proc_11_TLF_FIFO_blk[1] = 1'b0;
    assign proc_11_input_sync_blk[1] = 1'b0;
    assign proc_11_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_11[1] = dl_detect_out ? proc_dep_vld_vec_11_reg[1] : (proc_11_data_FIFO_blk[1] | proc_11_data_PIPO_blk[1] | proc_11_start_FIFO_blk[1] | proc_11_TLF_FIFO_blk[1] | proc_11_input_sync_blk[1] | proc_11_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_11_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_11_reg <= proc_dep_vld_vec_11;
        end
    end
    assign in_chan_dep_vld_vec_11[0] = dep_chan_vld_10_11;
    assign in_chan_dep_data_vec_11[21 : 0] = dep_chan_data_10_11;
    assign token_in_vec_11[0] = token_10_11;
    assign in_chan_dep_vld_vec_11[1] = dep_chan_vld_12_11;
    assign in_chan_dep_data_vec_11[43 : 22] = dep_chan_data_12_11;
    assign token_in_vec_11[1] = token_12_11;
    assign dep_chan_vld_11_10 = out_chan_dep_vld_vec_11[0];
    assign dep_chan_data_11_10 = out_chan_dep_data_11;
    assign token_11_10 = token_out_vec_11[0];
    assign dep_chan_vld_11_12 = out_chan_dep_vld_vec_11[1];
    assign dep_chan_data_11_12 = out_chan_dep_data_11;
    assign token_11_12 = token_out_vec_11[1];

    // Process: grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_U0
    fft_top1_hls_deadlock_detect_unit #(22, 12, 2, 2) fft_top1_hls_deadlock_detect_unit_12 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_12),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_12),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_12),
        .token_in_vec(token_in_vec_12),
        .dl_detect_in(dl_detect_out),
        .origin(origin[12]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_12),
        .out_chan_dep_data(out_chan_dep_data_12),
        .token_out_vec(token_out_vec_12),
        .dl_detect_out(dl_in_vec[12]));

    assign proc_12_data_FIFO_blk[0] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_U0.fftOutData_local_blk_n);
    assign proc_12_data_PIPO_blk[0] = 1'b0;
    assign proc_12_start_FIFO_blk[0] = 1'b0;
    assign proc_12_TLF_FIFO_blk[0] = 1'b0;
    assign proc_12_input_sync_blk[0] = 1'b0;
    assign proc_12_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_12[0] = dl_detect_out ? proc_dep_vld_vec_12_reg[0] : (proc_12_data_FIFO_blk[0] | proc_12_data_PIPO_blk[0] | proc_12_start_FIFO_blk[0] | proc_12_TLF_FIFO_blk[0] | proc_12_input_sync_blk[0] | proc_12_output_sync_blk[0]);
    assign proc_12_data_FIFO_blk[1] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_U0.fftOutData_local2_blk_n);
    assign proc_12_data_PIPO_blk[1] = 1'b0;
    assign proc_12_start_FIFO_blk[1] = 1'b0;
    assign proc_12_TLF_FIFO_blk[1] = 1'b0;
    assign proc_12_input_sync_blk[1] = 1'b0;
    assign proc_12_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_12[1] = dl_detect_out ? proc_dep_vld_vec_12_reg[1] : (proc_12_data_FIFO_blk[1] | proc_12_data_PIPO_blk[1] | proc_12_start_FIFO_blk[1] | proc_12_TLF_FIFO_blk[1] | proc_12_input_sync_blk[1] | proc_12_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_12_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_12_reg <= proc_dep_vld_vec_12;
        end
    end
    assign in_chan_dep_vld_vec_12[0] = dep_chan_vld_11_12;
    assign in_chan_dep_data_vec_12[21 : 0] = dep_chan_data_11_12;
    assign token_in_vec_12[0] = token_11_12;
    assign in_chan_dep_vld_vec_12[1] = dep_chan_vld_13_12;
    assign in_chan_dep_data_vec_12[43 : 22] = dep_chan_data_13_12;
    assign token_in_vec_12[1] = token_13_12;
    assign dep_chan_vld_12_11 = out_chan_dep_vld_vec_12[0];
    assign dep_chan_data_12_11 = out_chan_dep_data_12;
    assign token_12_11 = token_out_vec_12[0];
    assign dep_chan_vld_12_13 = out_chan_dep_vld_vec_12[1];
    assign dep_chan_data_12_13 = out_chan_dep_data_12;
    assign token_12_13 = token_out_vec_12[1];

    // Process: grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStageKernelS2S_64_2_1_0_0_4_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0
    fft_top1_hls_deadlock_detect_unit #(22, 13, 2, 2) fft_top1_hls_deadlock_detect_unit_13 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_13),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_13),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_13),
        .token_in_vec(token_in_vec_13),
        .dl_detect_in(dl_detect_out),
        .origin(origin[13]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_13),
        .out_chan_dep_data(out_chan_dep_data_13),
        .token_out_vec(token_out_vec_13),
        .dl_detect_out(dl_in_vec[13]));

    assign proc_13_data_FIFO_blk[0] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStageKernelS2S_64_2_1_0_0_4_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0.fftOutData_local2_blk_n);
    assign proc_13_data_PIPO_blk[0] = 1'b0;
    assign proc_13_start_FIFO_blk[0] = 1'b0;
    assign proc_13_TLF_FIFO_blk[0] = 1'b0;
    assign proc_13_input_sync_blk[0] = 1'b0;
    assign proc_13_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_13[0] = dl_detect_out ? proc_dep_vld_vec_13_reg[0] : (proc_13_data_FIFO_blk[0] | proc_13_data_PIPO_blk[0] | proc_13_start_FIFO_blk[0] | proc_13_TLF_FIFO_blk[0] | proc_13_input_sync_blk[0] | proc_13_output_sync_blk[0]);
    assign proc_13_data_FIFO_blk[1] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStageKernelS2S_64_2_1_0_0_4_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_U0.fftOutData_local_blk_n);
    assign proc_13_data_PIPO_blk[1] = 1'b0;
    assign proc_13_start_FIFO_blk[1] = 1'b0;
    assign proc_13_TLF_FIFO_blk[1] = 1'b0;
    assign proc_13_input_sync_blk[1] = 1'b0;
    assign proc_13_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_13[1] = dl_detect_out ? proc_dep_vld_vec_13_reg[1] : (proc_13_data_FIFO_blk[1] | proc_13_data_PIPO_blk[1] | proc_13_start_FIFO_blk[1] | proc_13_TLF_FIFO_blk[1] | proc_13_input_sync_blk[1] | proc_13_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_13_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_13_reg <= proc_dep_vld_vec_13;
        end
    end
    assign in_chan_dep_vld_vec_13[0] = dep_chan_vld_12_13;
    assign in_chan_dep_data_vec_13[21 : 0] = dep_chan_data_12_13;
    assign token_in_vec_13[0] = token_12_13;
    assign in_chan_dep_vld_vec_13[1] = dep_chan_vld_14_13;
    assign in_chan_dep_data_vec_13[43 : 22] = dep_chan_data_14_13;
    assign token_in_vec_13[1] = token_14_13;
    assign dep_chan_vld_13_12 = out_chan_dep_vld_vec_13[0];
    assign dep_chan_data_13_12 = out_chan_dep_data_13;
    assign token_13_12 = token_out_vec_13[0];
    assign dep_chan_vld_13_14 = out_chan_dep_vld_vec_13[1];
    assign dep_chan_data_13_14 = out_chan_dep_data_13;
    assign token_13_14 = token_out_vec_13[1];

    // Process: grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0
    fft_top1_hls_deadlock_detect_unit #(22, 14, 2, 2) fft_top1_hls_deadlock_detect_unit_14 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_14),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_14),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_14),
        .token_in_vec(token_in_vec_14),
        .dl_detect_in(dl_detect_out),
        .origin(origin[14]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_14),
        .out_chan_dep_data(out_chan_dep_data_14),
        .token_out_vec(token_out_vec_14),
        .dl_detect_out(dl_in_vec[14]));

    assign proc_14_data_FIFO_blk[0] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0.fftOutData_local_blk_n);
    assign proc_14_data_PIPO_blk[0] = 1'b0;
    assign proc_14_start_FIFO_blk[0] = 1'b0;
    assign proc_14_TLF_FIFO_blk[0] = 1'b0;
    assign proc_14_input_sync_blk[0] = 1'b0;
    assign proc_14_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_14[0] = dl_detect_out ? proc_dep_vld_vec_14_reg[0] : (proc_14_data_FIFO_blk[0] | proc_14_data_PIPO_blk[0] | proc_14_start_FIFO_blk[0] | proc_14_TLF_FIFO_blk[0] | proc_14_input_sync_blk[0] | proc_14_output_sync_blk[0]);
    assign proc_14_data_FIFO_blk[1] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_U0.fftOutData_local2_blk_n);
    assign proc_14_data_PIPO_blk[1] = 1'b0;
    assign proc_14_start_FIFO_blk[1] = 1'b0;
    assign proc_14_TLF_FIFO_blk[1] = 1'b0;
    assign proc_14_input_sync_blk[1] = 1'b0;
    assign proc_14_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_14[1] = dl_detect_out ? proc_dep_vld_vec_14_reg[1] : (proc_14_data_FIFO_blk[1] | proc_14_data_PIPO_blk[1] | proc_14_start_FIFO_blk[1] | proc_14_TLF_FIFO_blk[1] | proc_14_input_sync_blk[1] | proc_14_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_14_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_14_reg <= proc_dep_vld_vec_14;
        end
    end
    assign in_chan_dep_vld_vec_14[0] = dep_chan_vld_13_14;
    assign in_chan_dep_data_vec_14[21 : 0] = dep_chan_data_13_14;
    assign token_in_vec_14[0] = token_13_14;
    assign in_chan_dep_vld_vec_14[1] = dep_chan_vld_15_14;
    assign in_chan_dep_data_vec_14[43 : 22] = dep_chan_data_15_14;
    assign token_in_vec_14[1] = token_15_14;
    assign dep_chan_vld_14_13 = out_chan_dep_vld_vec_14[0];
    assign dep_chan_data_14_13 = out_chan_dep_data_14;
    assign token_14_13 = token_out_vec_14[0];
    assign dep_chan_vld_14_15 = out_chan_dep_vld_vec_14[1];
    assign dep_chan_data_14_15 = out_chan_dep_data_14;
    assign token_14_15 = token_out_vec_14[1];

    // Process: grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStageKernelS2S_64_2_1_0_0_3_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_27_12_5_3_0_U0
    fft_top1_hls_deadlock_detect_unit #(22, 15, 2, 2) fft_top1_hls_deadlock_detect_unit_15 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_15),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_15),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_15),
        .token_in_vec(token_in_vec_15),
        .dl_detect_in(dl_detect_out),
        .origin(origin[15]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_15),
        .out_chan_dep_data(out_chan_dep_data_15),
        .token_out_vec(token_out_vec_15),
        .dl_detect_out(dl_in_vec[15]));

    assign proc_15_data_FIFO_blk[0] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStageKernelS2S_64_2_1_0_0_3_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_27_12_5_3_0_U0.fftOutData_local2_blk_n);
    assign proc_15_data_PIPO_blk[0] = 1'b0;
    assign proc_15_start_FIFO_blk[0] = 1'b0;
    assign proc_15_TLF_FIFO_blk[0] = 1'b0;
    assign proc_15_input_sync_blk[0] = 1'b0;
    assign proc_15_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_15[0] = dl_detect_out ? proc_dep_vld_vec_15_reg[0] : (proc_15_data_FIFO_blk[0] | proc_15_data_PIPO_blk[0] | proc_15_start_FIFO_blk[0] | proc_15_TLF_FIFO_blk[0] | proc_15_input_sync_blk[0] | proc_15_output_sync_blk[0]);
    assign proc_15_data_FIFO_blk[1] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStageKernelS2S_64_2_1_0_0_3_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_27_12_5_3_0_U0.fftOutData_local_blk_n);
    assign proc_15_data_PIPO_blk[1] = 1'b0;
    assign proc_15_start_FIFO_blk[1] = 1'b0;
    assign proc_15_TLF_FIFO_blk[1] = 1'b0;
    assign proc_15_input_sync_blk[1] = 1'b0;
    assign proc_15_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_15[1] = dl_detect_out ? proc_dep_vld_vec_15_reg[1] : (proc_15_data_FIFO_blk[1] | proc_15_data_PIPO_blk[1] | proc_15_start_FIFO_blk[1] | proc_15_TLF_FIFO_blk[1] | proc_15_input_sync_blk[1] | proc_15_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_15_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_15_reg <= proc_dep_vld_vec_15;
        end
    end
    assign in_chan_dep_vld_vec_15[0] = dep_chan_vld_14_15;
    assign in_chan_dep_data_vec_15[21 : 0] = dep_chan_data_14_15;
    assign token_in_vec_15[0] = token_14_15;
    assign in_chan_dep_vld_vec_15[1] = dep_chan_vld_16_15;
    assign in_chan_dep_data_vec_15[43 : 22] = dep_chan_data_16_15;
    assign token_in_vec_15[1] = token_16_15;
    assign dep_chan_vld_15_14 = out_chan_dep_vld_vec_15[0];
    assign dep_chan_data_15_14 = out_chan_dep_data_15;
    assign token_15_14 = token_out_vec_15[0];
    assign dep_chan_vld_15_16 = out_chan_dep_vld_vec_15[1];
    assign dep_chan_data_15_16 = out_chan_dep_data_15;
    assign token_15_16 = token_out_vec_15[1];

    // Process: grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_U0
    fft_top1_hls_deadlock_detect_unit #(22, 16, 2, 2) fft_top1_hls_deadlock_detect_unit_16 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_16),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_16),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_16),
        .token_in_vec(token_in_vec_16),
        .dl_detect_in(dl_detect_out),
        .origin(origin[16]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_16),
        .out_chan_dep_data(out_chan_dep_data_16),
        .token_out_vec(token_out_vec_16),
        .dl_detect_out(dl_in_vec[16]));

    assign proc_16_data_FIFO_blk[0] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_U0.fftOutData_local_blk_n);
    assign proc_16_data_PIPO_blk[0] = 1'b0;
    assign proc_16_start_FIFO_blk[0] = 1'b0;
    assign proc_16_TLF_FIFO_blk[0] = 1'b0;
    assign proc_16_input_sync_blk[0] = 1'b0;
    assign proc_16_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_16[0] = dl_detect_out ? proc_dep_vld_vec_16_reg[0] : (proc_16_data_FIFO_blk[0] | proc_16_data_PIPO_blk[0] | proc_16_start_FIFO_blk[0] | proc_16_TLF_FIFO_blk[0] | proc_16_input_sync_blk[0] | proc_16_output_sync_blk[0]);
    assign proc_16_data_FIFO_blk[1] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_U0.fftOutData_local2_blk_n);
    assign proc_16_data_PIPO_blk[1] = 1'b0;
    assign proc_16_start_FIFO_blk[1] = 1'b0;
    assign proc_16_TLF_FIFO_blk[1] = 1'b0;
    assign proc_16_input_sync_blk[1] = 1'b0;
    assign proc_16_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_16[1] = dl_detect_out ? proc_dep_vld_vec_16_reg[1] : (proc_16_data_FIFO_blk[1] | proc_16_data_PIPO_blk[1] | proc_16_start_FIFO_blk[1] | proc_16_TLF_FIFO_blk[1] | proc_16_input_sync_blk[1] | proc_16_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_16_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_16_reg <= proc_dep_vld_vec_16;
        end
    end
    assign in_chan_dep_vld_vec_16[0] = dep_chan_vld_15_16;
    assign in_chan_dep_data_vec_16[21 : 0] = dep_chan_data_15_16;
    assign token_in_vec_16[0] = token_15_16;
    assign in_chan_dep_vld_vec_16[1] = dep_chan_vld_17_16;
    assign in_chan_dep_data_vec_16[43 : 22] = dep_chan_data_17_16;
    assign token_in_vec_16[1] = token_17_16;
    assign dep_chan_vld_16_15 = out_chan_dep_vld_vec_16[0];
    assign dep_chan_data_16_15 = out_chan_dep_data_16;
    assign token_16_15 = token_out_vec_16[0];
    assign dep_chan_vld_16_17 = out_chan_dep_vld_vec_16[1];
    assign dep_chan_data_16_17 = out_chan_dep_data_16;
    assign token_16_17 = token_out_vec_16[1];

    // Process: grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStageKernelS2S_64_2_1_0_0_2_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_27_13_5_3_0_U0
    fft_top1_hls_deadlock_detect_unit #(22, 17, 2, 2) fft_top1_hls_deadlock_detect_unit_17 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_17),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_17),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_17),
        .token_in_vec(token_in_vec_17),
        .dl_detect_in(dl_detect_out),
        .origin(origin[17]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_17),
        .out_chan_dep_data(out_chan_dep_data_17),
        .token_out_vec(token_out_vec_17),
        .dl_detect_out(dl_in_vec[17]));

    assign proc_17_data_FIFO_blk[0] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStageKernelS2S_64_2_1_0_0_2_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_27_13_5_3_0_U0.fftOutData_local2_blk_n);
    assign proc_17_data_PIPO_blk[0] = 1'b0;
    assign proc_17_start_FIFO_blk[0] = 1'b0;
    assign proc_17_TLF_FIFO_blk[0] = 1'b0;
    assign proc_17_input_sync_blk[0] = 1'b0;
    assign proc_17_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_17[0] = dl_detect_out ? proc_dep_vld_vec_17_reg[0] : (proc_17_data_FIFO_blk[0] | proc_17_data_PIPO_blk[0] | proc_17_start_FIFO_blk[0] | proc_17_TLF_FIFO_blk[0] | proc_17_input_sync_blk[0] | proc_17_output_sync_blk[0]);
    assign proc_17_data_FIFO_blk[1] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStageKernelS2S_64_2_1_0_0_2_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_27_13_5_3_0_U0.fftOutData_local_blk_n);
    assign proc_17_data_PIPO_blk[1] = 1'b0;
    assign proc_17_start_FIFO_blk[1] = 1'b0;
    assign proc_17_TLF_FIFO_blk[1] = 1'b0;
    assign proc_17_input_sync_blk[1] = 1'b0;
    assign proc_17_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_17[1] = dl_detect_out ? proc_dep_vld_vec_17_reg[1] : (proc_17_data_FIFO_blk[1] | proc_17_data_PIPO_blk[1] | proc_17_start_FIFO_blk[1] | proc_17_TLF_FIFO_blk[1] | proc_17_input_sync_blk[1] | proc_17_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_17_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_17_reg <= proc_dep_vld_vec_17;
        end
    end
    assign in_chan_dep_vld_vec_17[0] = dep_chan_vld_16_17;
    assign in_chan_dep_data_vec_17[21 : 0] = dep_chan_data_16_17;
    assign token_in_vec_17[0] = token_16_17;
    assign in_chan_dep_vld_vec_17[1] = dep_chan_vld_18_17;
    assign in_chan_dep_data_vec_17[43 : 22] = dep_chan_data_18_17;
    assign token_in_vec_17[1] = token_18_17;
    assign dep_chan_vld_17_16 = out_chan_dep_vld_vec_17[0];
    assign dep_chan_data_17_16 = out_chan_dep_data_17;
    assign token_17_16 = token_out_vec_17[0];
    assign dep_chan_vld_17_18 = out_chan_dep_vld_vec_17[1];
    assign dep_chan_data_17_18 = out_chan_dep_data_17;
    assign token_17_18 = token_out_vec_17[1];

    // Process: grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.streamingDataCommutor_complex_ap_fixed_27_13_5_3_0_U0
    fft_top1_hls_deadlock_detect_unit #(22, 18, 2, 2) fft_top1_hls_deadlock_detect_unit_18 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_18),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_18),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_18),
        .token_in_vec(token_in_vec_18),
        .dl_detect_in(dl_detect_out),
        .origin(origin[18]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_18),
        .out_chan_dep_data(out_chan_dep_data_18),
        .token_out_vec(token_out_vec_18),
        .dl_detect_out(dl_in_vec[18]));

    assign proc_18_data_FIFO_blk[0] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.streamingDataCommutor_complex_ap_fixed_27_13_5_3_0_U0.fftOutData_local_blk_n);
    assign proc_18_data_PIPO_blk[0] = 1'b0;
    assign proc_18_start_FIFO_blk[0] = 1'b0;
    assign proc_18_TLF_FIFO_blk[0] = 1'b0;
    assign proc_18_input_sync_blk[0] = 1'b0;
    assign proc_18_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_18[0] = dl_detect_out ? proc_dep_vld_vec_18_reg[0] : (proc_18_data_FIFO_blk[0] | proc_18_data_PIPO_blk[0] | proc_18_start_FIFO_blk[0] | proc_18_TLF_FIFO_blk[0] | proc_18_input_sync_blk[0] | proc_18_output_sync_blk[0]);
    assign proc_18_data_FIFO_blk[1] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.streamingDataCommutor_complex_ap_fixed_27_13_5_3_0_U0.fftOutData_local2_blk_n);
    assign proc_18_data_PIPO_blk[1] = 1'b0;
    assign proc_18_start_FIFO_blk[1] = 1'b0;
    assign proc_18_TLF_FIFO_blk[1] = 1'b0;
    assign proc_18_input_sync_blk[1] = 1'b0;
    assign proc_18_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_18[1] = dl_detect_out ? proc_dep_vld_vec_18_reg[1] : (proc_18_data_FIFO_blk[1] | proc_18_data_PIPO_blk[1] | proc_18_start_FIFO_blk[1] | proc_18_TLF_FIFO_blk[1] | proc_18_input_sync_blk[1] | proc_18_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_18_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_18_reg <= proc_dep_vld_vec_18;
        end
    end
    assign in_chan_dep_vld_vec_18[0] = dep_chan_vld_17_18;
    assign in_chan_dep_data_vec_18[21 : 0] = dep_chan_data_17_18;
    assign token_in_vec_18[0] = token_17_18;
    assign in_chan_dep_vld_vec_18[1] = dep_chan_vld_19_18;
    assign in_chan_dep_data_vec_18[43 : 22] = dep_chan_data_19_18;
    assign token_in_vec_18[1] = token_19_18;
    assign dep_chan_vld_18_17 = out_chan_dep_vld_vec_18[0];
    assign dep_chan_data_18_17 = out_chan_dep_data_18;
    assign token_18_17 = token_out_vec_18[0];
    assign dep_chan_vld_18_19 = out_chan_dep_vld_vec_18[1];
    assign dep_chan_data_18_19 = out_chan_dep_data_18;
    assign token_18_19 = token_out_vec_18[1];

    // Process: grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStageKernelLastStageS2S_64_2_1_0_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0
    fft_top1_hls_deadlock_detect_unit #(22, 19, 2, 2) fft_top1_hls_deadlock_detect_unit_19 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_19),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_19),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_19),
        .token_in_vec(token_in_vec_19),
        .dl_detect_in(dl_detect_out),
        .origin(origin[19]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_19),
        .out_chan_dep_data(out_chan_dep_data_19),
        .token_out_vec(token_out_vec_19),
        .dl_detect_out(dl_in_vec[19]));

    assign proc_19_data_FIFO_blk[0] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStageKernelLastStageS2S_64_2_1_0_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0.fftOutData_local2_blk_n);
    assign proc_19_data_PIPO_blk[0] = 1'b0;
    assign proc_19_start_FIFO_blk[0] = 1'b0;
    assign proc_19_TLF_FIFO_blk[0] = 1'b0;
    assign proc_19_input_sync_blk[0] = 1'b0;
    assign proc_19_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_19[0] = dl_detect_out ? proc_dep_vld_vec_19_reg[0] : (proc_19_data_FIFO_blk[0] | proc_19_data_PIPO_blk[0] | proc_19_start_FIFO_blk[0] | proc_19_TLF_FIFO_blk[0] | proc_19_input_sync_blk[0] | proc_19_output_sync_blk[0]);
    assign proc_19_data_FIFO_blk[1] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStageKernelLastStageS2S_64_2_1_0_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0.fftOutData_local_blk_n);
    assign proc_19_data_PIPO_blk[1] = 1'b0;
    assign proc_19_start_FIFO_blk[1] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.start_for_convertSuperStreamToArrayNScale_1_0_50000_64_2_complex_ap_fixed_27_jbC_U.if_full_n & grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStageKernelLastStageS2S_64_2_1_0_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0.ap_start & ~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStageKernelLastStageS2S_64_2_1_0_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_U0.real_start & (trans_in_cnt_4 == trans_out_cnt_4) & ~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.start_for_convertSuperStreamToArrayNScale_1_0_50000_64_2_complex_ap_fixed_27_jbC_U.if_read);
    assign proc_19_TLF_FIFO_blk[1] = 1'b0;
    assign proc_19_input_sync_blk[1] = 1'b0;
    assign proc_19_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_19[1] = dl_detect_out ? proc_dep_vld_vec_19_reg[1] : (proc_19_data_FIFO_blk[1] | proc_19_data_PIPO_blk[1] | proc_19_start_FIFO_blk[1] | proc_19_TLF_FIFO_blk[1] | proc_19_input_sync_blk[1] | proc_19_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_19_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_19_reg <= proc_dep_vld_vec_19;
        end
    end
    assign in_chan_dep_vld_vec_19[0] = dep_chan_vld_18_19;
    assign in_chan_dep_data_vec_19[21 : 0] = dep_chan_data_18_19;
    assign token_in_vec_19[0] = token_18_19;
    assign in_chan_dep_vld_vec_19[1] = dep_chan_vld_20_19;
    assign in_chan_dep_data_vec_19[43 : 22] = dep_chan_data_20_19;
    assign token_in_vec_19[1] = token_20_19;
    assign dep_chan_vld_19_18 = out_chan_dep_vld_vec_19[0];
    assign dep_chan_data_19_18 = out_chan_dep_data_19;
    assign token_19_18 = token_out_vec_19[0];
    assign dep_chan_vld_19_20 = out_chan_dep_vld_vec_19[1];
    assign dep_chan_data_19_20 = out_chan_dep_data_19;
    assign token_19_20 = token_out_vec_19[1];

    // Process: grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.convertSuperStreamToArrayNScale_1_0_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_14_5_3_0_U0
    fft_top1_hls_deadlock_detect_unit #(22, 20, 2, 2) fft_top1_hls_deadlock_detect_unit_20 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_20),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_20),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_20),
        .token_in_vec(token_in_vec_20),
        .dl_detect_in(dl_detect_out),
        .origin(origin[20]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_20),
        .out_chan_dep_data(out_chan_dep_data_20),
        .token_out_vec(token_out_vec_20),
        .dl_detect_out(dl_in_vec[20]));

    assign proc_20_data_FIFO_blk[0] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.convertSuperStreamToArrayNScale_1_0_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_14_5_3_0_U0.fftOutData_local_blk_n);
    assign proc_20_data_PIPO_blk[0] = 1'b0;
    assign proc_20_start_FIFO_blk[0] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.start_for_convertSuperStreamToArrayNScale_1_0_50000_64_2_complex_ap_fixed_27_jbC_U.if_empty_n & grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.convertSuperStreamToArrayNScale_1_0_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_14_5_3_0_U0.ap_idle & ~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.start_for_convertSuperStreamToArrayNScale_1_0_50000_64_2_complex_ap_fixed_27_jbC_U.if_write);
    assign proc_20_TLF_FIFO_blk[0] = 1'b0;
    assign proc_20_input_sync_blk[0] = 1'b0;
    assign proc_20_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_20[0] = dl_detect_out ? proc_dep_vld_vec_20_reg[0] : (proc_20_data_FIFO_blk[0] | proc_20_data_PIPO_blk[0] | proc_20_start_FIFO_blk[0] | proc_20_TLF_FIFO_blk[0] | proc_20_input_sync_blk[0] | proc_20_output_sync_blk[0]);
    assign proc_20_data_FIFO_blk[1] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.convertSuperStreamToArrayNScale_1_0_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_14_5_3_0_U0.p_outDataArray_0_0_0_0_0_blk_n) | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.convertSuperStreamToArrayNScale_1_0_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_14_5_3_0_U0.p_outDataArray_0_0_0_0_01_blk_n) | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.convertSuperStreamToArrayNScale_1_0_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_14_5_3_0_U0.p_outDataArray_0_1_0_0_0_blk_n) | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.convertSuperStreamToArrayNScale_1_0_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_14_5_3_0_U0.p_outDataArray_0_1_0_0_02_blk_n);
    assign proc_20_data_PIPO_blk[1] = 1'b0;
    assign proc_20_start_FIFO_blk[1] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.start_for_digitReversedDataReOrder_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5kbM_U.if_full_n & grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.convertSuperStreamToArrayNScale_1_0_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_14_5_3_0_U0.ap_start & ~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.convertSuperStreamToArrayNScale_1_0_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_14_5_3_0_U0.real_start & (trans_in_cnt_5 == trans_out_cnt_5) & ~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.start_for_digitReversedDataReOrder_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5kbM_U.if_read);
    assign proc_20_TLF_FIFO_blk[1] = 1'b0;
    assign proc_20_input_sync_blk[1] = 1'b0;
    assign proc_20_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_20[1] = dl_detect_out ? proc_dep_vld_vec_20_reg[1] : (proc_20_data_FIFO_blk[1] | proc_20_data_PIPO_blk[1] | proc_20_start_FIFO_blk[1] | proc_20_TLF_FIFO_blk[1] | proc_20_input_sync_blk[1] | proc_20_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_20_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_20_reg <= proc_dep_vld_vec_20;
        end
    end
    assign in_chan_dep_vld_vec_20[0] = dep_chan_vld_19_20;
    assign in_chan_dep_data_vec_20[21 : 0] = dep_chan_data_19_20;
    assign token_in_vec_20[0] = token_19_20;
    assign in_chan_dep_vld_vec_20[1] = dep_chan_vld_21_20;
    assign in_chan_dep_data_vec_20[43 : 22] = dep_chan_data_21_20;
    assign token_in_vec_20[1] = token_21_20;
    assign dep_chan_vld_20_19 = out_chan_dep_vld_vec_20[0];
    assign dep_chan_data_20_19 = out_chan_dep_data_20;
    assign token_20_19 = token_out_vec_20[0];
    assign dep_chan_vld_20_21 = out_chan_dep_vld_vec_20[1];
    assign dep_chan_data_20_21 = out_chan_dep_data_20;
    assign token_20_21 = token_out_vec_20[1];

    // Process: grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.digitReversedDataReOrder_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_U0
    fft_top1_hls_deadlock_detect_unit #(22, 21, 1, 1) fft_top1_hls_deadlock_detect_unit_21 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_21),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_21),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_21),
        .token_in_vec(token_in_vec_21),
        .dl_detect_in(dl_detect_out),
        .origin(origin[21]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_21),
        .out_chan_dep_data(out_chan_dep_data_21),
        .token_out_vec(token_out_vec_21),
        .dl_detect_out(dl_in_vec[21]));

    assign proc_21_data_FIFO_blk[0] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.digitReversedDataReOrder_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_U0.grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58.p_inData_0_0_0_0_0_blk_n) | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.digitReversedDataReOrder_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_U0.grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58.p_inData_0_0_0_0_01_blk_n) | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.digitReversedDataReOrder_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_U0.grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58.p_inData_0_1_0_0_0_blk_n) | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.digitReversedDataReOrder_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_U0.grp_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_fu_58.p_inData_0_1_0_0_02_blk_n);
    assign proc_21_data_PIPO_blk[0] = 1'b0;
    assign proc_21_start_FIFO_blk[0] = 1'b0 | (~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.start_for_digitReversedDataReOrder_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5kbM_U.if_empty_n & grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.digitReversedDataReOrder_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_U0.ap_idle & ~grp_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s_fu_560.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.start_for_digitReversedDataReOrder_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5kbM_U.if_write);
    assign proc_21_TLF_FIFO_blk[0] = 1'b0;
    assign proc_21_input_sync_blk[0] = 1'b0;
    assign proc_21_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_21[0] = dl_detect_out ? proc_dep_vld_vec_21_reg[0] : (proc_21_data_FIFO_blk[0] | proc_21_data_PIPO_blk[0] | proc_21_start_FIFO_blk[0] | proc_21_TLF_FIFO_blk[0] | proc_21_input_sync_blk[0] | proc_21_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_21_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_21_reg <= proc_dep_vld_vec_21;
        end
    end
    assign in_chan_dep_vld_vec_21[0] = dep_chan_vld_20_21;
    assign in_chan_dep_data_vec_21[21 : 0] = dep_chan_data_20_21;
    assign token_in_vec_21[0] = token_20_21;
    assign dep_chan_vld_21_20 = out_chan_dep_vld_vec_21[0];
    assign dep_chan_data_21_20 = out_chan_dep_data_21;
    assign token_21_20 = token_out_vec_21[0];


`include "fft_top1_hls_deadlock_report_unit.vh"
