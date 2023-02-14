#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("data_in_TDATA", 64, hls_in, 0, "axis", "in_data", 1),
	Port_Property("data_in_TVALID", 1, hls_in, 6, "axis", "in_vld", 1),
	Port_Property("data_in_TREADY", 1, hls_out, 6, "axis", "in_acc", 1),
	Port_Property("data_in_TKEEP", 8, hls_in, 1, "axis", "in_data", 1),
	Port_Property("data_in_TSTRB", 8, hls_in, 2, "axis", "in_data", 1),
	Port_Property("data_in_TUSER", 1, hls_in, 3, "axis", "in_data", 1),
	Port_Property("data_in_TLAST", 1, hls_in, 4, "axis", "in_data", 1),
	Port_Property("data_in_TID", 1, hls_in, 5, "axis", "in_data", 1),
	Port_Property("data_in_TDEST", 1, hls_in, 6, "axis", "in_data", 1),
	Port_Property("data_out_TDATA", 64, hls_out, 7, "axis", "out_data", 1),
	Port_Property("data_out_TVALID", 1, hls_out, 13, "axis", "out_vld", 1),
	Port_Property("data_out_TREADY", 1, hls_in, 13, "axis", "out_acc", 1),
	Port_Property("data_out_TKEEP", 8, hls_out, 8, "axis", "out_data", 1),
	Port_Property("data_out_TSTRB", 8, hls_out, 9, "axis", "out_data", 1),
	Port_Property("data_out_TUSER", 1, hls_out, 10, "axis", "out_data", 1),
	Port_Property("data_out_TLAST", 1, hls_out, 11, "axis", "out_data", 1),
	Port_Property("data_out_TID", 1, hls_out, 12, "axis", "out_data", 1),
	Port_Property("data_out_TDEST", 1, hls_out, 13, "axis", "out_data", 1),
};
const char* HLS_Design_Meta::dut_name = "channel_gen";
