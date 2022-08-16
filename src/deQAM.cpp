#include "deQAM.hpp"

void deQAM(hls::stream<ap_fixed<IN_WL,IN_IL>>& data_in_real, hls::stream<ap_fixed<IN_WL,IN_IL>>& data_in_imag, hls::stream<ap_uint<QAM_unsigned_bit>>& QAM_out, hls::stream<int>& para_str_in, hls::stream<int>& para_str_out)
{
#pragma HLS dataflow

	ap_int<2> sign_r; //+1 and -1
	ap_int<2> sign_i; //+1 and -1
	ap_uint<4> i; //max=sqrt(QAM)=8
	ap_uint<4> r; //max=8
	ap_int<4> v[2]; //max=7 and -7
	ap_int<QAM_unsigned_bit> v_out;
	ap_fixed<IN_WL,IN_IL> read_in_real;
	ap_fixed<IN_WL,IN_IL> read_in_imag;

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
	/*
	para_str_out.write(DATA_LEN);
	para_str_out.write(qam_num);
	para_str_out.write(sym_num);
	para_str_out.write(pilot_width);
	*/

	for(int k = 0; k < (DATA_LEN*sym_num); k++){
		read_in_real = data_in_real.read();
		read_in_imag = data_in_imag.read();

		if (read_in_real >= (ap_fixed<IN_WL,IN_IL>)0){
			sign_r = 1;
		}
		else{
			sign_r = -1;
			read_in_real = (read_in_real)*(-1);
		}

		v[0] = (ap_int<4>)sign_r;

		for(i=2;i<sqrt(qam_num);i=i+2){
			if(read_in_real >= (ap_fixed<IN_WL,IN_IL>)i){
				v[0] = v[0] + (ap_int<4>)(sign_r*2);
			}
			else{
				v[0] = v[0];
			}
		}
		if (read_in_imag >= (ap_fixed<IN_WL,IN_IL>)0){
			sign_i = 1;
		}
		else{
			sign_i = -1;
			read_in_imag = (read_in_imag)*(-1);
		}

		v[1] = (ap_int<4>)sign_i;

		for(i=2;i<sqrt(qam_num);i=i+2){
			if(read_in_imag>=(ap_fixed<IN_WL,IN_IL>)i){
				v[1] = v[1] + (ap_int<4>)(sign_i*2);
			}
			else{
				v[1] = v[1];
			}
		}
		v_out = 0;
		if(qam_num==16){
			for(i=0;i<2;i++){
				if(i==0){
					r = 4;
				}
				else{
					r = 1;
				}
				switch(v[i]){
				case -3:
					v_out = v_out;
					break;
				case -1:
					v_out = v_out+r*1;
					break;
				case 1:
					v_out = v_out+r*3;
					break;
				default:
					v_out = v_out+r*2;
					break;
				}
			}
		}
		else if(qam_num==4){
			for(i=0;i<2;i++){
				if(i==0){
					r = 2;
				}
				else{
					r = 1;
				}
				switch(v[i]){
				case -1:
					v_out = v_out;
					break;
				default:
					v_out = v_out+r;
					break;
				}
			}
		}

		QAM_out.write(v_out);
	}
	return;
}
