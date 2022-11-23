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
    id 1223 \
    name fifo_A_PE_3_3_x150 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_A_PE_3_3_x150 \
    op interface \
    ports { fifo_A_PE_3_3_x150_dout { I 512 vector } fifo_A_PE_3_3_x150_empty_n { I 1 bit } fifo_A_PE_3_3_x150_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1224 \
    name fifo_A_PE_3_4_x151 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_A_PE_3_4_x151 \
    op interface \
    ports { fifo_A_PE_3_4_x151_din { O 512 vector } fifo_A_PE_3_4_x151_full_n { I 1 bit } fifo_A_PE_3_4_x151_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1225 \
    name fifo_B_PE_3_3_x1122 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_B_PE_3_3_x1122 \
    op interface \
    ports { fifo_B_PE_3_3_x1122_dout { I 512 vector } fifo_B_PE_3_3_x1122_empty_n { I 1 bit } fifo_B_PE_3_3_x1122_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1226 \
    name fifo_B_PE_4_3_x1123 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_B_PE_4_3_x1123 \
    op interface \
    ports { fifo_B_PE_4_3_x1123_din { O 512 vector } fifo_B_PE_4_3_x1123_full_n { I 1 bit } fifo_B_PE_4_3_x1123_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1227 \
    name fifo_C_drain_PE_3_3_x1191 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_C_drain_PE_3_3_x1191 \
    op interface \
    ports { fifo_C_drain_PE_3_3_x1191_din { O 16 vector } fifo_C_drain_PE_3_3_x1191_full_n { I 1 bit } fifo_C_drain_PE_3_3_x1191_write { O 1 bit } } \
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


