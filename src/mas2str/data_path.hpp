#ifndef _DATA_PATH_H_
#define _DATA_PATH_H_

#include <complex>
#include <ap_int.h>
#include <ap_fixed.h>
#include <hls_stream.h>


#define FFT_LEN 64
#define IN_WL 20
#define IN_IL 5
//#define para_num 10
#define pilot_real 1
#define pilot_imag 0

#define QAM_unsigned_bit 4
#define QAM_signed_bit 3
#define pixl_bit 8
//#define qam_num 16
//#define DATA_LEN 48
//#define sym_num 2
//#define CP_length 16
//#define pilot_width 4

#define QAM_normalization 10
const ap_fixed<IN_WL,IN_IL> sqrt_QAM_norm = (ap_fixed<IN_WL,IN_IL>)sqrt(QAM_normalization);

typedef signed int int32_t;

#endif
