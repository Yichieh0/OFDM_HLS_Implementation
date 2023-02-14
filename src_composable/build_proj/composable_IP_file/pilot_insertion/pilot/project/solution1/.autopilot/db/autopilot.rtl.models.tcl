set SynModuleInfo {
  {SRCNAME pilot_insertion_Pipeline_VITIS_LOOP_34_1 MODELNAME pilot_insertion_Pipeline_VITIS_LOOP_34_1 RTLNAME pilot_insertion_pilot_insertion_Pipeline_VITIS_LOOP_34_1
    SUBMODULES {
      {MODELNAME pilot_insertion_flow_control_loop_pipe_sequential_init RTLNAME pilot_insertion_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME pilot_insertion_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME pilot_insertion_Pipeline_VITIS_LOOP_63_2_VITIS_LOOP_64_3 MODELNAME pilot_insertion_Pipeline_VITIS_LOOP_63_2_VITIS_LOOP_64_3 RTLNAME pilot_insertion_pilot_insertion_Pipeline_VITIS_LOOP_63_2_VITIS_LOOP_64_3
    SUBMODULES {
      {MODELNAME pilot_insertion_srem_8ns_32ns_8_12_1 RTLNAME pilot_insertion_srem_8ns_32ns_8_12_1 BINDTYPE op TYPE srem IMPL auto LATENCY 11 ALLOW_PRAGMA 1}
      {MODELNAME pilot_insertion_mul_37s_39ns_75_1_1 RTLNAME pilot_insertion_mul_37s_39ns_75_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME pilot_insertion MODELNAME pilot_insertion RTLNAME pilot_insertion IS_TOP 1
    SUBMODULES {
      {MODELNAME pilot_insertion_sdiv_9ns_32ns_8_13_seq_1 RTLNAME pilot_insertion_sdiv_9ns_32ns_8_13_seq_1 BINDTYPE op TYPE sdiv IMPL auto_seq LATENCY 12 ALLOW_PRAGMA 1}
      {MODELNAME pilot_insertion_mul_32s_32s_32_1_1 RTLNAME pilot_insertion_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME pilot_insertion_sdiv_32ns_9s_32_36_seq_1 RTLNAME pilot_insertion_sdiv_32ns_9s_32_36_seq_1 BINDTYPE op TYPE sdiv IMPL auto_seq LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME pilot_insertion_regslice_both RTLNAME pilot_insertion_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME pilot_insertion_regslice_both_U}
    }
  }
}
