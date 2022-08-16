#include "Cp_insertion.h"
#include "Cp_removal.h"
#include "data_path.hpp"

using namespace std;

int main(int argc, char *argv[])
{
	int i, j;	
	ap_fixed<IN_WL, IN_IL> in_r;
	ap_fixed<IN_WL, IN_IL> in_i;
	ap_fixed<IN_WL, IN_IL> out_r;
	ap_fixed<IN_WL, IN_IL> out_i;
	hls::stream<ap_fixed<IN_WL, IN_IL>> data_input_real;
	hls::stream<ap_fixed<IN_WL, IN_IL>> data_input_imag;
	hls::stream<ap_fixed<IN_WL, IN_IL>> data_temp_real;
	hls::stream<ap_fixed<IN_WL, IN_IL>> data_temp_imag;
	hls::stream<ap_fixed<IN_WL, IN_IL>> data_output_real;
	hls::stream<ap_fixed<IN_WL, IN_IL>> data_output_imag;
	hls::stream<int> para_str_in;
	hls::stream<int> para_str_temp;
	hls::stream<int> para_str_out;
	int qam_num = 16;
	int sym_num = 2;
	int DATA_LEN = 48;
	int pilot_width = 4;
	int CP_length = 16;

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

	srand(time(NULL));

	cout << ">> Start test!" << endl;
	cout << "CP Insertion" << endl;
	cout << "------------------------" << endl;
	for(i = 0; i < FFT_LEN*DATA_LEN*sym_num/(FFT_LEN-(FFT_LEN/pilot_width)); i++){
		in_r = rand()/(RAND_MAX+1.0);
		in_i = rand()/(RAND_MAX+1.0);
		cout << "i = " << i << ", in_r = " << in_r << ", in_i = " << in_i << endl;
		data_input_real.write(in_r);
		data_input_imag.write(in_i);
	}

	Cp_insertion(data_input_real, data_input_imag, data_temp_real, data_temp_imag, para_str_in, para_str_temp);
	Cp_removal(data_temp_real, data_temp_imag, data_output_real, data_output_imag, para_str_temp, para_str_out);

	cout << endl;
	cout << "CP Removal" << endl;
	cout << "------------------------" << endl;
	for(i = 0; i < FFT_LEN*DATA_LEN*sym_num/(FFT_LEN-(FFT_LEN/pilot_width)); i++){
		out_r = data_output_real.read();
		out_i = data_output_imag.read();
		cout << "i = " << i << ", out_r = " << out_r << ", out_i = " << out_i << endl;
	}
	cout << ">> Finish test!" << endl;
	return 0;
}
