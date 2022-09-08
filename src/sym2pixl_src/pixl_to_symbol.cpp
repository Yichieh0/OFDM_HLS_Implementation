#include "pixl_to_symbol.h"
#define module_num 0

void pixl_to_symbol(hls::stream<ap_axiu_64>& data_in, hls::stream<ap_axiu_64>& data_out)
{
#pragma HLS INTERFACE mode=ap_ctrl_none port=return
#pragma HLS INTERFACE mode=axis register_mode=both port=data_out register
#pragma HLS INTERFACE mode=axis register_mode=both port=data_in register
	ap_axiu_64 data_out_temp;
	ap_uint_64 data_in_temp;
	int DATA_LEN;
	int qam_num;
	int sym_num;
	int pilot_width;

	ap_uint<64> para_in;
	int module_id;
	int para_id;
	int para_val;
	const int threshold = pow(2,module_id_bit)-1;

	do{
		para_in = data_in.read().data;
		module_id = para_in.range(63, para_id_bit+para_val_bit);
		if(module_id == module_num){
			para_id = para_in.range(para_id_bit+para_val_bit-1, para_val_bit);
			para_val = para_in.range(para_val_bit-1, 0);
			if(para_id == 0){
				DATA_LEN = para_val;
			}
			else if(para_id == 1){
				qam_num = para_val;
			}
			else if(para_id == 2){
				sym_num = para_val;
			}
			else if(para_id == 3){
				pilot_width = para_val;
			}
		}
		else{
			data_out_temp.data = para_in;
			data_out.write(data_out_temp);
		}
	}while(module_id != threshold);

	for(int i = 0; i < DATA_LEN*(pixl_bit/QAM_bit); i++){
		if(qam_num==16){
			if((i%2)==0){
				data_in_temp = data_in.read().data;
				data_out_temp.data = data_in_temp/qam_num;
				data_out.write(data_out_temp);
			}
			else{
				data_out_temp.data = data_in_temp%qam_num;
				data_out.write(data_out_temp);
			}
		}
		else if(qam_num==4){
			if((i%4)==0){
				data_in_temp = data_in.read().data;
				data_out_temp.data = data_in_temp/qam_num;
				data_out.write(data_out_temp);
			}
			else if((i%4)==1){
				data_out_temp.data = data_in_temp/qam_num;
				data_out.write(data_out_temp);
			}
			else if((i%4)==2){
				data_out_temp.data = data_in_temp/qam_num;
				data_out.write(data_out_temp);
			}
			else{
				data_out_temp.data = data_in_temp%qam_num;
				data_out.write(data_out_temp);
			}
		}

	}
	return;
}
