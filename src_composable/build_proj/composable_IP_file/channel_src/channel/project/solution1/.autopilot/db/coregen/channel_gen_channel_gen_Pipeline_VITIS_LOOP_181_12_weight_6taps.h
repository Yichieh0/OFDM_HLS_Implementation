// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __channel_gen_channel_gen_Pipeline_VITIS_LOOP_181_12_weight_6taps_H__
#define __channel_gen_channel_gen_Pipeline_VITIS_LOOP_181_12_weight_6taps_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct channel_gen_channel_gen_Pipeline_VITIS_LOOP_181_12_weight_6taps_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 15;
  static const unsigned AddressRange = 6;
  static const unsigned AddressWidth = 3;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(channel_gen_channel_gen_Pipeline_VITIS_LOOP_181_12_weight_6taps_ram) {
        ram[0] = "0b110010110101011";
        ram[1] = "0b011001011110100";
        ram[2] = "0b010100001111001";
        ram[3] = "0b010000000100111";
        ram[4] = "0b001011011000010";
        ram[5] = "0b001000000011101";


SC_METHOD(prc_write_0);
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


}; //endmodule


SC_MODULE(channel_gen_channel_gen_Pipeline_VITIS_LOOP_181_12_weight_6taps) {


static const unsigned DataWidth = 15;
static const unsigned AddressRange = 6;
static const unsigned AddressWidth = 3;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


channel_gen_channel_gen_Pipeline_VITIS_LOOP_181_12_weight_6taps_ram* meminst;


SC_CTOR(channel_gen_channel_gen_Pipeline_VITIS_LOOP_181_12_weight_6taps) {
meminst = new channel_gen_channel_gen_Pipeline_VITIS_LOOP_181_12_weight_6taps_ram("channel_gen_channel_gen_Pipeline_VITIS_LOOP_181_12_weight_6taps_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~channel_gen_channel_gen_Pipeline_VITIS_LOOP_181_12_weight_6taps() {
    delete meminst;
}


};//endmodule
#endif
