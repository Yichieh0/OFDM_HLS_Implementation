## 。Introduction


## 。Folder Structure


## 。Build Setup
In this section, the whole building flow would be shown.

### 。Vitis_hls
1. Resources Downloading  
Download the vitis_hls project `direct_connection/vitis_hls_project/`.  
All the source code files could be found under the folder `direct_connection/vitis_hls_project/src/`.  

2. Project Setting Adjustment  
There exists 2 modes for testing, one with error correction code and one without. 
Both modes have their own top_module.cpp, top_module.h and main.cpp.  
The setting could be adjusted in `direct_connection/vitis_hls_project/run_hls.tcl`.  
Just leave the one you need, and the right files would be added automatically after the command implemented.  

> #) === without ECC ===  
>add_files "src/top_module.cpp"  
>add_files "src/top_module.h"  
>add_files -tb "src/main.cpp" -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas" 

> #) === with ECC ===  
>add_files "src/top_module_ECC.cpp"  
>add_files "src/top_module_ECC.h"  
>add_files -tb "src/main_ECC.cpp" -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas" 



3. Simulations and Synthesis  
The steps CSIM, CSYNTH and COSIM can directly implement by the command `make run CSIM=1 CSYNTH=1 COSIM=1` under the folder `direct_connection/vitis_hls_project/`.  
After that the project `prj_impulse_test.prj` would be built under the folder `direct_connection/vitis_hls_project/`.

4. Results


5. Export IP
Open the project by vitis_hls GUI


 


### 。Vivado
