// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __channel_gen_pow_generic_double_s_pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_58bkb_H__
#define __channel_gen_pow_generic_double_s_pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_58bkb_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct channel_gen_pow_generic_double_s_pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_58bkb_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 58;
  static const unsigned AddressRange = 256;
  static const unsigned AddressWidth = 8;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(channel_gen_pow_generic_double_s_pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_58bkb_ram) {
        ram[0] = "0b1000000000000000000000000000000000000000000000000000000000";
        ram[1] = "0b1000000010000000010000000001010101011010101010111011101111";
        ram[2] = "0b1000000100000001000000001010101100000000001000100010110110";
        ram[3] = "0b1000000110000010010000100100000110110001000000111011010100";
        ram[4] = "0b1000001000000100000001010101101010101110111100011100100010";
        ram[5] = "0b1000001010000110010010100111011110111101000100000011011011";
        ram[6] = "0b1000001100001001000100100001101100100000100001101110100010";
        ram[7] = "0b1000001110001100010111001100011110100001000001000010011101";
        ram[8] = "0b1000010000010000001010110000000010001001001111110110010011";
        ram[9] = "0b1000010010010100011111010100100110100111011111001000010010";
        ram[10] = "0b1000010100011001010101000010011101001110000011111010110000";
        ram[11] = "0b1000010110011110101100000001111001010011111000011001001110";
        ram[12] = "0b1000011000100100100100011011010000010100111101000101111000";
        ram[13] = "0b1000011010101010111110010110111001110010111010001111010010";
        ram[14] = "0b1000011100110001111001111101001111010101100001001110100010";
        ram[15] = "0b1000011110111001010111010110101100101011001110001101101101";
        ram[16] = "0b1000100001000001010110101011101111101001101001110110101111";
        ram[17] = "0b1000100011001001111000000100111000001110001011001010111000";
        ram[18] = "0b1000100101010010111011101010101000011110011001100010011011";
        ram[19] = "0b1000100111011100100001100101100100101000101110110101001001";
        ram[20] = "0b1000101001100110101001111110010011000100111001101011001000";
        ram[21] = "0b1000101011110001010100111101011100010100011111110110010100";
        ram[22] = "0b1000101101111100100010101011101011000011100000110100100101";
        ram[23] = "0b1000110000001000010011010001101100001000111000011010011111";
        ram[24] = "0b1000110010010100100110111000001110100111000001100110101101";
        ram[25] = "0b1000110100100001011101101000000011101100011001011110001100";
        ram[26] = "0b1000110110101110110111101001111110110100000010010001000110";
        ram[27] = "0b1000111000111100110101000110110101100110000110101000011011";
        ram[28] = "0b1000111011001011010110000111011111111000011100111100100111";
        ram[29] = "0b1000111101011010011010110100110111101111001010110100110100";
        ram[30] = "0b1000111111101010000011010111111001011101001000101111001101";
        ram[31] = "0b1001000001111010001111111001100011100100100101110010001100";
        ram[32] = "0b1001000100001011000000100010110110110111101011100110011111";
        ram[33] = "0b1001000110011100010101011100110110011001000010011010010010";
        ram[34] = "0b1001001000101110001110110000100111011100010101001101011110";
        ram[35] = "0b1001001011000000101100100111010001100110110110000110110000";
        ram[36] = "0b1001001101010011101111001001111110110000000010110010000101";
        ram[37] = "0b1001001111100111010110100001111011000010001001001000000101";
        ram[38] = "0b1001010001111011100010111000010100111010101011111110101110";
        ram[39] = "0b1001010100010000010100010110011101001011001000000011000111";
        ram[40] = "0b1001010110100101101011000101100110111001011000111100101010";
        ram[41] = "0b1001011000111011100111001111000111100000011110011001010111";
        ram[42] = "0b1001011011010010001000111100010110110001000001100011100111";
        ram[43] = "0b1001011101101001010000010110101110110001111010100001001001";
        ram[44] = "0b1001100000000000111101100111101100000000110101111011100000";
        ram[45] = "0b1001100010011001010000111000101101010010111010110001111000";
        ram[46] = "0b1001100100110010001010010011010011110101010000010100011111";
        ram[47] = "0b1001100111001011101010000001000011001101100100001001010101";
        ram[48] = "0b1001101001100101110000001011100001011010110000011010100101";
        ram[49] = "0b1001101100000000011100111100010110110101100010001110100011";
        ram[50] = "0b1001101110011011110000011101001110010001000000001001001001";
        ram[51] = "0b1001110000110111101010110111110100111011010000110111001100";
        ram[52] = "0b1001110011010100001100010101111010011110000010000011001011";
        ram[53] = "0b1001110101110001010101000001010000111111001111010100000000";
        ram[54] = "0b1001111000001111000101000011101101000001101001010101001111";
        ram[55] = "0b1001111010101101011100100111000101100101011101001001011001";
        ram[56] = "0b1001111101001100011011110101010100001000111011100101110101";
        ram[57] = "0b1001111111101100000010111000010100101001000000111000110001";
        ram[58] = "0b1010000010001100010001111010000101100001111100011001000001";
        ram[59] = "0b1010000100101101001001000100100111101111111000011111110011";
        ram[60] = "0b1010000111001110101000100001111110101111100010101100011101";
        ram[61] = "0b1010001001110000110000011100010000011110110011110010010011";
        ram[62] = "0b1010001100010011100000111101100101011101011000010000011011";
        ram[63] = "0b1010001110110110111010010000001000101101011000110011110001";
        ram[64] = "0b1010010001011010111100011110000111110100000011000011001100";
        ram[65] = "0b1010010011111111100111110001110010111010010010010101110101";
        ram[66] = "0b1010010110100100111100010101011100101101011000110011101000";
        ram[67] = "0b1010011001001010111010010011011010011111101000100000001110";
        ram[68] = "0b1010011011110001100001110110000100001000111100110000000010";
        ram[69] = "0b1010011110011000110011000111110100000111100011100111110011";
        ram[70] = "0b1010100001000000101110010011000111100000100111100110011110";
        ram[71] = "0b1010100011101001010011100010011110000000111001011001100001";
        ram[72] = "0b1010100110010010100011000000011001111101011001111011101101";
        ram[73] = "0b1010101000111100011100110111100000010100000100011110100000";
        ram[74] = "0b1010101011100111000001010010011000101100011000111101110110";
        ram[75] = "0b1010101110010010010000011011101101011000000110011110101100";
        ram[76] = "0b1010110000111110001010011110001011010011110101111000000100";
        ram[77] = "0b1010110011101010101111100100100010000111110100100110111100";
        ram[78] = "0b1010110110010111111111111001100100001000011111101100101010";
        ram[79] = "0b1010111001000101111011101000000110010111001110111000010001";
        ram[80] = "0b1010111011110100100010111011000000100010111111111010100111";
        ram[81] = "0b1010111110100011110101111101001101001001000010000101001110";
        ram[82] = "0b1011000001010011110100111001101001010101100001110100001110";
        ram[83] = "0b1011000100000100011111111011010101000100010100100011000010";
        ram[84] = "0b1011000110110101110111001101010011000001100100101100001001";
        ram[85] = "0b1011001001100111111010111010101000101010011101110011110111";
        ram[86] = "0b1011001100011010101011001110011110001101111000111110001011";
        ram[87] = "0b1011001111001110001000010011111110101101001001001111100111";
        ram[88] = "0b1011010010000010010010010110010111111100101000011001011001";
        ram[89] = "0b1011010100110111001001100000111010100100100011110000101111";
        ram[90] = "0b1011010111101100101101111110111010000001101001010001001111";
        ram[91] = "0b1011011010100010111111111011101100100101110100101010110110";
        ram[92] = "0b1011011101011001111111100010101011011000111100111010110110";
        ram[93] = "0b1011100000010001101100111111010010011001100001110000011011";
        ram[94] = "0b1011100011001010001000011101000000011101011001011100100101";
        ram[95] = "0b1011100110000011010010000111010111010010011110101101011011";
        ram[96] = "0b1011101000111101001010001001111011011111011110110101001100";
        ram[97] = "0b1011101011110111110000110000010100100100100111111100011111";
        ram[98] = "0b1011101110110011000110000110001100111100010111100000011101";
        ram[99] = "0b1011110001101111001010010111010001111100001000111100010111";
        ram[100] = "0b1011110100101011111101101111010011110101000100011110111100";
        ram[101] = "0b1011110111101001100000011010000101110100101110001011011111";
        ram[102] = "0b1011111010100111110010100011011110000101110101000110101101";
        ram[103] = "0b1011111101100110110100010111010101110001000010101111010111";
        ram[104] = "0b1100000000100110100110000001101000111101101010100010111001";
        ram[105] = "0b1100000011100111000111101110010110110010011001101101110001";
        ram[106] = "0b1100000110101000011001101001100001010110000111000111111110";
        ram[107] = "0b1100001001101010011011111111001101110000100011011101011110";
        ram[108] = "0b1100001100101101001110111011100100001011001001100010101000";
        ram[109] = "0b1100001111110000110010101010101111110001101110110100110100";
        ram[110] = "0b1100010010110101000111011000111110110011010100000111001101";
        ram[111] = "0b1100010101111010001101010010100010100010110110011011101010";
        ram[112] = "0b1100011001000000000100100011101111011000000000000111111011";
        ram[113] = "0b1100011100000110101101011000111100101111111010000111001010";
        ram[114] = "0b1100011111001110000111111110100101001101111101010111101101";
        ram[115] = "0b1100100010010110010100100001000110011100100100100101010100";
        ram[116] = "0b1100100101011111010011001101000001001101111101111111110110";
        ram[117] = "0b1100101000101001000100001110111001011100111101011110010111";
        ram[118] = "0b1100101011110011100111110011010110001101101110101110110011";
        ram[119] = "0b1100101110111110111110000111000001101110100111110010010011";
        ram[120] = "0b1100110010001011000111010110101001011000111011100110000010";
        ram[121] = "0b1100110101011000000011101110111101110001101100111000110110";
        ram[122] = "0b1100111000100101110011011100110010101010100001001101100011";
        ram[123] = "0b1100111011110100010110101100111111000010010100001010000010";
        ram[124] = "0b1100111111000011101101101100011101000110001010110011001010";
        ram[125] = "0b1101000010010011111000101000001010010010000111010101101001";
        ram[126] = "0b1101000101100100110111101101000111010001111100111011110101";
        ram[127] = "0b1101001000110110101011001000011000000010000011110000010101";
        ram[128] = "0b0100110110100010110010111111000110111110010110000010011111";
        ram[129] = "0b0100110111110000100101011001110000001001110000110111010111";
        ram[130] = "0b0100111000111110101011010011011011110001010010011000010011";
        ram[131] = "0b0100111010001101000100110001000010001100100010111011111001";
        ram[132] = "0b0100111011011011110001110111011101000001011010100100011001";
        ram[133] = "0b0100111100101010110010101011100111000100010100100110000001";
        ram[134] = "0b0100111101111010000111010010011100011000100011010010010101";
        ram[135] = "0b0100111111001001101111110000111010010000100011101000010110";
        ram[136] = "0b0101000000011001101100001011111111001110010001001001101110";
        ram[137] = "0b0101000001101001111100101000101011000011011001110100111100";
        ram[138] = "0b0101000010111010100001001011111110110001110010000100010100";
        ram[139] = "0b0101000100001011011001111010111100101011101000110010001010";
        ram[140] = "0b0101000101011100100110111010101000010011111011100001111101";
        ram[141] = "0b0101000110101110001000010000000110011110101010101110100000";
        ram[142] = "0b0101000111111111111110000000011101010001001101111101001001";
        ram[143] = "0b0101001001010010001000010000110100000010101000010110001010";
        ram[144] = "0b0101001010100100100111000110010011011011111101000010001101";
        ram[145] = "0b0101001011110111011010100110000101011000100011101100110100";
        ram[146] = "0b0101001101001010100010110101010101000110011101001100001101";
        ram[147] = "0b0101001110011101111111111001001111000110101000001110000100";
        ram[148] = "0b0101001111110001110001110111000001001101010110001001101100";
        ram[149] = "0b0101010001000101111000110011111010100010011111110111001101";
        ram[150] = "0b0101010010011010010100110101001011100001111010101100000100";
        ram[151] = "0b0101010011101111000110000000000101111011101101011100110101";
        ram[152] = "0b0101010101000100001100011001111100110100100101100100001001";
        ram[153] = "0b0101010110011001101000001000000100100110001100001111000000";
        ram[154] = "0b0101010111101111011001001111110010111111011011101110011100";
        ram[155] = "0b0101011001000101011111110110011111000100110100101110011000";
        ram[156] = "0b0101011010011011111100000001100001010000110011110001111110";
        ram[157] = "0b0101011011110010101101110110010011010100000110110101001101";
        ram[158] = "0b0101011101001001110101011010010000010110000010110100000000";
        ram[159] = "0b0101011110100001010010110010110100110100111001010110101001";
        ram[160] = "0b0101011111111001000110000101011110100110001110100011101010";
        ram[161] = "0b0101100001010001001111010111101100110111001110110111001101";
        ram[162] = "0b0101100010101001101110101111000000001101000100111111111000";
        ram[163] = "0b0101100100000010100100010000111010100101010000000001000001";
        ram[164] = "0b0101100101011011110000000010111111010101111001011010100110";
        ram[165] = "0b0101100110110101010010001010110011001110001011010110100011";
        ram[166] = "0b0101101000001111001010101101111100010110100110111011110011";
        ram[167] = "0b0101101001101001011001110010000010010001011010100110101100";
        ram[168] = "0b0101101011000011111111011100101101111010111000100111001110";
        ram[169] = "0b0101101100011110111011110011101001101001101101100100110001";
        ram[170] = "0b0101101101111010001110111100100001001111010111000111100001";
        ram[171] = "0b0101101111010101111000111101000001111000011010100111100100";
        ram[172] = "0b0101110000110001111001111010111010001100111100000001101010";
        ram[173] = "0b0101110010001110010001111011111010010000110100110001110011";
        ram[174] = "0b0101110011101011000001000101110011100100001010110011010111";
        ram[175] = "0b0101110101001000000111011110011001000011100111100111001111";
        ram[176] = "0b0101110110100101100101001011011111001000101111011111100001";
        ram[177] = "0b0101111000000011011010010010111011101010011000110001001000";
        ram[178] = "0b0101111001100001100110111010100101111101000011001011010010";
        ram[179] = "0b0101111011000000001011001000010110110011001111010100101111";
        ram[180] = "0b0101111100011111000111000010001000011101110110001110111111";
        ram[181] = "0b0101111101111110011010101101110110101100100000111111010001";
        ram[182] = "0b0101111111011110000110010001011110101110000000011101100100";
        ram[183] = "0b0110000000111110001001110010111111010000100101001001100100";
        ram[184] = "0b0110000010011110100101011000011000100010010111000101011110";
        ram[185] = "0b0110000011111111011001000111101100010001101101110111000000";
        ram[186] = "0b0110000101100000100101000110111101101101101000101110001010";
        ram[187] = "0b0110000111000010001001011100010001100110000110110010010100";
        ram[188] = "0b0110001000100100000110001101101110001100011111010101000011";
        ram[189] = "0b0110001010000110011011100001011011010011111010001011011001";
        ram[190] = "0b0110001011101001001001011101100010010001101000001100111001";
        ram[191] = "0b0110001101001100010000001000001101111101011011111001000011";
        ram[192] = "0b0110001110101111101111100111101010110010000010000010101110";
        ram[193] = "0b0110010000010011101000000010000110101101011010100001111000";
        ram[194] = "0b0110010001110111111001011101110001010001010001001011011000";
        ram[195] = "0b0110010011011100100100000000111011100011010110101111001011";
        ram[196] = "0b0110010101000001100111110001111000001101111001111100100111";
        ram[197] = "0b0110010110100111000100110110111011100000000000101101000111";
        ram[198] = "0b0110011000001100111011010110011011001110000001010101000011";
        ram[199] = "0b0110011001110011001011010110101110110001111011111011001000";
        ram[200] = "0b0110011011011001110100111110001111001011110011110101111010";
        ram[201] = "0b0110011101000000111000010011010111000010001001001111111001";
        ram[202] = "0b0110011110101000010101011100100010100010010010110001110111";
        ram[203] = "0b0110100000010000001100100000001111100000110111010011110001";
        ram[204] = "0b0110100001111000011101100100111101011010000111110100000000";
        ram[205] = "0b0110100011100001001000110001001101010010011001010101001100";
        ram[206] = "0b0110100101001010001110001011100001110110011111000010011000";
        ram[207] = "0b0110100110110011101101111010011111011100000100011001111101";
        ram[208] = "0b0110101000011101101000000100101100000010000111011110111100";
        ram[209] = "0b0110101010000111111100110000101111010001010011010000111001";
        ram[210] = "0b0110101011110010101100000101010010011100011010001010100011";
        ram[211] = "0b0110101101011101110110001001000000100000110000100110111011";
        ram[212] = "0b0110101111001001011011000010100110000110100111101101001010";
        ram[213] = "0b0110110000110101011010111000110001100001101000000011000011";
        ram[214] = "0b0110110010100001110101110010010010110001001100100110010011";
        ram[215] = "0b0110110100001110101011110101111011100000111101101100011011";
        ram[216] = "0b0110110101111011111101001010011111001001001100001001100010";
        ram[217] = "0b0110110111101001101001110110110010101111001100011101110110";
        ram[218] = "0b0110111001010111110010000001101101000101110010001010000000";
        ram[219] = "0b0110111011000110010101110010000110101101101011001010010000";
        ram[220] = "0b0110111100110101010101001110111001110101111011011000100000";
        ram[221] = "0b0110111110100100110000011111000010011100011000010101001111";
        ram[222] = "0b0111000000010100100111101001011110001110000100110111011100";
        ram[223] = "0b0111000010000100111010110101001100100111101101000011011000";
        ram[224] = "0b0111000011110101101010001001001110110110000010001000011000";
        ram[225] = "0b0111000101100110110101101100100111110110010110100101101001";
        ram[226] = "0b0111000111011000011101100110011100010110111010010110000111";
        ram[227] = "0b0111001001001010100001111101110010110111010111000011010101";
        ram[228] = "0b0111001010111101000010111001110011101001001100011111011001";
        ram[229] = "0b0111001100110000000000100001101000110000001101000110000111";
        ram[230] = "0b0111001110100011011010111100011110000010111010100101001101";
        ram[231] = "0b0111010000010111010010010001100001001011000010101011101110";
        ram[232] = "0b0111010010001011100110101000000001100101111100000000101011";
        ram[233] = "0b0111010100000000011000000111010000100101000011000000110100";
        ram[234] = "0b0111010101110101100110110110100001001110010111000011110011";
        ram[235] = "0b0111010111101011010010111101001000011100110111101000100000";
        ram[236] = "0b0111011001100001011100100010011101000001000001101000110001";
        ram[237] = "0b0111011011011000000011101101110111100001001100110100011000";
        ram[238] = "0b0111011101001111001000100110110010011010001001010011011111";
        ram[239] = "0b0111011111000110101011010100101001111111011101010000011100";
        ram[240] = "0b0111100000111110101011111110111100011100000010101000111100";
        ram[241] = "0b0111100010110111001010101101001001110010100101000110110100";
        ram[242] = "0b0111100100110000000111100110110011111110000000000000000101";
        ram[243] = "0b0111100110101001100010110011011110110001111100011110101111";
        ram[244] = "0b0111101000100011011100011010101111111011001111101111111011";
        ram[245] = "0b0111101010011101110100100100001111000000011001011010110000";
        ram[246] = "0b0111101100011000101011010111100101100010000001111110101111";
        ram[247] = "0b0111101110010100000000111100011110111011011001011001110001";
        ram[248] = "0b0111110000001111110101011010101000100010110101110101111001";
        ram[249] = "0b0111110010001100001000111001110001101010010010011110101001";
        ram[250] = "0b0111110100001000111011100001101011011111101110011110010001";
        ram[251] = "0b0111110110000110001101011010001001001101101100000010011101";
        ram[252] = "0b0111111000000011111110101010111111111011101111101001001001";
        ram[253] = "0b0111111010000010001111011100000110101110111111010100111000";
        ram[254] = "0b0111111100000000111111110101010110101010100010001001001111";
        ram[255] = "0b0111111110000000001111111110101010101111111111101110111100";


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


SC_MODULE(channel_gen_pow_generic_double_s_pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_58bkb) {


static const unsigned DataWidth = 58;
static const unsigned AddressRange = 256;
static const unsigned AddressWidth = 8;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


channel_gen_pow_generic_double_s_pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_58bkb_ram* meminst;


SC_CTOR(channel_gen_pow_generic_double_s_pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_58bkb) {
meminst = new channel_gen_pow_generic_double_s_pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_58bkb_ram("channel_gen_pow_generic_double_s_pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_58bkb_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~channel_gen_pow_generic_double_s_pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_58bkb() {
    delete meminst;
}


};//endmodule
#endif
