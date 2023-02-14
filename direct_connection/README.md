## 。Introduction
This project is about the implementation of OFDM with multipath channel by HLS through direct connection.  
#### - System Architecture
**1. The Basic Block Diagram of HLS OFDM System**
![image](https://user-images.githubusercontent.com/102524142/218687462-f4d4fbfd-b3d1-400e-84f1-d97df15432d2.png)
**2. The Block Diagram with ECC of HLS OFDM System**
![image](https://user-images.githubusercontent.com/102524142/218687408-c8a98b2e-8c77-40b5-a763-649ebd71a188.png)

## 。Folder Structure
In this section, the function of all folders in this project would be explained.
#### - vitis_hls_project
In this folder, all source codes could be found in the folder `direct_connection/vitis_hls_project/src/`.
#### - vivado_project
This folder contains a vivado project.  
The IP in the block design can be replaced by your design.
#### - jupyter_notebooks_project
There are host codes and example files of .hwh and .tcl files.  
The examples files mentioned above could directly process by the host code, or you could replaced by your own design.
#### - impl_result
The result reports of vitis_hls_project would be included in this folder.

## 。Build Setup
In this section, the whole building flow would be shown.  
Three different projects under different tools should be built up during the process.  
#### - Vitis_hls
1. **Resources Downloading**  
Download the vitis_hls project `direct_connection/vitis_hls_project/`.  
All the source code files could be found in the folder `direct_connection/vitis_hls_project/src/`.  
2. **Project Setting Adjustment**  
There exists 2 modes for testing, one with error correction code and one without.  
Both modes have their own top_module.cpp, top_module.h and main.cpp.  
The setting could be modified in `direct_connection/vitis_hls_project/run_hls.tcl`.  
Just leave the part you need, and the corresponding files would be added automatically after the command implemented.  
> **#=== without ECC ===**  
>add_files "src/top_module.cpp"  
>add_files "src/top_module.h"  
>add_files -tb "src/main.cpp" -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"  
> **#=== with ECC ===**  
>add_files "src/top_module_ECC.cpp"  
>add_files "src/top_module_ECC.h"  
>add_files -tb "src/main_ECC.cpp" -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"  
3. **Simulations and Synthesis**  
The steps CSIM, CSYNTH and COSIM can directly implement by the command `make run CSIM=1 CSYNTH=1 COSIM=1` under the folder `direct_connection/vitis_hls_project/`.  
After that the project `prj_impulse_test.prj` would be built under the folder `direct_connection/vitis_hls_project/`.  
>In CSIM, the correction of your C or C++ code could be checked.  
>In CSYNTH, the total resources of your designed and some violation which could be optimized could be checked.  
>In COSIM, the correction of the RTL design built up by the synthesis process could be checked.  
4. **Results**  
After the process of CSIM and COSIM done, the symbol error rate and the bit error rate could be checked.  
If the results of CSIM and COSIM are the same, then your design are ready to be exported.  
![image](https://user-images.githubusercontent.com/102524142/218661346-5eee9d67-79e7-410b-8258-9509217fa900.png)  
5. **Export IP**  
Open the project by vitis_hls GUI, and clicked the `Export IP` button.   
![image](https://user-images.githubusercontent.com/102524142/218661965-c5f6f4fe-e5dc-4548-b103-72fa21f4a3bb.png)  
#### - Vivado
1. **Resources Downloading**  
Download the vivado project `direct_connection/vivado_project/`.  
2. **Open the Vivado Project**  
The project could be found by following the path `direct_connection/vivado_project/vivado_project.xpr`.

3. **Import IP to the Project**  
The IP file would be under the folder `direct_connection/vitis_hls_project/prj_impulse_test.prj/solution1`  
![image](https://user-images.githubusercontent.com/102524142/218662980-235e3b82-19a4-4969-bb91-6f75c2f293d4.png)

4. **Open Block Design**  
Open the block design and replace the top_module_0 IP with your own IP.  
![image](https://user-images.githubusercontent.com/102524142/218667122-d48f67ce-9d16-4c07-b966-7bfb0099d313.png)

![image](https://user-images.githubusercontent.com/102524142/218648419-04583858-bb18-4a3c-b0c9-cc1dd90be8a9.png)

5. **Create HDL Wrapper**  
![image](https://user-images.githubusercontent.com/102524142/218645130-f3a166d4-06a2-4ff2-90c0-b41584ec9acd.png)

6. **Generate Bitstream**  
Clicked the generate bistream button in the toolbar.  
![image](https://user-images.githubusercontent.com/102524142/218656985-ad70af63-fe23-430d-a271-cf508d7b8a1c.png)  
After generating bitstream, you would get `direct_connection/vivado_project/vivado_project.gen/sources_1/bd/design_1/hw_handoff/design_1.hwh` and `direct_connection/vivado_project/vivado_project.runs/impl_1/design_1_wrapper.tcl`.

#### - Jupyter Notebooks
1. **Resources Downloading**  
Download the host code of jupyter notebooks in `direct_connection/vivado_project/`. 
2. **Upload Necessary Files**  
Upload the .bit and .hwh files and rename those files should into the same name.
Upload an arbitrary picture.
3. **Run the Process**  
after checking all the parameters
then clicked the start button at the toolbox
The process will automatically started.

## 。Run Test
In this section, some example results would be shown.  
#### - The original figure
![image](https://user-images.githubusercontent.com/102524142/218643587-45041ab9-763b-453e-b0fe-ca159eef95aa.png)
#### - The figuer after transmitted and decoded by the OFDM system, for TAP_NUM=1 SNR=10dB  
![image](https://user-images.githubusercontent.com/102524142/218643624-4938cba4-970a-45c3-b3a1-f99af5b0e384.png)
#### - The figure after transmitted and decoded by the OFDM system with error correction code, for TAP_NUM=1 SNR=10dB  
![image](https://user-images.githubusercontent.com/102524142/218643748-2ff0995e-0b8d-4a35-aeee-0a4ba823acf7.png)
#### - SNR(dB) v.s. BER, for TAP_NUM=1  
**#without ecc**  
SNR = [0, 5, 10, 15, 20]  
BER = [0.34173791458072586,0.2110691750104297,0.09312565185648728,0.015298615456821028,0.0001600307676261994]  
**#ecc**  
SNR = [0, 5, 10, 15, 20]  
BER = [0.49950576241134755,0.4793715451606174,0.07988964069670422,0.000023336462244472255,0]  
![image](https://user-images.githubusercontent.com/102524142/218641341-053a5bb5-85c0-4cbb-a7a8-68ae2cd8e687.png)
