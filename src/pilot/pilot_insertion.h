#ifndef __PILOT_INSERTION_H__
#define __PILOT_INSERTION_H__
#include "data_path.hpp"

void pilot_insertion(hls::stream<ap_fixed<IN_WL, IN_IL>>& data_in_real, hls::stream<ap_fixed<IN_WL, IN_IL>>& data_in_imag, hls::stream<ap_fixed<IN_WL, IN_IL>>& data_out_real, hls::stream<ap_fixed<IN_WL, IN_IL>>& data_out_imag, hls::stream<int>& para_str_in, hls::stream<int>& para_str_out);

#endif
