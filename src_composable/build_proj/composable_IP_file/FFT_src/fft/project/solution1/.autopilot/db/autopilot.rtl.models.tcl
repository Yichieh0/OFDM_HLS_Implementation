set SynModuleInfo {
  {SRCNAME fft_top1_Pipeline_VITIS_LOOP_134_1 MODELNAME fft_top1_Pipeline_VITIS_LOOP_134_1 RTLNAME fft_top1_fft_top1_Pipeline_VITIS_LOOP_134_1
    SUBMODULES {
      {MODELNAME fft_top1_flow_control_loop_pipe_sequential_init RTLNAME fft_top1_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME fft_top1_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME {castArrayS2Streaming<64, 2, complex<ap_fixed<22, 7, 5, 3, 0> >, complex<ap_fixed<22, 7, 5, 3, 0> > >} MODELNAME castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_s RTLNAME fft_top1_castArrayS2Streaming_64_2_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_22_7_5_3_0_s}
  {SRCNAME {streamingDataCommutor<complex<ap_fixed<22, 7, 5, 3, 0> > >} MODELNAME streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_s RTLNAME fft_top1_streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_s
    SUBMODULES {
      {MODELNAME fft_top1_streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_s_delayline_Array_18 RTLNAME fft_top1_streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_s_delayline_Array_18 BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME fft_top1_streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_s_control_delayline_Array_4 RTLNAME fft_top1_streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_s_control_delayline_Array_4 BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {streamingDataCommutor<complex<ap_fixed<22, 7, 5, 3, 0> > >.1} MODELNAME streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1 RTLNAME fft_top1_streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1
    SUBMODULES {
      {MODELNAME fft_top1_streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_delayline_Array_4 RTLNAME fft_top1_streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_delayline_Array_4 BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME fft_top1_streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_control_delayline_Array_6 RTLNAME fft_top1_streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_1_control_delayline_Array_6 BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {streamingDataCommutor<complex<ap_fixed<22, 7, 5, 3, 0> > >.2} MODELNAME streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2 RTLNAME fft_top1_streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2
    SUBMODULES {
      {MODELNAME fft_top1_streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_delayline_Array_8 RTLNAME fft_top1_streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_delayline_Array_8 BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME fft_top1_streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_control_delayline_Array_8 RTLNAME fft_top1_streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_2_control_delayline_Array_8 BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {streamingDataCommutor<complex<ap_fixed<22, 7, 5, 3, 0> > >.3} MODELNAME streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3 RTLNAME fft_top1_streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3
    SUBMODULES {
      {MODELNAME fft_top1_streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_delayline_Array_12 RTLNAME fft_top1_streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_delayline_Array_12 BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME fft_top1_streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_control_delayline_Array_1 RTLNAME fft_top1_streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_3_control_delayline_Array_1 BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {streamingDataCommutor<complex<ap_fixed<22, 7, 5, 3, 0> > >.4} MODELNAME streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4 RTLNAME fft_top1_streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4
    SUBMODULES {
      {MODELNAME fft_top1_streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_delayline_Array_16 RTLNAME fft_top1_streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_delayline_Array_16 BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME fft_top1_streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_control_delayline_Array_3 RTLNAME fft_top1_streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_control_delayline_Array_3 BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {swap<complex<ap_fixed<22, 7, 5, 3, 0> > >.3} MODELNAME swap_complex_ap_fixed_22_7_5_3_0_3 RTLNAME fft_top1_swap_complex_ap_fixed_22_7_5_3_0_3
    SUBMODULES {
      {MODELNAME fft_top1_fifo_w128_d8_D RTLNAME fft_top1_fifo_w128_d8_D BINDTYPE storage TYPE fifo IMPL lutram LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME fft_top1_start_for_streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0 RTLNAME fft_top1_start_for_streamingDataCommutor_complex_ap_fixed_22_7_5_3_0_4_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
  {SRCNAME {swap<complex<ap_fixed<22, 7, 5, 3, 0> > >.2} MODELNAME swap_complex_ap_fixed_22_7_5_3_0_2 RTLNAME fft_top1_swap_complex_ap_fixed_22_7_5_3_0_2
    SUBMODULES {
      {MODELNAME fft_top1_fifo_w128_d8_D_x RTLNAME fft_top1_fifo_w128_d8_D_x BINDTYPE storage TYPE fifo IMPL lutram LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME fft_top1_start_for_swap_complex_ap_fixed_22_7_5_3_0_3_U0 RTLNAME fft_top1_start_for_swap_complex_ap_fixed_22_7_5_3_0_3_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
  {SRCNAME {swap<complex<ap_fixed<22, 7, 5, 3, 0> > >.1} MODELNAME swap_complex_ap_fixed_22_7_5_3_0_1 RTLNAME fft_top1_swap_complex_ap_fixed_22_7_5_3_0_1
    SUBMODULES {
      {MODELNAME fft_top1_fifo_w128_d8_D_x0 RTLNAME fft_top1_fifo_w128_d8_D_x0 BINDTYPE storage TYPE fifo IMPL lutram LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME fft_top1_start_for_swap_complex_ap_fixed_22_7_5_3_0_2_U0 RTLNAME fft_top1_start_for_swap_complex_ap_fixed_22_7_5_3_0_2_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
  {SRCNAME {swap<complex<ap_fixed<22, 7, 5, 3, 0> > >} MODELNAME swap_complex_ap_fixed_22_7_5_3_0_s RTLNAME fft_top1_swap_complex_ap_fixed_22_7_5_3_0_s
    SUBMODULES {
      {MODELNAME fft_top1_fifo_w128_d8_D_x1 RTLNAME fft_top1_fifo_w128_d8_D_x1 BINDTYPE storage TYPE fifo IMPL lutram LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME fft_top1_start_for_swap_complex_ap_fixed_22_7_5_3_0_1_U0 RTLNAME fft_top1_start_for_swap_complex_ap_fixed_22_7_5_3_0_1_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
  {SRCNAME {fftStageKernelS2S<64, 2, 1, 0, 0, 6, complex<ap_fixed<24, 9, 5, 3, 0> >, complex<ap_fixed<16, 3, 5, 3, 0> >, complex<ap_fixed<16, 3, 5, 3, 0> >, complex<ap_fixed<22, 7, 5, 3, 0> >, complex<ap_fixed<24, 9, 5, 3, 0> > >} MODELNAME fftStageKernelS2S_64_2_1_0_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_24_9_5_3_0_s RTLNAME fft_top1_fftStageKernelS2S_64_2_1_0_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_24_9_5_3_0_s
    SUBMODULES {
      {MODELNAME fft_top1_mul_mul_23s_15s_37_4_1 RTLNAME fft_top1_mul_mul_23s_15s_37_4_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME fft_top1_fftStageKernelS2S_64_2_1_0_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_1bkb RTLNAME fft_top1_fftStageKernelS2S_64_2_1_0_0_6_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_1bkb BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {streamingDataCommutor<complex<ap_fixed<24, 9, 5, 3, 0> > >} MODELNAME streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_s RTLNAME fft_top1_streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_s
    SUBMODULES {
      {MODELNAME fft_top1_streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_s_delayline_Array_6 RTLNAME fft_top1_streamingDataCommutor_complex_ap_fixed_24_9_5_3_0_s_delayline_Array_6 BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {fftStageKernelS2S<64, 2, 1, 0, 0, 5, complex<ap_fixed<25, 10, 5, 3, 0> >, complex<ap_fixed<16, 3, 5, 3, 0> >, complex<ap_fixed<16, 3, 5, 3, 0> >, complex<ap_fixed<24, 9, 5, 3, 0> >, complex<ap_fixed<25, 10, 5, 3, 0> > >} MODELNAME fftStageKernelS2S_64_2_1_0_0_5_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_25_10_5_3_0_s RTLNAME fft_top1_fftStageKernelS2S_64_2_1_0_0_5_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_24_9_5_3_0_complex_ap_fixed_25_10_5_3_0_s
    SUBMODULES {
      {MODELNAME fft_top1_mul_mul_24s_15s_38_4_1 RTLNAME fft_top1_mul_mul_24s_15s_38_4_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {streamingDataCommutor<complex<ap_fixed<25, 10, 5, 3, 0> > >} MODELNAME streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_s RTLNAME fft_top1_streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_s
    SUBMODULES {
      {MODELNAME fft_top1_streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_s_delayline_Array_1 RTLNAME fft_top1_streamingDataCommutor_complex_ap_fixed_25_10_5_3_0_s_delayline_Array_1 BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {fftStageKernelS2S<64, 2, 1, 0, 0, 4, complex<ap_fixed<26, 11, 5, 3, 0> >, complex<ap_fixed<16, 3, 5, 3, 0> >, complex<ap_fixed<16, 3, 5, 3, 0> >, complex<ap_fixed<25, 10, 5, 3, 0> >, complex<ap_fixed<26, 11, 5, 3, 0> > >} MODELNAME fftStageKernelS2S_64_2_1_0_0_4_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_s RTLNAME fft_top1_fftStageKernelS2S_64_2_1_0_0_4_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_25_10_5_3_0_complex_ap_fixed_26_11_5_3_0_s
    SUBMODULES {
      {MODELNAME fft_top1_mul_mul_25s_15s_39_4_1 RTLNAME fft_top1_mul_mul_25s_15s_39_4_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {streamingDataCommutor<complex<ap_fixed<26, 11, 5, 3, 0> > >} MODELNAME streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_s RTLNAME fft_top1_streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_s
    SUBMODULES {
      {MODELNAME fft_top1_streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_s_delayline_Array_13 RTLNAME fft_top1_streamingDataCommutor_complex_ap_fixed_26_11_5_3_0_s_delayline_Array_13 BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {fftStageKernelS2S<64, 2, 1, 0, 0, 3, complex<ap_fixed<27, 12, 5, 3, 0> >, complex<ap_fixed<16, 3, 5, 3, 0> >, complex<ap_fixed<16, 3, 5, 3, 0> >, complex<ap_fixed<26, 11, 5, 3, 0> >, complex<ap_fixed<27, 12, 5, 3, 0> > >} MODELNAME fftStageKernelS2S_64_2_1_0_0_3_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_27_12_5_3_0_s RTLNAME fft_top1_fftStageKernelS2S_64_2_1_0_0_3_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_26_11_5_3_0_complex_ap_fixed_27_12_5_3_0_s
    SUBMODULES {
      {MODELNAME fft_top1_mul_mul_26s_15s_40_4_1 RTLNAME fft_top1_mul_mul_26s_15s_40_4_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {streamingDataCommutor<complex<ap_fixed<27, 12, 5, 3, 0> > >} MODELNAME streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_s RTLNAME fft_top1_streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_s
    SUBMODULES {
      {MODELNAME fft_top1_streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_s_delayline_Array_10 RTLNAME fft_top1_streamingDataCommutor_complex_ap_fixed_27_12_5_3_0_s_delayline_Array_10 BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {fftStageKernelS2S<64, 2, 1, 0, 0, 2, complex<ap_fixed<27, 13, 5, 3, 0> >, complex<ap_fixed<16, 3, 5, 3, 0> >, complex<ap_fixed<16, 3, 5, 3, 0> >, complex<ap_fixed<27, 12, 5, 3, 0> >, complex<ap_fixed<27, 13, 5, 3, 0> > >} MODELNAME fftStageKernelS2S_64_2_1_0_0_2_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_27_13_5_3_0_s RTLNAME fft_top1_fftStageKernelS2S_64_2_1_0_0_2_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_12_5_3_0_complex_ap_fixed_27_13_5_3_0_s}
  {SRCNAME {streamingDataCommutor<complex<ap_fixed<27, 13, 5, 3, 0> > >} MODELNAME streamingDataCommutor_complex_ap_fixed_27_13_5_3_0_s RTLNAME fft_top1_streamingDataCommutor_complex_ap_fixed_27_13_5_3_0_s
    SUBMODULES {
      {MODELNAME fft_top1_streamingDataCommutor_complex_ap_fixed_27_13_5_3_0_s_delayline_Array_14 RTLNAME fft_top1_streamingDataCommutor_complex_ap_fixed_27_13_5_3_0_s_delayline_Array_14 BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {fftStageKernelLastStageS2S<64, 2, 1, 0, 0, 1, complex<ap_fixed<27, 14, 5, 3, 0> >, complex<ap_fixed<16, 3, 5, 3, 0> >, complex<ap_fixed<27, 13, 5, 3, 0> >, complex<ap_fixed<27, 14, 5, 3, 0> > >} MODELNAME fftStageKernelLastStageS2S_64_2_1_0_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_s RTLNAME fft_top1_fftStageKernelLastStageS2S_64_2_1_0_0_1_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_27_13_5_3_0_complex_ap_fixed_27_14_5_3_0_s}
  {SRCNAME {convertSuperStreamToArrayNScale<1, 0, 50000, 64, 2, complex<ap_fixed<27, 14, 5, 3, 0> >, complex<ap_fixed<27, 14, 5, 3, 0> > >} MODELNAME convertSuperStreamToArrayNScale_1_0_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_14_5_3_0_s RTLNAME fft_top1_convertSuperStreamToArrayNScale_1_0_50000_64_2_complex_ap_fixed_27_14_5_3_0_complex_ap_fixed_27_14_5_3_0_s
    SUBMODULES {
      {MODELNAME fft_top1_flow_control_loop_pipe RTLNAME fft_top1_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME fft_top1_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME {cacheDataDR<64, 2, ap_fixed<27, 14, 5, 3, 0>, ap_fixed<27, 14, 5, 3, 0> >} MODELNAME cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s RTLNAME fft_top1_cacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s}
  {SRCNAME {writeBackCacheDataDR<64, 2, ap_fixed<27, 14, 5, 3, 0>, ap_fixed<27, 14, 5, 3, 0> >} MODELNAME writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s RTLNAME fft_top1_writeBackCacheDataDR_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s}
  {SRCNAME {digitReversedDataReOrder<64, 2, ap_fixed<27, 14, 5, 3, 0>, ap_fixed<27, 14, 5, 3, 0> >} MODELNAME digitReversedDataReOrder_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s RTLNAME fft_top1_digitReversedDataReOrder_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s
    SUBMODULES {
      {MODELNAME fft_top1_digitReversedDataReOrder_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_digfYi RTLNAME fft_top1_digitReversedDataReOrder_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5_3_0_s_digfYi BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME fftStage.5 MODELNAME fftStage_5 RTLNAME fft_top1_fftStage_5
    SUBMODULES {
      {MODELNAME fft_top1_fifo_w128_d8_D_x2 RTLNAME fft_top1_fifo_w128_d8_D_x2 BINDTYPE storage TYPE fifo IMPL lutram LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME fft_top1_fifo_w27_d8_D RTLNAME fft_top1_fifo_w27_d8_D BINDTYPE storage TYPE fifo IMPL lutram LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME fft_top1_start_for_convertSuperStreamToArrayNScale_1_0_50000_64_2_complex_ap_fixed_27_jbC RTLNAME fft_top1_start_for_convertSuperStreamToArrayNScale_1_0_50000_64_2_complex_ap_fixed_27_jbC BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME fft_top1_start_for_digitReversedDataReOrder_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5kbM RTLNAME fft_top1_start_for_digitReversedDataReOrder_64_2_ap_fixed_27_14_5_3_0_ap_fixed_27_14_5kbM BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
  {SRCNAME fftStage.4 MODELNAME fftStage_4 RTLNAME fft_top1_fftStage_4
    SUBMODULES {
      {MODELNAME fft_top1_fifo_w128_d8_D_x3 RTLNAME fft_top1_fifo_w128_d8_D_x3 BINDTYPE storage TYPE fifo IMPL lutram LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
  {SRCNAME fftStage.3 MODELNAME fftStage_3 RTLNAME fft_top1_fftStage_3
    SUBMODULES {
      {MODELNAME fft_top1_fifo_w128_d8_D_x4 RTLNAME fft_top1_fifo_w128_d8_D_x4 BINDTYPE storage TYPE fifo IMPL lutram LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
  {SRCNAME fftStage.2 MODELNAME fftStage_2 RTLNAME fft_top1_fftStage_2
    SUBMODULES {
      {MODELNAME fft_top1_fifo_w128_d8_D_x5 RTLNAME fft_top1_fifo_w128_d8_D_x5 BINDTYPE storage TYPE fifo IMPL lutram LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
  {SRCNAME fftStage.1 MODELNAME fftStage_1 RTLNAME fft_top1_fftStage_1
    SUBMODULES {
      {MODELNAME fft_top1_fifo_w128_d8_D_x6 RTLNAME fft_top1_fifo_w128_d8_D_x6 BINDTYPE storage TYPE fifo IMPL lutram LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
  {SRCNAME fftStage MODELNAME fftStage RTLNAME fft_top1_fftStage
    SUBMODULES {
      {MODELNAME fft_top1_fifo_w128_d8_D_x7 RTLNAME fft_top1_fifo_w128_d8_D_x7 BINDTYPE storage TYPE fifo IMPL lutram LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
  {SRCNAME {innerFFT<64, 2, 1, 1, 0, 0, 0, complex<ap_fixed<16, 3, 5, 3, 0> >, complex<ap_fixed<16, 3, 5, 3, 0> >, complex<ap_fixed<22, 7, 5, 3, 0> >, complex<ap_fixed<27, 14, 5, 3, 0> > >} MODELNAME innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s RTLNAME fft_top1_innerFFT_64_2_1_1_0_0_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_16_3_5_3_0_complex_ap_fixed_22_7_5_3_0_complex_ap_fixed_27_14_5_3_0_s
    SUBMODULES {
      {MODELNAME fft_top1_fifo_w128_d8_D_x8 RTLNAME fft_top1_fifo_w128_d8_D_x8 BINDTYPE storage TYPE fifo IMPL lutram LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
  {SRCNAME fft_top1 MODELNAME fft_top1 RTLNAME fft_top1 IS_TOP 1
    SUBMODULES {
      {MODELNAME fft_top1_sdiv_9ns_32ns_8_13_seq_1 RTLNAME fft_top1_sdiv_9ns_32ns_8_13_seq_1 BINDTYPE op TYPE sdiv IMPL auto_seq LATENCY 12 ALLOW_PRAGMA 1}
      {MODELNAME fft_top1_mul_32s_32s_32_1_1 RTLNAME fft_top1_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME fft_top1_sdiv_32ns_9s_32_36_seq_1 RTLNAME fft_top1_sdiv_32ns_9s_32_36_seq_1 BINDTYPE op TYPE sdiv IMPL auto_seq LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME fft_top1_fifo_w22_d128_A RTLNAME fft_top1_fifo_w22_d128_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME fft_top1_fifo_w27_d128_A RTLNAME fft_top1_fifo_w27_d128_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME fft_top1_regslice_both RTLNAME fft_top1_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME fft_top1_regslice_both_U}
    }
  }
}
