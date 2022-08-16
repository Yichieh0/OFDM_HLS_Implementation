#include "pilot_insertion.h"
#include "pilot_removal.h"
#include "data_path.hpp"

using namespace std;

int main(int argc, char *argv[])
{
	int i, j;
	ap_fixed<IN_WL, IN_IL> in_r;
	ap_fixed<IN_WL, IN_IL> in_i;
	ap_fixed<IN_WL, IN_IL> out_r;
	ap_fixed<IN_WL, IN_IL> out_i;
	hls::stream<ap_fixed<IN_WL, IN_IL>> in_input_real;
	hls::stream<ap_fixed<IN_WL, IN_IL>> in_input_imag;
	hls::stream<ap_fixed<IN_WL, IN_IL>> temp_real;
	hls::stream<ap_fixed<IN_WL, IN_IL>> temp_imag;
	hls::stream<ap_fixed<IN_WL, IN_IL>> rm_output_real;
	hls::stream<ap_fixed<IN_WL, IN_IL>> rm_output_imag;
	hls::stream<int> para_str_in;
	hls::stream<int> para_str_temp;
	hls::stream<int> para_str_out;
	int qam_num = 16;
	int sym_num = 2;
	int DATA_LEN = 48;
	int pilot_width = 4;
	

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
			CP_length = para_str_in.read();
		}
		else{
			break;
		}
	}

	srand(time(NULL));

	cout << ">> Start test!" << endl;
	cout << ">> Pilot Insertion" << endl;
	cout << "------------------------" << endl;
	for (int k = 0; k < DATA_LEN*sym_num; k++){
		in_r = rand()/(RAND_MAX+1.0);
		in_i = rand()/(RAND_MAX+1.0);
		cout << k << " : " << "in_r = " << (ap_fixed<IN_WL, IN_IL>)in_r << ", in_i = " << (ap_fixed<IN_WL, IN_IL>)in_i <<endl;
		in_input_real.write((ap_fixed<IN_WL, IN_IL>)in_r);
		in_input_imag.write((ap_fixed<IN_WL, IN_IL>)in_i);
	}
	cout << "------------------------" << endl;
	cout << endl;	

	pilot_insertion(in_input_real, in_input_imag, temp_real, temp_imag, para_str_in, para_str_temp);
	pilot_removal(temp_real, temp_imag, rm_output_real, rm_output_imag, para_str_temp, para_str_out);

	cout << ">> Output Check" << endl;
	cout << "------------------------" << endl;
	for (int k = 0; k < DATA_LEN*sym_num; k++){
		out_r = rm_output_real.read();
		out_i = rm_output_imag.read();
		cout << k << " : " << "out_r = " << (ap_fixed<IN_WL, IN_IL>)out_r << ", out_i = " << (ap_fixed<IN_WL, IN_IL>)out_i <<endl;
	}
	cout << "------------------------" << endl;
	return 0;
}
