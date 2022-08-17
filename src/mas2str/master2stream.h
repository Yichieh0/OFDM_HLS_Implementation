#ifndef __MASTER2STREAM_H__
#define __MASTER2STREAM_H__

#include "data_path.hpp"

void master2stream(ap_uint<32> *in_mem, hls::stream<ap_uint<pixl_bit>>& pstrmOutput, hls::stream<int>& para_str_in, hls::stream<int>& para_str_out);

#endif
