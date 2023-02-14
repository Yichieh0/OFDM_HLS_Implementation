#include "ifft_a2s.h"

void ifft_a2s(hls::stream<T_out0> data_in[SSR], hls::stream<ap_fixed<IN_WL, IN_IL>>& data_out_real, hls::stream<ap_fixed<IN_WL, IN_IL>>& data_out_imag, hls::stream<int>& para_str_in, hls::stream<int>& para_str_out)
{
#pragma HLS dataflow

  ap_fixed<IN_WL, IN_IL> ifft_in_real;
  ap_fixed<IN_WL, IN_IL> ifft_in_imag;
  T_out0 read_in;
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
        read_in = data_in[i].read();
  			ifft_in_real = (ap_fixed<IN_WL, IN_IL>)read_in.real();
	  		ifft_in_imag = (ap_fixed<IN_WL, IN_IL>)read_in.imag();
        data_out_real.write(ifft_in_real);
        data_out_imag.write(ifft_in_imag);           
		  }
	  }
  }

	return;
}
