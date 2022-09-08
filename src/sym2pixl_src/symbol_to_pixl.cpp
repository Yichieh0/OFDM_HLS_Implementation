#include "symbol_to_pixl.h"
#define module_num 12

void symbol_to_pixl(hls::stream<ap_axiu_64>& data_in, hls::stream<ap_axiu_64>& data_out)
{
	ap_uint<QAM_unsigned_bit> out1_16QAM;
	ap_uint<QAM_unsigned_bit> out2_16QAM;
	ap_axiu_64 out3_16QAM;
	ap_uint<2> t = 0;

	int DATA_LEN;
	int qam_num;
	int sym_num;
	int pilot_width;
	int CP_length;

	ap_uint_64 para_in;
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
			else if(para_id == 4){
				CP_length = para_val;
			}
		}
		/*
		else{
			data_out.write(para_in);
		}
		*/
	}while( module_id != threshold);

  for(int i = 0; i<DATA_LEN*sym_num; i++){
		if(i%2==0){
			out1_16QAM = data_in.read().data;
		}
		else{
			out2_16QAM = data_in.read().data;
			out3_16QAM.data = (out1_16QAM, out2_16QAM);
			data_out.write(out3_16QAM);
		}
   }

	return;
}
