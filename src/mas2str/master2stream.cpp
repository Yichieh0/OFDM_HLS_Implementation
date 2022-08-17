#include "master2stream.h"

void master2stream(ap_uint<32>* in_mem, hls::stream<ap_uint<pixl_bit>>& pstrmOutput, hls::stream<int>& para_str_in, hls::stream<int>& para_str_out)
{	
#pragma HLS DATAFLOW

	ap_uint<32> in_temp;
	ap_uint<pixl_bit> out_temp;
	int i = 0;
	int flag = 0;
	int para_num;
	int para_cnt = 0;
	int DATA_LEN;
	int qam_num;
	int sym_num;
	int pilot_width;
	int CP_length;
	int useless_para;

	while(!flag){
		if(para_cnt==0){
			para_num = para_str_in.read();
			para_str_out.write(para_num);
		}
		else if(para_cnt==1){
			DATA_LEN = para_str_in.read();
			para_str_out.write(DATA_LEN);
		}
		else if(para_cnt==2){
			qam_num = para_str_in.read();
			para_str_out.write(qam_num);
		}
		else if(para_cnt==3){
			sym_num = para_str_in.read();
			para_str_out.write(sym_num);
		}
		else if(para_cnt==4){
			pilot_width = para_str_in.read();
			para_str_out.write(pilot_width);
		}
		else if(para_cnt==5){
			CP_length = para_str_in.read();
			para_str_out.write(CP_length);
		}
		else{
			useless_para = para_str_in.read();
			para_str_out.write(useless_para);
		}
		para_cnt++;
		if(para_cnt > para_num){
			flag = 1;
		}
	}


	for(int i = 0; i<DATA_LEN; i++){
		in_temp = in_mem[i];
		out_temp = (ap_uint<8>)in_temp;
		pstrmOutput.write(out_temp); 
	}
	return;
}
