#include "syn_CP_removal.h"
#define module_num 7
#define syn_IN_WL 27
#define syn_IN_IL 12

void syn_CP_removal(hls::stream<ap_axiu_64>& data_in, hls::stream<ap_axiu_64>& data_out)
{
#pragma HLS INTERFACE mode=ap_ctrl_none port=return
#pragma HLS INTERFACE mode=axis register_mode=both port=data_out register
#pragma HLS INTERFACE mode=axis register_mode=both port=data_in register

	ap_uint_64 read_in;
	ap_axiu_64 read_out;
	ap_uint_32 out_temp_r;
	ap_uint_32 out_temp_i;
	int DATA_LEN;
	int qam_num;
	int sym_num;
	int pilot_width;
	int CP_length;

	ap_uint_64 para_in;
	ap_axiu_64 para_out;
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
				sym_num = para_val;
			}
			else if(para_id == 2){
				pilot_width = para_val;
			}
			else if(para_id == 3){
				CP_length = para_val;
			}
		}
		else{
			para_out.data = para_in;
			data_out.write(para_out);
		}
	}while( module_id != threshold);

	ap_uint<9> MAX_index = 0;
	ap_int<9> biased = 0;
	ap_fixed<syn_IN_WL,syn_IN_IL> in_r[FFT_LEN+1];
	ap_fixed<syn_IN_WL,syn_IN_IL> in_i[FFT_LEN+1];
	ap_fixed<syn_IN_WL,syn_IN_IL> phi_real[FFT_LEN+16];
	ap_fixed<syn_IN_WL,syn_IN_IL> phi_real_temp[FFT_LEN+16];
	ap_fixed<syn_IN_WL,syn_IN_IL> phi_imag[FFT_LEN+16];
	ap_fixed<syn_IN_WL,syn_IN_IL> phi_imag_temp[FFT_LEN+16];
	ap_fixed<syn_IN_WL,syn_IN_IL> power[FFT_LEN+16];
	ap_fixed<syn_IN_WL,syn_IN_IL> power_temp[FFT_LEN+16];
	// -----------------------------
	ap_fixed<syn_IN_WL,syn_IN_IL> power_2[FFT_LEN+16];
	ap_fixed<syn_IN_WL,syn_IN_IL> power_temp_2[FFT_LEN+16];
	// -----------------------------
	ap_fixed<syn_IN_WL,syn_IN_IL> gamma[FFT_LEN+16];
	ap_fixed<syn_IN_WL,syn_IN_IL> MAX_val;
	ap_fixed<IN_WL,IN_IL> data_temp_real[2*(16+FFT_LEN)];
	ap_fixed<IN_WL,IN_IL> data_temp_imag[2*(16+FFT_LEN)];
	/*
	ap_fixed<syn_IN_WL,syn_IN_IL> phi_real[FFT_LEN+CP_length];
	ap_fixed<syn_IN_WL,syn_IN_IL> phi_real_temp[FFT_LEN+CP_length];
	ap_fixed<syn_IN_WL,syn_IN_IL> phi_imag[FFT_LEN+CP_length];
	ap_fixed<syn_IN_WL,syn_IN_IL> phi_imag_temp[FFT_LEN+CP_length];
	ap_fixed<syn_IN_WL,syn_IN_IL> power[FFT_LEN+CP_length];
	ap_fixed<syn_IN_WL,syn_IN_IL> power_temp[FFT_LEN+CP_length];
	// -----------------------------
	ap_fixed<syn_IN_WL,syn_IN_IL> power_2[FFT_LEN+CP_length];
	ap_fixed<syn_IN_WL,syn_IN_IL> power_temp_2[FFT_LEN+CP_length];
	// -----------------------------
	ap_fixed<syn_IN_WL,syn_IN_IL> gamma[FFT_LEN+CP_length];
	ap_fixed<syn_IN_WL,syn_IN_IL> MAX_val;
	ap_fixed<IN_WL,IN_IL> data_temp_real[2*(CP_length+FFT_LEN)];
	ap_fixed<IN_WL,IN_IL> data_temp_imag[2*(CP_length+FFT_LEN)];
	 */

#pragma HLS ARRAY_PARTITION variable=in_r type = block factor = 4
#pragma HLS ARRAY_PARTITION variable=in_i type = block factor = 4
#pragma HLS ARRAY_PARTITION variable=phi_real type = block factor = 4
#pragma HLS ARRAY_PARTITION variable=phi_real_temp type = block factor = 4
#pragma HLS ARRAY_PARTITION variable=phi_imag type = block factor = 4
#pragma HLS ARRAY_PARTITION variable=phi_imag_temp type = block factor = 4
#pragma HLS ARRAY_PARTITION variable=power type = block factor = 4
#pragma HLS ARRAY_PARTITION variable=power_temp type = block factor = 4
	// -----------------------------
#pragma HLS ARRAY_PARTITION variable=power_2 type = block factor = 4
#pragma HLS ARRAY_PARTITION variable=power_temp_2 type = block factor = 4

	for(int k = 0; k < DATA_LEN*sym_num/(FFT_LEN-(FFT_LEN/pilot_width)); k++){
		if(k==0){
			MAX_val = 0;
			// ----------------- initial ------------------
			for(int i = 0; i<FFT_LEN+CP_length; i++){
				phi_real_temp[i] = 0;
				phi_imag_temp[i] = 0;
				power_temp[i] = 0;
				power_temp_2[i] = 0;
			}
			for(int i = 0; i<FFT_LEN; i++){
				phi_real[i] = 0;
				phi_imag[i] = 0;
				power[i] = 0;
				power_2[i] = 0;
			}
			for(int i = 0; i<FFT_LEN+CP_length; i++){
				for(int j = 0; j<FFT_LEN; j++){
					in_r[FFT_LEN-j] = in_r[FFT_LEN-1-j];
					in_i[FFT_LEN-j] = in_i[FFT_LEN-1-j];
				}

				read_in = data_in.read().data;
				data_temp_real[FFT_LEN+CP_length+i].range(IN_WL-1,0) = read_in.range(IN_WL+32-1,32);
				data_temp_imag[FFT_LEN+CP_length+i].range(IN_WL-1,0) = read_in.range(IN_WL-1,0);
				in_r[0] = (ap_fixed<syn_IN_WL,syn_IN_IL>)data_temp_real[FFT_LEN+CP_length+i];
				in_i[0] = (ap_fixed<syn_IN_WL,syn_IN_IL>)data_temp_imag[FFT_LEN+CP_length+i];

				if(i>=FFT_LEN){
					phi_real_temp[i-FFT_LEN] = phi_real_temp[i-FFT_LEN]+in_r[0]*in_r[FFT_LEN]+in_i[0]*in_i[FFT_LEN];
					phi_imag_temp[i-FFT_LEN] = phi_imag_temp[i-FFT_LEN]+in_r[0]*in_i[FFT_LEN]-in_i[0]*in_r[FFT_LEN];
					phi_real[0] = phi_real[0]+phi_real_temp[i-FFT_LEN];
					phi_imag[0] = phi_imag[0]+phi_imag_temp[i-FFT_LEN];
					power_temp[i-FFT_LEN] = power_temp[i-FFT_LEN]+in_r[0]*in_r[0]+in_i[0]*in_i[0];
					power[0] = power[0]+power_temp[i-FFT_LEN];
					power_temp_2[i-FFT_LEN] = power_temp_2[i-FFT_LEN]+in_r[FFT_LEN]*in_r[FFT_LEN]+in_i[FFT_LEN]*in_i[FFT_LEN];
					power_2[0] = power_2[0]+power_temp_2[i-FFT_LEN];
				}
				if(i==CP_length+FFT_LEN-1){
					gamma[0] = (((phi_real[0]*phi_real[0])+(phi_imag[0]*phi_imag[0]))/(power[0]*power[0])+((phi_real[0]*phi_real[0])+(phi_imag[0]*phi_imag[0]))/(power_2[0]*power_2[0]))/2;
					MAX_val = gamma[0];
					MAX_index = 0;
				}
			}
		}
		else if (k==1){
			for(int i = 0; i<FFT_LEN+CP_length; i++){
				// -----------------------------
				for(int j = 0; j<FFT_LEN; j++){
					in_r[FFT_LEN-j] = in_r[FFT_LEN-1-j];
					in_i[FFT_LEN-j] = in_i[FFT_LEN-1-j];
				}
				read_in = data_in.read().data;
				data_temp_real[i].range(IN_WL-1,0) = read_in.range(IN_WL+32-1,32);
				data_temp_imag[i].range(IN_WL-1,0) = read_in.range(IN_WL-1,0);
				in_r[0] = (ap_fixed<syn_IN_WL,syn_IN_IL>)data_temp_real[i];
				in_i[0] = (ap_fixed<syn_IN_WL,syn_IN_IL>)data_temp_imag[i];

				if(i<FFT_LEN){
					phi_real_temp[i+CP_length] = phi_real_temp[i+CP_length]+in_r[0]*in_r[FFT_LEN]+in_i[0]*in_i[FFT_LEN];
					phi_imag_temp[i+CP_length] = phi_imag_temp[i+CP_length]+in_r[0]*in_i[FFT_LEN]-in_i[0]*in_r[FFT_LEN];
					power_temp[i+CP_length] = power_temp[i+CP_length]+in_r[0]*in_r[0]+in_i[0]*in_i[0];
					power_temp_2[i+CP_length] = power_temp_2[i+CP_length]+in_r[FFT_LEN]*in_r[FFT_LEN]+in_i[FFT_LEN]*in_i[FFT_LEN];
				}
				else{
					phi_real_temp[i-FFT_LEN] = phi_real_temp[i-FFT_LEN]+in_r[0]*in_r[FFT_LEN]+in_i[0]*in_i[FFT_LEN];
					phi_imag_temp[i-FFT_LEN] = phi_imag_temp[i-FFT_LEN]+in_r[0]*in_i[FFT_LEN]-in_i[0]*in_r[FFT_LEN];
					power_temp[i-FFT_LEN] = power_temp[i-FFT_LEN]+in_r[0]*in_r[0]+in_i[0]*in_i[0];
					power_temp_2[i-FFT_LEN] = power_temp_2[i-FFT_LEN]+in_r[FFT_LEN]*in_r[FFT_LEN]+in_i[FFT_LEN]*in_i[FFT_LEN];
				}
				// --------------------------------------------
				// ------- correlation value summarized -------
				if(i==FFT_LEN+CP_length-1){
					phi_real[0] = phi_real[i]+phi_real_temp[15]-phi_real_temp[i];
					phi_imag[0] = phi_imag[i]+phi_imag_temp[15]-phi_imag_temp[i];
					power[0] = power[i]+power_temp[15]-power_temp[i];
					power_2[0] = power_2[i]+power_temp_2[15]-power_temp_2[i];
				}
				else if(i>FFT_LEN-1){
					phi_real[i+1] = phi_real[i]+phi_real_temp[i-FFT_LEN]-phi_real_temp[i];
					phi_imag[i+1] = phi_imag[i]+phi_imag_temp[i-FFT_LEN]-phi_imag_temp[i];
					power[i+1] = power[i]+power_temp[i-FFT_LEN]-power_temp[i];
					power_2[i+1] = power_2[i]+power_temp_2[i-FFT_LEN]-power_temp_2[i];
				}
				else{
					phi_real[i+1] = phi_real[i]+phi_real_temp[i+CP_length]-phi_real_temp[i];
					phi_imag[i+1] = phi_imag[i]+phi_imag_temp[i+CP_length]-phi_imag_temp[i];
					power[i+1] = power[i]+power_temp[i+CP_length]-power_temp[i];
					power_2[i+1] = power_2[i]+power_temp_2[i+CP_length]-power_temp_2[i];
				}
				// --------------------------------------------
				// ----- gamma calculation and comparison -----
				if(i<FFT_LEN+CP_length-1){
					gamma[i+1] = ((phi_real[i+1]*phi_real[i+1]+phi_imag[i+1]*phi_imag[i+1])/(power[i+1]*power[i+1])+(phi_real[i+1]*phi_real[i+1]+phi_imag[i+1]*phi_imag[i+1])/(power_2[i+1]*power_2[i+1]))/2;
					if(gamma[i+1]>MAX_val){
						MAX_val = gamma[i+1];
						MAX_index = i+1;
					}
				}
				else{
					gamma[0] = ((phi_real[0]*phi_real[0]+phi_imag[0]*phi_imag[0])/(power[0]*power[0])+(phi_real[0]*phi_real[0]+phi_imag[0]*phi_imag[0])/(power_2[0]*power_2[0]))/2;
					MAX_val = gamma[0];
				}
				// --------------------------------------------
			}
			printf("index : %d\n", (int)MAX_index);
			if(MAX_index > (FFT_LEN+CP_length)/2){
				biased = MAX_index - (FFT_LEN+CP_length);
			}
			printf("biased : %d\n", (int)biased);
			for(int i = biased+FFT_LEN+2*CP_length; i<biased+2*(FFT_LEN+CP_length); i++){
				out_temp_r(IN_WL-1,0) = data_temp_real[i].range(IN_WL-1,0);
				out_temp_i(IN_WL-1,0) = data_temp_imag[i].range(IN_WL-1,0);
				read_out.data = (out_temp_r,out_temp_i);
				data_out.write(read_out);
			}
			for(int i = biased+CP_length; i<biased+FFT_LEN+CP_length; i++){
				out_temp_r(IN_WL-1,0) = data_temp_real[i].range(IN_WL-1,0);
				out_temp_i(IN_WL-1,0) = data_temp_imag[i].range(IN_WL-1,0);
				read_out.data = (out_temp_r,out_temp_i);
				data_out.write(read_out);
			}
		}
		else{
			for(int i = 0; i<FFT_LEN+CP_length; i++){
				read_in = data_in.read().data;
				data_temp_real[i].range(IN_WL-1,0) = read_in.range(IN_WL+32-1,32);
				data_temp_imag[i].range(IN_WL-1,0) = read_in.range(IN_WL-1,0);
			}
			for(int i = biased+CP_length; i<biased+FFT_LEN+CP_length; i++){
				out_temp_r(IN_WL-1,0) = data_temp_real[i].range(IN_WL-1,0);
				out_temp_i(IN_WL-1,0) = data_temp_imag[i].range(IN_WL-1,0);
				read_out.data = (out_temp_r,out_temp_i);
				data_out.write(read_out);
			}
		}
	}


	return;
}
