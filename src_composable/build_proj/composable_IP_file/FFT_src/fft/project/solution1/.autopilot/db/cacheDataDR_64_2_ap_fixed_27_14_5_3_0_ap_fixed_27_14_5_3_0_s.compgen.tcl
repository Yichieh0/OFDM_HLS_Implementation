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
    id 120 \
    name p_digitReseversedOutputBuff_M_real \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_digitReseversedOutputBuff_M_real \
    op interface \
    ports { p_digitReseversedOutputBuff_M_real_address0 { O 5 vector } p_digitReseversedOutputBuff_M_real_ce0 { O 1 bit } p_digitReseversedOutputBuff_M_real_we0 { O 1 bit } p_digitReseversedOutputBuff_M_real_d0 { O 27 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_digitReseversedOutputBuff_M_real'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 121 \
    name p_digitReseversedOutputBuff_M_real3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_digitReseversedOutputBuff_M_real3 \
    op interface \
    ports { p_digitReseversedOutputBuff_M_real3_address0 { O 5 vector } p_digitReseversedOutputBuff_M_real3_ce0 { O 1 bit } p_digitReseversedOutputBuff_M_real3_we0 { O 1 bit } p_digitReseversedOutputBuff_M_real3_d0 { O 27 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_digitReseversedOutputBuff_M_real3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 122 \
    name p_digitReseversedOutputBuff_M_imag \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_digitReseversedOutputBuff_M_imag \
    op interface \
    ports { p_digitReseversedOutputBuff_M_imag_address0 { O 5 vector } p_digitReseversedOutputBuff_M_imag_ce0 { O 1 bit } p_digitReseversedOutputBuff_M_imag_we0 { O 1 bit } p_digitReseversedOutputBuff_M_imag_d0 { O 27 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_digitReseversedOutputBuff_M_imag'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 123 \
    name p_digitReseversedOutputBuff_M_imag4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_digitReseversedOutputBuff_M_imag4 \
    op interface \
    ports { p_digitReseversedOutputBuff_M_imag4_address0 { O 5 vector } p_digitReseversedOutputBuff_M_imag4_ce0 { O 1 bit } p_digitReseversedOutputBuff_M_imag4_we0 { O 1 bit } p_digitReseversedOutputBuff_M_imag4_d0 { O 27 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_digitReseversedOutputBuff_M_imag4'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name p_inData_0_0_0_0_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_inData_0_0_0_0_0 \
    op interface \
    ports { p_inData_0_0_0_0_0_dout { I 27 vector } p_inData_0_0_0_0_0_empty_n { I 1 bit } p_inData_0_0_0_0_0_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name p_inData_0_0_0_0_01 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_inData_0_0_0_0_01 \
    op interface \
    ports { p_inData_0_0_0_0_01_dout { I 27 vector } p_inData_0_0_0_0_01_empty_n { I 1 bit } p_inData_0_0_0_0_01_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name p_inData_0_1_0_0_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_inData_0_1_0_0_0 \
    op interface \
    ports { p_inData_0_1_0_0_0_dout { I 27 vector } p_inData_0_1_0_0_0_empty_n { I 1 bit } p_inData_0_1_0_0_0_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name p_inData_0_1_0_0_02 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_inData_0_1_0_0_02 \
    op interface \
    ports { p_inData_0_1_0_0_02_dout { I 27 vector } p_inData_0_1_0_0_02_empty_n { I 1 bit } p_inData_0_1_0_0_02_read { O 1 bit } } \
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


