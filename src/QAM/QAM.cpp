/*
 * Copyright 2019 Xilinx, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.

 */
//================================== End Lic =================================================

#include "QAM.hpp"

void QAM(hls::stream<ap_uint<QAM_unsigned_bit>>& in, hls::stream<ap_int<QAM_signed_bit>>& out_real, hls::stream<ap_int<QAM_signed_bit>>& out_imag, hls::stream<int>& para_str_in, hls::stream<int>& para_str_out){

#pragma HLS dataflow

	ap_uint<QAM_unsigned_bit> in_temp;
	ap_int<QAM_signed_bit> out_temp_real;
	ap_int<QAM_signed_bit> out_temp_imag;
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

	for(int k = 0; k < (DATA_LEN*sym_num); k++){
		in_temp = in.read();
		if(qam_num == 16){
			if((in_temp%4)==0){
				out_temp_imag = (ap_int<QAM_signed_bit>)-3;
			}
			else if((in_temp%4)==1){
				out_temp_imag = (ap_int<QAM_signed_bit>)-1;
			}
			else if((in_temp%4)==2){
				out_temp_imag = (ap_int<QAM_signed_bit>)3;
			}
			else{
				out_temp_imag = (ap_int<QAM_signed_bit>)1;
			}
			if((in_temp/4)==0){
				out_temp_real = (ap_int<QAM_signed_bit>)-3;
			}
			else if((in_temp/4)==1){
				out_temp_real = (ap_int<QAM_signed_bit>)-1;
			}
			else if((in_temp/4)==2){
				out_temp_real = (ap_int<QAM_signed_bit>)3;
			}
			else{
				out_temp_real = (ap_int<QAM_signed_bit>)1;
			}
		}

		else if(qam_num == 4){
			if((in_temp%2)==0){
				out_temp_imag = (ap_int<QAM_signed_bit>)-1;
			}
			else{
				out_temp_imag = (ap_int<QAM_signed_bit>)1;
			}
			if((in_temp/2)==0){
				out_temp_real = (ap_int<QAM_signed_bit>)-1;
			}
			else{
				out_temp_real = (ap_int<QAM_signed_bit>)1;
			}
		}

		out_real.write(out_temp_real);
		out_imag.write(out_temp_imag);
	}

	return;
}
