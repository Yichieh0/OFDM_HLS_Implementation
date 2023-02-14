#ifndef __CHANNEL_GEN_H__
#define __CHANNEL_GEN_H__
#include "../data_path.hpp"

void channel_gen(hls::stream<ap_fixed<IN_WL,IN_IL>>& in_x_r, hls::stream<ap_fixed<IN_WL,IN_IL>>& in_x_i, hls::stream<ap_fixed<IN_WL,IN_IL>>& channel_out_real, hls::stream<ap_fixed<IN_WL,IN_IL>>& channel_out_imag, hls::stream<int>& para_str_in, hls::stream<int>& para_str_out);
void rand(hls::stream<ap_fixed<IN_WL,IN_IL>>& pic_out);

#endif
