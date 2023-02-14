set SynModuleInfo {
  {SRCNAME decoder_Pipeline_VITIS_LOOP_27_1 MODELNAME decoder_Pipeline_VITIS_LOOP_27_1 RTLNAME decoder_decoder_Pipeline_VITIS_LOOP_27_1
    SUBMODULES {
      {MODELNAME decoder_flow_control_loop_pipe_sequential_init RTLNAME decoder_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME decoder_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME decoder_bit_Block_.split148_proc3_Pipeline_VITIS_LOOP_198_3 MODELNAME decoder_bit_Block_split148_proc3_Pipeline_VITIS_LOOP_198_3 RTLNAME decoder_decoder_bit_Block_split148_proc3_Pipeline_VITIS_LOOP_198_3}
  {SRCNAME decoder_bit_Block_.split148_proc3_Pipeline_VITIS_LOOP_221_5 MODELNAME decoder_bit_Block_split148_proc3_Pipeline_VITIS_LOOP_221_5 RTLNAME decoder_decoder_bit_Block_split148_proc3_Pipeline_VITIS_LOOP_221_5}
  {SRCNAME decoder_bit_Block_.split148_proc3_Pipeline_VITIS_LOOP_216_4 MODELNAME decoder_bit_Block_split148_proc3_Pipeline_VITIS_LOOP_216_4 RTLNAME decoder_decoder_bit_Block_split148_proc3_Pipeline_VITIS_LOOP_216_4}
  {SRCNAME decoder_bit_Block_.split148_proc3 MODELNAME decoder_bit_Block_split148_proc3 RTLNAME decoder_decoder_bit_Block_split148_proc3
    SUBMODULES {
      {MODELNAME decoder_decoder_bit_Block_split148_proc3_trellis_table_0_0 RTLNAME decoder_decoder_bit_Block_split148_proc3_trellis_table_0_0 BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME decoder_decoder_bit_Block_split148_proc3_trellis_metric RTLNAME decoder_decoder_bit_Block_split148_proc3_trellis_metric BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME decoder_decoder_bit_Block_split148_proc3_temp_trellis_metric RTLNAME decoder_decoder_bit_Block_split148_proc3_temp_trellis_metric BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME decoder_bit_Loop_VITIS_LOOP_227_6_proc MODELNAME decoder_bit_Loop_VITIS_LOOP_227_6_proc RTLNAME decoder_decoder_bit_Loop_VITIS_LOOP_227_6_proc
    SUBMODULES {
      {MODELNAME decoder_flow_control_loop_pipe RTLNAME decoder_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME decoder_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME decoder_bit_Block_.split223_proc MODELNAME decoder_bit_Block_split223_proc RTLNAME decoder_decoder_bit_Block_split223_proc}
  {SRCNAME decoder_bit MODELNAME decoder_bit RTLNAME decoder_decoder_bit
    SUBMODULES {
      {MODELNAME decoder_decoder_bit_temp_trellis_survivor_V_memcore RTLNAME decoder_decoder_bit_temp_trellis_survivor_V_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME decoder_decoder_bit_temp_trellis_survivor_V RTLNAME decoder_decoder_bit_temp_trellis_survivor_V BINDTYPE storage TYPE ram IMPL auto LATENCY 2}
      {MODELNAME decoder_fifo_w32_d2_S RTLNAME decoder_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME decoder_fifo_w1_d2_S RTLNAME decoder_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
  {SRCNAME decoder MODELNAME decoder RTLNAME decoder IS_TOP 1
    SUBMODULES {
      {MODELNAME decoder_fifo_w1_d2_S_x RTLNAME decoder_fifo_w1_d2_S_x BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME decoder_regslice_both RTLNAME decoder_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME decoder_regslice_both_U}
    }
  }
}
