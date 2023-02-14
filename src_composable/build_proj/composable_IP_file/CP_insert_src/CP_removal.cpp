#include "Cp_removal.h"

void Cp_removal(hls::stream<ap_fixed<IN_WL, IN_IL>>& data_in_real, hls::stream<ap_fixed<IN_WL, IN_IL>>& data_in_imag, hls::stream<ap_fixed<IN_WL, IN_IL>>& data_out_real, hls::stream<ap_fixed<IN_WL, IN_IL>>& data_out_imag, hls::stream<int>& para_str_in, hls::stream<int>& para_str_out)
{

#pragma HLS dataflow

	ap_fixed<IN_WL, IN_IL> rm_r;
	ap_fixed<IN_WL, IN_IL> rm_i;	
	int para_num;
	int para_cnt = 0;
	int DATA_LEN;
	int qam_num;
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
		else if(para_cnt==2){
			qam_num = read_para;
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
