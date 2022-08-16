#ifndef __CP_REMOVAL_H__
#define __CP_REMOVAL_H__

#include "data_path.hpp"

void Cp_removal(hls::stream<ap_fixed<IN_WL, IN_IL>>& data_in_real, hls::stream<ap_fixed<IN_WL, IN_IL>>& data_in_imag, hls::stream<ap_fixed<IN_WL, IN_IL>>& data_out_real, hls::stream<ap_fixed<IN_WL, IN_IL>>& data_out_imag, hls::stream<int>& para_str_in, hls::stream<int>& para_str_out);

#endif
