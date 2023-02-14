#include "ifft_s2a.h"

void ifft_s2a(hls::stream<ap_fixed<IN_WL, IN_IL>>& data_in_real, hls::stream<ap_fixed<IN_WL, IN_IL>>& data_in_imag, hls::stream<T_in> data_out[SSR], hls::stream<int>& para_str_in, hls::stream<int>& para_str_out)
{
#pragma HLS dataflow

  ap_fixed<IN_WL, IN_IL> ifft_in_real;
  ap_fixed<IN_WL, IN_IL> ifft_in_imag;
	int para_num;
	int para_cnt = 0;
	int DATA_LEN;
	int sym_num;
	int pilot_width;
	int CP_length;
 
 	int read_para; 
  do{
		read_para = para_str_in.read();
		para_str_out.write(read_para);
		if(para_cnt==0){
			para_num = read_para;
		}
		else if(para_cnt==1){
			DATA_LEN = read_para;
		}
		else if(para_cnt==3){
			sym_num = read_para;
		}
		else if(para_cnt==4){
			pilot_width = read_para;
		}
		else if(para_cnt==5){
			CP_length = read_para;
		}
		para_cnt++;
	}while(para_cnt < para_num+1);
 
  for(int k = 0; k < DATA_LEN*sym_num/(FFT_LEN-(FFT_LEN/pilot_width)); k++){
    for (int t = 0; t < (FFT_LEN/SSR); t++) {
		  for(int i = 0; i < SSR; i++){
  			ifft_in_real = data_in_real.read();
	  		ifft_in_imag = data_in_imag.read();
		  	data_out[i].write(T_in(ifft_in_real,ifft_in_imag));
		  }
	  }
  }
  
	return;
}
