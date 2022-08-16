#include "master2stream.h"

void master2stream(ap_uint<32>* in_mem, hls::stream<ap_uint<pixl_bit>>& pstrmOutput, hls::stream<int>& para_str_in, hls::stream<int>& para_str_out)
{	
#pragma HLS INTERFACE ap_fifo depth=DATA_LEN port=pstrmOutput
#pragma HLS DATAFLOW

	ap_uint<32> in_temp;
	ap_uint<pixl_bit> out_temp;
	static int i = 0;
	int remain_num;
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

	para_str_out.write(DATA_LEN);
	para_str_out.write(qam_num);
	para_str_out.write(sym_num);
	para_str_out.write(pilot_width);
	para_str_out.write(CP_length);


	for(int i = 0; i<DATA_LEN; i++){
		in_temp = in_mem[i];
		out_temp = (ap_uint<8>)in_temp;
		pstrmOutput.write(out_temp); 
	}
	return;
}
