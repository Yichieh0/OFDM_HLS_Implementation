create_project prj -part xck26-sfvc784-2LV-c -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "/mnt/HLSNAS/g110064539/composable_IP_file/deQAM_src/project/qam/solution1/syn/verilog/deQAM_dcmp_64ns_64ns_1_1_no_dsp_1_ip.tcl"
source "/mnt/HLSNAS/g110064539/composable_IP_file/deQAM_src/project/qam/solution1/syn/verilog/deQAM_uitodp_32ns_64_2_no_dsp_1_ip.tcl"
source "/mnt/HLSNAS/g110064539/composable_IP_file/deQAM_src/project/qam/solution1/syn/verilog/deQAM_sitodp_32ns_64_2_no_dsp_1_ip.tcl"
source "/mnt/HLSNAS/g110064539/composable_IP_file/deQAM_src/project/qam/solution1/syn/verilog/deQAM_dsqrt_64ns_64ns_64_10_no_dsp_1_ip.tcl"
