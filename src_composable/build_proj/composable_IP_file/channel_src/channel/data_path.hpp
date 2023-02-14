#ifndef _DATA_PATH_H_
#define _DATA_PATH_H_

#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <cstdlib>
#include <ctime>
#include <time.h>
#include <cmath>

#include <complex>
#include <ap_int.h>
#include <ap_fixed.h>
#include <ap_axi_sdata.h>
#include <hls_stream.h>
#include <hls_vector.h>

#define qam_num 16 
#define pixl_bit 8 //(unsigned)
#define QAM_unsigned_bit 4
#define QAM_signed_bit 3
#define QAM_normalization 10
#define CP_length 16
#define pilot_real 1
#define pilot_imag 0

#define FFT_LEN 128
#define SSR 2

#define IN_WL 20
#define IN_IL 7

#define TW_WL 16
#define TW_IL 3

const ap_fixed<IN_WL,IN_IL> sqrt_FFT_LENGTH = (ap_fixed<IN_WL,IN_IL>)sqrt(FFT_LEN);
const ap_fixed<IN_WL,IN_IL> sqrt_QAM_norm = (ap_fixed<IN_WL,IN_IL>)sqrt(QAM_normalization);
const ap_fixed<IN_WL,IN_IL> sqrt_2 = (ap_fixed<IN_WL,IN_IL>)sqrt(2);

#endif
