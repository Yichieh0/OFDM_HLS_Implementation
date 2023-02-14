# This script segment is generated automatically by AutoPilot

set name channel_gen_mul_22s_22ns_37_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name conv_i_i_i131_le3933 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i131_le3933 \
    op interface \
    ports { conv_i_i_i131_le3933 { I 22 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name conv_i_i_i205_le3926 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i205_le3926 \
    op interface \
    ports { conv_i_i_i205_le3926 { I 22 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name n_3taps_V_0_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_n_3taps_V_0_5 \
    op interface \
    ports { n_3taps_V_0_5 { I 22 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name n_3taps_V_1_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_n_3taps_V_1_5 \
    op interface \
    ports { n_3taps_V_1_5 { I 22 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name n_3taps_V_2_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_n_3taps_V_2_5 \
    op interface \
    ports { n_3taps_V_2_5 { I 22 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name p_Result_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_Result_17 \
    op interface \
    ports { p_Result_17 { I 22 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name x_real_3taps_V_1_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_real_3taps_V_1_2_reload \
    op interface \
    ports { x_real_3taps_V_1_2_reload { I 22 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name x_real_3taps_V_2_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_real_3taps_V_2_2_reload \
    op interface \
    ports { x_real_3taps_V_2_2_reload { I 22 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name p_Result_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_Result_18 \
    op interface \
    ports { p_Result_18 { I 22 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name x_imag_3taps_V_1_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_imag_3taps_V_1_2_reload \
    op interface \
    ports { x_imag_3taps_V_1_2_reload { I 22 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name x_imag_3taps_V_2_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_imag_3taps_V_2_2_reload \
    op interface \
    ports { x_imag_3taps_V_2_2_reload { I 22 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name lhs_V_14_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_V_14_out \
    op interface \
    ports { lhs_V_14_out { O 22 vector } lhs_V_14_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name lhs_V_12_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_lhs_V_12_out \
    op interface \
    ports { lhs_V_12_out { O 22 vector } lhs_V_12_out_ap_vld { O 1 bit } } \
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


# flow_control definition:
set InstName channel_gen_flow_control_loop_pipe_sequential_init_U
set CompName channel_gen_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix channel_gen_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


