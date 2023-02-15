The block diagram of the system can be shown as follow
![image](https://user-images.githubusercontent.com/102524142/215822546-b3cc1d43-0e37-4f88-8b64-234bfb326c5b.png)

Every IP should be exported individually.
More detailed information could be found in the design document and workbook on the home page.

## 。Folder Structure
In this section, the function of all folders in this project would be explained.
#### - build_proj
In this folder, all source codes and vitis project IP could be found in the folder `src_composable/build_proj/composable_IP_file/`.  
In this folder, vivado script tcl file is in the `src_composable/build_proj/commun_script_tcl`.
#### - commun_paths.json
This file is used when running host.  
#### - composable_pipeline.ipynb
This file is used when running host. This file is host code.  

## 。Build Setup
In this section, vivado building flow would be shown.   

Download the project and `cd` to folder `src_composable/build_proj/`.  
Run `vivado -source commun_script.tcl` in console at current folder.  
Then the vivado project can be built successfully.

Be aware of the consistency of the vivado version and board. 
The version of vivado we are using is "2021.1",and use board "kv260".
![image](https://user-images.githubusercontent.com/102540321/218909422-b9c85355-c4ff-429c-96e6-6094b1cf5fb1.png)


