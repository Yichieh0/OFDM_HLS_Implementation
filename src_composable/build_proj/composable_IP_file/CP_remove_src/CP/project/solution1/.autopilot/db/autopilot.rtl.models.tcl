set SynModuleInfo {
  {SRCNAME CP_removal_Pipeline_VITIS_LOOP_28_1 MODELNAME CP_removal_Pipeline_VITIS_LOOP_28_1 RTLNAME CP_removal_CP_removal_Pipeline_VITIS_LOOP_28_1
    SUBMODULES {
      {MODELNAME CP_removal_flow_control_loop_pipe_sequential_init RTLNAME CP_removal_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME CP_removal_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME CP_removal_Pipeline_VITIS_LOOP_53_2_VITIS_LOOP_54_3 MODELNAME CP_removal_Pipeline_VITIS_LOOP_53_2_VITIS_LOOP_54_3 RTLNAME CP_removal_CP_removal_Pipeline_VITIS_LOOP_53_2_VITIS_LOOP_54_3}
  {SRCNAME CP_removal MODELNAME CP_removal RTLNAME CP_removal IS_TOP 1
    SUBMODULES {
      {MODELNAME CP_removal_sdiv_9ns_32ns_8_13_seq_1 RTLNAME CP_removal_sdiv_9ns_32ns_8_13_seq_1 BINDTYPE op TYPE sdiv IMPL auto_seq LATENCY 12 ALLOW_PRAGMA 1}
      {MODELNAME CP_removal_mul_32s_32s_32_1_1 RTLNAME CP_removal_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME CP_removal_sdiv_32ns_9s_32_36_seq_1 RTLNAME CP_removal_sdiv_32ns_9s_32_36_seq_1 BINDTYPE op TYPE sdiv IMPL auto_seq LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME CP_removal_mul_32ns_32ns_64_1_1 RTLNAME CP_removal_mul_32ns_32ns_64_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME CP_removal_regslice_both RTLNAME CP_removal_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME CP_removal_regslice_both_U}
    }
  }
}
