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
    id 26 \
    name gmem_B \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_B \
    op interface \
    ports { m_axi_gmem_B_AWVALID { O 1 bit } m_axi_gmem_B_AWREADY { I 1 bit } m_axi_gmem_B_AWADDR { O 64 vector } m_axi_gmem_B_AWID { O 1 vector } m_axi_gmem_B_AWLEN { O 32 vector } m_axi_gmem_B_AWSIZE { O 3 vector } m_axi_gmem_B_AWBURST { O 2 vector } m_axi_gmem_B_AWLOCK { O 2 vector } m_axi_gmem_B_AWCACHE { O 4 vector } m_axi_gmem_B_AWPROT { O 3 vector } m_axi_gmem_B_AWQOS { O 4 vector } m_axi_gmem_B_AWREGION { O 4 vector } m_axi_gmem_B_AWUSER { O 1 vector } m_axi_gmem_B_WVALID { O 1 bit } m_axi_gmem_B_WREADY { I 1 bit } m_axi_gmem_B_WDATA { O 512 vector } m_axi_gmem_B_WSTRB { O 64 vector } m_axi_gmem_B_WLAST { O 1 bit } m_axi_gmem_B_WID { O 1 vector } m_axi_gmem_B_WUSER { O 1 vector } m_axi_gmem_B_ARVALID { O 1 bit } m_axi_gmem_B_ARREADY { I 1 bit } m_axi_gmem_B_ARADDR { O 64 vector } m_axi_gmem_B_ARID { O 1 vector } m_axi_gmem_B_ARLEN { O 32 vector } m_axi_gmem_B_ARSIZE { O 3 vector } m_axi_gmem_B_ARBURST { O 2 vector } m_axi_gmem_B_ARLOCK { O 2 vector } m_axi_gmem_B_ARCACHE { O 4 vector } m_axi_gmem_B_ARPROT { O 3 vector } m_axi_gmem_B_ARQOS { O 4 vector } m_axi_gmem_B_ARREGION { O 4 vector } m_axi_gmem_B_ARUSER { O 1 vector } m_axi_gmem_B_RVALID { I 1 bit } m_axi_gmem_B_RREADY { O 1 bit } m_axi_gmem_B_RDATA { I 512 vector } m_axi_gmem_B_RLAST { I 1 bit } m_axi_gmem_B_RID { I 1 vector } m_axi_gmem_B_RUSER { I 1 vector } m_axi_gmem_B_RRESP { I 2 vector } m_axi_gmem_B_BVALID { I 1 bit } m_axi_gmem_B_BREADY { O 1 bit } m_axi_gmem_B_BRESP { I 2 vector } m_axi_gmem_B_BID { I 1 vector } m_axi_gmem_B_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name fifo_B_local_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_B_local_out \
    op interface \
    ports { fifo_B_local_out_din { O 256 vector } fifo_B_local_out_full_n { I 1 bit } fifo_B_local_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name B \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B \
    op interface \
    ports { B_dout { I 64 vector } B_empty_n { I 1 bit } B_read { O 1 bit } } \
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


