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
    id 1114 \
    name fifo_A_PE_3_1_x153 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_A_PE_3_1_x153 \
    op interface \
    ports { fifo_A_PE_3_1_x153_dout { I 256 vector } fifo_A_PE_3_1_x153_empty_n { I 1 bit } fifo_A_PE_3_1_x153_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1115 \
    name fifo_A_PE_3_2_x154 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_A_PE_3_2_x154 \
    op interface \
    ports { fifo_A_PE_3_2_x154_din { O 256 vector } fifo_A_PE_3_2_x154_full_n { I 1 bit } fifo_A_PE_3_2_x154_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1116 \
    name fifo_B_PE_3_1_x169 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_B_PE_3_1_x169 \
    op interface \
    ports { fifo_B_PE_3_1_x169_dout { I 32 vector } fifo_B_PE_3_1_x169_empty_n { I 1 bit } fifo_B_PE_3_1_x169_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1117 \
    name fifo_B_PE_4_1_x170 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_B_PE_4_1_x170 \
    op interface \
    ports { fifo_B_PE_4_1_x170_din { O 32 vector } fifo_B_PE_4_1_x170_full_n { I 1 bit } fifo_B_PE_4_1_x170_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1118 \
    name fifo_C_PE_3_1_x1109 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_C_PE_3_1_x1109 \
    op interface \
    ports { fifo_C_PE_3_1_x1109_dout { I 256 vector } fifo_C_PE_3_1_x1109_empty_n { I 1 bit } fifo_C_PE_3_1_x1109_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1119 \
    name fifo_C_PE_4_1_x1110 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_C_PE_4_1_x1110 \
    op interface \
    ports { fifo_C_PE_4_1_x1110_din { O 256 vector } fifo_C_PE_4_1_x1110_full_n { I 1 bit } fifo_C_PE_4_1_x1110_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1120 \
    name fifo_D_drain_PE_3_1_x1148 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_D_drain_PE_3_1_x1148 \
    op interface \
    ports { fifo_D_drain_PE_3_1_x1148_din { O 32 vector } fifo_D_drain_PE_3_1_x1148_full_n { I 1 bit } fifo_D_drain_PE_3_1_x1148_write { O 1 bit } } \
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


