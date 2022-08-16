/*
 * Copyright 2021 Xilinx, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include "stream2master.h"

//void stream2master(hls::stream<ap_axiu<pixl_bit,1,1,1>, DATA_LENGTH>& pstrmInput, ap_uint<32>* out_mem){
void stream2master(hls::stream<ap_uint<pixl_bit>>& pstrmInput, ap_uint<32>* out_mem, hls::stream<int>& para_str_in, hls::stream<int>& para_str_out){
#pragma HLS dataflow

	ap_uint<pixl_bit> temp;
	ap_uint<32> in_temp;
	ap_uint<pixl_bit> out_temp;

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

	for(int i = 0; i<DATA_LEN; i++){
		out_temp = pstrmInput.read();
		temp = out_temp;
		in_temp = (ap_uint<32>)temp;
		out_mem[i] = in_temp;
	}


	return;
}
