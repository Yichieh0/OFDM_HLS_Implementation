#ifndef __FFT_A2S_H__
#define __FFT_A2S_H__
# include "../fft_data_path.hpp"

void fft_a2s(hls::stream<T_out1> data_in[SSR], hls::stream<ap_fixed<IN_WL, IN_IL>>& data_out_real, hls::stream<ap_fixed<IN_WL, IN_IL>>& data_out_imag, hls::stream<int>& para_str_in, hls::stream<int>& para_str_out);

#endif
