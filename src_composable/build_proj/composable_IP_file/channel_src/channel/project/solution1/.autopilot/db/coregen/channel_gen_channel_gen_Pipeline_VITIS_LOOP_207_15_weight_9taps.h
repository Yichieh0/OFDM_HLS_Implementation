// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __channel_gen_channel_gen_Pipeline_VITIS_LOOP_207_15_weight_9taps_H__
#define __channel_gen_channel_gen_Pipeline_VITIS_LOOP_207_15_weight_9taps_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct channel_gen_channel_gen_Pipeline_VITIS_LOOP_207_15_weight_9taps_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 15;
  static const unsigned AddressRange = 9;
  static const unsigned AddressWidth = 4;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(channel_gen_channel_gen_Pipeline_VITIS_LOOP_207_15_weight_9taps_ram) {
        ram[0] = "0b100000000000000";
        ram[1] = "0b010011110101110";
        ram[2] = "0b001100001010001";
        ram[3] = "0b000011110101110";
        ram[4] = "0b000001111010111";
        ram[5] = "0b000001010001111";
        ram[6] = "0b000000100000110";
        ram[7] = "0b000000010000011";
        ram[8] = "0b000000001000001";


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


SC_MODULE(channel_gen_channel_gen_Pipeline_VITIS_LOOP_207_15_weight_9taps) {


static const unsigned DataWidth = 15;
static const unsigned AddressRange = 9;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


channel_gen_channel_gen_Pipeline_VITIS_LOOP_207_15_weight_9taps_ram* meminst;


SC_CTOR(channel_gen_channel_gen_Pipeline_VITIS_LOOP_207_15_weight_9taps) {
meminst = new channel_gen_channel_gen_Pipeline_VITIS_LOOP_207_15_weight_9taps_ram("channel_gen_channel_gen_Pipeline_VITIS_LOOP_207_15_weight_9taps_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~channel_gen_channel_gen_Pipeline_VITIS_LOOP_207_15_weight_9taps() {
    delete meminst;
}


};//endmodule
#endif
