############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project sym2pixl_src
set_top symbol_to_pixl
add_files sym2pixl_src/src/data_path.hpp
add_files sym2pixl_src/src/pixl_to_symbol.cpp
add_files sym2pixl_src/src/pixl_to_symbol.h
add_files sym2pixl_src/src/symbol_to_pixl.cpp
add_files sym2pixl_src/src/symbol_to_pixl.h
add_files -tb sym2pixl_src/src/main.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xck26-sfvc784-2LV-c}
create_clock -period 20 -name default
config_export -format ip_catalog -rtl verilog -version 2.0.1
source "./sym2pixl_src/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -version "2.0.1"
