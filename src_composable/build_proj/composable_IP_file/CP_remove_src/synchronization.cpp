#include "synchronization.h"

void synchronization(hls::stream<ap_fixed<IN_WL,IN_IL>, 2*(FFT_LEN+CP_length)>& data_in_real, hls::stream<ap_fixed<IN_WL, IN_IL>, 2*(FFT_LEN+CP_length)>& data_in_imag, hls::stream<ap_fixed<IN_WL, IN_IL>, 2*(FFT_LEN+CP_length)>& data_out_real, hls::stream<ap_fixed<IN_WL, IN_IL>, 2*(FFT_LEN+CP_length)>& data_out_imag, hls::stream<ap_uint<9>>& index)
{
#pragma HLS dataflow
	static int set_count = 0;
	static ap_uint<9> MAX_index = 0;
	static ap_fixed<syn_IN_WL,syn_IN_IL> in_r[FFT_LEN+1];
	static ap_fixed<syn_IN_WL,syn_IN_IL> in_i[FFT_LEN+1];
	static ap_fixed<syn_IN_WL,syn_IN_IL> phi_real[FFT_LEN+CP_length];
	static ap_fixed<syn_IN_WL,syn_IN_IL> phi_real_temp[FFT_LEN+CP_length];
	static ap_fixed<syn_IN_WL,syn_IN_IL> phi_imag[FFT_LEN+CP_length];
	static ap_fixed<syn_IN_WL,syn_IN_IL> phi_imag_temp[FFT_LEN+CP_length];
	static ap_fixed<syn_IN_WL,syn_IN_IL> power[FFT_LEN+CP_length];
	static ap_fixed<syn_IN_WL,syn_IN_IL> power_temp[FFT_LEN+CP_length];
	// -----------------------------
	static ap_fixed<syn_IN_WL,syn_IN_IL> power_2[FFT_LEN+CP_length];
	static ap_fixed<syn_IN_WL,syn_IN_IL> power_temp_2[FFT_LEN+CP_length];
	// -----------------------------
	static ap_fixed<syn_IN_WL,syn_IN_IL> gamma[FFT_LEN+CP_length];
	static ap_fixed<syn_IN_WL,syn_IN_IL> MAX_val;
	ap_fixed<IN_WL,IN_IL> data_temp_real[CP_length+FFT_LEN];
	ap_fixed<IN_WL,IN_IL> data_temp_imag[CP_length+FFT_LEN];
 
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


	if(set_count==0){
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
			data_temp_real[i] = (data_in_real.read());
			data_temp_imag[i] = (data_in_imag.read());
			in_r[0] = (ap_fixed<syn_IN_WL,syn_IN_IL>)data_temp_real[i];
			in_i[0] = (ap_fixed<syn_IN_WL,syn_IN_IL>)data_temp_imag[i];
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
		set_count++;
	}
	else if (set_count==1){
		for(int i = 0; i<FFT_LEN+CP_length; i++){
			// -----------------------------
			for(int j = 0; j<FFT_LEN; j++){
				in_r[FFT_LEN-j] = in_r[FFT_LEN-1-j];
				in_i[FFT_LEN-j] = in_i[FFT_LEN-1-j];
			}

			data_temp_real[i] = (data_in_real.read());
			data_temp_imag[i] = (data_in_imag.read());
			in_r[0] = (ap_fixed<syn_IN_WL,syn_IN_IL>)data_temp_real[i];
			in_i[0] = (ap_fixed<syn_IN_WL,syn_IN_IL>)data_temp_imag[i];
			// --------------------------------------------
			// ------ correlation value calculation -------
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
    index.write(MAX_index);	  
    set_count++;
	}
  
  else{
    for(int i = 0; i<FFT_LEN+CP_length; i++){
      data_temp_real[i] = (data_in_real.read());
			data_temp_imag[i] = (data_in_imag.read());
    }
  }
	for(int i = 0; i<(FFT_LEN+CP_length); i++){
		data_out_real.write(data_temp_real[i]);
		data_out_imag.write(data_temp_imag[i]);
	}


	return;
}
