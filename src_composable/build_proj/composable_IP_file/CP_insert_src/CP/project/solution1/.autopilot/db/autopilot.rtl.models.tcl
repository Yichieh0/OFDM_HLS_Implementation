set SynModuleInfo {
  {SRCNAME CP_insertion_Pipeline_VITIS_LOOP_30_1 MODELNAME CP_insertion_Pipeline_VITIS_LOOP_30_1 RTLNAME CP_insertion_CP_insertion_Pipeline_VITIS_LOOP_30_1
    SUBMODULES {
      {MODELNAME CP_insertion_flow_control_loop_pipe_sequential_init RTLNAME CP_insertion_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME CP_insertion_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME CP_insertion_Pipeline_VITIS_LOOP_55_2_VITIS_LOOP_56_3 MODELNAME CP_insertion_Pipeline_VITIS_LOOP_55_2_VITIS_LOOP_56_3 RTLNAME CP_insertion_CP_insertion_Pipeline_VITIS_LOOP_55_2_VITIS_LOOP_56_3
    SUBMODULES {
      {MODELNAME CP_insertion_CP_insertion_Pipeline_VITIS_LOOP_55_2_VITIS_LOOP_56_3_in_r_V RTLNAME CP_insertion_CP_insertion_Pipeline_VITIS_LOOP_55_2_VITIS_LOOP_56_3_in_r_V BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME CP_insertion MODELNAME CP_insertion RTLNAME CP_insertion IS_TOP 1
    SUBMODULES {
      {MODELNAME CP_insertion_sdiv_9ns_32ns_8_13_seq_1 RTLNAME CP_insertion_sdiv_9ns_32ns_8_13_seq_1 BINDTYPE op TYPE sdiv IMPL auto_seq LATENCY 12 ALLOW_PRAGMA 1}
      {MODELNAME CP_insertion_mul_32s_32s_32_1_1 RTLNAME CP_insertion_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME CP_insertion_sdiv_32ns_9s_32_36_seq_1 RTLNAME CP_insertion_sdiv_32ns_9s_32_36_seq_1 BINDTYPE op TYPE sdiv IMPL auto_seq LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME CP_insertion_regslice_both RTLNAME CP_insertion_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME CP_insertion_regslice_both_U}
    }
  }
}
