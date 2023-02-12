############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project project
set_top top_module
add_files ../CP_src/CP_insertion.cpp
add_files ../CP_src/CP_insertion.h
add_files ../CP_src/CP_removal.cpp
add_files ../CP_src/CP_removal.h
add_files ../QAM_src/QAM.cpp
add_files ../QAM_src/QAM.hpp
add_files ../channel_src/channel_code/channel_gen.cpp
add_files ../channel_src/channel_code/channel_gen.h
add_files ../data_path.hpp
add_files ../QAM_src/deQAM.cpp
add_files ../QAM_src/deQAM.hpp
add_files ../ecc_src/decoder.cpp
add_files ../ecc_src/decoder.h
add_files ../ecc_src/encoder.cpp
add_files ../ecc_src/encoder.h
add_files ../pilot_src/equalizer_pilot_removal.cpp
add_files ../pilot_src/equalizer_pilot_removal.h
add_files ../IFFT_src/fft.cpp
add_files ../IFFT_src/fft.hpp
add_files ../master_mem_src/master2stream.cpp
add_files ../master_mem_src/master2stream.h
add_files ../pilot_src/pilot_insertion.cpp
add_files ../pilot_src/pilot_insertion.h
add_files pixl_to_symbol.cpp
add_files pixl_to_symbol.h
add_files ../channel_src/channel_code/rand.cpp
add_files ../master_mem_src/stream2master.cpp
add_files ../master_mem_src/stream2master.h
add_files symbol_to_pixl.cpp
add_files symbol_to_pixl.h
add_files ../top_module.cpp
add_files ../top_module.h
add_files -tb ../main.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xck26-sfvc784-2LV-c}
create_clock -period 20 -name default
config_export -format ip_catalog -rtl verilog -version 2.0.1
source "./project/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -version "2.0.1"
