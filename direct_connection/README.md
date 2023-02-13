## 。Introduction


## 。Folder Structure
In this section, the folders in this project would be discribed.

## 。Build Setup
In this section, the whole building flow would be shown.

### - Vitis_hls
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
>In CSIM, the correction of your C or C++ code could be checked.  
>In CSYNTH, the total resources of your designed and some violation which could be optimized could be checked.  
>In COSIM, the correction of the RTL design built up by the synthesis process could be checked.  

4. Results
After the process of CSIM and COSIM done, the symbol error rate and the bit error rate could be checked.  
If the results of CSIM and COSIM are the same, then your design are ready to be reported.

5. Export IP
Open the project by vitis_hls GUI, and clicked the `Export IP` button.   

### - Vivado


### - Jupyter Notebooks
upload the .bit and .hwh files
the two files should have the same name.
after checking all the parameters
then clicked the start button at the toolbox
The process will automatically started.
