set SynModuleInfo {
  {SRCNAME encoder_Pipeline_VITIS_LOOP_22_1 MODELNAME encoder_Pipeline_VITIS_LOOP_22_1 RTLNAME encoder_encoder_Pipeline_VITIS_LOOP_22_1
    SUBMODULES {
      {MODELNAME encoder_flow_control_loop_pipe_sequential_init RTLNAME encoder_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME encoder_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME encoder_Pipeline_VITIS_LOOP_50_2 MODELNAME encoder_Pipeline_VITIS_LOOP_50_2 RTLNAME encoder_encoder_Pipeline_VITIS_LOOP_50_2}
  {SRCNAME encoder MODELNAME encoder RTLNAME encoder IS_TOP 1
    SUBMODULES {
      {MODELNAME encoder_regslice_both RTLNAME encoder_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME encoder_regslice_both_U}
    }
  }
}
