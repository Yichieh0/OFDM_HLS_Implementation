############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project ecc_decoder_src
set_top decoder
add_files ecc_decoder_src/src/encoder.h
add_files ecc_decoder_src/src/encoder.cpp
add_files ecc_decoder_src/src/decoder.h
add_files ecc_decoder_src/src/decoder.cpp
add_files ecc_decoder_src/src/data_path.hpp
add_files -tb ecc_decoder_src/src/main.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xck26-sfvc784-2LV-c}
create_clock -period 20 -name default
config_export -format ip_catalog -rtl verilog -version 2.0.1
source "./ecc_decoder_src/solution1/directives.tcl"
csim_design -quiet
