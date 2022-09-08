#include <iostream>
#include "pixl_to_symbol.h"
#include "symbol_to_pixl.h"
#include "data_path.hpp"

using namespace std;

int main(int argc, char *argv[])
{
	hls::stream<ap_axiu_64> data_in;
	hls::stream<ap_axiu_64> data_temp;
	hls::stream<ap_axiu_64> data_out;
	ap_axiu_64 para_in;
	ap_axiu_64 para_temp;
	ap_uint<16> module_id;
	ap_uint<16> para_id;
	ap_uint<32> para_val;

	int DATA_LEN =  30;
	int qam_num =  16;
	int sym_num =  2;
	int pilot_width =  4;

	module_id = pixl2sym_module_num;
	para_id = 0;
	para_val = DATA_LEN;
	para_in.data = (module_id, para_id, para_val);
	std::cout << para_in.data << std::endl;
	data_in.write(para_in);
	para_id = 1;
	para_val = qam_num;
	para_in.data = (module_id, para_id, para_val);
	std::cout << para_in.data << std::endl;
	data_in.write(para_in);
	para_id = 2;
	para_val = sym_num;
	para_in.data = (module_id, para_id, para_val);
	std::cout << para_in.data << std::endl;
	data_in.write(para_in);
	para_id = 3;
	para_val = pilot_width;
	para_in.data = (module_id, para_id, para_val);
	std::cout << para_in.data << std::endl;
	data_in.write(para_in);

	module_id = sym2pixl_module_num;
	para_id = 0;
	para_val = DATA_LEN;
	para_in.data = (module_id, para_id, para_val);
	std::cout << para_in.data << std::endl;
	data_in.write(para_in);
	para_id = 1;
	para_val = qam_num;
	para_in.data = (module_id, para_id, para_val);
	std::cout << para_in.data << std::endl;
	data_in.write(para_in);
	para_id = 2;
	para_val = sym_num;
	para_in.data = (module_id, para_id, para_val);
	std::cout << para_in.data << std::endl;
	data_in.write(para_in);
	para_id = 3;
	para_val = pilot_width;
	para_in.data = (module_id, para_id, para_val);
	std::cout << para_in.data << std::endl;
	data_in.write(para_in);

	module_id = pow(2,16)-1;
	para_id = 0;
	para_val = 0;
	para_in.data = (module_id, para_id, para_val);
	std::cout << para_in.data << std::endl;
	data_in.write(para_in); //stop

	cout << ">> Start test!" << endl;
	cout << "------------------------" << endl;
	for(int i = 0; i < DATA_LEN; i++) {
		para_temp.data = (ap_uint_64)i;
		data_in.write(para_temp);
	}
	pixl_to_symbol(data_in, data_temp);
	symbol_to_pixl(data_temp, data_out);
	for(int i = 0; i < DATA_LEN; i++) {
		cout << i << " : " << (int)data_out.read().data << endl;
	}
	cout << "------------------------" << endl;

	return 0;
}
