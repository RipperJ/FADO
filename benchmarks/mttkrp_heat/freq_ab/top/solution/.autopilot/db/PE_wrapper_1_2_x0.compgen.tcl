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
    id 426 \
    name fifo_A_PE_1_2_x036 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_A_PE_1_2_x036 \
    op interface \
    ports { fifo_A_PE_1_2_x036_dout { I 256 vector } fifo_A_PE_1_2_x036_empty_n { I 1 bit } fifo_A_PE_1_2_x036_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 427 \
    name fifo_A_PE_1_3_x037 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_A_PE_1_3_x037 \
    op interface \
    ports { fifo_A_PE_1_3_x037_din { O 256 vector } fifo_A_PE_1_3_x037_full_n { I 1 bit } fifo_A_PE_1_3_x037_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 428 \
    name fifo_B_PE_1_2_x072 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_B_PE_1_2_x072 \
    op interface \
    ports { fifo_B_PE_1_2_x072_dout { I 32 vector } fifo_B_PE_1_2_x072_empty_n { I 1 bit } fifo_B_PE_1_2_x072_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 429 \
    name fifo_B_PE_2_2_x073 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_B_PE_2_2_x073 \
    op interface \
    ports { fifo_B_PE_2_2_x073_din { O 32 vector } fifo_B_PE_2_2_x073_full_n { I 1 bit } fifo_B_PE_2_2_x073_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 430 \
    name fifo_C_PE_1_2_x0112 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_C_PE_1_2_x0112 \
    op interface \
    ports { fifo_C_PE_1_2_x0112_dout { I 256 vector } fifo_C_PE_1_2_x0112_empty_n { I 1 bit } fifo_C_PE_1_2_x0112_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 431 \
    name fifo_C_PE_2_2_x0113 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_C_PE_2_2_x0113 \
    op interface \
    ports { fifo_C_PE_2_2_x0113_din { O 256 vector } fifo_C_PE_2_2_x0113_full_n { I 1 bit } fifo_C_PE_2_2_x0113_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 432 \
    name fifo_D_drain_PE_1_2_x0150 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_D_drain_PE_1_2_x0150 \
    op interface \
    ports { fifo_D_drain_PE_1_2_x0150_din { O 32 vector } fifo_D_drain_PE_1_2_x0150_full_n { I 1 bit } fifo_D_drain_PE_1_2_x0150_write { O 1 bit } } \
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


