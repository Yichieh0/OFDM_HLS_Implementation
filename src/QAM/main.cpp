#include <iostream>
#include "QAM.hpp"
#include "deQAM.hpp"
#include "data_path.hpp"
#include <math.h>

using namespace std;

int main(int argc, char *argv[]){

	hls::stream<ap_uint<QAM_unsigned_bit>> QAM_in;
	hls::stream<ap_uint<QAM_unsigned_bit>> QAM_out;
	hls::stream<ap_int<QAM_signed_bit>> out_r;
	hls::stream<ap_int<QAM_signed_bit>> out_i;
	hls::stream<ap_fixed<IN_WL,IN_IL>> out_r_temp;
	hls::stream<ap_fixed<IN_WL,IN_IL>> out_i_temp;
	hls::stream<int> para_str_in;
	hls::stream<int> para_str_temp;
	hls::stream<int> para_str_out;
	int qam_num =  16;
	int sym_num =  2;
	int DATA_LEN =  48;
	int pilot_width =  4;
	int CP_length = 16;

	cout << ">> Start test!" << endl;

	for(int k = 0; k < para_num; k++){
		if(k==0){
			para_str_in.write(DATA_LEN);
		}
		else if(k==1){
			para_str_in.write(qam_num);
		}
		else if(k==2){
			para_str_in.write(sym_num);
		}
		else if(k==3){
			para_str_in.write(pilot_width);
		}
		else if(k==4){
			para_str_in.write(CP_length);
		}
		else{
			break;
		}
	}
	for(int k = 0; k < (DATA_LEN*sym_num); k++){
		QAM_in.write((ap_uint<QAM_unsigned_bit>)k);
	}
	QAM(QAM_in, out_r, out_i, para_str_in, para_str_temp);
	for(int k = 0; k < (DATA_LEN*sym_num); k++){
		out_r_temp.write((ap_fixed<IN_WL,IN_IL>)(out_r.read()));
		out_i_temp.write((ap_fixed<IN_WL,IN_IL>)(out_i.read()));
	}
	deQAM(out_r_temp, out_i_temp, QAM_out, para_str_temp, para_str_out);
	for(int k = 0; k < (DATA_LEN*sym_num); k++){
		cout << (ap_uint<QAM_unsigned_bit>)k << "  " << QAM_out.read() << endl;
	}
	cout << ">> Test Finished!" << endl;
	return 0;
}
