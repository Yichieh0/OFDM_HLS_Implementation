set SynModuleInfo {
  {SRCNAME symbol_to_pixl_Pipeline_VITIS_LOOP_27_1 MODELNAME symbol_to_pixl_Pipeline_VITIS_LOOP_27_1 RTLNAME symbol_to_pixl_symbol_to_pixl_Pipeline_VITIS_LOOP_27_1
    SUBMODULES {
      {MODELNAME symbol_to_pixl_flow_control_loop_pipe_sequential_init RTLNAME symbol_to_pixl_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME symbol_to_pixl_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME symbol_to_pixl_Pipeline_VITIS_LOOP_53_2 MODELNAME symbol_to_pixl_Pipeline_VITIS_LOOP_53_2 RTLNAME symbol_to_pixl_symbol_to_pixl_Pipeline_VITIS_LOOP_53_2}
  {SRCNAME symbol_to_pixl MODELNAME symbol_to_pixl RTLNAME symbol_to_pixl IS_TOP 1
    SUBMODULES {
      {MODELNAME symbol_to_pixl_mul_32s_32s_32_1_1 RTLNAME symbol_to_pixl_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME symbol_to_pixl_regslice_both RTLNAME symbol_to_pixl_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME symbol_to_pixl_regslice_both_U}
    }
  }
}
