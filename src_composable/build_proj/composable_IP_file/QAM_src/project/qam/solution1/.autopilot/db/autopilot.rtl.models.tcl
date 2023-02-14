set SynModuleInfo {
  {SRCNAME QAM_Pipeline_VITIS_LOOP_44_1 MODELNAME QAM_Pipeline_VITIS_LOOP_44_1 RTLNAME QAM_QAM_Pipeline_VITIS_LOOP_44_1
    SUBMODULES {
      {MODELNAME QAM_flow_control_loop_pipe_sequential_init RTLNAME QAM_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME QAM_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME QAM_Pipeline_VITIS_LOOP_71_2 MODELNAME QAM_Pipeline_VITIS_LOOP_71_2 RTLNAME QAM_QAM_Pipeline_VITIS_LOOP_71_2}
  {SRCNAME QAM MODELNAME QAM RTLNAME QAM IS_TOP 1
    SUBMODULES {
      {MODELNAME QAM_mul_32s_32s_32_1_1 RTLNAME QAM_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME QAM_regslice_both RTLNAME QAM_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME QAM_regslice_both_U}
    }
  }
}
