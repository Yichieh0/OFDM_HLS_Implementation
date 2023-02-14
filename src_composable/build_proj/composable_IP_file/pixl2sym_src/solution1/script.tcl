############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project pixl2sym_src
set_top pixl_to_symbol
add_files ../pixl2sym_src/symbol_to_pixl.h
add_files ../pixl2sym_src/symbol_to_pixl.cpp
add_files ../pixl2sym_src/pixl_to_symbol.h
add_files ../pixl2sym_src/pixl_to_symbol.cpp
add_files ../pixl2sym_src/data_path.hpp
add_files -tb ../pixl2sym_src/main.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xck26-sfvc784-2LV-c}
create_clock -period 20 -name default
config_export -format ip_catalog -rtl verilog -version 2.0.1
source "./pixl2sym_src/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -version "2.0.1"
