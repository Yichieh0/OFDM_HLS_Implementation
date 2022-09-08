#include "equalizer_pilot_removal.h"
#define module_num 10

void equalizer_pilot_removal(hls::stream<ap_axiu_64>& data_in, hls::stream<ap_axiu_64>& data_out)
{

	ap_fixed<IN_WL, IN_IL> data[16][2] ; //array size not fixed
	ap_fixed<IN_WL, IN_IL> last_pilot_re;
	ap_fixed<IN_WL, IN_IL> last_pilot_im;
	ap_fixed<IN_WL, IN_IL> last_data_re;
	ap_fixed<IN_WL, IN_IL> last_data_im;
	ap_fixed<IN_WL, IN_IL> alpha;
	ap_fixed<IN_WL, IN_IL> in_re;
	ap_fixed<IN_WL, IN_IL> in_im;
	ap_fixed<IN_WL, IN_IL> now_pilot_re;
	ap_fixed<IN_WL, IN_IL> now_pilot_im;
	ap_fixed<IN_WL, IN_IL> zero_re;
	ap_fixed<IN_WL, IN_IL> zero_im ;
	ap_fixed<IN_WL, IN_IL> left_ratio;
	ap_fixed<IN_WL, IN_IL> right_ratio ;
	ap_fixed<IN_WL, IN_IL> in_h_re, in_h_im ;
	ap_fixed<IN_WL, IN_IL> out_r, out_i;
	ap_uint_32 out_r_temp, out_i_temp;
	ap_axiu_64 out_combine;
	ap_uint_64 read_in;
	int i_minus_D ;

	int DATA_LEN;
	int sym_num;
	int pilot_width;
	int CP_length;

	ap_uint_64 para_in;
	ap_axiu_64 para_out;
	int module_id;
	int para_id;
	int para_val;
	const int threshold = pow(2,module_id_bit)-1;

	do{
		para_in = data_in.read().data;
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
		}
		/*
		else{
			para_out.data = para_in;
			data_out.write(para_out);
		}
		*/
	}while( module_id != threshold);

	for(int j = 0; j < DATA_LEN*sym_num/(FFT_LEN-(FFT_LEN/pilot_width));j++){
		for(int i = 0; i < FFT_LEN+pilot_width; i++){
			i_minus_D = i - pilot_width ;
			if(i >= pilot_width) {
				if(i % pilot_width == 0) {
					last_pilot_re = data[i % pilot_width][0];
					last_pilot_im = data[i % pilot_width][1];
				} else {
					last_data_re = data[i % pilot_width][0];
					last_data_im = data[i % pilot_width][1];
				}
			}
			if(i < FFT_LEN){
				read_in = data_in.read().data;
				in_re(19,0) = read_in.range(51,32);
				in_im(19,0) = read_in.range(19,0);
				if(i < FFT_LEN) {
					data[i % pilot_width][0] = in_re ;
					data[i % pilot_width][1] = in_im ;
				}
				if(i == FFT_LEN-2*pilot_width) {
					zero_re = in_re ;
					zero_im = in_im ;
				}
				if(i % pilot_width == 0) {
					now_pilot_re = in_re ;
					now_pilot_im = in_im ;
				}
			}
			if(i >= pilot_width) {
				if(i_minus_D%pilot_width != 0) {
					left_ratio = (ap_fixed<IN_WL,IN_IL>)(pilot_width - i_minus_D % pilot_width) / (ap_fixed<IN_WL,IN_IL>)(pilot_width) ;
					right_ratio = (ap_fixed<IN_WL,IN_IL>)(i_minus_D % pilot_width) / (ap_fixed<IN_WL,IN_IL>)(pilot_width) ;
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
					out_r_temp(19,0) = out_r(19,0);
					out_i_temp(19,0) = out_i(19,0);
					out_combine.data = (out_r_temp, out_i_temp);
					data_out.write(out_combine);
				}
			}
		}
	}
	return;
}
