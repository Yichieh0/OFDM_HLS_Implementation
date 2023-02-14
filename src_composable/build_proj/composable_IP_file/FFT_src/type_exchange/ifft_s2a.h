#ifndef __IFFT_S2A_H__
#define __IFFT_S2A_H__
# include "../fft_data_path.hpp"

void ifft_s2a(hls::stream<ap_fixed<IN_WL, IN_IL>>& data_in_real, hls::stream<ap_fixed<IN_WL, IN_IL>>& data_in_imag, hls::stream<T_in> data_out[SSR], hls::stream<int>& para_str_in, hls::stream<int>& para_str_out);

#endif
