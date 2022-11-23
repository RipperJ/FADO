write_checkpoint before_applying_floorplan_constriants.dcp
create_pblock CR_X0Y4_To_CR_X3Y7
resize_pblock CR_X0Y4_To_CR_X3Y7 -add CLOCKREGION_X0Y4:CLOCKREGION_X3Y7
resize_pblock CR_X0Y4_To_CR_X3Y7 -remove {
  CLOCKREGION_X4Y1:CLOCKREGION_X4Y3
  CLOCKREGION_X4Y5:CLOCKREGION_X4Y7
  CLOCKREGION_X4Y9:CLOCKREGION_X4Y11
  CLOCKREGION_X7Y0:CLOCKREGION_X7Y15
}
create_pblock CR_X4Y0_To_CR_X7Y3
resize_pblock CR_X4Y0_To_CR_X7Y3 -add CLOCKREGION_X4Y0:CLOCKREGION_X7Y3
resize_pblock CR_X4Y0_To_CR_X7Y3 -remove {
  CLOCKREGION_X4Y1:CLOCKREGION_X4Y3
  CLOCKREGION_X4Y5:CLOCKREGION_X4Y7
  CLOCKREGION_X4Y9:CLOCKREGION_X4Y11
  CLOCKREGION_X7Y0:CLOCKREGION_X7Y15
}
resize_pblock CR_X4Y0_To_CR_X7Y3 -add { SLICE_X144Y0:SLICE_X145Y239 DSP48E2_X19Y0:DSP48E2_X19Y95 RAMB18_X9Y0:RAMB18_X9Y95 RAMB36_X9Y0:RAMB36_X9Y47 }
create_pblock CR_X4Y8_To_CR_X7Y11
resize_pblock CR_X4Y8_To_CR_X7Y11 -add CLOCKREGION_X4Y8:CLOCKREGION_X7Y11
resize_pblock CR_X4Y8_To_CR_X7Y11 -remove {
  CLOCKREGION_X4Y1:CLOCKREGION_X4Y3
  CLOCKREGION_X4Y5:CLOCKREGION_X4Y7
  CLOCKREGION_X4Y9:CLOCKREGION_X4Y11
  CLOCKREGION_X7Y0:CLOCKREGION_X7Y15
}
resize_pblock CR_X4Y8_To_CR_X7Y11 -add { SLICE_X144Y480:SLICE_X145Y719 DSP48E2_X19Y192:DSP48E2_X19Y287 RAMB18_X9Y192:RAMB18_X9Y287 RAMB36_X9Y96:RAMB36_X9Y143 }
create_pblock CR_X4Y4_To_CR_X7Y7
resize_pblock CR_X4Y4_To_CR_X7Y7 -add CLOCKREGION_X4Y4:CLOCKREGION_X7Y7
resize_pblock CR_X4Y4_To_CR_X7Y7 -remove {
  CLOCKREGION_X4Y1:CLOCKREGION_X4Y3
  CLOCKREGION_X4Y5:CLOCKREGION_X4Y7
  CLOCKREGION_X4Y9:CLOCKREGION_X4Y11
  CLOCKREGION_X7Y0:CLOCKREGION_X7Y15
}
resize_pblock CR_X4Y4_To_CR_X7Y7 -add { SLICE_X144Y240:SLICE_X145Y479 DSP48E2_X19Y96:DSP48E2_X19Y191 RAMB18_X9Y96:RAMB18_X9Y191 RAMB36_X9Y48:RAMB36_X9Y95 }
create_pblock CR_X0Y0_To_CR_X3Y3
resize_pblock CR_X0Y0_To_CR_X3Y3 -add CLOCKREGION_X0Y0:CLOCKREGION_X3Y3
resize_pblock CR_X0Y0_To_CR_X3Y3 -remove {
  CLOCKREGION_X4Y1:CLOCKREGION_X4Y3
  CLOCKREGION_X4Y5:CLOCKREGION_X4Y7
  CLOCKREGION_X4Y9:CLOCKREGION_X4Y11
  CLOCKREGION_X7Y0:CLOCKREGION_X7Y15
}
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [ get_cells -regexp { 
  pfm_top_i/dynamic_region/.*/inst/gmem_A_m_axi_U
  pfm_top_i/dynamic_region/.*/inst/.*/A_IO_L3_in_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_0_0_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_0_1_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_1_1_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_2_0_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_2_1_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_3_1_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_4_1_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_5_1_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_6_1_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_7_1_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_8_1_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_9_1_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_10_0_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_10_1_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_11_1_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_12_0_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_12_1_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_0_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_1_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_3_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_6_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_9_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_11_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_12_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_13_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_14_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_17_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_20_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_22_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_0_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_1_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_2_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_6_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_11_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_12_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_IO_L2_in_8_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_IO_L2_in_9_x1_U0
} ]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [ get_cells -regexp { 
  pfm_top_i/dynamic_region/.*/inst/temp_xout0_V_U
  pfm_top_i/dynamic_region/.*/inst/temp_xin1_V_U
  pfm_top_i/dynamic_region/.*/inst/grp_nondf_kernel_2mm_fu_114
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L3_out_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_IO_L3_in_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_IO_L3_in_x1_U0
} ]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [ get_cells -regexp { 
  pfm_top_i/dynamic_region/.*/inst/control_s_axi_U
  pfm_top_i/dynamic_region/.*/inst/gmem_B_m_axi_U
  pfm_top_i/dynamic_region/.*/inst/.*/kernel3_x0_entry38_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_IO_L2_in_0_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_IO_L2_in_1_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_IO_L3_in_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_IO_L2_in_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_IO_L2_in_boundary_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_0_0_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_0_1_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_1_1_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_PE_dummy_0_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_PE_dummy_1_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/kernel3_x1_entry31_U0
  pfm_top_i/dynamic_region/.*/inst/.*/kernel3_x1_entry42_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_2_1_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_3_1_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_4_1_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_5_1_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_6_1_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_7_1_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_8_1_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_9_1_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_10_0_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_10_1_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_11_0_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_11_1_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_12_0_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_12_1_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L2_out_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L2_out_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L2_out_boundary_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L2_out_boundary_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_PE_dummy_2_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_PE_dummy_3_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_PE_dummy_4_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_PE_dummy_5_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_PE_dummy_6_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_PE_dummy_7_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_PE_dummy_8_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_PE_dummy_9_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_PE_dummy_10_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_PE_dummy_11_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_PE_dummy_12_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_PE_dummy_0_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_PE_dummy_1_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_PE_dummy_0_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_PE_dummy_1_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_PE_dummy_2_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_PE_dummy_3_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_PE_dummy_4_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_PE_dummy_5_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_PE_dummy_6_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_PE_dummy_7_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_PE_dummy_8_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_PE_dummy_9_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_PE_dummy_10_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_PE_dummy_11_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_PE_dummy_12_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_PE_dummy_0_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_PE_dummy_1_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_5_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_4_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_15_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_3_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_10_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_16_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_18_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_19_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_21_x0_U0
} ]
add_cells_to_pblock CR_X4Y8_To_CR_X7Y11 [ get_cells -regexp { 
  pfm_top_i/dynamic_region/.*/inst/gmem_C_m_axi_U
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L3_out_x1_U0
} ]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [ get_cells -regexp { 
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_13_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_14_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_15_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_16_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_17_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_18_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_19_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_20_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_21_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_22_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_23_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_boundary_0_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_boundary_1_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_boundary_0_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_boundary_1_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_IO_L2_in_2_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_IO_L2_in_3_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_IO_L2_in_4_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_IO_L2_in_5_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_IO_L2_in_6_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_IO_L2_in_7_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_IO_L2_in_8_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_IO_L2_in_9_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_IO_L2_in_10_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_IO_L2_in_11_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_IO_L2_in_0_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_IO_L2_in_1_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_IO_L2_in_2_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_IO_L2_in_3_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_IO_L2_in_4_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_IO_L2_in_5_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_IO_L2_in_6_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_IO_L2_in_7_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_IO_L2_in_10_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_IO_L2_in_11_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_IO_L2_in_boundary_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_IO_L2_in_boundary_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_2_0_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_4_0_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_6_0_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_8_0_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_3_0_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_4_0_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_5_0_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_7_0_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_9_0_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_1_0_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_3_0_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_5_0_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_7_0_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_9_0_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_11_0_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_1_0_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_6_0_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_8_0_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_IO_L2_in_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_IO_L2_in_boundary_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_23_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_4_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_7_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_8_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_10_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_7_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_2_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_9_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_5_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_drain_IO_L1_out_8_x1_U0
} ]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [ get_cells -regexp { 
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_0_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_1_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_2_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_2_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_3_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_4_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_5_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_6_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_7_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_8_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_9_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_10_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_10_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_11_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_12_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_12_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_11_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_11_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_10_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_11_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_10_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_10_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_0_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_11_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_9_x1_U
} ]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [ get_cells -regexp { 
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_B_IO_L2_in_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/B_c_U
  pfm_top_i/dynamic_region/.*/inst/.*/C_c1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_1_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_1_2_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_B_IO_L2_in_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_0_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_0_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_0_2_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_0_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_0_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_2_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_3_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_4_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_5_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_6_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_7_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_8_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_9_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_10_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_10_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_11_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_11_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_11_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_12_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_12_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_12_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L2_out_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L2_out_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_2_2_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_3_2_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_4_2_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_5_2_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_6_2_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_7_2_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_8_2_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_9_2_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_10_2_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_11_2_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_12_2_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_13_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_13_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_8_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_8_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_8_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_7_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_5_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_5_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_4_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_2_1_x0_U
} ]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [ get_cells -regexp { 
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_10_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_9_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_8_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_7_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_6_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_5_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_4_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_3_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_2_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_3_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_4_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_5_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_6_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_7_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_8_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_9_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_10_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_11_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_2_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_3_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_4_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_5_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_6_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_7_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_11_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_12_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_12_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_2_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_2_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_4_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_4_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_6_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_6_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_8_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_8_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_3_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_4_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_4_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_5_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_5_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_7_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_7_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_9_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_3_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_3_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_5_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_5_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_7_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_7_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_9_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_9_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_11_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_1_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_6_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_6_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_8_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_B_IO_L2_in_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_7_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_4_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_4_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_3_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_2_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_1_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_4_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_9_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_3_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_6_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_4_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_3_0_x1_U
} ]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/A_c_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/A_c_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/A_c_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_0_0_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_0_0_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_0_0_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_0_0_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_0_0_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_0_0_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_0_1_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_0_1_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_0_1_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_1_1_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_1_1_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_1_1_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_2_0_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_2_0_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_2_0_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_2_0_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_2_0_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_2_0_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_3_1_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_3_1_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_3_1_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_4_1_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_4_1_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_4_1_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_5_1_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_5_1_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_5_1_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_6_1_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_6_1_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_6_1_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_7_1_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_7_1_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_7_1_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_8_1_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_8_1_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_8_1_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_9_1_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_9_1_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_9_1_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_10_0_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_10_0_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_10_0_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_10_0_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_10_0_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_10_0_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_11_1_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_11_1_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_11_1_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_12_0_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_12_0_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_12_0_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_12_0_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_12_0_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_12_0_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_12_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_12_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_12_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_11_0_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_11_0_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_11_0_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_10_0_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_10_0_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_10_0_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_9_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_9_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_9_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_8_0_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_8_0_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_8_0_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_6_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_6_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_6_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_5_0_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_5_0_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_5_0_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_3_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_3_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_3_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_2_0_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_2_0_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_2_0_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_1_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_1_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_1_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_0_0_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_0_0_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_0_0_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_12_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_12_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_12_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_11_1_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_11_1_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_11_1_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_10_1_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_10_1_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_10_1_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_9_1_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_9_1_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_9_1_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_7_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_7_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_7_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_6_1_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_6_1_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_6_1_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_4_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_4_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_4_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_3_1_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_3_1_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_3_1_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_2_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_2_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_2_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_1_1_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_1_1_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_1_1_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_12_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_12_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_12_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_11_0_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_11_0_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_11_0_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_9_0_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_9_0_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_9_0_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_6_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_6_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_6_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_5_0_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_5_0_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_5_0_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_1_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_1_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_1_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_12_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_12_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_12_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_8_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_8_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_8_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L2_out_0_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L2_out_0_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L2_out_0_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_1_1_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_1_1_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_1_1_x0_U/inst.*2.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_1_1_x0_U/inst.*3.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_1_1_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_0_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_0_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_0_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_2_1_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_2_1_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_2_1_x0_U/inst.*2.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_2_1_x0_U/inst.*3.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_2_1_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_3_1_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_3_1_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_3_1_x0_U/inst.*2.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_3_1_x0_U/inst.*3.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_3_1_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_4_1_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_4_1_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_4_1_x0_U/inst.*2.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_4_1_x0_U/inst.*3.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_4_1_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_5_1_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_5_1_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_5_1_x0_U/inst.*2.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_5_1_x0_U/inst.*3.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_5_1_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_6_1_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_6_1_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_6_1_x0_U/inst.*2.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_6_1_x0_U/inst.*3.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_6_1_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_7_1_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_7_1_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_7_1_x0_U/inst.*2.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_7_1_x0_U/inst.*3.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_7_1_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_8_1_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_8_1_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_8_1_x0_U/inst.*2.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_8_1_x0_U/inst.*3.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_8_1_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_9_1_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_9_1_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_9_1_x0_U/inst.*2.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_9_1_x0_U/inst.*3.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_9_1_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_10_0_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_10_0_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_10_0_x0_U/inst.*2.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_10_0_x0_U/inst.*3.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_10_0_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_10_0_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_10_0_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_10_0_x0_U/inst.*2.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_10_0_x0_U/inst.*3.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_10_0_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_11_0_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_11_0_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_11_0_x0_U/inst.*2.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_11_0_x0_U/inst.*3.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_11_0_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_12_0_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_12_0_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_12_0_x0_U/inst.*2.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_12_0_x0_U/inst.*3.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_12_0_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_0_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_0_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_0_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_0_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_0_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_0_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_0_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_0_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_0_x0_U/inst.*2.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_0_x0_U/inst.*3.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_0_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_0_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_0_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_0_x1_U/inst.*2.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_0_x1_U/inst.*3.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_0_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_0_2_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_0_2_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_0_2_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_1_2_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_1_2_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_1_2_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_2_2_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_2_2_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_2_2_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_3_2_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_3_2_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_3_2_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_4_2_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_4_2_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_4_2_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_5_2_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_5_2_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_5_2_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_6_2_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_6_2_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_6_2_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_7_2_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_7_2_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_7_2_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_8_2_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_8_2_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_8_2_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_9_2_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_9_2_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_9_2_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_10_2_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_10_2_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_10_2_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_11_2_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_11_2_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_11_2_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_12_2_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_12_2_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_12_2_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_13_0_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_13_0_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_13_0_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_13_1_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_13_1_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_13_1_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_7_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_7_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_7_x0_U/inst.*2.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_7_x0_U/inst.*3.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_7_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_6_0_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_6_0_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_6_0_x0_U/inst.*2.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_6_0_x0_U/inst.*3.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_6_0_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_7_0_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_7_0_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_7_0_x1_U/inst.*2.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_7_0_x1_U/inst.*3.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_7_0_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_9_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_9_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_9_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_9_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_9_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_9_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_8_0_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_8_0_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_8_0_x1_U/inst.*2.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_8_0_x1_U/inst.*3.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_8_0_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_2_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_2_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_2_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_1_0_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_1_0_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_1_0_x0_U/inst.*2.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_1_0_x0_U/inst.*3.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_1_0_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_6_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_6_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_6_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_3_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_3_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_3_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L2_out_0_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y8_To_CR_X7Y11 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L2_out_0_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y8_To_CR_X7Y11 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L2_out_0_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/C_c_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y8_To_CR_X7Y11 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/C_c_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y8_To_CR_X7Y11 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/C_c_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_11_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_11_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_11_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_10_1_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_10_1_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_10_1_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_9_1_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_9_1_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_9_1_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_8_1_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_8_1_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_8_1_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_7_1_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_7_1_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_7_1_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_6_1_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_6_1_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_6_1_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_5_1_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_5_1_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_5_1_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_4_1_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_4_1_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_4_1_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_3_1_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_3_1_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_3_1_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_2_1_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_2_1_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_2_1_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_1_1_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_1_1_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_1_1_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_0_1_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_0_1_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_0_1_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_12_0_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_12_0_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_12_0_x0_U/inst.*2.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_12_0_x0_U/inst.*3.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_12_0_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_12_1_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_12_1_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_12_1_x0_U/inst.*2.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_12_1_x0_U/inst.*3.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_12_1_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_12_0_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_12_0_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_12_0_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_12_1_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_12_1_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_12_1_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_2_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_2_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_2_x0_U/inst.*2.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_2_x0_U/inst.*3.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_2_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_0_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_0_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_0_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_10_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_10_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_10_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_3_0_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_3_0_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_3_0_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_9_0_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_9_0_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_9_0_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_1_0_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_1_0_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_1_0_x0_U/inst.*2.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_1_0_x0_U/inst.*3.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_1_0_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_1_0_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_1_0_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_1_0_x0_U/inst.*2.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_1_0_x0_U/inst.*3.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_1_0_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_11_0_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_11_0_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_11_0_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_1_0_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_1_0_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_1_0_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_8_0_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_8_0_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_8_0_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_B_IO_L2_in_0_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_B_IO_L2_in_0_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_B_IO_L2_in_0_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_1_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_1_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_1_1_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_0_1_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_0_1_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_0_1_x0_U/inst.*2.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_0_1_x0_U/inst.*3.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_0_1_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_8_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_8_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_8_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_5_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_5_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_5_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_5_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_5_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_5_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_10_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_10_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_10_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_2_0_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_2_0_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_PE_2_0_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_7_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_7_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_7_x1_U/inst.*2.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_7_x1_U/inst.*3.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_drain_C_drain_IO_L1_out_0_7_x1_U/inst.*fifo_unit }]