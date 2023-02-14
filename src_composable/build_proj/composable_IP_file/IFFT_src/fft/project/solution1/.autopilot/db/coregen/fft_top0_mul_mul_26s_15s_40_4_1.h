// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __fft_top0_mul_mul_26s_15s_40_4_1__HH__
#define __fft_top0_mul_mul_26s_15s_40_4_1__HH__
#include "fft_top0_mul_mul_26s_15s_40_4_1_DSP48_3.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(fft_top0_mul_mul_26s_15s_40_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    fft_top0_mul_mul_26s_15s_40_4_1_DSP48_3 fft_top0_mul_mul_26s_15s_40_4_1_DSP48_3_U;

    SC_CTOR(fft_top0_mul_mul_26s_15s_40_4_1):  fft_top0_mul_mul_26s_15s_40_4_1_DSP48_3_U ("fft_top0_mul_mul_26s_15s_40_4_1_DSP48_3_U") {
        fft_top0_mul_mul_26s_15s_40_4_1_DSP48_3_U.clk(clk);
        fft_top0_mul_mul_26s_15s_40_4_1_DSP48_3_U.rst(reset);
        fft_top0_mul_mul_26s_15s_40_4_1_DSP48_3_U.ce(ce);
        fft_top0_mul_mul_26s_15s_40_4_1_DSP48_3_U.a(din0);
        fft_top0_mul_mul_26s_15s_40_4_1_DSP48_3_U.b(din1);
        fft_top0_mul_mul_26s_15s_40_4_1_DSP48_3_U.p(dout);

    }

};

#endif //
