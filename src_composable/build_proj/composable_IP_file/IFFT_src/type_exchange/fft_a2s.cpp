#include "fft_a2s.h"
#define module_num 12

void fft_a2s(hls::stream<T_out1> data_in[SSR], hls::stream<ap_fixed<IN_WL, IN_IL>>& data_out_real, hls::stream<ap_fixed<IN_WL, IN_IL>>& data_out_imag, hls::stream<int>& para_str_in, hls::stream<int>& para_str_out)
{
#pragma HLS dataflow

  ap_fixed<IN_WL, IN_IL> fft_in_real;
  ap_fixed<IN_WL, IN_IL> fft_in_imag;
  T_out1 read_in;

	int DATA_LEN;
	int sym_num;
	int pilot_width;
	int CP_length; 

	int para_in;
	int module_id;
	int para_id;
	int para_val;

do{
	para_in = para_str_in.read();	
	module_id = para_in/pow_val_id;	
	if(module_id == module_num){
		para_id = (para_in/pow_val) % pow_id;
		para_val = para_in % pow_val;
		if(para_id == 0){
			= para_val;
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
}while(module_id != pow_id-1);

  for(int k = 0; k < DATA_LEN*sym_num/(FFT_LEN-(FFT_LEN/pilot_width)); k++){
    for (int t = 0; t < (FFT_LEN/SSR); t++) {
		  for(int i = 0; i < SSR; i++){
        read_in = data_in[i].read();
  			fft_in_real = (ap_fixed<IN_WL, IN_IL>)read_in.real();
	  		fft_in_imag = (ap_fixed<IN_WL, IN_IL>)read_in.imag();
        data_out_real.write(fft_in_real);
        data_out_imag.write(fft_in_imag);           
		  }
	  }
  }

	return;
}
