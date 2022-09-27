#include "equalizer_pilot_removal.h"
#define module_num 9

void equalizer_pilot_removal(hls::stream<ap_axiu_64>& data_in, hls::stream<ap_axiu_64>& data_out)
{
#pragma HLS INTERFACE mode=ap_ctrl_none port=return
#pragma HLS INTERFACE mode=axis register_mode=both port=data_in register
#pragma HLS INTERFACE mode=axis register_mode=both port=data_out register

	ap_fixed_bit data[16][2]={0}; //array size not fixed
	ap_fixed_bit last_pilot_re;
	ap_fixed_bit last_pilot_im;
	ap_fixed_bit last_data_re;
	ap_fixed_bit last_data_im;
	ap_fixed_bit alpha;
	ap_fixed_bit in_re;
	ap_fixed_bit in_im;
	ap_fixed_bit now_pilot_re;
	ap_fixed_bit now_pilot_im;
	ap_fixed_bit zero_re;
	ap_fixed_bit zero_im ;
	ap_fixed_bit left_ratio;
	ap_fixed_bit right_ratio ;
	ap_fixed_bit in_h_re, in_h_im ;
	ap_fixed_bit out_r, out_i;
	ap_uint_32 out_r_temp, out_i_temp;
	ap_axiu_64 data_read_axiu;
	data_read_axiu.data = 0;
	ap_axiu_64 para_read_axiu;
	ap_uint_64 read_in;
	int i_minus_D ;

	int DATA_LEN;
	int sym_num;
	int pilot_width;
	int CP_length;
	int TAPS_NUM;

	ap_uint_64 para_in;
	ap_axiu_64 para_out;
	int module_id;
	int para_id;
	int para_val;

	do{
		para_read_axiu = data_in.read();
		para_in = para_read_axiu.data;
		module_id = para_in.range(63, para_id_bit+para_val_bit);
		if(module_id == module_num){
			para_id = para_in.range(para_id_bit+para_val_bit-1, para_val_bit);
			para_val = para_in.range(para_val_bit-1, 0);
			if(para_id == 0){
				DATA_LEN = para_val;
			}
			else if(para_id == 1){
				sym_num = para_val;
			}
			else if(para_id == 2){
				pilot_width = para_val;
			}
			else if(para_id == 3){
				CP_length = para_val;
			}
			else if(para_id == 4){
				TAPS_NUM = para_val;
			}
		}
		else{
			para_read_axiu.data = para_in;
			data_out.write(para_read_axiu);
		}
	}while( module_id != threshold);

	if(TAPS_NUM==1){
		for(int j = 0; j < DATA_LEN*sym_num/(FFT_LEN-(FFT_LEN/pilot_width));j++){
			for(int i = 0; i < FFT_LEN; i++){
				if(i%pilot_width == 0){
					data_read_axiu = data_in.read();
				}
				else{
					data_read_axiu = data_in.read();
					read_in = data_read_axiu.data;
					last_pilot_re(IN_WL-1,0) = read_in.range(32+IN_WL-1,32);
					last_pilot_im(IN_WL-1,0) = read_in.range(IN_WL-1,0);
					out_r = sqrt_QAM_norm*last_pilot_re;
					out_i = sqrt_QAM_norm*last_pilot_im;
					out_r_temp(IN_WL-1,0) = out_r(IN_WL-1,0);
					out_i_temp(IN_WL-1,0) = out_i(IN_WL-1,0);
					data_read_axiu.data = (out_r_temp, out_i_temp);
					data_out.write(data_read_axiu);
				}

			}
		}
	}
	else{
		for(int j = 0; j < DATA_LEN*sym_num/(FFT_LEN-(FFT_LEN/pilot_width));j++){
			for(int i = 0; i < FFT_LEN+pilot_width; i++){
				i_minus_D = i-pilot_width;
				if(i >= pilot_width) {
					if(i % pilot_width == 0) {
						last_pilot_re = data[i%pilot_width][0];
						last_pilot_im = data[i%pilot_width][1];
					} else {
						last_data_re = data[i%pilot_width][0];
						last_data_im = data[i%pilot_width][1];
					}
				}
				if(i < FFT_LEN){
					data_read_axiu = data_in.read();
					read_in = data_read_axiu.data;
					in_re(IN_WL-1,0) = read_in.range(32+IN_WL-1,32);
					in_im(IN_WL-1,0) = read_in.range(IN_WL-1,0);
					if(i < FFT_LEN) {
						data[i%pilot_width][0] = in_re;
						data[i%pilot_width][1] = in_im;
					}
					if(i == FFT_LEN-2*pilot_width) {
						zero_re = in_re;
						zero_im = in_im;
					}
					if(i % pilot_width == 0) {
						now_pilot_re = in_re;
						now_pilot_im = in_im;
					}
				}
				if(i >= pilot_width) {
					if(i_minus_D%pilot_width != 0) {
						left_ratio = (ap_fixed_bit)(pilot_width-i_minus_D%pilot_width)/pilot_width;
						right_ratio = (ap_fixed_bit)(i_minus_D%pilot_width)/pilot_width;
						if(i < FFT_LEN) {
							in_h_re = left_ratio*last_pilot_re+right_ratio*now_pilot_re;
							in_h_im = left_ratio*last_pilot_im+right_ratio*now_pilot_im;
						}
						else{
							alpha = (i-(FFT_LEN-pilot_width))/pilot_width;
							in_h_re = zero_re+alpha*(now_pilot_re-zero_re);
							in_h_im = zero_im+alpha*(now_pilot_im-zero_im);
						}
						out_r = sqrt_QAM_norm*(last_data_re*in_h_re+last_data_im*in_h_im)/(in_h_re*in_h_re+in_h_im*in_h_im);
						out_i = sqrt_QAM_norm*(last_data_im*in_h_re-last_data_re*in_h_im)/(in_h_re*in_h_re+in_h_im*in_h_im);
						out_r_temp(IN_WL-1,0) = out_r(IN_WL-1,0);
						out_i_temp(IN_WL-1,0) = out_i(IN_WL-1,0);
						data_read_axiu.data = (out_r_temp, out_i_temp);
						data_out.write(data_read_axiu);
					}
				}
			}
		}
	}
	return;
}
