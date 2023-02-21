#
# Copyright 2019-2020 Xilinx, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

source settings.tcl

set PROJ "prj_impulse_test.prj"
set SOLN "solution1"

if {![info exists CLKP]} {
  set CLKP 20
}

open_project -reset $PROJ

add_files "src/CP_src/CP_insertion.cpp"
add_files "src/CP_src/CP_insertion.h"
add_files "src/CP_src/CP_removal.cpp"
add_files "src/CP_src/CP_removal.h"
add_files "src/QAM_src/QAM.cpp"
add_files "src/QAM_src/QAM.hpp"
add_files "src/channel_src/channel_gen.cpp"
add_files "src/channel_src/rand.cpp"
add_files "src/channel_src/channel_gen.h"
add_files "src/data_path.hpp"
add_files "src/QAM_src/deQAM.cpp"
add_files "src/QAM_src/deQAM.hpp"
add_files "src/ecc_src/decoder.cpp"
add_files "src/ecc_src/decoder.h"
add_files "src/ecc_src/encoder.cpp"
add_files "src/ecc_src/encoder.h"
add_files "src/pilot_src/equalizer_pilot_removal.cpp"
add_files "src/pilot_src/equalizer_pilot_removal.h"
add_files "src/IFFT_src/fft.cpp"
add_files "src/IFFT_src/fft.hpp"
add_files "src/master_mem_src/master2stream.cpp"
add_files "src/master_mem_src/master2stream.h"
add_files "src/pilot_src/pilot_insertion.cpp"
add_files "src/pilot_src/pilot_insertion.h"
add_files "src/sym2pixl_src/pixl_to_symbol.cpp"
add_files "src/sym2pixl_src/pixl_to_symbol.h"
add_files "src/channel_src/channel_code/rand.cpp"
add_files "src/master_mem_src/stream2master.cpp"
add_files "src/master_mem_src/stream2master.h"
add_files "src/sym2pixl_src/symbol_to_pixl.cpp"
add_files "src/sym2pixl_src/symbol_to_pixl.h"

# === without ECC ===
#add_files "src/top_module.cpp"
#add_files "src/top_module.h"
#add_files -tb "src/main.cpp" -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas" 

# === with ECC ===
add_files "src/top_module_ECC.cpp"
add_files "src/top_module_ECC.h"
add_files -tb "src/main_ECC.cpp" -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas" 

set_top top_module

open_solution -reset $SOLN

set_part $XPART
create_clock -period $CLKP

if {$CSIM == 1} {
  csim_design
}

if {$CSYNTH == 1} {
  csynth_design
}

if {$COSIM == 1} {
  cosim_design -tool xsim  -rtl verilog -coverage -trace_level all
}

if {$EXPORT_IP == 1} {
  config_export -version 2.0.1 
  export_design -rtl verilog -format ip_catalog
}  

if {$VIVADO_SYN == 1} {
  export_design -flow syn -rtl verilog
}

if {$VIVADO_IMPL == 1} {
  export_design -flow impl -rtl verilog
}

exit