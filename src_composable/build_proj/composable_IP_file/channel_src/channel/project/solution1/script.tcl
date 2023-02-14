############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project project
set_top channel_gen
add_files ../channel_code/channel_gen.cpp
add_files ../channel_code/channel_gen.h
add_files ../channel_code/data_path.hpp
add_files ../channel_code/rand.cpp
add_files ../channel_code/xf_fintech_L1.hpp
add_files -tb ../channel_code/main.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xck26-sfvc784-2LV-c}
create_clock -period 20 -name default
config_export -format ip_catalog -rtl verilog -version 2.0.1
source "./project/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -version "2.0.1"
