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
    id 934 \
    name fifo_A_PE_0_5_x130 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_A_PE_0_5_x130 \
    op interface \
    ports { fifo_A_PE_0_5_x130_dout { I 256 vector } fifo_A_PE_0_5_x130_empty_n { I 1 bit } fifo_A_PE_0_5_x130_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 935 \
    name fifo_A_PE_0_6_x131 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_A_PE_0_6_x131 \
    op interface \
    ports { fifo_A_PE_0_6_x131_din { O 256 vector } fifo_A_PE_0_6_x131_full_n { I 1 bit } fifo_A_PE_0_6_x131_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 936 \
    name fifo_B_PE_0_5_x186 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_B_PE_0_5_x186 \
    op interface \
    ports { fifo_B_PE_0_5_x186_dout { I 32 vector } fifo_B_PE_0_5_x186_empty_n { I 1 bit } fifo_B_PE_0_5_x186_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 937 \
    name fifo_B_PE_1_5_x187 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_B_PE_1_5_x187 \
    op interface \
    ports { fifo_B_PE_1_5_x187_din { O 32 vector } fifo_B_PE_1_5_x187_full_n { I 1 bit } fifo_B_PE_1_5_x187_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 938 \
    name fifo_C_PE_0_5_x1126 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_C_PE_0_5_x1126 \
    op interface \
    ports { fifo_C_PE_0_5_x1126_dout { I 256 vector } fifo_C_PE_0_5_x1126_empty_n { I 1 bit } fifo_C_PE_0_5_x1126_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 939 \
    name fifo_C_PE_1_5_x1127 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_C_PE_1_5_x1127 \
    op interface \
    ports { fifo_C_PE_1_5_x1127_din { O 256 vector } fifo_C_PE_1_5_x1127_full_n { I 1 bit } fifo_C_PE_1_5_x1127_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 940 \
    name fifo_D_drain_PE_0_5_x1161 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_D_drain_PE_0_5_x1161 \
    op interface \
    ports { fifo_D_drain_PE_0_5_x1161_din { O 32 vector } fifo_D_drain_PE_0_5_x1161_full_n { I 1 bit } fifo_D_drain_PE_0_5_x1161_write { O 1 bit } } \
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


