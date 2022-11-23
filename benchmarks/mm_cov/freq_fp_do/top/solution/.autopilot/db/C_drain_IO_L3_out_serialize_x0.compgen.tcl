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
    id 690 \
    name gmem_C \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_C \
    op interface \
    ports { m_axi_gmem_C_AWVALID { O 1 bit } m_axi_gmem_C_AWREADY { I 1 bit } m_axi_gmem_C_AWADDR { O 64 vector } m_axi_gmem_C_AWID { O 1 vector } m_axi_gmem_C_AWLEN { O 32 vector } m_axi_gmem_C_AWSIZE { O 3 vector } m_axi_gmem_C_AWBURST { O 2 vector } m_axi_gmem_C_AWLOCK { O 2 vector } m_axi_gmem_C_AWCACHE { O 4 vector } m_axi_gmem_C_AWPROT { O 3 vector } m_axi_gmem_C_AWQOS { O 4 vector } m_axi_gmem_C_AWREGION { O 4 vector } m_axi_gmem_C_AWUSER { O 1 vector } m_axi_gmem_C_WVALID { O 1 bit } m_axi_gmem_C_WREADY { I 1 bit } m_axi_gmem_C_WDATA { O 512 vector } m_axi_gmem_C_WSTRB { O 64 vector } m_axi_gmem_C_WLAST { O 1 bit } m_axi_gmem_C_WID { O 1 vector } m_axi_gmem_C_WUSER { O 1 vector } m_axi_gmem_C_ARVALID { O 1 bit } m_axi_gmem_C_ARREADY { I 1 bit } m_axi_gmem_C_ARADDR { O 64 vector } m_axi_gmem_C_ARID { O 1 vector } m_axi_gmem_C_ARLEN { O 32 vector } m_axi_gmem_C_ARSIZE { O 3 vector } m_axi_gmem_C_ARBURST { O 2 vector } m_axi_gmem_C_ARLOCK { O 2 vector } m_axi_gmem_C_ARCACHE { O 4 vector } m_axi_gmem_C_ARPROT { O 3 vector } m_axi_gmem_C_ARQOS { O 4 vector } m_axi_gmem_C_ARREGION { O 4 vector } m_axi_gmem_C_ARUSER { O 1 vector } m_axi_gmem_C_RVALID { I 1 bit } m_axi_gmem_C_RREADY { O 1 bit } m_axi_gmem_C_RDATA { I 512 vector } m_axi_gmem_C_RLAST { I 1 bit } m_axi_gmem_C_RID { I 1 vector } m_axi_gmem_C_RUSER { I 1 vector } m_axi_gmem_C_RRESP { I 2 vector } m_axi_gmem_C_BVALID { I 1 bit } m_axi_gmem_C_BREADY { O 1 bit } m_axi_gmem_C_BRESP { I 2 vector } m_axi_gmem_C_BID { I 1 vector } m_axi_gmem_C_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 691 \
    name fifo_C_drain_local_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_C_drain_local_in \
    op interface \
    ports { fifo_C_drain_local_in_dout { I 128 vector } fifo_C_drain_local_in_empty_n { I 1 bit } fifo_C_drain_local_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 692 \
    name C \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_C \
    op interface \
    ports { C_dout { I 64 vector } C_empty_n { I 1 bit } C_read { O 1 bit } } \
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


