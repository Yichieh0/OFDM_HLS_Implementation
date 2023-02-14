# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 43 \
    name rngMT19937ICN_uniformRNG_mt_even_0_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename rngMT19937ICN_uniformRNG_mt_even_0_V \
    op interface \
    ports { rngMT19937ICN_uniformRNG_mt_even_0_V_address0 { O 9 vector } rngMT19937ICN_uniformRNG_mt_even_0_V_ce0 { O 1 bit } rngMT19937ICN_uniformRNG_mt_even_0_V_we0 { O 1 bit } rngMT19937ICN_uniformRNG_mt_even_0_V_d0 { O 32 vector } rngMT19937ICN_uniformRNG_mt_even_0_V_q0 { I 32 vector } rngMT19937ICN_uniformRNG_mt_even_0_V_address1 { O 9 vector } rngMT19937ICN_uniformRNG_mt_even_0_V_ce1 { O 1 bit } rngMT19937ICN_uniformRNG_mt_even_0_V_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'rngMT19937ICN_uniformRNG_mt_even_0_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 44 \
    name rngMT19937ICN_uniformRNG_mt_odd_0_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename rngMT19937ICN_uniformRNG_mt_odd_0_V \
    op interface \
    ports { rngMT19937ICN_uniformRNG_mt_odd_0_V_address0 { O 9 vector } rngMT19937ICN_uniformRNG_mt_odd_0_V_ce0 { O 1 bit } rngMT19937ICN_uniformRNG_mt_odd_0_V_we0 { O 1 bit } rngMT19937ICN_uniformRNG_mt_odd_0_V_d0 { O 32 vector } rngMT19937ICN_uniformRNG_mt_odd_0_V_q0 { I 32 vector } rngMT19937ICN_uniformRNG_mt_odd_0_V_address1 { O 9 vector } rngMT19937ICN_uniformRNG_mt_odd_0_V_ce1 { O 1 bit } rngMT19937ICN_uniformRNG_mt_odd_0_V_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'rngMT19937ICN_uniformRNG_mt_odd_0_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name rngMT19937ICN_uniformRNG_x_k_p_0_V \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rngMT19937ICN_uniformRNG_x_k_p_0_V \
    op interface \
    ports { rngMT19937ICN_uniformRNG_x_k_p_0_V { O 32 vector } rngMT19937ICN_uniformRNG_x_k_p_0_V_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name rngMT19937ICN_uniformRNG_x_k_p_1_V \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rngMT19937ICN_uniformRNG_x_k_p_1_V \
    op interface \
    ports { rngMT19937ICN_uniformRNG_x_k_p_1_V { O 32 vector } rngMT19937ICN_uniformRNG_x_k_p_1_V_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name rngMT19937ICN_uniformRNG_x_k_p_2_V \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rngMT19937ICN_uniformRNG_x_k_p_2_V \
    op interface \
    ports { rngMT19937ICN_uniformRNG_x_k_p_2_V { O 32 vector } rngMT19937ICN_uniformRNG_x_k_p_2_V_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name rngMT19937ICN_uniformRNG_x_k_p_m_V \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rngMT19937ICN_uniformRNG_x_k_p_m_V \
    op interface \
    ports { rngMT19937ICN_uniformRNG_x_k_p_m_V { O 32 vector } rngMT19937ICN_uniformRNG_x_k_p_m_V_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name rngMT19937ICN_uniformRNG_addr_head_V \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rngMT19937ICN_uniformRNG_addr_head_V \
    op interface \
    ports { rngMT19937ICN_uniformRNG_addr_head_V { O 10 vector } rngMT19937ICN_uniformRNG_addr_head_V_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


