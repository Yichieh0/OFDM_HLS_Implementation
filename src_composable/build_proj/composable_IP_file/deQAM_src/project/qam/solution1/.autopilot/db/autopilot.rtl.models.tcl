set SynModuleInfo {
  {SRCNAME deQAM_Pipeline_VITIS_LOOP_33_1 MODELNAME deQAM_Pipeline_VITIS_LOOP_33_1 RTLNAME deQAM_deQAM_Pipeline_VITIS_LOOP_33_1
    SUBMODULES {
      {MODELNAME deQAM_flow_control_loop_pipe_sequential_init RTLNAME deQAM_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME deQAM_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME deQAM_Pipeline_VITIS_LOOP_77_3 MODELNAME deQAM_Pipeline_VITIS_LOOP_77_3 RTLNAME deQAM_deQAM_Pipeline_VITIS_LOOP_77_3
    SUBMODULES {
      {MODELNAME deQAM_dcmp_64ns_64ns_1_1_no_dsp_1 RTLNAME deQAM_dcmp_64ns_64ns_1_1_no_dsp_1 BINDTYPE op TYPE dcmp IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME deQAM_uitodp_32ns_64_2_no_dsp_1 RTLNAME deQAM_uitodp_32ns_64_2_no_dsp_1 BINDTYPE op TYPE uitodp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME deQAM_Pipeline_VITIS_LOOP_95_4 MODELNAME deQAM_Pipeline_VITIS_LOOP_95_4 RTLNAME deQAM_deQAM_Pipeline_VITIS_LOOP_95_4}
  {SRCNAME deQAM_Pipeline_VITIS_LOOP_129_6 MODELNAME deQAM_Pipeline_VITIS_LOOP_129_6 RTLNAME deQAM_deQAM_Pipeline_VITIS_LOOP_129_6}
  {SRCNAME deQAM_Pipeline_VITIS_LOOP_105_5 MODELNAME deQAM_Pipeline_VITIS_LOOP_105_5 RTLNAME deQAM_deQAM_Pipeline_VITIS_LOOP_105_5}
  {SRCNAME deQAM MODELNAME deQAM RTLNAME deQAM IS_TOP 1
    SUBMODULES {
      {MODELNAME deQAM_sitodp_32ns_64_2_no_dsp_1 RTLNAME deQAM_sitodp_32ns_64_2_no_dsp_1 BINDTYPE op TYPE sitodp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME deQAM_dsqrt_64ns_64ns_64_10_no_dsp_1 RTLNAME deQAM_dsqrt_64ns_64ns_64_10_no_dsp_1 BINDTYPE op TYPE dsqrt IMPL fabric LATENCY 9 ALLOW_PRAGMA 1}
      {MODELNAME deQAM_mul_32s_32s_32_1_1 RTLNAME deQAM_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME deQAM_regslice_both RTLNAME deQAM_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME deQAM_regslice_both_U}
    }
  }
}
