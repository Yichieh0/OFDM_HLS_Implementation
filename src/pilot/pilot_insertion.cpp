#include "pilot_insertion.h"

void pilot_insertion(hls::stream<ap_fixed<IN_WL, IN_IL>>& data_in_real, hls::stream<ap_fixed<IN_WL, IN_IL>>& data_in_imag, hls::stream<ap_fixed<IN_WL, IN_IL>>& data_out_real, hls::stream<ap_fixed<IN_WL, IN_IL>>& data_out_imag, hls::stream<int>& para_str_in, hls::stream<int>& para_str_out)
{
#pragma HLS dataflow

	ap_fixed<IN_WL, IN_IL> out_real;
	ap_fixed<IN_WL, IN_IL> out_imag;

	int DATA_LEN;
	int qam_num;
	int sym_num;
	int pilot_width;

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
		else{
			break;
		}
	}

	para_str_out.write(DATA_LEN);
	para_str_out.write(qam_num);
	para_str_out.write(sym_num);
	para_str_out.write(pilot_width);

	for (int k = 0; k < DATA_LEN*sym_num/(FFT_LEN-(FFT_LEN/pilot_width)); k++){
		for (int t = 0; t < FFT_LEN; t++) {
			if((t%pilot_width)==0){
				data_out_real.write((ap_fixed<IN_WL,IN_IL>)pilot_real);
				data_out_imag.write((ap_fixed<IN_WL,IN_IL>)pilot_imag);
			}
			else{
				out_real = (ap_fixed<IN_WL,IN_IL>)data_in_real.read();
				out_imag = (ap_fixed<IN_WL,IN_IL>)data_in_imag.read();
				data_out_real.write(out_real/sqrt_QAM_norm);
				data_out_imag.write(out_imag/sqrt_QAM_norm);
			}
		}
	}

	return;
}
