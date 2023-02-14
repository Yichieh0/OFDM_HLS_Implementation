set SynModuleInfo {
  {SRCNAME equalizer_pilot_removal_Pipeline_VITIS_LOOP_47_1 MODELNAME equalizer_pilot_removal_Pipeline_VITIS_LOOP_47_1 RTLNAME equalizer_pilot_removal_equalizer_pilot_removal_Pipeline_VITIS_LOOP_47_1
    SUBMODULES {
      {MODELNAME equalizer_pilot_removal_flow_control_loop_pipe_sequential_init RTLNAME equalizer_pilot_removal_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME equalizer_pilot_removal_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3 MODELNAME equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3 RTLNAME equalizer_pilot_removal_equalizer_pilot_removal_Pipeline_VITIS_LOOP_75_2_VITIS_LOOP_76_3
    SUBMODULES {
      {MODELNAME equalizer_pilot_removal_srem_32ns_32ns_32_36_1 RTLNAME equalizer_pilot_removal_srem_32ns_32ns_32_36_1 BINDTYPE op TYPE srem IMPL auto LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME equalizer_pilot_removal_sdiv_37ns_22s_22_41_1 RTLNAME equalizer_pilot_removal_sdiv_37ns_22s_22_41_1 BINDTYPE op TYPE sdiv IMPL auto LATENCY 40 ALLOW_PRAGMA 1}
      {MODELNAME equalizer_pilot_removal_sdiv_32ns_32ns_7_36_1 RTLNAME equalizer_pilot_removal_sdiv_32ns_32ns_7_36_1 BINDTYPE op TYPE sdiv IMPL auto LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME equalizer_pilot_removal_mul_23s_22s_37_1_1 RTLNAME equalizer_pilot_removal_mul_23s_22s_37_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME equalizer_pilot_removal_mul_22s_22s_37_1_1 RTLNAME equalizer_pilot_removal_mul_22s_22s_37_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME equalizer_pilot_removal_mul_22s_22s_44_1_1 RTLNAME equalizer_pilot_removal_mul_22s_22s_44_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME equalizer_pilot_removal_mul_45s_18ns_61_1_1 RTLNAME equalizer_pilot_removal_mul_45s_18ns_61_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME equalizer_pilot_removal_sdiv_91ns_45s_91_95_1 RTLNAME equalizer_pilot_removal_sdiv_91ns_45s_91_95_1 BINDTYPE op TYPE sdiv IMPL auto LATENCY 94 ALLOW_PRAGMA 1}
      {MODELNAME equalizer_pilot_removal_mul_44s_18ns_61_1_1 RTLNAME equalizer_pilot_removal_mul_44s_18ns_61_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME equalizer_pilot_removal MODELNAME equalizer_pilot_removal RTLNAME equalizer_pilot_removal IS_TOP 1
    SUBMODULES {
      {MODELNAME equalizer_pilot_removal_sdiv_9ns_32ns_8_13_seq_1 RTLNAME equalizer_pilot_removal_sdiv_9ns_32ns_8_13_seq_1 BINDTYPE op TYPE sdiv IMPL auto_seq LATENCY 12 ALLOW_PRAGMA 1}
      {MODELNAME equalizer_pilot_removal_mul_32s_32s_32_1_1 RTLNAME equalizer_pilot_removal_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME equalizer_pilot_removal_sdiv_32ns_9s_32_36_seq_1 RTLNAME equalizer_pilot_removal_sdiv_32ns_9s_32_36_seq_1 BINDTYPE op TYPE sdiv IMPL auto_seq LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME equalizer_pilot_removal_mul_32ns_32ns_64_1_1 RTLNAME equalizer_pilot_removal_mul_32ns_32ns_64_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME equalizer_pilot_removal_data_V_0 RTLNAME equalizer_pilot_removal_data_V_0 BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME equalizer_pilot_removal_regslice_both RTLNAME equalizer_pilot_removal_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME equalizer_pilot_removal_regslice_both_U}
    }
  }
}
