# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2263 \
    name fifo_A_PE_7_1_x084 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_A_PE_7_1_x084 \
    op interface \
    ports { fifo_A_PE_7_1_x084_dout { I 512 vector } fifo_A_PE_7_1_x084_empty_n { I 1 bit } fifo_A_PE_7_1_x084_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2264 \
    name fifo_A_PE_7_2_x085 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_A_PE_7_2_x085 \
    op interface \
    ports { fifo_A_PE_7_2_x085_din { O 512 vector } fifo_A_PE_7_2_x085_full_n { I 1 bit } fifo_A_PE_7_2_x085_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2265 \
    name fifo_B_PE_7_1_x0108 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_B_PE_7_1_x0108 \
    op interface \
    ports { fifo_B_PE_7_1_x0108_dout { I 512 vector } fifo_B_PE_7_1_x0108_empty_n { I 1 bit } fifo_B_PE_7_1_x0108_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2266 \
    name fifo_B_PE_8_1_x0109 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_B_PE_8_1_x0109 \
    op interface \
    ports { fifo_B_PE_8_1_x0109_din { O 512 vector } fifo_B_PE_8_1_x0109_full_n { I 1 bit } fifo_B_PE_8_1_x0109_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2267 \
    name fifo_C_drain_PE_7_1_x0179 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_C_drain_PE_7_1_x0179 \
    op interface \
    ports { fifo_C_drain_PE_7_1_x0179_din { O 16 vector } fifo_C_drain_PE_7_1_x0179_full_n { I 1 bit } fifo_C_drain_PE_7_1_x0179_write { O 1 bit } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
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


