// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module fft_top1_fftStageKernelS2S_128_2_1_0_0_7_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_bkb (
address0, ce0, q0, address1, ce1, q1, reset,clk);

parameter DataWidth = 14;
parameter AddressWidth = 5;
parameter AddressRange = 32;

input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input[AddressWidth-1:0] address1;
input ce1;
output reg[DataWidth-1:0] q1;
input reset;
input clk;

reg [DataWidth-1:0] ram[0:AddressRange-1];

initial begin
    $readmemh("./fft_top1_fftStageKernelS2S_128_2_1_0_0_7_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_bkb.dat", ram);
end



always @(posedge clk)  
begin 
    if (ce0) 
    begin
        q0 <= ram[address0];
    end
end



always @(posedge clk)  
begin 
    if (ce1) 
    begin
        q1 <= ram[address1];
    end
end



endmodule

