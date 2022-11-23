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
    id 2342 \
    name gmem_D \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_D \
    op interface \
    ports { m_axi_gmem_D_AWVALID { O 1 bit } m_axi_gmem_D_AWREADY { I 1 bit } m_axi_gmem_D_AWADDR { O 64 vector } m_axi_gmem_D_AWID { O 1 vector } m_axi_gmem_D_AWLEN { O 32 vector } m_axi_gmem_D_AWSIZE { O 3 vector } m_axi_gmem_D_AWBURST { O 2 vector } m_axi_gmem_D_AWLOCK { O 2 vector } m_axi_gmem_D_AWCACHE { O 4 vector } m_axi_gmem_D_AWPROT { O 3 vector } m_axi_gmem_D_AWQOS { O 4 vector } m_axi_gmem_D_AWREGION { O 4 vector } m_axi_gmem_D_AWUSER { O 1 vector } m_axi_gmem_D_WVALID { O 1 bit } m_axi_gmem_D_WREADY { I 1 bit } m_axi_gmem_D_WDATA { O 512 vector } m_axi_gmem_D_WSTRB { O 64 vector } m_axi_gmem_D_WLAST { O 1 bit } m_axi_gmem_D_WID { O 1 vector } m_axi_gmem_D_WUSER { O 1 vector } m_axi_gmem_D_ARVALID { O 1 bit } m_axi_gmem_D_ARREADY { I 1 bit } m_axi_gmem_D_ARADDR { O 64 vector } m_axi_gmem_D_ARID { O 1 vector } m_axi_gmem_D_ARLEN { O 32 vector } m_axi_gmem_D_ARSIZE { O 3 vector } m_axi_gmem_D_ARBURST { O 2 vector } m_axi_gmem_D_ARLOCK { O 2 vector } m_axi_gmem_D_ARCACHE { O 4 vector } m_axi_gmem_D_ARPROT { O 3 vector } m_axi_gmem_D_ARQOS { O 4 vector } m_axi_gmem_D_ARREGION { O 4 vector } m_axi_gmem_D_ARUSER { O 1 vector } m_axi_gmem_D_RVALID { I 1 bit } m_axi_gmem_D_RREADY { O 1 bit } m_axi_gmem_D_RDATA { I 512 vector } m_axi_gmem_D_RLAST { I 1 bit } m_axi_gmem_D_RID { I 1 vector } m_axi_gmem_D_RUSER { I 1 vector } m_axi_gmem_D_RRESP { I 2 vector } m_axi_gmem_D_BVALID { I 1 bit } m_axi_gmem_D_BREADY { O 1 bit } m_axi_gmem_D_BRESP { I 2 vector } m_axi_gmem_D_BID { I 1 vector } m_axi_gmem_D_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2343 \
    name fifo_D_drain_local_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_D_drain_local_in \
    op interface \
    ports { fifo_D_drain_local_in_dout { I 128 vector } fifo_D_drain_local_in_empty_n { I 1 bit } fifo_D_drain_local_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2344 \
    name D \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_D \
    op interface \
    ports { D_dout { I 64 vector } D_empty_n { I 1 bit } D_read { O 1 bit } } \
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


