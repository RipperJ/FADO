set_directive_unroll -factor 32 nondf_kernel_2mm/nondf_kernel_2mm_loop_4
set_directive_unroll -factor 32 nondf_kernel_2mm/nondf_kernel_2mm_loop_5
set_directive_unroll -factor 2 nondf_kernel_2mm/nondf_kernel_2mm_loop_7
set_directive_unroll -factor 32 nondf_kernel_2mm/nondf_kernel_2mm_loop_8
set_directive_pipeline -II 1  A_IO_L2_in_0_x0/A_IO_L2_in_0_x0_loop_3
set_directive_pipeline -II 16  A_IO_L2_in_0_x0/A_IO_L2_in_0_x0_loop_5
set_directive_pipeline -II 1  A_IO_L2_in_1_x0/A_IO_L2_in_1_x0_loop_3
set_directive_pipeline -II 16  A_IO_L2_in_1_x0/A_IO_L2_in_1_x0_loop_5
set_directive_pipeline -II 1  A_IO_L2_in_2_x0/A_IO_L2_in_2_x0_loop_3
set_directive_pipeline -II 16  A_IO_L2_in_2_x0/A_IO_L2_in_2_x0_loop_5
set_directive_pipeline -II 1  A_IO_L2_in_3_x0/A_IO_L2_in_3_x0_loop_3
set_directive_pipeline -II 16  A_IO_L2_in_3_x0/A_IO_L2_in_3_x0_loop_5
set_directive_pipeline -II 1  A_IO_L2_in_4_x0/A_IO_L2_in_4_x0_loop_3
set_directive_pipeline -II 16  A_IO_L2_in_4_x0/A_IO_L2_in_4_x0_loop_5
set_directive_pipeline -II 1  A_IO_L2_in_5_x0/A_IO_L2_in_5_x0_loop_3
set_directive_pipeline -II 16  A_IO_L2_in_5_x0/A_IO_L2_in_5_x0_loop_5
set_directive_pipeline -II 1  A_IO_L2_in_6_x0/A_IO_L2_in_6_x0_loop_3
set_directive_pipeline -II 16  A_IO_L2_in_6_x0/A_IO_L2_in_6_x0_loop_5
set_directive_pipeline -II 1  A_IO_L2_in_7_x0/A_IO_L2_in_7_x0_loop_3
set_directive_pipeline -II 16  A_IO_L2_in_7_x0/A_IO_L2_in_7_x0_loop_5
set_directive_pipeline -II 1  A_IO_L2_in_8_x0/A_IO_L2_in_8_x0_loop_3
set_directive_pipeline -II 16  A_IO_L2_in_8_x0/A_IO_L2_in_8_x0_loop_5
set_directive_pipeline -II 1  A_IO_L2_in_9_x0/A_IO_L2_in_9_x0_loop_3
set_directive_pipeline -II 16  A_IO_L2_in_9_x0/A_IO_L2_in_9_x0_loop_5
set_directive_pipeline -II 1  A_IO_L2_in_10_x0/A_IO_L2_in_10_x0_loop_3
set_directive_pipeline -II 16  A_IO_L2_in_10_x0/A_IO_L2_in_10_x0_loop_5
set_directive_pipeline -II 1  A_IO_L2_in_11_x0/A_IO_L2_in_11_x0_loop_3
set_directive_pipeline -II 16  A_IO_L2_in_11_x0/A_IO_L2_in_11_x0_loop_5
set_directive_pipeline -II 1  A_IO_L2_in_boundary_x0/A_IO_L2_in_boundary_x0_loop_3
set_directive_pipeline -II 16  A_IO_L2_in_boundary_x0/A_IO_L2_in_boundary_x0_loop_5
set_directive_pipeline -II 1  B_IO_L2_in_x0/B_IO_L2_in_x0_loop_3
set_directive_pipeline -II 1  B_IO_L2_in_x0/B_IO_L2_in_x0_loop_6
set_directive_pipeline -II 1  B_IO_L2_in_boundary_x0/B_IO_L2_in_boundary_x0_loop_3
set_directive_pipeline -II 1  B_IO_L2_in_boundary_x0/B_IO_L2_in_boundary_x0_loop_6
set_directive_pipeline -II 1  PE_wrapper_0_0_x0/PE_wrapper_0_0_x0_loop_2
set_directive_pipeline -II 1  PE_wrapper_0_0_x0/PE_wrapper_0_0_x0_loop_5
set_directive_pipeline -II 1  PE_wrapper_0_1_x0/PE_wrapper_0_1_x0_loop_2
set_directive_pipeline -II 1  PE_wrapper_0_1_x0/PE_wrapper_0_1_x0_loop_5
set_directive_pipeline -II 1  PE_wrapper_1_0_x0/PE_wrapper_1_0_x0_loop_2
set_directive_pipeline -II 1  PE_wrapper_1_0_x0/PE_wrapper_1_0_x0_loop_5
set_directive_pipeline -II 1  PE_wrapper_1_1_x0/PE_wrapper_1_1_x0_loop_2
set_directive_pipeline -II 1  PE_wrapper_1_1_x0/PE_wrapper_1_1_x0_loop_5
set_directive_pipeline -II 1  PE_wrapper_2_0_x0/PE_wrapper_2_0_x0_loop_2
set_directive_pipeline -II 1  PE_wrapper_2_0_x0/PE_wrapper_2_0_x0_loop_5
set_directive_pipeline -II 1  PE_wrapper_2_1_x0/PE_wrapper_2_1_x0_loop_2
set_directive_pipeline -II 1  PE_wrapper_2_1_x0/PE_wrapper_2_1_x0_loop_5
set_directive_pipeline -II 1  PE_wrapper_3_0_x0/PE_wrapper_3_0_x0_loop_2
set_directive_pipeline -II 1  PE_wrapper_3_0_x0/PE_wrapper_3_0_x0_loop_5
set_directive_pipeline -II 1  PE_wrapper_3_1_x0/PE_wrapper_3_1_x0_loop_2
set_directive_pipeline -II 1  PE_wrapper_3_1_x0/PE_wrapper_3_1_x0_loop_5
set_directive_pipeline -II 1  PE_wrapper_4_0_x0/PE_wrapper_4_0_x0_loop_2
set_directive_pipeline -II 1  PE_wrapper_4_0_x0/PE_wrapper_4_0_x0_loop_5
set_directive_pipeline -II 1  PE_wrapper_4_1_x0/PE_wrapper_4_1_x0_loop_2
set_directive_pipeline -II 1  PE_wrapper_4_1_x0/PE_wrapper_4_1_x0_loop_5
set_directive_pipeline -II 1  PE_wrapper_5_0_x0/PE_wrapper_5_0_x0_loop_2
set_directive_pipeline -II 1  PE_wrapper_5_0_x0/PE_wrapper_5_0_x0_loop_5
set_directive_pipeline -II 1  PE_wrapper_5_1_x0/PE_wrapper_5_1_x0_loop_2
set_directive_pipeline -II 1  PE_wrapper_5_1_x0/PE_wrapper_5_1_x0_loop_5
set_directive_pipeline -II 1  PE_wrapper_6_0_x0/PE_wrapper_6_0_x0_loop_2
set_directive_pipeline -II 1  PE_wrapper_6_0_x0/PE_wrapper_6_0_x0_loop_5
set_directive_pipeline -II 1  PE_wrapper_6_1_x0/PE_wrapper_6_1_x0_loop_2
set_directive_pipeline -II 1  PE_wrapper_6_1_x0/PE_wrapper_6_1_x0_loop_5
set_directive_pipeline -II 1  PE_wrapper_7_0_x0/PE_wrapper_7_0_x0_loop_2
set_directive_pipeline -II 1  PE_wrapper_7_0_x0/PE_wrapper_7_0_x0_loop_5
set_directive_pipeline -II 1  PE_wrapper_7_1_x0/PE_wrapper_7_1_x0_loop_2
set_directive_pipeline -II 1  PE_wrapper_7_1_x0/PE_wrapper_7_1_x0_loop_5
set_directive_pipeline -II 1  PE_wrapper_8_0_x0/PE_wrapper_8_0_x0_loop_2
set_directive_pipeline -II 1  PE_wrapper_8_0_x0/PE_wrapper_8_0_x0_loop_5
set_directive_pipeline -II 1  PE_wrapper_8_1_x0/PE_wrapper_8_1_x0_loop_2
set_directive_pipeline -II 1  PE_wrapper_8_1_x0/PE_wrapper_8_1_x0_loop_5
set_directive_pipeline -II 1  PE_wrapper_9_0_x0/PE_wrapper_9_0_x0_loop_2
set_directive_pipeline -II 1  PE_wrapper_9_0_x0/PE_wrapper_9_0_x0_loop_5
set_directive_pipeline -II 1  PE_wrapper_9_1_x0/PE_wrapper_9_1_x0_loop_2
set_directive_pipeline -II 1  PE_wrapper_9_1_x0/PE_wrapper_9_1_x0_loop_5
set_directive_pipeline -II 1  PE_wrapper_10_0_x0/PE_wrapper_10_0_x0_loop_2
set_directive_pipeline -II 1  PE_wrapper_10_0_x0/PE_wrapper_10_0_x0_loop_5
set_directive_pipeline -II 1  PE_wrapper_10_1_x0/PE_wrapper_10_1_x0_loop_2
set_directive_pipeline -II 1  PE_wrapper_10_1_x0/PE_wrapper_10_1_x0_loop_5
set_directive_pipeline -II 1  PE_wrapper_11_0_x0/PE_wrapper_11_0_x0_loop_2
set_directive_pipeline -II 1  PE_wrapper_11_0_x0/PE_wrapper_11_0_x0_loop_5
set_directive_pipeline -II 1  PE_wrapper_11_1_x0/PE_wrapper_11_1_x0_loop_2
set_directive_pipeline -II 1  PE_wrapper_11_1_x0/PE_wrapper_11_1_x0_loop_5
set_directive_pipeline -II 1  PE_wrapper_12_0_x0/PE_wrapper_12_0_x0_loop_2
set_directive_pipeline -II 1  PE_wrapper_12_0_x0/PE_wrapper_12_0_x0_loop_5
set_directive_pipeline -II 1  PE_wrapper_12_1_x0/PE_wrapper_12_1_x0_loop_2
set_directive_pipeline -II 1  PE_wrapper_12_1_x0/PE_wrapper_12_1_x0_loop_5
set_directive_pipeline -II 1  A_PE_dummy_0_x0/A_PE_dummy_0_x0_loop_3
set_directive_pipeline -II 1  A_PE_dummy_1_x0/A_PE_dummy_1_x0_loop_3
set_directive_pipeline -II 1  A_PE_dummy_2_x0/A_PE_dummy_2_x0_loop_3
set_directive_pipeline -II 1  A_PE_dummy_3_x0/A_PE_dummy_3_x0_loop_3
set_directive_pipeline -II 1  A_PE_dummy_4_x0/A_PE_dummy_4_x0_loop_3
set_directive_pipeline -II 1  A_PE_dummy_5_x0/A_PE_dummy_5_x0_loop_3
set_directive_pipeline -II 1  A_PE_dummy_6_x0/A_PE_dummy_6_x0_loop_3
set_directive_pipeline -II 1  A_PE_dummy_7_x0/A_PE_dummy_7_x0_loop_3
set_directive_pipeline -II 1  A_PE_dummy_8_x0/A_PE_dummy_8_x0_loop_3
set_directive_pipeline -II 1  A_PE_dummy_9_x0/A_PE_dummy_9_x0_loop_3
set_directive_pipeline -II 1  A_PE_dummy_10_x0/A_PE_dummy_10_x0_loop_3
set_directive_pipeline -II 1  A_PE_dummy_11_x0/A_PE_dummy_11_x0_loop_3
set_directive_pipeline -II 1  A_PE_dummy_12_x0/A_PE_dummy_12_x0_loop_3
set_directive_pipeline -II 1  B_PE_dummy_0_x0/A_PE_dummy_loop_3
set_directive_pipeline -II 1  B_PE_dummy_1_x0/A_PE_dummy_loop_3
set_directive_pipeline -II 3  C_drain_IO_L1_out_2_x0/C_drain_IO_L1_out_2_x0_loop_2
set_directive_pipeline -II 34  C_drain_IO_L1_out_2_x0/C_drain_IO_L1_out_2_x0_loop_5
set_directive_pipeline -II 3  C_drain_IO_L1_out_3_x0/C_drain_IO_L1_out_3_x0_loop_2
set_directive_pipeline -II 34  C_drain_IO_L1_out_3_x0/C_drain_IO_L1_out_3_x0_loop_5
set_directive_pipeline -II 3  C_drain_IO_L1_out_4_x0/C_drain_IO_L1_out_4_x0_loop_2
set_directive_pipeline -II 34  C_drain_IO_L1_out_4_x0/C_drain_IO_L1_out_4_x0_loop_5
set_directive_pipeline -II 3  C_drain_IO_L1_out_5_x0/C_drain_IO_L1_out_5_x0_loop_2
set_directive_pipeline -II 34  C_drain_IO_L1_out_5_x0/C_drain_IO_L1_out_5_x0_loop_5
set_directive_pipeline -II 3  C_drain_IO_L1_out_6_x0/C_drain_IO_L1_out_6_x0_loop_2
set_directive_pipeline -II 34  C_drain_IO_L1_out_6_x0/C_drain_IO_L1_out_6_x0_loop_5
set_directive_pipeline -II 3  C_drain_IO_L1_out_7_x0/C_drain_IO_L1_out_7_x0_loop_2
set_directive_pipeline -II 34  C_drain_IO_L1_out_7_x0/C_drain_IO_L1_out_7_x0_loop_5
set_directive_pipeline -II 3  C_drain_IO_L1_out_8_x0/C_drain_IO_L1_out_8_x0_loop_2
set_directive_pipeline -II 34  C_drain_IO_L1_out_8_x0/C_drain_IO_L1_out_8_x0_loop_5
set_directive_pipeline -II 3  C_drain_IO_L1_out_9_x0/C_drain_IO_L1_out_9_x0_loop_2
set_directive_pipeline -II 34  C_drain_IO_L1_out_9_x0/C_drain_IO_L1_out_9_x0_loop_5
set_directive_pipeline -II 3  C_drain_IO_L1_out_10_x0/C_drain_IO_L1_out_10_x0_loop_2
set_directive_pipeline -II 34  C_drain_IO_L1_out_10_x0/C_drain_IO_L1_out_10_x0_loop_5
set_directive_pipeline -II 3  C_drain_IO_L1_out_11_x0/C_drain_IO_L1_out_11_x0_loop_2
set_directive_pipeline -II 34  C_drain_IO_L1_out_11_x0/C_drain_IO_L1_out_11_x0_loop_5
set_directive_pipeline -II 3  C_drain_IO_L1_out_14_x0/C_drain_IO_L1_out_14_x0_loop_2
set_directive_pipeline -II 34  C_drain_IO_L1_out_14_x0/C_drain_IO_L1_out_14_x0_loop_5
set_directive_pipeline -II 3  C_drain_IO_L1_out_15_x0/C_drain_IO_L1_out_15_x0_loop_2
set_directive_pipeline -II 34  C_drain_IO_L1_out_15_x0/C_drain_IO_L1_out_15_x0_loop_5
set_directive_pipeline -II 3  C_drain_IO_L1_out_16_x0/C_drain_IO_L1_out_16_x0_loop_2
set_directive_pipeline -II 34  C_drain_IO_L1_out_16_x0/C_drain_IO_L1_out_16_x0_loop_5
set_directive_pipeline -II 3  C_drain_IO_L1_out_17_x0/C_drain_IO_L1_out_17_x0_loop_2
set_directive_pipeline -II 34  C_drain_IO_L1_out_17_x0/C_drain_IO_L1_out_17_x0_loop_5
set_directive_pipeline -II 3  C_drain_IO_L1_out_18_x0/C_drain_IO_L1_out_18_x0_loop_2
set_directive_pipeline -II 34  C_drain_IO_L1_out_18_x0/C_drain_IO_L1_out_18_x0_loop_5
set_directive_pipeline -II 3  C_drain_IO_L1_out_19_x0/C_drain_IO_L1_out_19_x0_loop_2
set_directive_pipeline -II 34  C_drain_IO_L1_out_19_x0/C_drain_IO_L1_out_19_x0_loop_5
set_directive_pipeline -II 3  C_drain_IO_L1_out_20_x0/C_drain_IO_L1_out_20_x0_loop_2
set_directive_pipeline -II 34  C_drain_IO_L1_out_20_x0/C_drain_IO_L1_out_20_x0_loop_5
set_directive_pipeline -II 3  C_drain_IO_L1_out_21_x0/C_drain_IO_L1_out_21_x0_loop_2
set_directive_pipeline -II 34  C_drain_IO_L1_out_21_x0/C_drain_IO_L1_out_21_x0_loop_5
set_directive_pipeline -II 3  C_drain_IO_L1_out_22_x0/C_drain_IO_L1_out_22_x0_loop_2
set_directive_pipeline -II 34  C_drain_IO_L1_out_22_x0/C_drain_IO_L1_out_22_x0_loop_5
set_directive_pipeline -II 3  C_drain_IO_L1_out_23_x0/C_drain_IO_L1_out_23_x0_loop_2
set_directive_pipeline -II 34  C_drain_IO_L1_out_23_x0/C_drain_IO_L1_out_23_x0_loop_5
set_directive_pipeline -II 1  C_drain_IO_L2_out_boundary_x0/C_drain_IO_L2_out_boundary_x0_loop_4
set_directive_pipeline -II 1  C_drain_IO_L2_out_x0/C_drain_IO_L2_out_x0_loop_4
set_directive_pipeline -II 9  C_drain_IO_L3_out_x0/C_drain_IO_L3_out_x0_loop_1
set_directive_pipeline -II 1  A_IO_L2_in_0_x1/A_IO_L2_in_0_x1_loop_3
set_directive_pipeline -II 16  A_IO_L2_in_0_x1/A_IO_L2_in_0_x1_loop_5
set_directive_pipeline -II 1  A_IO_L2_in_1_x1/A_IO_L2_in_1_x1_loop_3
set_directive_pipeline -II 16  A_IO_L2_in_1_x1/A_IO_L2_in_1_x1_loop_5
set_directive_pipeline -II 1  A_IO_L2_in_2_x1/A_IO_L2_in_2_x1_loop_3
set_directive_pipeline -II 16  A_IO_L2_in_2_x1/A_IO_L2_in_2_x1_loop_5
set_directive_pipeline -II 1  A_IO_L2_in_3_x1/A_IO_L2_in_3_x1_loop_3
set_directive_pipeline -II 16  A_IO_L2_in_3_x1/A_IO_L2_in_3_x1_loop_5
set_directive_pipeline -II 1  A_IO_L2_in_4_x1/A_IO_L2_in_4_x1_loop_3
set_directive_pipeline -II 16  A_IO_L2_in_4_x1/A_IO_L2_in_4_x1_loop_5
set_directive_pipeline -II 1  A_IO_L2_in_5_x1/A_IO_L2_in_5_x1_loop_3
set_directive_pipeline -II 16  A_IO_L2_in_5_x1/A_IO_L2_in_5_x1_loop_5
set_directive_pipeline -II 1  A_IO_L2_in_6_x1/A_IO_L2_in_6_x1_loop_3
set_directive_pipeline -II 16  A_IO_L2_in_6_x1/A_IO_L2_in_6_x1_loop_5
set_directive_pipeline -II 1  A_IO_L2_in_7_x1/A_IO_L2_in_7_x1_loop_3
set_directive_pipeline -II 16  A_IO_L2_in_7_x1/A_IO_L2_in_7_x1_loop_5
set_directive_pipeline -II 1  A_IO_L2_in_8_x1/A_IO_L2_in_8_x1_loop_3
set_directive_pipeline -II 16  A_IO_L2_in_8_x1/A_IO_L2_in_8_x1_loop_5
set_directive_pipeline -II 1  A_IO_L2_in_9_x1/A_IO_L2_in_9_x1_loop_3
set_directive_pipeline -II 16  A_IO_L2_in_9_x1/A_IO_L2_in_9_x1_loop_5
set_directive_pipeline -II 1  A_IO_L2_in_10_x1/A_IO_L2_in_10_x1_loop_3
set_directive_pipeline -II 16  A_IO_L2_in_10_x1/A_IO_L2_in_10_x1_loop_5
set_directive_pipeline -II 1  A_IO_L2_in_11_x1/A_IO_L2_in_11_x1_loop_3
set_directive_pipeline -II 16  A_IO_L2_in_11_x1/A_IO_L2_in_11_x1_loop_5
set_directive_pipeline -II 1  A_IO_L2_in_boundary_x1/A_IO_L2_in_boundary_x1_loop_3
set_directive_pipeline -II 16  A_IO_L2_in_boundary_x1/A_IO_L2_in_boundary_x1_loop_5
set_directive_pipeline -II 1  B_IO_L2_in_x1/B_IO_L2_in_x1_loop_3
set_directive_pipeline -II 1  B_IO_L2_in_x1/B_IO_L2_in_x1_loop_6
set_directive_pipeline -II 1  B_IO_L2_in_boundary_x1/B_IO_L2_in_boundary_x1_loop_3
set_directive_pipeline -II 1  B_IO_L2_in_boundary_x1/B_IO_L2_in_boundary_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_0_0_x1/PE_wrapper_0_0_x1_loop_2
set_directive_pipeline -II 1  PE_wrapper_0_0_x1/PE_wrapper_0_0_x1_loop_5
set_directive_pipeline -II 1  PE_wrapper_0_1_x1/PE_wrapper_0_1_x1_loop_2
set_directive_pipeline -II 1  PE_wrapper_0_1_x1/PE_wrapper_0_1_x1_loop_5
set_directive_pipeline -II 1  PE_wrapper_1_0_x1/PE_wrapper_1_0_x1_loop_2
set_directive_pipeline -II 1  PE_wrapper_1_0_x1/PE_wrapper_1_0_x1_loop_5
set_directive_pipeline -II 1  PE_wrapper_1_1_x1/PE_wrapper_1_1_x1_loop_2
set_directive_pipeline -II 1  PE_wrapper_1_1_x1/PE_wrapper_1_1_x1_loop_5
set_directive_pipeline -II 1  PE_wrapper_2_0_x1/PE_wrapper_2_0_x1_loop_2
set_directive_pipeline -II 1  PE_wrapper_2_0_x1/PE_wrapper_2_0_x1_loop_5
set_directive_pipeline -II 1  PE_wrapper_2_1_x1/PE_wrapper_2_1_x1_loop_2
set_directive_pipeline -II 1  PE_wrapper_2_1_x1/PE_wrapper_2_1_x1_loop_5
set_directive_pipeline -II 1  PE_wrapper_3_0_x1/PE_wrapper_3_0_x1_loop_2
set_directive_pipeline -II 1  PE_wrapper_3_0_x1/PE_wrapper_3_0_x1_loop_5
set_directive_pipeline -II 1  PE_wrapper_3_1_x1/PE_wrapper_3_1_x1_loop_2
set_directive_pipeline -II 1  PE_wrapper_3_1_x1/PE_wrapper_3_1_x1_loop_5
set_directive_pipeline -II 1  PE_wrapper_4_0_x1/PE_wrapper_4_0_x1_loop_2
set_directive_pipeline -II 1  PE_wrapper_4_0_x1/PE_wrapper_4_0_x1_loop_5
set_directive_pipeline -II 1  PE_wrapper_4_1_x1/PE_wrapper_4_1_x1_loop_2
set_directive_pipeline -II 1  PE_wrapper_4_1_x1/PE_wrapper_4_1_x1_loop_5
set_directive_pipeline -II 1  PE_wrapper_5_0_x1/PE_wrapper_5_0_x1_loop_2
set_directive_pipeline -II 1  PE_wrapper_5_0_x1/PE_wrapper_5_0_x1_loop_5
set_directive_pipeline -II 1  PE_wrapper_5_1_x1/PE_wrapper_5_1_x1_loop_2
set_directive_pipeline -II 1  PE_wrapper_5_1_x1/PE_wrapper_5_1_x1_loop_5
set_directive_pipeline -II 1  PE_wrapper_6_0_x1/PE_wrapper_6_0_x1_loop_2
set_directive_pipeline -II 1  PE_wrapper_6_0_x1/PE_wrapper_6_0_x1_loop_5
set_directive_pipeline -II 1  PE_wrapper_6_1_x1/PE_wrapper_6_1_x1_loop_2
set_directive_pipeline -II 1  PE_wrapper_6_1_x1/PE_wrapper_6_1_x1_loop_5
set_directive_pipeline -II 1  PE_wrapper_7_0_x1/PE_wrapper_7_0_x1_loop_2
set_directive_pipeline -II 1  PE_wrapper_7_0_x1/PE_wrapper_7_0_x1_loop_5
set_directive_pipeline -II 1  PE_wrapper_7_1_x1/PE_wrapper_7_1_x1_loop_2
set_directive_pipeline -II 1  PE_wrapper_7_1_x1/PE_wrapper_7_1_x1_loop_5
set_directive_pipeline -II 1  PE_wrapper_8_0_x1/PE_wrapper_8_0_x1_loop_2
set_directive_pipeline -II 1  PE_wrapper_8_0_x1/PE_wrapper_8_0_x1_loop_5
set_directive_pipeline -II 1  PE_wrapper_8_1_x1/PE_wrapper_8_1_x1_loop_2
set_directive_pipeline -II 1  PE_wrapper_8_1_x1/PE_wrapper_8_1_x1_loop_5
set_directive_pipeline -II 1  PE_wrapper_9_0_x1/PE_wrapper_9_0_x1_loop_2
set_directive_pipeline -II 1  PE_wrapper_9_0_x1/PE_wrapper_9_0_x1_loop_5
set_directive_pipeline -II 1  PE_wrapper_9_1_x1/PE_wrapper_9_1_x1_loop_2
set_directive_pipeline -II 1  PE_wrapper_9_1_x1/PE_wrapper_9_1_x1_loop_5
set_directive_pipeline -II 1  PE_wrapper_10_0_x1/PE_wrapper_10_0_x1_loop_2
set_directive_pipeline -II 1  PE_wrapper_10_0_x1/PE_wrapper_10_0_x1_loop_5
set_directive_pipeline -II 1  PE_wrapper_10_1_x1/PE_wrapper_10_1_x1_loop_2
set_directive_pipeline -II 1  PE_wrapper_10_1_x1/PE_wrapper_10_1_x1_loop_5
set_directive_pipeline -II 1  PE_wrapper_11_0_x1/PE_wrapper_11_0_x1_loop_2
set_directive_pipeline -II 1  PE_wrapper_11_0_x1/PE_wrapper_11_0_x1_loop_5
set_directive_pipeline -II 1  PE_wrapper_11_1_x1/PE_wrapper_11_1_x1_loop_2
set_directive_pipeline -II 1  PE_wrapper_11_1_x1/PE_wrapper_11_1_x1_loop_5
set_directive_pipeline -II 1  PE_wrapper_12_0_x1/PE_wrapper_12_0_x1_loop_2
set_directive_pipeline -II 1  PE_wrapper_12_0_x1/PE_wrapper_12_0_x1_loop_5
set_directive_pipeline -II 1  PE_wrapper_12_1_x1/PE_wrapper_12_1_x1_loop_2
set_directive_pipeline -II 1  PE_wrapper_12_1_x1/PE_wrapper_12_1_x1_loop_5
set_directive_pipeline -II 1  A_PE_dummy_0_x1/A_PE_dummy_0_x1_loop_3
set_directive_pipeline -II 1  A_PE_dummy_1_x1/A_PE_dummy_1_x1_loop_3
set_directive_pipeline -II 1  A_PE_dummy_2_x1/A_PE_dummy_2_x1_loop_3
set_directive_pipeline -II 1  A_PE_dummy_3_x1/A_PE_dummy_3_x1_loop_3
set_directive_pipeline -II 1  A_PE_dummy_4_x1/A_PE_dummy_4_x1_loop_3
set_directive_pipeline -II 1  A_PE_dummy_5_x1/A_PE_dummy_5_x1_loop_3
set_directive_pipeline -II 1  A_PE_dummy_6_x1/A_PE_dummy_6_x1_loop_3
set_directive_pipeline -II 1  A_PE_dummy_7_x1/A_PE_dummy_7_x1_loop_3
set_directive_pipeline -II 1  A_PE_dummy_8_x1/A_PE_dummy_8_x1_loop_3
set_directive_pipeline -II 1  A_PE_dummy_9_x1/A_PE_dummy_9_x1_loop_3
set_directive_pipeline -II 1  A_PE_dummy_10_x1/A_PE_dummy_10_x1_loop_3
set_directive_pipeline -II 1  A_PE_dummy_11_x1/A_PE_dummy_11_x1_loop_3
set_directive_pipeline -II 1  A_PE_dummy_12_x1/A_PE_dummy_12_x1_loop_3
set_directive_pipeline -II 1  B_PE_dummy_0_x1/A_PE_dummy_loop_3
set_directive_pipeline -II 1  B_PE_dummy_1_x1/A_PE_dummy_loop_3
set_directive_pipeline -II 3  C_drain_IO_L1_out_2_x1/C_drain_IO_L1_out_2_x1_loop_2
set_directive_pipeline -II 34  C_drain_IO_L1_out_2_x1/C_drain_IO_L1_out_2_x1_loop_5
set_directive_pipeline -II 3  C_drain_IO_L1_out_3_x1/C_drain_IO_L1_out_3_x1_loop_2
set_directive_pipeline -II 34  C_drain_IO_L1_out_3_x1/C_drain_IO_L1_out_3_x1_loop_5
set_directive_pipeline -II 3  C_drain_IO_L1_out_4_x1/C_drain_IO_L1_out_4_x1_loop_2
set_directive_pipeline -II 34  C_drain_IO_L1_out_4_x1/C_drain_IO_L1_out_4_x1_loop_5
set_directive_pipeline -II 3  C_drain_IO_L1_out_5_x1/C_drain_IO_L1_out_5_x1_loop_2
set_directive_pipeline -II 34  C_drain_IO_L1_out_5_x1/C_drain_IO_L1_out_5_x1_loop_5
set_directive_pipeline -II 3  C_drain_IO_L1_out_6_x1/C_drain_IO_L1_out_6_x1_loop_2
set_directive_pipeline -II 34  C_drain_IO_L1_out_6_x1/C_drain_IO_L1_out_6_x1_loop_5
set_directive_pipeline -II 3  C_drain_IO_L1_out_7_x1/C_drain_IO_L1_out_7_x1_loop_2
set_directive_pipeline -II 34  C_drain_IO_L1_out_7_x1/C_drain_IO_L1_out_7_x1_loop_5
set_directive_pipeline -II 3  C_drain_IO_L1_out_8_x1/C_drain_IO_L1_out_8_x1_loop_2
set_directive_pipeline -II 34  C_drain_IO_L1_out_8_x1/C_drain_IO_L1_out_8_x1_loop_5
set_directive_pipeline -II 3  C_drain_IO_L1_out_9_x1/C_drain_IO_L1_out_9_x1_loop_2
set_directive_pipeline -II 34  C_drain_IO_L1_out_9_x1/C_drain_IO_L1_out_9_x1_loop_5
set_directive_pipeline -II 3  C_drain_IO_L1_out_10_x1/C_drain_IO_L1_out_10_x1_loop_2
set_directive_pipeline -II 34  C_drain_IO_L1_out_10_x1/C_drain_IO_L1_out_10_x1_loop_5
set_directive_pipeline -II 3  C_drain_IO_L1_out_11_x1/C_drain_IO_L1_out_11_x1_loop_2
set_directive_pipeline -II 34  C_drain_IO_L1_out_11_x1/C_drain_IO_L1_out_11_x1_loop_5
set_directive_pipeline -II 3  C_drain_IO_L1_out_14_x1/C_drain_IO_L1_out_14_x1_loop_2
set_directive_pipeline -II 34  C_drain_IO_L1_out_14_x1/C_drain_IO_L1_out_14_x1_loop_5
set_directive_pipeline -II 3  C_drain_IO_L1_out_15_x1/C_drain_IO_L1_out_15_x1_loop_2
set_directive_pipeline -II 34  C_drain_IO_L1_out_15_x1/C_drain_IO_L1_out_15_x1_loop_5
set_directive_pipeline -II 3  C_drain_IO_L1_out_16_x1/C_drain_IO_L1_out_16_x1_loop_2
set_directive_pipeline -II 34  C_drain_IO_L1_out_16_x1/C_drain_IO_L1_out_16_x1_loop_5
set_directive_pipeline -II 3  C_drain_IO_L1_out_17_x1/C_drain_IO_L1_out_17_x1_loop_2
set_directive_pipeline -II 34  C_drain_IO_L1_out_17_x1/C_drain_IO_L1_out_17_x1_loop_5
set_directive_pipeline -II 3  C_drain_IO_L1_out_18_x1/C_drain_IO_L1_out_18_x1_loop_2
set_directive_pipeline -II 34  C_drain_IO_L1_out_18_x1/C_drain_IO_L1_out_18_x1_loop_5
set_directive_pipeline -II 3  C_drain_IO_L1_out_19_x1/C_drain_IO_L1_out_19_x1_loop_2
set_directive_pipeline -II 34  C_drain_IO_L1_out_19_x1/C_drain_IO_L1_out_19_x1_loop_5
set_directive_pipeline -II 3  C_drain_IO_L1_out_20_x1/C_drain_IO_L1_out_20_x1_loop_2
set_directive_pipeline -II 34  C_drain_IO_L1_out_20_x1/C_drain_IO_L1_out_20_x1_loop_5
set_directive_pipeline -II 3  C_drain_IO_L1_out_21_x1/C_drain_IO_L1_out_21_x1_loop_2
set_directive_pipeline -II 34  C_drain_IO_L1_out_21_x1/C_drain_IO_L1_out_21_x1_loop_5
set_directive_pipeline -II 3  C_drain_IO_L1_out_22_x1/C_drain_IO_L1_out_22_x1_loop_2
set_directive_pipeline -II 34  C_drain_IO_L1_out_22_x1/C_drain_IO_L1_out_22_x1_loop_5
set_directive_pipeline -II 3  C_drain_IO_L1_out_23_x1/C_drain_IO_L1_out_23_x1_loop_2
set_directive_pipeline -II 34  C_drain_IO_L1_out_23_x1/C_drain_IO_L1_out_23_x1_loop_5
set_directive_pipeline -II 1  C_drain_IO_L2_out_boundary_x1/C_drain_IO_L2_out_boundary_x1_loop_4
set_directive_pipeline -II 1  C_drain_IO_L2_out_x1/C_drain_IO_L2_out_x1_loop_4
set_directive_pipeline -II 9  C_drain_IO_L3_out_x1/C_drain_IO_L3_out_x1_loop_1
set_directive_array_partition -type complete  -dim 2 nondf_kernel_2mm tmp
set_directive_array_partition -type complete  -dim 2 nondf_kernel_2mm B
set_directive_array_partition -type complete  -dim 2 nondf_kernel_2mm A
set_directive_array_partition -type complete  -dim 1 nondf_kernel_2mm B
set_directive_array_partition -type cyclic -factor 2 -dim 2 nondf_kernel_2mm D_input
set_directive_array_partition -type cyclic -factor 2 -dim 2 nondf_kernel_2mm D_output
set_directive_array_partition -type cyclic -factor 2 -dim 2 nondf_kernel_2mm C
set_directive_array_partition -type complete  -dim 2 nondf_kernel_2mm tmp
set_directive_array_partition -type complete  -dim 1 nondf_kernel_2mm C
set_directive_bind_storage "nondf_kernel_2mm" tmp -impl bram -type ram_2p
set_directive_bind_storage "nondf_kernel_2mm" A -impl bram -type ram_2p
set_directive_bind_storage "nondf_kernel_2mm" B -impl bram -type ram_2p
set_directive_bind_storage "nondf_kernel_2mm" C -impl bram -type ram_2p
set_directive_bind_storage "nondf_kernel_2mm" D_input -impl bram -type ram_2p
set_directive_bind_storage "nondf_kernel_2mm" D_output -impl bram -type ram_2p
set_directive_bind_storage "nondf_kernel_2mm" tmp -impl bram -type ram_2p
set_directive_bind_storage "nondf_kernel_2mm" A -impl bram -type ram_2p
set_directive_bind_storage "nondf_kernel_2mm" B -impl bram -type ram_2p
set_directive_bind_storage "nondf_kernel_2mm" C -impl bram -type ram_2p
set_directive_bind_storage "nondf_kernel_2mm" D_input -impl bram -type ram_2p
set_directive_bind_storage "nondf_kernel_2mm" D_output -impl bram -type ram_2p
set_directive_bind_storage "A_IO_L2_in_0_x0" local_A_pong -impl bram -type ram_2p
set_directive_bind_storage "A_IO_L2_in_1_x0" local_A_pong -impl bram -type ram_2p
set_directive_bind_storage "A_IO_L2_in_2_x0" local_A_pong -impl bram -type ram_2p
set_directive_bind_storage "A_IO_L2_in_3_x0" local_A_pong -impl bram -type ram_2p
set_directive_bind_storage "A_IO_L2_in_4_x0" local_A_pong -impl bram -type ram_2p
set_directive_bind_storage "A_IO_L2_in_5_x0" local_A_pong -impl bram -type ram_2p
set_directive_bind_storage "A_IO_L2_in_6_x0" local_A_pong -impl bram -type ram_2p
set_directive_bind_storage "A_IO_L2_in_7_x0" local_A_pong -impl bram -type ram_2p
set_directive_bind_storage "A_IO_L2_in_8_x0" local_A_pong -impl bram -type ram_2p
set_directive_bind_storage "A_IO_L2_in_9_x0" local_A_pong -impl bram -type ram_2p
set_directive_bind_storage "A_IO_L2_in_10_x0" local_A_pong -impl bram -type ram_2p
set_directive_bind_storage "A_IO_L2_in_11_x0" local_A_pong -impl bram -type ram_2p
set_directive_bind_storage "A_IO_L2_in_boundary_x0" local_A_pong -impl bram -type ram_2p
set_directive_bind_storage "B_IO_L2_in_x0" local_B_pong -impl bram -type ram_2p
set_directive_bind_storage "B_IO_L2_in_boundary_x0" local_B_pong -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_0_0_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_0_1_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_1_0_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_1_1_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_2_0_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_2_1_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_3_0_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_3_1_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_4_0_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_4_1_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_5_0_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_5_1_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_6_0_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_6_1_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_7_0_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_7_1_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_8_0_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_8_1_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_9_0_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_9_1_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_10_0_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_10_1_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_11_0_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_11_1_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_12_0_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_12_1_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "C_drain_IO_L1_out_2_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "C_drain_IO_L1_out_3_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "C_drain_IO_L1_out_4_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "C_drain_IO_L1_out_5_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "C_drain_IO_L1_out_6_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "C_drain_IO_L1_out_7_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "C_drain_IO_L1_out_8_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "C_drain_IO_L1_out_9_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "C_drain_IO_L1_out_10_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "C_drain_IO_L1_out_11_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "C_drain_IO_L1_out_14_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "C_drain_IO_L1_out_15_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "C_drain_IO_L1_out_16_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "C_drain_IO_L1_out_17_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "C_drain_IO_L1_out_18_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "C_drain_IO_L1_out_19_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "C_drain_IO_L1_out_20_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "C_drain_IO_L1_out_21_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "C_drain_IO_L1_out_22_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "C_drain_IO_L1_out_23_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "A_IO_L2_in_0_x1" local_A_pong -impl bram -type ram_2p
set_directive_bind_storage "A_IO_L2_in_1_x1" local_A_pong -impl bram -type ram_2p
set_directive_bind_storage "A_IO_L2_in_2_x1" local_A_pong -impl bram -type ram_2p
set_directive_bind_storage "A_IO_L2_in_3_x1" local_A_pong -impl bram -type ram_2p
set_directive_bind_storage "A_IO_L2_in_4_x1" local_A_pong -impl bram -type ram_2p
set_directive_bind_storage "A_IO_L2_in_5_x1" local_A_pong -impl bram -type ram_2p
set_directive_bind_storage "A_IO_L2_in_6_x1" local_A_pong -impl bram -type ram_2p
set_directive_bind_storage "A_IO_L2_in_7_x1" local_A_pong -impl bram -type ram_2p
set_directive_bind_storage "A_IO_L2_in_8_x1" local_A_pong -impl bram -type ram_2p
set_directive_bind_storage "A_IO_L2_in_9_x1" local_A_pong -impl bram -type ram_2p
set_directive_bind_storage "A_IO_L2_in_10_x1" local_A_pong -impl bram -type ram_2p
set_directive_bind_storage "A_IO_L2_in_11_x1" local_A_pong -impl bram -type ram_2p
set_directive_bind_storage "A_IO_L2_in_boundary_x1" local_A_pong -impl bram -type ram_2p
set_directive_bind_storage "B_IO_L2_in_x1" local_B_pong -impl bram -type ram_2p
set_directive_bind_storage "B_IO_L2_in_boundary_x1" local_B_pong -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_0_0_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_0_1_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_1_0_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_1_1_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_2_0_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_2_1_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_3_0_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_3_1_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_4_0_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_4_1_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_5_0_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_5_1_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_6_0_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_6_1_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_7_0_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_7_1_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_8_0_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_8_1_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_9_0_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_9_1_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_10_0_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_10_1_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_11_0_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_11_1_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_12_0_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_12_1_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "C_drain_IO_L1_out_2_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "C_drain_IO_L1_out_3_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "C_drain_IO_L1_out_4_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "C_drain_IO_L1_out_5_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "C_drain_IO_L1_out_6_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "C_drain_IO_L1_out_7_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "C_drain_IO_L1_out_8_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "C_drain_IO_L1_out_9_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "C_drain_IO_L1_out_10_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "C_drain_IO_L1_out_11_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "C_drain_IO_L1_out_14_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "C_drain_IO_L1_out_15_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "C_drain_IO_L1_out_16_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "C_drain_IO_L1_out_17_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "C_drain_IO_L1_out_18_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "C_drain_IO_L1_out_19_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "C_drain_IO_L1_out_20_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "C_drain_IO_L1_out_21_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "C_drain_IO_L1_out_22_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "C_drain_IO_L1_out_23_x1" local_C -impl bram -type ram_2p
