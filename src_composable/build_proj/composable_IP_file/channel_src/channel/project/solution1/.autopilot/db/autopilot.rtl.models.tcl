set SynModuleInfo {
  {SRCNAME channel_gen_Pipeline_VITIS_LOOP_60_1 MODELNAME channel_gen_Pipeline_VITIS_LOOP_60_1 RTLNAME channel_gen_channel_gen_Pipeline_VITIS_LOOP_60_1
    SUBMODULES {
      {MODELNAME channel_gen_flow_control_loop_pipe_sequential_init RTLNAME channel_gen_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME channel_gen_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME pow_generic<double> MODELNAME pow_generic_double_s RTLNAME channel_gen_pow_generic_double_s
    SUBMODULES {
      {MODELNAME channel_gen_mul_54s_69ns_122_1_1 RTLNAME channel_gen_mul_54s_69ns_122_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME channel_gen_mul_13s_71s_71_1_1 RTLNAME channel_gen_mul_13s_71s_71_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME channel_gen_mul_43ns_36ns_79_1_1 RTLNAME channel_gen_mul_43ns_36ns_79_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME channel_gen_mul_49ns_44ns_93_1_1 RTLNAME channel_gen_mul_49ns_44ns_93_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME channel_gen_mul_50ns_50ns_100_1_1 RTLNAME channel_gen_mul_50ns_50ns_100_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME channel_gen_mac_muladd_16s_15ns_19s_31_4_1 RTLNAME channel_gen_mac_muladd_16s_15ns_19s_31_4_1 BINDTYPE op TYPE add IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME channel_gen_pow_generic_double_s_pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_58bkb RTLNAME channel_gen_pow_generic_double_s_pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_58bkb BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME channel_gen_pow_generic_double_s_pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_59_0cud RTLNAME channel_gen_pow_generic_double_s_pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_59_0cud BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME channel_gen_pow_generic_double_s_pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_59_0dEe RTLNAME channel_gen_pow_generic_double_s_pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_59_0dEe BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME seedInitialization_Pipeline_SEED_INIT_LOOP MODELNAME seedInitialization_Pipeline_SEED_INIT_LOOP RTLNAME channel_gen_seedInitialization_Pipeline_SEED_INIT_LOOP
    SUBMODULES {
      {MODELNAME channel_gen_mul_32s_32ns_32_1_1 RTLNAME channel_gen_mul_32s_32ns_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME channel_gen_seedInitialization_Pipeline_SEED_INIT_LOOP_rngMT19937ICN_uniformRNG_mt_odd_1_V RTLNAME channel_gen_seedInitialization_Pipeline_SEED_INIT_LOOP_rngMT19937ICN_uniformRNG_mt_odd_1_V BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME seedInitialization MODELNAME seedInitialization RTLNAME channel_gen_seedInitialization}
  {SRCNAME rand MODELNAME rand RTLNAME channel_gen_rand
    SUBMODULES {
      {MODELNAME channel_gen_faddfsub_32ns_32ns_32_2_no_dsp_1 RTLNAME channel_gen_faddfsub_32ns_32ns_32_2_no_dsp_1 BINDTYPE op TYPE fsub IMPL fabric LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME channel_gen_fmul_32ns_32ns_32_2_full_dsp_1 RTLNAME channel_gen_fmul_32ns_32ns_32_2_full_dsp_1 BINDTYPE op TYPE fmul IMPL fulldsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME channel_gen_fmul_32ns_32ns_32_2_max_dsp_1 RTLNAME channel_gen_fmul_32ns_32ns_32_2_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME channel_gen_fdiv_32ns_32ns_32_6_no_dsp_1 RTLNAME channel_gen_fdiv_32ns_32ns_32_6_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 5 ALLOW_PRAGMA 1}
      {MODELNAME channel_gen_fpext_32ns_64_1_no_dsp_1 RTLNAME channel_gen_fpext_32ns_64_1_no_dsp_1 BINDTYPE op TYPE fpext IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME channel_gen_fcmp_32ns_32ns_1_1_no_dsp_1 RTLNAME channel_gen_fcmp_32ns_32ns_1_1_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME channel_gen_fsqrt_32ns_32ns_32_6_no_dsp_1 RTLNAME channel_gen_fsqrt_32ns_32ns_32_6_no_dsp_1 BINDTYPE op TYPE fsqrt IMPL fabric LATENCY 5 ALLOW_PRAGMA 1}
      {MODELNAME channel_gen_flog_32ns_32ns_32_5_full_dsp_1 RTLNAME channel_gen_flog_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE flog IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME channel_gen_rand_rngMT19937ICN_uniformRNG_mt_even_0_V RTLNAME channel_gen_rand_rngMT19937ICN_uniformRNG_mt_even_0_V BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME channel_gen_Pipeline_VITIS_LOOP_167_10 MODELNAME channel_gen_Pipeline_VITIS_LOOP_167_10 RTLNAME channel_gen_channel_gen_Pipeline_VITIS_LOOP_167_10}
  {SRCNAME channel_gen_Pipeline_VITIS_LOOP_181_12 MODELNAME channel_gen_Pipeline_VITIS_LOOP_181_12 RTLNAME channel_gen_channel_gen_Pipeline_VITIS_LOOP_181_12
    SUBMODULES {
      {MODELNAME channel_gen_mul_22s_22s_37_1_1 RTLNAME channel_gen_mul_22s_22s_37_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME channel_gen_mul_mul_22s_15ns_37_4_1 RTLNAME channel_gen_mul_mul_22s_15ns_37_4_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME channel_gen_channel_gen_Pipeline_VITIS_LOOP_181_12_weight_6taps RTLNAME channel_gen_channel_gen_Pipeline_VITIS_LOOP_181_12_weight_6taps BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME channel_gen_Pipeline_VITIS_LOOP_141_7 MODELNAME channel_gen_Pipeline_VITIS_LOOP_141_7 RTLNAME channel_gen_channel_gen_Pipeline_VITIS_LOOP_141_7
    SUBMODULES {
      {MODELNAME channel_gen_mux_32_22_1_1 RTLNAME channel_gen_mux_32_22_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME channel_gen_mux_42_22_1_1 RTLNAME channel_gen_mux_42_22_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME channel_gen_Pipeline_VITIS_LOOP_154_9 MODELNAME channel_gen_Pipeline_VITIS_LOOP_154_9 RTLNAME channel_gen_channel_gen_Pipeline_VITIS_LOOP_154_9
    SUBMODULES {
      {MODELNAME channel_gen_mul_22s_22ns_37_1_1 RTLNAME channel_gen_mul_22s_22ns_37_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME channel_gen_Pipeline_VITIS_LOOP_115_4 MODELNAME channel_gen_Pipeline_VITIS_LOOP_115_4 RTLNAME channel_gen_channel_gen_Pipeline_VITIS_LOOP_115_4}
  {SRCNAME channel_gen_Pipeline_VITIS_LOOP_128_6 MODELNAME channel_gen_Pipeline_VITIS_LOOP_128_6 RTLNAME channel_gen_channel_gen_Pipeline_VITIS_LOOP_128_6
    SUBMODULES {
      {MODELNAME channel_gen_mul_mul_16s_22s_37_4_1 RTLNAME channel_gen_mul_mul_16s_22s_37_4_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME channel_gen_Pipeline_VITIS_LOOP_194_13 MODELNAME channel_gen_Pipeline_VITIS_LOOP_194_13 RTLNAME channel_gen_channel_gen_Pipeline_VITIS_LOOP_194_13}
  {SRCNAME channel_gen_Pipeline_VITIS_LOOP_207_15 MODELNAME channel_gen_Pipeline_VITIS_LOOP_207_15 RTLNAME channel_gen_channel_gen_Pipeline_VITIS_LOOP_207_15
    SUBMODULES {
      {MODELNAME channel_gen_channel_gen_Pipeline_VITIS_LOOP_207_15_weight_9taps RTLNAME channel_gen_channel_gen_Pipeline_VITIS_LOOP_207_15_weight_9taps BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME channel_gen MODELNAME channel_gen RTLNAME channel_gen IS_TOP 1
    SUBMODULES {
      {MODELNAME channel_gen_ddiv_64ns_64ns_64_11_no_dsp_1 RTLNAME channel_gen_ddiv_64ns_64ns_64_11_no_dsp_1 BINDTYPE op TYPE ddiv IMPL fabric LATENCY 10 ALLOW_PRAGMA 1}
      {MODELNAME channel_gen_sitodp_32ns_64_2_no_dsp_1 RTLNAME channel_gen_sitodp_32ns_64_2_no_dsp_1 BINDTYPE op TYPE sitodp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME channel_gen_dsqrt_64ns_64ns_64_10_no_dsp_1 RTLNAME channel_gen_dsqrt_64ns_64ns_64_10_no_dsp_1 BINDTYPE op TYPE dsqrt IMPL fabric LATENCY 9 ALLOW_PRAGMA 1}
      {MODELNAME channel_gen_sdiv_9ns_32ns_8_13_seq_1 RTLNAME channel_gen_sdiv_9ns_32ns_8_13_seq_1 BINDTYPE op TYPE sdiv IMPL auto_seq LATENCY 12 ALLOW_PRAGMA 1}
      {MODELNAME channel_gen_mul_32s_32s_32_1_1 RTLNAME channel_gen_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME channel_gen_sdiv_32ns_9s_32_36_seq_1 RTLNAME channel_gen_sdiv_32ns_9s_32_36_seq_1 BINDTYPE op TYPE sdiv IMPL auto_seq LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME channel_gen_mul_32ns_32ns_63_1_1 RTLNAME channel_gen_mul_32ns_32ns_63_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME channel_gen_mul_22s_22s_44_1_1 RTLNAME channel_gen_mul_22s_22s_44_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME channel_gen_mul_59s_61ns_119_1_1 RTLNAME channel_gen_mul_59s_61ns_119_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME channel_gen_x_real_6taps_V RTLNAME channel_gen_x_real_6taps_V BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME channel_gen_n_6taps_V RTLNAME channel_gen_n_6taps_V BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME channel_gen_x_real_9taps_V RTLNAME channel_gen_x_real_9taps_V BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME channel_gen_n_9taps_V RTLNAME channel_gen_n_9taps_V BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME channel_gen_fifo_w22_d2_S RTLNAME channel_gen_fifo_w22_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME channel_gen_regslice_both RTLNAME channel_gen_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME channel_gen_regslice_both_U}
    }
  }
}
