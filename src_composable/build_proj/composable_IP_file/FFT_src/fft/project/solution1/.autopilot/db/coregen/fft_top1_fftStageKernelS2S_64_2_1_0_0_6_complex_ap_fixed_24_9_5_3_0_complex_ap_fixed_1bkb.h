// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __fft_top1_fftStageKernelS2S_64_2_1_0_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_1bkb_H__
#define __fft_top1_fftStageKernelS2S_64_2_1_0_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_1bkb_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct fft_top1_fftStageKernelS2S_64_2_1_0_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_1bkb_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 14;
  static const unsigned AddressRange = 16;
  static const unsigned AddressWidth = 4;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in <sc_lv<AddressWidth> > address1;
sc_core::sc_in <sc_logic> ce1;
sc_core::sc_out <sc_lv<DataWidth> > q1;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(fft_top1_fftStageKernelS2S_64_2_1_0_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_1bkb_ram) {
        ram[0] = "0b00000000000000";
        ram[1] = "0b11110011011101";
        ram[2] = "0b11100111000010";
        ram[3] = "0b11011010110110";
        ram[4] = "0b11001111000001";
        ram[5] = "0b11000011101010";
        ram[6] = "0b10111000111001";
        ram[7] = "0b10101110110011";
        ram[8] = "0b10100101011111";
        ram[9] = "0b10011101000011";
        ram[10] = "0b10010101100101";
        ram[11] = "0b10001111000111";
        ram[12] = "0b10001001110000";
        ram[13] = "0b10000101100001";
        ram[14] = "0b10000010011101";
        ram[15] = "0b10000000100111";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();


SC_METHOD(prc_write_1);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


void prc_write_1()
{
    if (ce1.read() == sc_dt::Log_1) 
    {
            if(address1.read().is_01() && address1.read().to_uint()<AddressRange)
              q1 = ram[address1.read().to_uint()];
            else
              q1 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(fft_top1_fftStageKernelS2S_64_2_1_0_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_1bkb) {


static const unsigned DataWidth = 14;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in <sc_lv<AddressWidth> > address1;
sc_core::sc_in<sc_logic> ce1;
sc_core::sc_out <sc_lv<DataWidth> > q1;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


fft_top1_fftStageKernelS2S_64_2_1_0_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_1bkb_ram* meminst;


SC_CTOR(fft_top1_fftStageKernelS2S_64_2_1_0_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_1bkb) {
meminst = new fft_top1_fftStageKernelS2S_64_2_1_0_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_1bkb_ram("fft_top1_fftStageKernelS2S_64_2_1_0_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_1bkb_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->address1(address1);
meminst->ce1(ce1);
meminst->q1(q1);

meminst->reset(reset);
meminst->clk(clk);
}
~fft_top1_fftStageKernelS2S_64_2_1_0_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_1bkb() {
    delete meminst;
}


};//endmodule
#endif
