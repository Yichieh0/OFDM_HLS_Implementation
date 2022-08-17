#include "master2stream.h"
#include "stream2master.h"
#include "data_path.hpp"

using namespace std;

int main(int argc, char *argv[])
{
	int i, j;

	hls::stream<ap_uint<pixl_bit>> data_temp;
	hls::stream<int> para_str_in;
	hls::stream<int> para_str_temp;
	hls::stream<int> para_str_out;
	int para_num = 5;
	int qam_num =  16;
	int sym_num =  2;
	int DATA_LEN =  30;
	int pilot_width =  4;
	int CP_length = 16;
	ap_uint<32> data_in[DATA_LEN];
	ap_uint<32> data_out[DATA_LEN];

	para_str_in.write(para_num);
	para_str_in.write(DATA_LEN);
	para_str_in.write(qam_num);
	para_str_in.write(sym_num);
	para_str_in.write(pilot_width);
	para_str_in.write(CP_length);

	cout << ">> Start test!" << endl;
	cout << "------------------------" << endl;
	for (int k = 0; k < DATA_LEN; k++){
		data_in[k] = k;
		cout << "in : " << k << " : " << data_in[k] <<endl;

	}
	cout << "------------------------" << endl;
	cout << endl;	

	master2stream(data_in, data_temp, para_str_in, para_str_temp);
	stream2master(data_temp, data_out, para_str_temp, para_str_out);

	cout << ">> Output Check" << endl;
	cout << "------------------------" << endl;
	for (int k = 0; k < DATA_LEN; k++){
		cout << "out : " << k << " : " << data_out[k] <<endl;
	}
	cout << "------------------------" << endl;
	return 0;
}
