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
    id 1051 \
    name fifo_A_PE_2_2_x145 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_A_PE_2_2_x145 \
    op interface \
    ports { fifo_A_PE_2_2_x145_dout { I 256 vector } fifo_A_PE_2_2_x145_empty_n { I 1 bit } fifo_A_PE_2_2_x145_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1052 \
    name fifo_A_PE_2_3_x146 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_A_PE_2_3_x146 \
    op interface \
    ports { fifo_A_PE_2_3_x146_din { O 256 vector } fifo_A_PE_2_3_x146_full_n { I 1 bit } fifo_A_PE_2_3_x146_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1053 \
    name fifo_B_PE_2_2_x173 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_B_PE_2_2_x173 \
    op interface \
    ports { fifo_B_PE_2_2_x173_dout { I 32 vector } fifo_B_PE_2_2_x173_empty_n { I 1 bit } fifo_B_PE_2_2_x173_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1054 \
    name fifo_B_PE_3_2_x174 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_B_PE_3_2_x174 \
    op interface \
    ports { fifo_B_PE_3_2_x174_din { O 32 vector } fifo_B_PE_3_2_x174_full_n { I 1 bit } fifo_B_PE_3_2_x174_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1055 \
    name fifo_C_PE_2_2_x1113 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_C_PE_2_2_x1113 \
    op interface \
    ports { fifo_C_PE_2_2_x1113_dout { I 256 vector } fifo_C_PE_2_2_x1113_empty_n { I 1 bit } fifo_C_PE_2_2_x1113_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1056 \
    name fifo_C_PE_3_2_x1114 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_C_PE_3_2_x1114 \
    op interface \
    ports { fifo_C_PE_3_2_x1114_din { O 256 vector } fifo_C_PE_3_2_x1114_full_n { I 1 bit } fifo_C_PE_3_2_x1114_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1057 \
    name fifo_D_drain_PE_2_2_x1151 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_D_drain_PE_2_2_x1151 \
    op interface \
    ports { fifo_D_drain_PE_2_2_x1151_din { O 32 vector } fifo_D_drain_PE_2_2_x1151_full_n { I 1 bit } fifo_D_drain_PE_2_2_x1151_write { O 1 bit } } \
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


