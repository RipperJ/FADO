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
    id 108 \
    name fifo_A_PE_0_5_x025 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_A_PE_0_5_x025 \
    op interface \
    ports { fifo_A_PE_0_5_x025_dout { I 512 vector } fifo_A_PE_0_5_x025_empty_n { I 1 bit } fifo_A_PE_0_5_x025_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name fifo_A_PE_0_6_x026 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_A_PE_0_6_x026 \
    op interface \
    ports { fifo_A_PE_0_6_x026_din { O 512 vector } fifo_A_PE_0_6_x026_full_n { I 1 bit } fifo_A_PE_0_6_x026_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name fifo_B_PE_0_5_x0137 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_B_PE_0_5_x0137 \
    op interface \
    ports { fifo_B_PE_0_5_x0137_dout { I 512 vector } fifo_B_PE_0_5_x0137_empty_n { I 1 bit } fifo_B_PE_0_5_x0137_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name fifo_B_PE_1_5_x0138 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_B_PE_1_5_x0138 \
    op interface \
    ports { fifo_B_PE_1_5_x0138_din { O 512 vector } fifo_B_PE_1_5_x0138_full_n { I 1 bit } fifo_B_PE_1_5_x0138_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name fifo_C_drain_PE_0_5_x0204 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_C_drain_PE_0_5_x0204 \
    op interface \
    ports { fifo_C_drain_PE_0_5_x0204_din { O 16 vector } fifo_C_drain_PE_0_5_x0204_full_n { I 1 bit } fifo_C_drain_PE_0_5_x0204_write { O 1 bit } } \
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


