#include "pilot_removal.h"

#define module_num 10

void pilot_removal(hls::stream<ap_fixed<IN_WL, IN_IL>>& data_in_real, hls::stream<ap_fixed<IN_WL, IN_IL>>& data_in_imag, hls::stream<ap_fixed<IN_WL, IN_IL>>& data_out_real, hls::stream<ap_fixed<IN_WL, IN_IL>>& data_out_imag, hls::stream<int>& para_str_in, hls::stream<int>& para_str_out)
{
#pragma HLS dataflow

	ap_fixed<IN_WL, IN_IL> out_real;
	ap_fixed<IN_WL, IN_IL> out_imag;

	int DATA_LEN;
	int sym_num;
	int pilot_width;
	int CP_length;

	int para_in;
	int module_id;
	int para_id;
	int para_val;
	int threshold = pow(2,module_id_bit)-1;
	ap_int<32> para_in_apint;

	do{
		para_in = para_str_in.read();
		para_in_apint = (ap_int<32>)para_in;
		module_id = para_in_apint.range(module_id_bit+para_id_bit-1, para_id_bit);
		if(module_id == module_num){
			para_id = para_in_apint.range(para_id_bit-1, 0);
			para_val = para_in_apint.range(30,module_id_bit+para_id_bit);
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
		else{
			para_str_out.write(para_in);
		}
	}while( module_id != threshold);

	for (int k = 0; k < DATA_LEN*sym_num/(FFT_LEN-(FFT_LEN/pilot_width)); k++){
		for (int t = 0; t < FFT_LEN; t++) {
			if((t%pilot_width)==0){
				out_real = (ap_fixed<IN_WL,IN_IL>)data_in_real.read();
				out_imag = (ap_fixed<IN_WL,IN_IL>)data_in_imag.read();
			}
			else{
				out_real = (ap_fixed<IN_WL,IN_IL>)data_in_real.read();
				out_imag = (ap_fixed<IN_WL,IN_IL>)data_in_imag.read();
				data_out_real.write(out_real*sqrt_QAM_norm);
				data_out_imag.write(out_imag*sqrt_QAM_norm);
			}
		}
	}

	return;
}
