## 。Introduction


## 。Folder Structure


## 。Build Setup
All the source codes could be found under the folder `OFDM_HLS_Implementation/direct_connection/vitis_hls_project/src/`

CSIM, CSYNTH and COSIM can directly implement by the command `make run CSIM=1 CSYNTH=1 COSIM=1` under the folder `OFDM_HLS_Implementation/direct_connection/vitis_hls_project/`



then the project would be built under the folder `OFDM_HLS_Implementation/direct_connection/vitis_hls_project/prj_impulse_test.prj`


There exists 2 modes

one with error correction code and one without. the setting could be adjusted in `OFDM_HLS_Implementation/direct_connection/run_hls.tcl`

`# === without ECC ===
add_files "src/top_module.cpp"
add_files "src/top_module.h"
add_files -tb "src/main.cpp" -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas" 

# === with ECC ===
add_files "src/top_module_ECC.cpp"
add_files "src/top_module_ECC.h"
add_files -tb "src/main_ECC.cpp" -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"`
