write_checkpoint before_applying_floorplan_constriants.dcp
create_pblock CR_X4Y12_To_CR_X7Y15
resize_pblock CR_X4Y12_To_CR_X7Y15 -add CLOCKREGION_X4Y12:CLOCKREGION_X7Y15
resize_pblock CR_X4Y12_To_CR_X7Y15 -remove {
  CLOCKREGION_X4Y1:CLOCKREGION_X4Y3
  CLOCKREGION_X4Y5:CLOCKREGION_X4Y7
  CLOCKREGION_X4Y9:CLOCKREGION_X4Y11
  CLOCKREGION_X4Y12:CLOCKREGION_X4Y14
  CLOCKREGION_X7Y0:CLOCKREGION_X7Y15
}
resize_pblock CR_X4Y12_To_CR_X7Y15 -add { SLICE_X144Y720:SLICE_X145Y959 DSP48E2_X19Y288:DSP48E2_X19Y383 RAMB18_X9Y288:RAMB18_X9Y383 RAMB36_X9Y144:RAMB36_X9Y191 }
create_pblock CR_X4Y8_To_CR_X7Y11
resize_pblock CR_X4Y8_To_CR_X7Y11 -add CLOCKREGION_X4Y8:CLOCKREGION_X7Y11
resize_pblock CR_X4Y8_To_CR_X7Y11 -remove {
  CLOCKREGION_X4Y1:CLOCKREGION_X4Y3
  CLOCKREGION_X4Y5:CLOCKREGION_X4Y7
  CLOCKREGION_X4Y9:CLOCKREGION_X4Y11
  CLOCKREGION_X4Y12:CLOCKREGION_X4Y14
  CLOCKREGION_X7Y0:CLOCKREGION_X7Y15
}
resize_pblock CR_X4Y8_To_CR_X7Y11 -add { SLICE_X144Y480:SLICE_X145Y719 DSP48E2_X19Y192:DSP48E2_X19Y287 RAMB18_X9Y192:RAMB18_X9Y287 RAMB36_X9Y96:RAMB36_X9Y143 }
create_pblock CR_X0Y4_To_CR_X3Y7
resize_pblock CR_X0Y4_To_CR_X3Y7 -add CLOCKREGION_X0Y4:CLOCKREGION_X3Y7
resize_pblock CR_X0Y4_To_CR_X3Y7 -remove {
  CLOCKREGION_X4Y1:CLOCKREGION_X4Y3
  CLOCKREGION_X4Y5:CLOCKREGION_X4Y7
  CLOCKREGION_X4Y9:CLOCKREGION_X4Y11
  CLOCKREGION_X4Y12:CLOCKREGION_X4Y14
  CLOCKREGION_X7Y0:CLOCKREGION_X7Y15
}
create_pblock CR_X4Y4_To_CR_X7Y7
resize_pblock CR_X4Y4_To_CR_X7Y7 -add CLOCKREGION_X4Y4:CLOCKREGION_X7Y7
resize_pblock CR_X4Y4_To_CR_X7Y7 -remove {
  CLOCKREGION_X4Y1:CLOCKREGION_X4Y3
  CLOCKREGION_X4Y5:CLOCKREGION_X4Y7
  CLOCKREGION_X4Y9:CLOCKREGION_X4Y11
  CLOCKREGION_X4Y12:CLOCKREGION_X4Y14
  CLOCKREGION_X7Y0:CLOCKREGION_X7Y15
}
resize_pblock CR_X4Y4_To_CR_X7Y7 -add { SLICE_X144Y240:SLICE_X145Y479 DSP48E2_X19Y96:DSP48E2_X19Y191 RAMB18_X9Y96:RAMB18_X9Y191 RAMB36_X9Y48:RAMB36_X9Y95 }
create_pblock CR_X4Y0_To_CR_X7Y3
resize_pblock CR_X4Y0_To_CR_X7Y3 -add CLOCKREGION_X4Y0:CLOCKREGION_X7Y3
resize_pblock CR_X4Y0_To_CR_X7Y3 -remove {
  CLOCKREGION_X4Y1:CLOCKREGION_X4Y3
  CLOCKREGION_X4Y5:CLOCKREGION_X4Y7
  CLOCKREGION_X4Y9:CLOCKREGION_X4Y11
  CLOCKREGION_X4Y12:CLOCKREGION_X4Y14
  CLOCKREGION_X7Y0:CLOCKREGION_X7Y15
}
resize_pblock CR_X4Y0_To_CR_X7Y3 -add { SLICE_X144Y0:SLICE_X145Y239 DSP48E2_X19Y0:DSP48E2_X19Y95 RAMB18_X9Y0:RAMB18_X9Y95 RAMB36_X9Y0:RAMB36_X9Y47 }
create_pblock CR_X0Y0_To_CR_X3Y3
resize_pblock CR_X0Y0_To_CR_X3Y3 -add CLOCKREGION_X0Y0:CLOCKREGION_X3Y3
resize_pblock CR_X0Y0_To_CR_X3Y3 -remove {
  CLOCKREGION_X4Y1:CLOCKREGION_X4Y3
  CLOCKREGION_X4Y5:CLOCKREGION_X4Y7
  CLOCKREGION_X4Y9:CLOCKREGION_X4Y11
  CLOCKREGION_X4Y12:CLOCKREGION_X4Y14
  CLOCKREGION_X7Y0:CLOCKREGION_X7Y15
}
create_pblock CR_X0Y8_To_CR_X3Y11
resize_pblock CR_X0Y8_To_CR_X3Y11 -add CLOCKREGION_X0Y8:CLOCKREGION_X3Y11
resize_pblock CR_X0Y8_To_CR_X3Y11 -remove {
  CLOCKREGION_X4Y1:CLOCKREGION_X4Y3
  CLOCKREGION_X4Y5:CLOCKREGION_X4Y7
  CLOCKREGION_X4Y9:CLOCKREGION_X4Y11
  CLOCKREGION_X4Y12:CLOCKREGION_X4Y14
  CLOCKREGION_X7Y0:CLOCKREGION_X7Y15
}
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [ get_cells -regexp { 
  pfm_top_i/dynamic_region/.*/inst/temp_C1_V_U
  pfm_top_i/dynamic_region/.*/inst/temp_C2_V_U
  pfm_top_i/dynamic_region/.*/inst/grp_nondf_kernel_cov_x0_fu_142
  pfm_top_i/dynamic_region/.*/inst/.*/A_IO_L3_in_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_IO_L2_in_0_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_IO_L2_in_1_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_IO_L2_in_2_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_IO_L2_in_boundary_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_IO_L2_in_0_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_IO_L2_in_1_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_IO_L2_in_2_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_IO_L2_in_3_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_IO_L2_in_4_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_IO_L2_in_5_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_IO_L2_in_6_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_IO_L2_in_boundary_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_IO_L3_in_serialize_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_IO_L3_in_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_IO_L2_in_0_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_IO_L2_in_1_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_IO_L2_in_2_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_IO_L2_in_3_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_0_0_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_0_1_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_0_2_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_0_3_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_1_0_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_1_1_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_1_2_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_1_3_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_2_0_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_2_1_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_2_2_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_2_3_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_3_0_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_3_1_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_3_2_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_3_3_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_PE_dummy_in_0_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_PE_dummy_in_1_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_PE_dummy_in_2_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_PE_dummy_in_3_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_PE_dummy_in_0_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_PE_dummy_in_1_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_PE_dummy_in_2_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_PE_dummy_in_3_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_boundary_wrapper_0_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_0_2_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_0_1_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_0_0_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_boundary_wrapper_1_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_1_2_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_1_1_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_1_0_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_boundary_wrapper_2_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_2_2_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_2_1_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_2_0_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_boundary_wrapper_3_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_3_2_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_3_1_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_3_0_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_boundary_wrapper_4_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_4_2_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_4_1_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_4_0_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_boundary_wrapper_5_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_5_2_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_5_1_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_5_0_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L2_out_5_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L2_out_4_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L2_out_3_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L2_out_2_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L2_out_1_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L2_out_0_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L3_out_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_IO_L3_in_serialize_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_IO_L3_in_x1_U0
} ]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [ get_cells -regexp { 
  pfm_top_i/dynamic_region/.*/inst/gmem_A_m_axi_U
  pfm_top_i/dynamic_region/.*/inst/.*/A_IO_L3_in_serialize_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_IO_L2_in_4_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_IO_L2_in_5_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_IO_L2_in_6_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_IO_L2_in_boundary_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_0_4_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_0_5_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_0_6_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_0_7_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_1_4_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_1_5_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_1_6_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_1_7_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_2_4_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_2_5_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_2_6_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_2_7_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_3_4_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_3_5_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_3_6_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_3_7_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_PE_dummy_in_0_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_PE_dummy_in_1_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_PE_dummy_in_2_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_PE_dummy_in_3_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_PE_dummy_in_4_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_PE_dummy_in_5_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_PE_dummy_in_6_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_PE_dummy_in_7_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_PE_dummy_in_4_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_PE_dummy_in_5_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_PE_dummy_in_6_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_PE_dummy_in_7_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_boundary_wrapper_6_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_6_2_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_6_1_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_6_0_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_boundary_wrapper_7_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_7_2_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_7_1_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_7_0_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L2_out_boundary_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L2_out_6_x0_U0
} ]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [ get_cells -regexp { 
  pfm_top_i/dynamic_region/.*/inst/temp_D1_V_U
  pfm_top_i/dynamic_region/.*/inst/temp_D2_V_U
  pfm_top_i/dynamic_region/.*/inst/grp_nondf_kernel_cov_x1_fu_148
  pfm_top_i/dynamic_region/.*/inst/.*/B_IO_L3_in_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L3_out_serialize_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_IO_L2_in_0_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_IO_L2_in_1_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_IO_L2_in_2_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_IO_L2_in_boundary_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_IO_L3_in_serialize_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_IO_L3_in_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_IO_L2_in_0_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_IO_L2_in_1_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_IO_L2_in_2_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_IO_L2_in_3_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_IO_L2_in_4_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_IO_L2_in_5_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_IO_L2_in_6_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_IO_L2_in_boundary_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_IO_L3_in_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_IO_L2_in_0_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_IO_L2_in_1_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_IO_L2_in_2_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_IO_L2_in_3_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_0_0_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_0_1_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_0_2_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_0_3_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_1_0_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_1_1_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_1_2_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_1_3_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_2_0_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_2_1_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_2_2_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_2_3_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_3_0_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_3_1_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_3_2_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_3_3_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_PE_dummy_in_0_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_PE_dummy_in_1_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_PE_dummy_in_2_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_PE_dummy_in_3_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_PE_dummy_in_0_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_PE_dummy_in_1_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_PE_dummy_in_2_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_PE_dummy_in_3_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_boundary_wrapper_0_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_0_2_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_0_1_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_0_0_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_boundary_wrapper_1_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_1_2_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_1_1_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_1_0_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_boundary_wrapper_2_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_2_2_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_2_1_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_2_0_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_boundary_wrapper_3_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_3_2_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_3_1_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_3_0_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_boundary_wrapper_4_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_4_2_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_4_1_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_4_0_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_boundary_wrapper_5_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_5_2_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_5_1_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_5_0_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L2_out_5_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L2_out_4_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L2_out_3_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L2_out_2_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L2_out_1_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L2_out_0_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L3_out_x1_U0
} ]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [ get_cells -regexp { 
  pfm_top_i/dynamic_region/.*/inst/control_s_axi_U
  pfm_top_i/dynamic_region/.*/inst/gmem_B_m_axi_U
  pfm_top_i/dynamic_region/.*/inst/.*/kernel0_x0_entry5_U0
  pfm_top_i/dynamic_region/.*/inst/.*/kernel0_x0_entry15_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_IO_L3_in_serialize_x0_U0
  pfm_top_i/dynamic_region/.*/inst/.*/kernel0_x1_entry8_U0
  pfm_top_i/dynamic_region/.*/inst/.*/kernel0_x1_entry19_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_IO_L2_in_4_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_IO_L2_in_5_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_IO_L2_in_6_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_IO_L2_in_boundary_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_0_4_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_0_5_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_0_6_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_0_7_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_1_4_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_1_5_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_1_6_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_1_7_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_2_4_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_2_5_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_2_6_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_2_7_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_3_4_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_3_5_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_3_6_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/PE_wrapper_3_7_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_PE_dummy_in_0_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_PE_dummy_in_1_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_PE_dummy_in_2_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/A_PE_dummy_in_3_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_PE_dummy_in_4_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_PE_dummy_in_5_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_PE_dummy_in_6_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/B_PE_dummy_in_7_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_PE_dummy_in_4_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_PE_dummy_in_5_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_PE_dummy_in_6_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/C_PE_dummy_in_7_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_boundary_wrapper_6_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_6_2_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_6_1_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_6_0_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_boundary_wrapper_7_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_7_2_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_7_1_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L1_out_wrapper_7_0_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L2_out_boundary_x1_U0
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L2_out_6_x1_U0
} ]
add_cells_to_pblock CR_X4Y8_To_CR_X7Y11 [ get_cells -regexp { 
  pfm_top_i/dynamic_region/.*/inst/gmem_C_m_axi_U
  pfm_top_i/dynamic_region/.*/inst/.*/C_IO_L3_in_serialize_x1_U0
} ]
add_cells_to_pblock CR_X4Y12_To_CR_X7Y15 [ get_cells -regexp { 
  pfm_top_i/dynamic_region/.*/inst/gmem_D_m_axi_U
  pfm_top_i/dynamic_region/.*/inst/.*/D_drain_IO_L3_out_serialize_x1_U0
} ]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [ get_cells -regexp { 
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_C_IO_L2_in_3_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_0_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_3_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_2_2_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_0_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_2_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_0_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_1_3_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_1_2_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_2_3_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_2_2_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_0_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_2_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_4_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L2_out_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_4_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_B_IO_L2_in_7_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_2_3_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_B_IO_L2_in_5_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_3_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_3_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L2_out_3_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_0_3_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_C_IO_L2_in_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_0_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_2_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_4_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_B_IO_L2_in_6_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_1_3_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_1_3_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_1_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_2_3_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_3_2_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_4_3_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_B_IO_L2_in_2_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_3_2_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L2_out_5_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_4_2_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L3_in_serialize_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_5_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_2_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_3_2_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_0_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_2_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_4_3_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_4_2_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_3_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_1_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_1_2_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_3_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_3_3_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_0_2_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L2_out_4_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_2_2_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_4_3_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_3_2_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_4_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_3_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_1_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_4_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_0_2_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_1_2_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_0_3_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_2_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_2_2_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_1_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_5_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_B_IO_L2_in_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_3_3_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_1_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_0_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L2_out_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_1_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_3_3_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_B_IO_L2_in_3_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_C_IO_L2_in_2_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_C_IO_L2_in_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_1_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_1_3_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_2_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_3_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_0_2_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_3_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_1_2_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_2_3_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_1_3_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_3_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_2_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_5_3_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_3_3_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_0_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_1_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_0_2_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_4_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_2_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_3_3_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_0_3_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_2_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_3_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L2_out_2_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_0_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_1_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_2_3_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_0_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_4_2_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_1_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_0_3_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_0_2_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_5_2_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_3_2_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_1_2_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_3_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_2_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_C_IO_L3_in_serialize_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_0_3_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_B_IO_L2_in_4_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_2_2_x0_U
} ]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [ get_cells -regexp { 
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_3_5_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_0_5_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_3_7_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_2_4_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_3_6_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_0_6_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_4_4_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_6_3_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_1_4_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_2_7_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_0_4_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_1_6_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_0_7_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_2_4_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_0_7_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_3_5_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_2_7_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_6_2_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_1_7_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_3_4_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_2_7_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_6_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L2_out_7_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_1_8_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_4_6_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_4_7_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_3_4_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_0_8_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_2_5_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_C_IO_L2_in_6_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_2_5_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_3_5_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_4_5_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_1_5_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_7_1_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_4_4_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_2_7_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_7_2_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_3_6_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_7_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_0_5_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_2_6_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_3_8_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_4_6_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_4_7_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_C_IO_L2_in_5_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_3_7_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_1_6_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_0_7_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_2_6_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_2_6_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_1_7_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_1_7_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_1_5_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_6_0_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_2_6_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_1_6_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_3_7_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_2_5_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_1_4_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_1_7_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_3_6_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_0_6_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_C_IO_L2_in_7_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_1_5_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_7_3_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_0_6_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_1_6_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_3_7_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_4_5_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_2_8_x0_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_3_6_x0_U
} ]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [ get_cells -regexp { 
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_B_IO_L2_in_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_C_IO_L2_in_2_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_2_3_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_B_IO_L2_in_2_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_3_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_5_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_1_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_3_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_3_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_1_3_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_2_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_1_2_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_2_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_4_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_4_3_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_0_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_3_2_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L2_out_4_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_C_IO_L2_in_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_0_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_0_3_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_4_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_2_3_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_4_2_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_3_3_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_3_3_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_1_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_2_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_4_3_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_0_2_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_2_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_4_2_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_B_IO_L2_in_3_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_3_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_2_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_3_3_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_0_3_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_1_2_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_3_2_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_4_3_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_0_3_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_2_2_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_2_3_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_1_2_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_3_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_1_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_B_IO_L3_in_serialize_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_3_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_0_2_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_0_2_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_1_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_1_3_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_0_2_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_0_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_2_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_1_2_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_B_IO_L2_in_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_2_3_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_4_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_B_IO_L2_in_4_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_1_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L2_out_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_0_2_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_1_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_2_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L2_out_3_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_1_3_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_4_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_3_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_B_IO_L2_in_7_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_2_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_0_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_1_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_2_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_0_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_3_2_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_1_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_0_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_2_3_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_2_2_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_5_3_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_3_3_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_4_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_3_3_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_3_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_2_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_3_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_0_3_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_0_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_2_2_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_3_2_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_5_2_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L2_out_2_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_4_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_B_IO_L2_in_6_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_C_IO_L2_in_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_3_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L2_out_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_C_IO_L2_in_3_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_4_2_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_2_2_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_3_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_0_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_1_2_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_3_2_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_1_3_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_1_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_2_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_5_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_0_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L2_out_5_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_1_3_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_B_IO_L2_in_5_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_1_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_2_2_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_0_3_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_0_1_x1_U
} ]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [ get_cells -regexp { 
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_2_7_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_7_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_7_2_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_3_8_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/D_c2_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_1_7_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_2_5_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_0_7_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_4_4_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_4_6_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_1_6_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/A_c1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_7_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_0_4_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_6_0_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_6_3_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_1_5_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_3_6_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_2_6_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_0_5_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_3_4_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_6_1_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_C_IO_L2_in_5_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_0_8_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_1_4_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_2_4_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_1_7_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_3_5_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_3_6_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_0_6_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_4_5_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_1_6_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_3_7_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_6_2_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_3_7_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_1_6_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_4_5_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_1_7_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_2_5_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L2_out_7_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_C_IO_L2_in_7_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_1_7_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_4_7_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_3_7_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_C_IO_L2_in_6_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_1_6_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_2_6_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_3_5_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_1_5_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_0_7_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_0_7_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_0_5_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L1_out_7_3_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_2_8_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_1_5_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_4_6_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_3_7_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/B_c2_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_3_6_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_4_7_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_2_7_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_3_5_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_2_6_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/C_c1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_3_4_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_2_6_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_1_8_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_4_4_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_1_4_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_2_5_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_2_4_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_2_7_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_PE_0_6_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_3_6_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_0_6_x1_U
  pfm_top_i/dynamic_region/.*/inst/.*/B_c_U
  pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_2_7_x1_U
} ]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_0_5_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_0_5_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_0_5_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L2_out_6_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L2_out_6_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L2_out_6_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_2_4_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_2_4_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_2_4_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_1_4_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_1_4_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_1_4_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_B_IO_L2_in_0_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_B_IO_L2_in_0_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_B_IO_L2_in_0_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_3_5_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_3_5_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_3_5_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_2_5_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_2_5_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_2_5_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_3_4_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_3_4_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_3_4_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L3_in_serialize_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L3_in_serialize_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L3_in_serialize_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_1_5_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_1_5_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_1_5_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_0_4_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_0_4_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_0_4_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_C_IO_L2_in_4_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_C_IO_L2_in_4_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_C_IO_L2_in_4_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_0_6_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_0_6_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_0_6_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_0_4_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_0_4_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_0_4_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_1_4_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_1_4_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_1_4_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_0_4_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_0_4_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_0_4_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_2_4_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_2_4_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_2_4_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/A_c_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/A_c_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/A_c_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_0_5_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_0_5_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_0_5_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_3_4_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_3_4_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_3_4_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_0_7_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_0_7_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y0_To_CR_X7Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_0_7_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y8_To_CR_X7Y11 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_C_IO_L3_in_serialize_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y8_To_CR_X3Y11 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_C_IO_L3_in_serialize_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y8_To_CR_X3Y11 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_C_IO_L3_in_serialize_x1_U/inst.*2.*unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_C_IO_L3_in_serialize_x1_U/inst.*3.*unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_C_IO_L3_in_serialize_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_3_5_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_3_5_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_3_5_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_1_4_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_1_4_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_1_4_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_0_5_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_0_5_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_0_5_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_3_4_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_3_4_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_3_4_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_2_5_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_2_5_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_2_5_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_B_IO_L3_in_serialize_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_B_IO_L3_in_serialize_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_B_IO_L3_in_serialize_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_0_4_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_0_4_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_0_4_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_0_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_0_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_A_IO_L2_in_0_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_2_4_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_2_4_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_2_4_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L2_out_6_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L2_out_6_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L2_out_6_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y0_To_CR_X3Y3 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L3_out_serialize_x0_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L3_out_serialize_x0_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L3_out_serialize_x0_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_1_5_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_1_5_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_PE_1_5_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_0_4_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_0_4_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_0_4_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_0_5_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_0_5_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_0_5_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_1_4_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_1_4_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_1_4_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_0_4_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_0_4_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_0_4_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_0_7_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_0_7_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_0_7_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_3_4_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_3_4_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_3_4_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_C_IO_L2_in_4_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_C_IO_L2_in_4_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_C_C_IO_L2_in_4_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_2_4_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_2_4_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_A_PE_2_4_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_0_6_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_0_6_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_B_PE_0_6_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/C_c_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y8_To_CR_X7Y11 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/C_c_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y8_To_CR_X7Y11 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/C_c_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X0Y4_To_CR_X3Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L3_out_serialize_x1_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L3_out_serialize_x1_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L3_out_serialize_x1_U/inst.*2.*unit }]
add_cells_to_pblock CR_X4Y8_To_CR_X7Y11 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L3_out_serialize_x1_U/inst.*3.*unit }]
add_cells_to_pblock CR_X4Y8_To_CR_X7Y11 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L3_out_serialize_x1_U/inst.*4.*unit }]
add_cells_to_pblock CR_X4Y12_To_CR_X7Y15 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L3_out_serialize_x1_U/inst.*5.*unit }]
add_cells_to_pblock CR_X4Y12_To_CR_X7Y15 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/fifo_D_drain_D_drain_IO_L3_out_serialize_x1_U/inst.*fifo_unit }]
add_cells_to_pblock CR_X4Y4_To_CR_X7Y7 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/D_c_U/inst.*0.*unit }]
add_cells_to_pblock CR_X4Y8_To_CR_X7Y11 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/D_c_U/inst.*1.*unit }]
add_cells_to_pblock CR_X4Y8_To_CR_X7Y11 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/D_c_U/inst.*2.*unit }]
add_cells_to_pblock CR_X4Y12_To_CR_X7Y15 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/D_c_U/inst.*3.*unit }]
add_cells_to_pblock CR_X4Y12_To_CR_X7Y15 [get_cells -regexp { pfm_top_i/dynamic_region/.*/inst/.*/D_c_U/inst.*fifo_unit }]