#include "channel_gen.h"

void channel_gen(hls::stream<ap_fixed<IN_WL,IN_IL>>& in_x_r, hls::stream<ap_fixed<IN_WL,IN_IL>>& in_x_i, hls::stream<ap_fixed<IN_WL,IN_IL>>& channel_out_real, hls::stream<ap_fixed<IN_WL,IN_IL>>& channel_out_imag, hls::stream<int>& para_str_in, hls::stream<int>& para_str_out)
{

#pragma HLS DATAFLOW

	int index_count = 0;
	ap_uint<4> i;
	ap_fixed<IN_WL,IN_IL> x_out_r = 0.0;
	ap_fixed<IN_WL,IN_IL> x_out_i = 0.0;
	ap_fixed<IN_WL,IN_IL> x_real_1taps;
	ap_fixed<IN_WL,IN_IL> x_imag_1taps; 
	ap_fixed<IN_WL,IN_IL> n_1taps;
	ap_fixed<IN_WL,IN_IL> x_real_2taps[2] = {0.0};
	ap_fixed<IN_WL,IN_IL> x_imag_2taps[2] = {0.0}; 
	ap_fixed<IN_WL,IN_IL> n_2taps[2];
	ap_fixed<IN_WL,IN_IL> weight_2taps[2] = {0.85, 0.5267};
	ap_fixed<IN_WL,IN_IL> x_real_3taps[3] = {0.0};
	ap_fixed<IN_WL,IN_IL> x_imag_3taps[3] = {0.0}; 
	ap_fixed<IN_WL,IN_IL> n_3taps[3];
	ap_fixed<IN_WL,IN_IL> weight_3taps[3] = {0.8, 0.5, 0.3317};
	ap_fixed<IN_WL,IN_IL> x_real_6taps[6] = {0.0};
	ap_fixed<IN_WL,IN_IL> x_imag_6taps[6] = {0.0}; 
	ap_fixed<IN_WL,IN_IL> n_6taps[6];
	ap_fixed<IN_WL,IN_IL> weight_6taps[6] = {0.7943, 0.3981, 0.3162, 0.2512, 0.1778, 0.1259};
	ap_fixed<IN_WL,IN_IL> x_real_9taps[9] = {0.0};
	ap_fixed<IN_WL,IN_IL> x_imag_9taps[9] = {0.0};
	ap_fixed<IN_WL,IN_IL> n_9taps[9];
	ap_fixed<IN_WL,IN_IL> weight_9taps[9] = {0.5, 0.31, 0.19, 0.06, 0.03, 0.02, 0.008, 0.004, 0.002};	
	ap_fixed<IN_WL,IN_IL> random_num_value_real;
	ap_fixed<IN_WL,IN_IL> random_num_value_imag;
	hls::stream<ap_fixed<IN_WL,IN_IL>> random_num;
	
	int para_num;
	int para_cnt = 0;
	int DATA_LEN;
	int sym_num;
	int pilot_width;
	int CP_length;
	int SNR;
	int TAPS_NUM;
	int read_para; 
   
  do{
		read_para = para_str_in.read();
		para_str_out.write(read_para);
		if(para_cnt==0){
			para_num = read_para;
		}
		else if(para_cnt==1){
			DATA_LEN = read_para;
		}
		else if(para_cnt==3){
			sym_num = read_para;
		}
		else if(para_cnt==4){
			pilot_width = read_para;
		}
		else if(para_cnt==5){
			CP_length = read_para;
		}
		else if(para_cnt==6){
			SNR = read_para;
		}
		else if(para_cnt==7){
			TAPS_NUM = read_para;
		}
		para_cnt++;
	}while(para_cnt < para_num+1);

	const ap_fixed<IN_WL,IN_IL> sqrt_No = (ap_fixed<IN_WL,IN_IL>)(1/sqrt(pow(10.0,SNR/10.0)));
	const ap_fixed<IN_WL,IN_IL> sqrt_2 = (ap_fixed<IN_WL,IN_IL>)sqrt(2);

	for(int k = 0; k < DATA_LEN*sym_num/(FFT_LEN-(FFT_LEN/pilot_width)); k++){
		for(int j = 0; j < FFT_LEN+CP_length; j++){
			rand(random_num);
			random_num_value_real = random_num.read()*sqrt_No/sqrt_2;
			rand(random_num);
			random_num_value_imag = random_num.read()*sqrt_No/sqrt_2;

			if(TAPS_NUM==1){
				x_real_1taps = in_x_r.read();
				x_imag_1taps = in_x_i.read();
				channel_out_real.write(x_real_1taps+random_num_value_real);
				channel_out_imag.write(x_imag_1taps+random_num_value_imag);
			}

			else if(TAPS_NUM==2){
				for (i = TAPS_NUM-1 ;i > 0; i--){
					x_real_2taps[i] = x_real_2taps[i-1];
					x_imag_2taps[i] = x_imag_2taps[i-1];
				}
				x_real_2taps[0] = in_x_r.read();
				x_imag_2taps[0] = in_x_i.read();
				if(j==0){
					for(i = 0; i < TAPS_NUM; i++){
						rand(random_num);
						n_2taps[i] = random_num.read();
					}
				}
				for(i = 0; i < TAPS_NUM; i++){
					x_out_r = x_out_r + (ap_fixed<IN_WL,IN_IL>)(weight_2taps[i]*n_2taps[i])*x_real_2taps[i];
					x_out_i = x_out_i + (ap_fixed<IN_WL,IN_IL>)(weight_2taps[i]*n_2taps[i])*x_imag_2taps[i];
				}
				channel_out_real.write(x_out_r+random_num_value_real);
				channel_out_imag.write(x_out_i+random_num_value_imag);
			}

			else if(TAPS_NUM==3){
				for (i = TAPS_NUM-1 ;i > 0; i--){
					x_real_3taps[i] = x_real_3taps[i-1];
					x_imag_3taps[i] = x_imag_3taps[i-1];
				}
				x_real_3taps[0] = in_x_r.read();
				x_imag_3taps[0] = in_x_i.read();
				if(j==0){
					for(i = 0; i < TAPS_NUM; i++){
						rand(random_num);
						n_3taps[i] = random_num.read();
					}
				}
				for(i = 0; i < TAPS_NUM; i++){
					x_out_r = x_out_r + (ap_fixed<IN_WL,IN_IL>)(weight_3taps[i]*n_3taps[i])*x_real_3taps[i];
					x_out_i = x_out_i + (ap_fixed<IN_WL,IN_IL>)(weight_3taps[i]*n_3taps[i])*x_imag_3taps[i];
				}
				channel_out_real.write(x_out_r+random_num_value_real);
				channel_out_imag.write(x_out_i+random_num_value_imag);
			}

			else if(TAPS_NUM==6){
				for (i = TAPS_NUM-1 ;i > 0; i--){
					x_real_6taps[i] = x_real_6taps[i-1];
					x_imag_6taps[i] = x_imag_6taps[i-1];
				}
				x_real_6taps[0] = in_x_r.read();
				x_imag_6taps[0] = in_x_i.read();
				if(j==0){
					for(i = 0; i < TAPS_NUM; i++){
						rand(random_num);
						n_6taps[i] = random_num.read();
					}
				}
				for(i = 0; i < TAPS_NUM; i++){
					x_out_r = x_out_r + (ap_fixed<IN_WL,IN_IL>)(weight_6taps[i]*n_6taps[i])*x_real_6taps[i];
					x_out_i = x_out_i + (ap_fixed<IN_WL,IN_IL>)(weight_6taps[i]*n_6taps[i])*x_imag_6taps[i];
				}
				channel_out_real.write(x_out_r+random_num_value_real);
				channel_out_imag.write(x_out_i+random_num_value_imag);
			}

			else{
				for (i = TAPS_NUM-1 ;i > 0; i--){
					x_real_9taps[i] = x_real_9taps[i-1];
					x_imag_9taps[i] = x_imag_9taps[i-1];
				}
				x_real_9taps[0] = in_x_r.read();
				x_imag_9taps[0] = in_x_i.read();
				if(j==0){
					for(i = 0; i < TAPS_NUM; i++){
						rand(random_num);
						n_9taps[i] = random_num.read();
					}
				}
				for(i = 0; i < TAPS_NUM; i++){
					x_out_r = x_out_r + (ap_fixed<IN_WL,IN_IL>)(weight_9taps[i]+n_9taps[i])*x_real_9taps[i];
					x_out_i = x_out_i + (ap_fixed<IN_WL,IN_IL>)(weight_9taps[i]+n_9taps[i])*x_imag_9taps[i];
				}
				channel_out_real.write(x_out_r+random_num_value_real);
				channel_out_imag.write(x_out_i+random_num_value_imag);
			}
		}
	}

	return;
}
