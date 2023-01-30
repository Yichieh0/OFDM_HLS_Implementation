#ifndef __FFT_H__
#define __FFT_H__
#include "../data_path.hpp"

void fft_top0(ap_uint_64_str& data_in, ap_uint_64_str& data_out); //IFFT
void fft_top1(ap_uint_64_str& data_in, ap_uint_64_str& data_out); //FFT

#endif
