set SynModuleInfo {
  {SRCNAME pixl_to_symbol_Pipeline_VITIS_LOOP_22_1 MODELNAME pixl_to_symbol_Pipeline_VITIS_LOOP_22_1 RTLNAME pixl_to_symbol_pixl_to_symbol_Pipeline_VITIS_LOOP_22_1
    SUBMODULES {
      {MODELNAME pixl_to_symbol_flow_control_loop_pipe_sequential_init RTLNAME pixl_to_symbol_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME pixl_to_symbol_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME pixl_to_symbol_Pipeline_VITIS_LOOP_48_2 MODELNAME pixl_to_symbol_Pipeline_VITIS_LOOP_48_2 RTLNAME pixl_to_symbol_pixl_to_symbol_Pipeline_VITIS_LOOP_48_2
    SUBMODULES {
      {MODELNAME pixl_to_symbol_udiv_64ns_64s_60_68_1 RTLNAME pixl_to_symbol_udiv_64ns_64s_60_68_1 BINDTYPE op TYPE udiv IMPL auto LATENCY 67 ALLOW_PRAGMA 1}
      {MODELNAME pixl_to_symbol_urem_64ns_64s_4_68_1 RTLNAME pixl_to_symbol_urem_64ns_64s_4_68_1 BINDTYPE op TYPE urem IMPL auto LATENCY 67 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME pixl_to_symbol MODELNAME pixl_to_symbol RTLNAME pixl_to_symbol IS_TOP 1
    SUBMODULES {
      {MODELNAME pixl_to_symbol_regslice_both RTLNAME pixl_to_symbol_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME pixl_to_symbol_regslice_both_U}
    }
  }
}
