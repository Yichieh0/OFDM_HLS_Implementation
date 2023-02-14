// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __channel_gen_seedInitialization_Pipeline_SEED_INIT_LOOP_rngMT19937ICN_uniformRNG_mt_odd_1_V_H__
#define __channel_gen_seedInitialization_Pipeline_SEED_INIT_LOOP_rngMT19937ICN_uniformRNG_mt_odd_1_V_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct channel_gen_seedInitialization_Pipeline_SEED_INIT_LOOP_rngMT19937ICN_uniformRNG_mt_odd_1_V_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 512;
  static const unsigned AddressWidth = 9;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_in<sc_logic> we0;
sc_core::sc_in<sc_lv<DataWidth> > d0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(channel_gen_seedInitialization_Pipeline_SEED_INIT_LOOP_rngMT19937ICN_uniformRNG_mt_odd_1_V_ram) {
        for (unsigned i = 0; i < 512; i = i + 1) {
            ram[i] = 0;
        }


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
        if (we0.read() == sc_dt::Log_1) 
        {
           if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
           {
              ram[address0.read().to_uint()] = d0.read(); 
           }
        }
    }
}


}; //endmodule


SC_MODULE(channel_gen_seedInitialization_Pipeline_SEED_INIT_LOOP_rngMT19937ICN_uniformRNG_mt_odd_1_V) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 512;
static const unsigned AddressWidth = 9;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_in<sc_logic> we0;
sc_core::sc_in<sc_lv<DataWidth> > d0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


channel_gen_seedInitialization_Pipeline_SEED_INIT_LOOP_rngMT19937ICN_uniformRNG_mt_odd_1_V_ram* meminst;


SC_CTOR(channel_gen_seedInitialization_Pipeline_SEED_INIT_LOOP_rngMT19937ICN_uniformRNG_mt_odd_1_V) {
meminst = new channel_gen_seedInitialization_Pipeline_SEED_INIT_LOOP_rngMT19937ICN_uniformRNG_mt_odd_1_V_ram("channel_gen_seedInitialization_Pipeline_SEED_INIT_LOOP_rngMT19937ICN_uniformRNG_mt_odd_1_V_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->we0(we0);
meminst->d0(d0);


meminst->reset(reset);
meminst->clk(clk);
}
~channel_gen_seedInitialization_Pipeline_SEED_INIT_LOOP_rngMT19937ICN_uniformRNG_mt_odd_1_V() {
    delete meminst;
}


};//endmodule
#endif
