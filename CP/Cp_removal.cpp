#include "Cp_removal.h"

void Cp_removal(hls::stream<ap_fixed<IN_WL, IN_IL>>& data_in_real, hls::stream<ap_fixed<IN_WL, IN_IL>>& data_in_imag, hls::stream<ap_fixed<IN_WL, IN_IL>>& data_out_real, hls::stream<ap_fixed<IN_WL, IN_IL>>& data_out_imag, hls::stream<int>& para_str_in, hls::stream<int>& para_str_out)
{

#pragma HLS dataflow

	ap_fixed<IN_WL, IN_IL> rm_r;
	ap_fixed<IN_WL, IN_IL> rm_i;
	int DATA_LEN;
	int qam_num;
	int sym_num;
	int pilot_width;
	int CP_length;

	for(int para_cnt = 0; para_cnt < para_num; para_cnt++){
		if(para_cnt==0){
			DATA_LEN = para_str_in.read();
		}
		else if(para_cnt==1){
			qam_num = para_str_in.read();
		}
		else if(para_cnt==2){
			sym_num = para_str_in.read();
		}
		else if(para_cnt==3){
			pilot_width = para_str_in.read();
		}
		else if(para_cnt==4){
			CP_length = para_str_in.read();
		}
		else{
			break;
		}
	}
	/*
	para_str_out.write(DATA_LEN);
	para_str_out.write(qam_num);
	para_str_out.write(sym_num);
	para_str_out.write(pilot_width);
	para_str_out.write(CP_length);
	*/

	for(int k = 0; k<DATA_LEN*sym_num/(FFT_LEN-(FFT_LEN/pilot_width));k++){
		for(int t = 0; t < FFT_LEN+CP_length; t++){
			if(t < CP_length){
				rm_r = data_in_real.read();
				rm_i = data_in_imag.read();
			}
			else{
				rm_r = data_in_real.read();
				rm_i = data_in_imag.read();
				data_out_real.write(rm_r);
				data_out_imag.write(rm_i);
			}
		}
	}

	return;
}
