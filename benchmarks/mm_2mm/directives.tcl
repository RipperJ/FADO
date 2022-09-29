set_directive_unroll -factor 32 nondf_kernel_2mm_x0/nondf_kernel_2mm_x0_loop_5
set_directive_unroll -factor 16 nondf_kernel_2mm_x0/nondf_kernel_2mm_x0_loop_8
set_directive_unroll -factor 32 nondf_kernel_2mm_x1/nondf_kernel_2mm_x1_loop_5
set_directive_unroll -factor 4 nondf_kernel_2mm_x1/nondf_kernel_2mm_x1_loop_7
set_directive_unroll -factor 32 nondf_kernel_2mm_x1/nondf_kernel_2mm_x1_loop_8
set_directive_pipeline -II 2  A_IO_L3_in_x0/A_IO_L3_in_x0_loop_5
set_directive_pipeline -II 8  A_IO_L2_in_0_x0/A_IO_L2_in_0_x0_loop_4
set_directive_pipeline -II 8  A_IO_L2_in_0_x0/A_IO_L2_in_0_x0_loop_7
set_directive_pipeline -II 8  A_IO_L2_in_0_x0/A_IO_L2_in_0_x0_loop_9
set_directive_pipeline -II 8  A_IO_L2_in_0_x0/A_IO_L2_in_0_x0_loop_12
set_directive_pipeline -II 1  A_IO_L2_in_0_x0/A_IO_L2_in_0_x0_loop_15
set_directive_pipeline -II 8  A_IO_L2_in_1_x0/A_IO_L2_in_1_x0_loop_4
set_directive_pipeline -II 8  A_IO_L2_in_1_x0/A_IO_L2_in_1_x0_loop_7
set_directive_pipeline -II 8  A_IO_L2_in_1_x0/A_IO_L2_in_1_x0_loop_9
set_directive_pipeline -II 8  A_IO_L2_in_1_x0/A_IO_L2_in_1_x0_loop_12
set_directive_pipeline -II 1  A_IO_L2_in_1_x0/A_IO_L2_in_1_x0_loop_15
set_directive_pipeline -II 8  A_IO_L2_in_2_x0/A_IO_L2_in_2_x0_loop_4
set_directive_pipeline -II 8  A_IO_L2_in_2_x0/A_IO_L2_in_2_x0_loop_7
set_directive_pipeline -II 8  A_IO_L2_in_2_x0/A_IO_L2_in_2_x0_loop_9
set_directive_pipeline -II 8  A_IO_L2_in_2_x0/A_IO_L2_in_2_x0_loop_12
set_directive_pipeline -II 1  A_IO_L2_in_2_x0/A_IO_L2_in_2_x0_loop_15
set_directive_pipeline -II 8  A_IO_L2_in_3_x0/A_IO_L2_in_3_x0_loop_4
set_directive_pipeline -II 8  A_IO_L2_in_3_x0/A_IO_L2_in_3_x0_loop_7
set_directive_pipeline -II 8  A_IO_L2_in_3_x0/A_IO_L2_in_3_x0_loop_9
set_directive_pipeline -II 8  A_IO_L2_in_3_x0/A_IO_L2_in_3_x0_loop_12
set_directive_pipeline -II 1  A_IO_L2_in_3_x0/A_IO_L2_in_3_x0_loop_15
set_directive_pipeline -II 8  A_IO_L2_in_4_x0/A_IO_L2_in_4_x0_loop_4
set_directive_pipeline -II 8  A_IO_L2_in_4_x0/A_IO_L2_in_4_x0_loop_7
set_directive_pipeline -II 8  A_IO_L2_in_4_x0/A_IO_L2_in_4_x0_loop_9
set_directive_pipeline -II 8  A_IO_L2_in_4_x0/A_IO_L2_in_4_x0_loop_12
set_directive_pipeline -II 1  A_IO_L2_in_4_x0/A_IO_L2_in_4_x0_loop_15
set_directive_pipeline -II 8  A_IO_L2_in_5_x0/A_IO_L2_in_5_x0_loop_4
set_directive_pipeline -II 8  A_IO_L2_in_5_x0/A_IO_L2_in_5_x0_loop_7
set_directive_pipeline -II 8  A_IO_L2_in_5_x0/A_IO_L2_in_5_x0_loop_9
set_directive_pipeline -II 8  A_IO_L2_in_5_x0/A_IO_L2_in_5_x0_loop_12
set_directive_pipeline -II 1  A_IO_L2_in_5_x0/A_IO_L2_in_5_x0_loop_15
set_directive_pipeline -II 8  A_IO_L2_in_6_x0/A_IO_L2_in_6_x0_loop_4
set_directive_pipeline -II 8  A_IO_L2_in_6_x0/A_IO_L2_in_6_x0_loop_7
set_directive_pipeline -II 8  A_IO_L2_in_6_x0/A_IO_L2_in_6_x0_loop_9
set_directive_pipeline -II 8  A_IO_L2_in_6_x0/A_IO_L2_in_6_x0_loop_12
set_directive_pipeline -II 1  A_IO_L2_in_6_x0/A_IO_L2_in_6_x0_loop_15
set_directive_pipeline -II 1  A_IO_L2_in_boundary_x0/A_IO_L2_in_boundary_x0_loop_5
set_directive_pipeline -II 1  A_IO_L2_in_boundary_x0/A_IO_L2_in_boundary_x0_loop_7
set_directive_pipeline -II 1  A_IO_L2_in_boundary_x0/A_IO_L2_in_boundary_x0_loop_9
set_directive_pipeline -II 1  A_IO_L2_in_boundary_x0/A_IO_L2_in_boundary_x0_loop_11
set_directive_pipeline -II 2  B_IO_L3_in_x0/B_IO_L3_in_x0_loop_5
set_directive_pipeline -II 73  B_IO_L2_in_0_x0/B_IO_L2_in_0_x0_loop_3
set_directive_pipeline -II 9  B_IO_L2_in_0_x0/B_IO_L2_in_0_x0_loop_14
set_directive_pipeline -II 73  B_IO_L2_in_1_x0/B_IO_L2_in_1_x0_loop_3
set_directive_pipeline -II 9  B_IO_L2_in_1_x0/B_IO_L2_in_1_x0_loop_14
set_directive_pipeline -II 73  B_IO_L2_in_2_x0/B_IO_L2_in_2_x0_loop_3
set_directive_pipeline -II 9  B_IO_L2_in_2_x0/B_IO_L2_in_2_x0_loop_14
set_directive_pipeline -II 73  B_IO_L2_in_3_x0/B_IO_L2_in_3_x0_loop_3
set_directive_pipeline -II 9  B_IO_L2_in_3_x0/B_IO_L2_in_3_x0_loop_14
set_directive_pipeline -II 73  B_IO_L2_in_4_x0/B_IO_L2_in_4_x0_loop_3
set_directive_pipeline -II 9  B_IO_L2_in_4_x0/B_IO_L2_in_4_x0_loop_14
set_directive_pipeline -II 73  B_IO_L2_in_5_x0/B_IO_L2_in_5_x0_loop_3
set_directive_pipeline -II 9  B_IO_L2_in_5_x0/B_IO_L2_in_5_x0_loop_14
set_directive_pipeline -II 73  B_IO_L2_in_6_x0/B_IO_L2_in_6_x0_loop_3
set_directive_pipeline -II 9  B_IO_L2_in_6_x0/B_IO_L2_in_6_x0_loop_14
set_directive_pipeline -II 2  PE_wrapper_0_0_x0/PE_wrapper_0_0_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_0_1_x0/PE_wrapper_0_1_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_0_2_x0/PE_wrapper_0_2_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_0_3_x0/PE_wrapper_0_3_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_0_4_x0/PE_wrapper_0_4_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_0_5_x0/PE_wrapper_0_5_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_0_6_x0/PE_wrapper_0_6_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_0_7_x0/PE_wrapper_0_7_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_1_0_x0/PE_wrapper_1_0_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_1_1_x0/PE_wrapper_1_1_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_1_2_x0/PE_wrapper_1_2_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_1_3_x0/PE_wrapper_1_3_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_1_4_x0/PE_wrapper_1_4_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_1_5_x0/PE_wrapper_1_5_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_1_6_x0/PE_wrapper_1_6_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_1_7_x0/PE_wrapper_1_7_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_2_0_x0/PE_wrapper_2_0_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_2_1_x0/PE_wrapper_2_1_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_2_2_x0/PE_wrapper_2_2_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_2_3_x0/PE_wrapper_2_3_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_2_4_x0/PE_wrapper_2_4_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_2_5_x0/PE_wrapper_2_5_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_2_6_x0/PE_wrapper_2_6_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_2_7_x0/PE_wrapper_2_7_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_3_0_x0/PE_wrapper_3_0_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_3_1_x0/PE_wrapper_3_1_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_3_2_x0/PE_wrapper_3_2_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_3_3_x0/PE_wrapper_3_3_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_3_4_x0/PE_wrapper_3_4_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_3_5_x0/PE_wrapper_3_5_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_3_6_x0/PE_wrapper_3_6_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_3_7_x0/PE_wrapper_3_7_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_4_0_x0/PE_wrapper_4_0_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_4_1_x0/PE_wrapper_4_1_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_4_2_x0/PE_wrapper_4_2_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_4_3_x0/PE_wrapper_4_3_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_4_4_x0/PE_wrapper_4_4_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_4_5_x0/PE_wrapper_4_5_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_4_6_x0/PE_wrapper_4_6_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_4_7_x0/PE_wrapper_4_7_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_5_0_x0/PE_wrapper_5_0_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_5_1_x0/PE_wrapper_5_1_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_5_2_x0/PE_wrapper_5_2_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_5_3_x0/PE_wrapper_5_3_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_5_4_x0/PE_wrapper_5_4_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_5_5_x0/PE_wrapper_5_5_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_5_6_x0/PE_wrapper_5_6_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_5_7_x0/PE_wrapper_5_7_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_6_0_x0/PE_wrapper_6_0_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_6_1_x0/PE_wrapper_6_1_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_6_2_x0/PE_wrapper_6_2_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_6_3_x0/PE_wrapper_6_3_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_6_4_x0/PE_wrapper_6_4_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_6_5_x0/PE_wrapper_6_5_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_6_6_x0/PE_wrapper_6_6_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_6_7_x0/PE_wrapper_6_7_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_7_0_x0/PE_wrapper_7_0_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_7_1_x0/PE_wrapper_7_1_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_7_2_x0/PE_wrapper_7_2_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_7_3_x0/PE_wrapper_7_3_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_7_4_x0/PE_wrapper_7_4_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_7_5_x0/PE_wrapper_7_5_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_7_6_x0/PE_wrapper_7_6_x0_loop_5
set_directive_pipeline -II 2  PE_wrapper_7_7_x0/PE_wrapper_7_7_x0_loop_5
set_directive_pipeline -II 1  PE_wrapper_0_0_x1/PE_wrapper_0_0_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_0_0_x1/PE_wrapper_0_0_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_0_0_x1/PE_wrapper_0_0_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_0_1_x1/PE_wrapper_0_1_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_0_1_x1/PE_wrapper_0_1_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_0_1_x1/PE_wrapper_0_1_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_0_2_x1/PE_wrapper_0_2_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_0_2_x1/PE_wrapper_0_2_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_0_2_x1/PE_wrapper_0_2_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_0_3_x1/PE_wrapper_0_3_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_0_3_x1/PE_wrapper_0_3_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_0_3_x1/PE_wrapper_0_3_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_0_4_x1/PE_wrapper_0_4_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_0_4_x1/PE_wrapper_0_4_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_0_4_x1/PE_wrapper_0_4_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_0_5_x1/PE_wrapper_0_5_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_0_5_x1/PE_wrapper_0_5_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_0_5_x1/PE_wrapper_0_5_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_0_6_x1/PE_wrapper_0_6_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_0_6_x1/PE_wrapper_0_6_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_0_6_x1/PE_wrapper_0_6_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_0_7_x1/PE_wrapper_0_7_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_0_7_x1/PE_wrapper_0_7_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_0_7_x1/PE_wrapper_0_7_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_1_0_x1/PE_wrapper_1_0_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_1_0_x1/PE_wrapper_1_0_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_1_0_x1/PE_wrapper_1_0_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_1_1_x1/PE_wrapper_1_1_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_1_1_x1/PE_wrapper_1_1_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_1_1_x1/PE_wrapper_1_1_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_1_2_x1/PE_wrapper_1_2_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_1_2_x1/PE_wrapper_1_2_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_1_2_x1/PE_wrapper_1_2_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_1_3_x1/PE_wrapper_1_3_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_1_3_x1/PE_wrapper_1_3_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_1_3_x1/PE_wrapper_1_3_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_1_4_x1/PE_wrapper_1_4_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_1_4_x1/PE_wrapper_1_4_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_1_4_x1/PE_wrapper_1_4_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_1_5_x1/PE_wrapper_1_5_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_1_5_x1/PE_wrapper_1_5_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_1_5_x1/PE_wrapper_1_5_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_1_6_x1/PE_wrapper_1_6_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_1_6_x1/PE_wrapper_1_6_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_1_6_x1/PE_wrapper_1_6_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_1_7_x1/PE_wrapper_1_7_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_1_7_x1/PE_wrapper_1_7_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_1_7_x1/PE_wrapper_1_7_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_2_0_x1/PE_wrapper_2_0_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_2_0_x1/PE_wrapper_2_0_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_2_0_x1/PE_wrapper_2_0_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_2_1_x1/PE_wrapper_2_1_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_2_1_x1/PE_wrapper_2_1_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_2_1_x1/PE_wrapper_2_1_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_2_2_x1/PE_wrapper_2_2_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_2_2_x1/PE_wrapper_2_2_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_2_2_x1/PE_wrapper_2_2_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_2_3_x1/PE_wrapper_2_3_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_2_3_x1/PE_wrapper_2_3_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_2_3_x1/PE_wrapper_2_3_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_2_4_x1/PE_wrapper_2_4_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_2_4_x1/PE_wrapper_2_4_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_2_4_x1/PE_wrapper_2_4_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_2_5_x1/PE_wrapper_2_5_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_2_5_x1/PE_wrapper_2_5_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_2_5_x1/PE_wrapper_2_5_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_2_6_x1/PE_wrapper_2_6_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_2_6_x1/PE_wrapper_2_6_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_2_6_x1/PE_wrapper_2_6_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_2_7_x1/PE_wrapper_2_7_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_2_7_x1/PE_wrapper_2_7_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_2_7_x1/PE_wrapper_2_7_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_3_0_x1/PE_wrapper_3_0_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_3_0_x1/PE_wrapper_3_0_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_3_0_x1/PE_wrapper_3_0_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_3_1_x1/PE_wrapper_3_1_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_3_1_x1/PE_wrapper_3_1_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_3_1_x1/PE_wrapper_3_1_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_3_2_x1/PE_wrapper_3_2_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_3_2_x1/PE_wrapper_3_2_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_3_2_x1/PE_wrapper_3_2_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_3_3_x1/PE_wrapper_3_3_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_3_3_x1/PE_wrapper_3_3_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_3_3_x1/PE_wrapper_3_3_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_3_4_x1/PE_wrapper_3_4_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_3_4_x1/PE_wrapper_3_4_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_3_4_x1/PE_wrapper_3_4_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_3_5_x1/PE_wrapper_3_5_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_3_5_x1/PE_wrapper_3_5_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_3_5_x1/PE_wrapper_3_5_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_3_6_x1/PE_wrapper_3_6_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_3_6_x1/PE_wrapper_3_6_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_3_6_x1/PE_wrapper_3_6_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_3_7_x1/PE_wrapper_3_7_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_3_7_x1/PE_wrapper_3_7_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_3_7_x1/PE_wrapper_3_7_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_4_0_x1/PE_wrapper_4_0_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_4_0_x1/PE_wrapper_4_0_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_4_0_x1/PE_wrapper_4_0_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_4_1_x1/PE_wrapper_4_1_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_4_1_x1/PE_wrapper_4_1_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_4_1_x1/PE_wrapper_4_1_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_4_2_x1/PE_wrapper_4_2_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_4_2_x1/PE_wrapper_4_2_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_4_2_x1/PE_wrapper_4_2_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_4_3_x1/PE_wrapper_4_3_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_4_3_x1/PE_wrapper_4_3_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_4_3_x1/PE_wrapper_4_3_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_4_4_x1/PE_wrapper_4_4_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_4_4_x1/PE_wrapper_4_4_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_4_4_x1/PE_wrapper_4_4_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_4_5_x1/PE_wrapper_4_5_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_4_5_x1/PE_wrapper_4_5_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_4_5_x1/PE_wrapper_4_5_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_4_6_x1/PE_wrapper_4_6_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_4_6_x1/PE_wrapper_4_6_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_4_6_x1/PE_wrapper_4_6_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_4_7_x1/PE_wrapper_4_7_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_4_7_x1/PE_wrapper_4_7_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_4_7_x1/PE_wrapper_4_7_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_5_0_x1/PE_wrapper_5_0_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_5_0_x1/PE_wrapper_5_0_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_5_0_x1/PE_wrapper_5_0_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_5_1_x1/PE_wrapper_5_1_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_5_1_x1/PE_wrapper_5_1_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_5_1_x1/PE_wrapper_5_1_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_5_2_x1/PE_wrapper_5_2_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_5_2_x1/PE_wrapper_5_2_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_5_2_x1/PE_wrapper_5_2_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_5_3_x1/PE_wrapper_5_3_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_5_3_x1/PE_wrapper_5_3_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_5_3_x1/PE_wrapper_5_3_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_5_4_x1/PE_wrapper_5_4_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_5_4_x1/PE_wrapper_5_4_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_5_4_x1/PE_wrapper_5_4_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_5_5_x1/PE_wrapper_5_5_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_5_5_x1/PE_wrapper_5_5_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_5_5_x1/PE_wrapper_5_5_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_5_6_x1/PE_wrapper_5_6_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_5_6_x1/PE_wrapper_5_6_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_5_6_x1/PE_wrapper_5_6_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_5_7_x1/PE_wrapper_5_7_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_5_7_x1/PE_wrapper_5_7_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_5_7_x1/PE_wrapper_5_7_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_6_0_x1/PE_wrapper_6_0_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_6_0_x1/PE_wrapper_6_0_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_6_0_x1/PE_wrapper_6_0_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_6_1_x1/PE_wrapper_6_1_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_6_1_x1/PE_wrapper_6_1_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_6_1_x1/PE_wrapper_6_1_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_6_2_x1/PE_wrapper_6_2_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_6_2_x1/PE_wrapper_6_2_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_6_2_x1/PE_wrapper_6_2_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_6_3_x1/PE_wrapper_6_3_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_6_3_x1/PE_wrapper_6_3_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_6_3_x1/PE_wrapper_6_3_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_6_4_x1/PE_wrapper_6_4_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_6_4_x1/PE_wrapper_6_4_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_6_4_x1/PE_wrapper_6_4_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_6_5_x1/PE_wrapper_6_5_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_6_5_x1/PE_wrapper_6_5_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_6_5_x1/PE_wrapper_6_5_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_6_6_x1/PE_wrapper_6_6_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_6_6_x1/PE_wrapper_6_6_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_6_6_x1/PE_wrapper_6_6_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_6_7_x1/PE_wrapper_6_7_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_6_7_x1/PE_wrapper_6_7_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_6_7_x1/PE_wrapper_6_7_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_7_0_x1/PE_wrapper_7_0_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_7_0_x1/PE_wrapper_7_0_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_7_0_x1/PE_wrapper_7_0_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_7_1_x1/PE_wrapper_7_1_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_7_1_x1/PE_wrapper_7_1_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_7_1_x1/PE_wrapper_7_1_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_7_2_x1/PE_wrapper_7_2_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_7_2_x1/PE_wrapper_7_2_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_7_2_x1/PE_wrapper_7_2_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_7_3_x1/PE_wrapper_7_3_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_7_3_x1/PE_wrapper_7_3_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_7_3_x1/PE_wrapper_7_3_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_7_4_x1/PE_wrapper_7_4_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_7_4_x1/PE_wrapper_7_4_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_7_4_x1/PE_wrapper_7_4_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_7_5_x1/PE_wrapper_7_5_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_7_5_x1/PE_wrapper_7_5_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_7_5_x1/PE_wrapper_7_5_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_7_6_x1/PE_wrapper_7_6_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_7_6_x1/PE_wrapper_7_6_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_7_6_x1/PE_wrapper_7_6_x1_loop_8
set_directive_pipeline -II 1  PE_wrapper_7_7_x1/PE_wrapper_7_7_x1_loop_6
set_directive_pipeline -II 1  PE_wrapper_7_7_x1/PE_wrapper_7_7_x1_loop_7
set_directive_pipeline -II 1  PE_wrapper_7_7_x1/PE_wrapper_7_7_x1_loop_8
set_directive_array_partition -type complete  -dim 2 nondf_kernel_2mm_x0 A
set_directive_array_partition -type complete  -dim 1 nondf_kernel_2mm_x0 B
set_directive_array_partition -type cyclic -factor 16 -dim 2 nondf_kernel_2mm_x0 tmp
set_directive_array_partition -type cyclic -factor 16 -dim 1 nondf_kernel_2mm_x0 C
set_directive_array_partition -type complete  -dim 2 nondf_kernel_2mm_x1 A
set_directive_array_partition -type complete  -dim 1 nondf_kernel_2mm_x1 B
set_directive_array_partition -type cyclic -factor 4 -dim 2 nondf_kernel_2mm_x1 D_input
set_directive_array_partition -type cyclic -factor 4 -dim 2 nondf_kernel_2mm_x1 D_output
set_directive_array_partition -type cyclic -factor 4 -dim 2 nondf_kernel_2mm_x1 C
set_directive_array_partition -type complete  -dim 2 nondf_kernel_2mm_x1 tmp
set_directive_array_partition -type complete  -dim 1 nondf_kernel_2mm_x1 C
set_directive_bind_storage "nondf_kernel_2mm_x0" tmp -impl bram -type ram_2p
set_directive_bind_storage "nondf_kernel_2mm_x0" A -impl bram -type ram_2p
set_directive_bind_storage "nondf_kernel_2mm_x0" B -impl bram -type ram_2p
set_directive_bind_storage "nondf_kernel_2mm_x0" C -impl bram -type ram_2p
set_directive_bind_storage "nondf_kernel_2mm_x0" D_input -impl bram -type ram_2p
set_directive_bind_storage "nondf_kernel_2mm_x0" D_output -impl bram -type ram_2p
set_directive_bind_storage "nondf_kernel_2mm_x1" tmp -impl bram -type ram_2p
set_directive_bind_storage "nondf_kernel_2mm_x1" A -impl bram -type ram_2p
set_directive_bind_storage "nondf_kernel_2mm_x1" B -impl bram -type ram_2p
set_directive_bind_storage "nondf_kernel_2mm_x1" C -impl bram -type ram_2p
set_directive_bind_storage "nondf_kernel_2mm_x1" D_input -impl bram -type ram_2p
set_directive_bind_storage "nondf_kernel_2mm_x1" D_output -impl bram -type ram_2p
set_directive_bind_storage "A_IO_L2_in_0_x0" local_A_ping -impl bram -type ram_2p
set_directive_bind_storage "A_IO_L2_in_0_x0" local_A_pong -impl bram -type ram_2p
set_directive_bind_storage "A_IO_L2_in_1_x0" local_A_ping -impl bram -type ram_2p
set_directive_bind_storage "A_IO_L2_in_1_x0" local_A_pong -impl bram -type ram_2p
set_directive_bind_storage "A_IO_L2_in_2_x0" local_A_ping -impl bram -type ram_2p
set_directive_bind_storage "A_IO_L2_in_2_x0" local_A_pong -impl bram -type ram_2p
set_directive_bind_storage "A_IO_L2_in_3_x0" local_A_ping -impl bram -type ram_2p
set_directive_bind_storage "A_IO_L2_in_3_x0" local_A_pong -impl bram -type ram_2p
set_directive_bind_storage "A_IO_L2_in_4_x0" local_A_ping -impl bram -type ram_2p
set_directive_bind_storage "A_IO_L2_in_4_x0" local_A_pong -impl bram -type ram_2p
set_directive_bind_storage "A_IO_L2_in_5_x0" local_A_ping -impl bram -type ram_2p
set_directive_bind_storage "A_IO_L2_in_5_x0" local_A_pong -impl bram -type ram_2p
set_directive_bind_storage "A_IO_L2_in_6_x0" local_A_ping -impl bram -type ram_2p
set_directive_bind_storage "A_IO_L2_in_6_x0" local_A_pong -impl bram -type ram_2p
set_directive_bind_storage "A_IO_L2_in_boundary_x0" local_A_ping -impl uram -type ram_2p
set_directive_bind_storage "A_IO_L2_in_boundary_x0" local_A_pong -impl uram -type ram_2p
set_directive_bind_storage "B_IO_L2_in_0_x0" local_B_ping -impl bram -type ram_2p
set_directive_bind_storage "B_IO_L2_in_0_x0" local_B_pong -impl bram -type ram_2p
set_directive_bind_storage "B_IO_L2_in_1_x0" local_B_ping -impl bram -type ram_2p
set_directive_bind_storage "B_IO_L2_in_1_x0" local_B_pong -impl bram -type ram_2p
set_directive_bind_storage "B_IO_L2_in_2_x0" local_B_ping -impl bram -type ram_2p
set_directive_bind_storage "B_IO_L2_in_2_x0" local_B_pong -impl bram -type ram_2p
set_directive_bind_storage "B_IO_L2_in_3_x0" local_B_ping -impl bram -type ram_2p
set_directive_bind_storage "B_IO_L2_in_3_x0" local_B_pong -impl bram -type ram_2p
set_directive_bind_storage "B_IO_L2_in_4_x0" local_B_ping -impl bram -type ram_2p
set_directive_bind_storage "B_IO_L2_in_4_x0" local_B_pong -impl bram -type ram_2p
set_directive_bind_storage "B_IO_L2_in_5_x0" local_B_ping -impl bram -type ram_2p
set_directive_bind_storage "B_IO_L2_in_5_x0" local_B_pong -impl bram -type ram_2p
set_directive_bind_storage "B_IO_L2_in_6_x0" local_B_ping -impl bram -type ram_2p
set_directive_bind_storage "B_IO_L2_in_6_x0" local_B_pong -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_0_0_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_0_1_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_0_2_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_0_3_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_0_4_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_0_5_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_0_6_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_0_7_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_1_0_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_1_1_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_1_2_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_1_3_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_1_4_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_1_5_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_1_6_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_1_7_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_2_0_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_2_1_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_2_2_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_2_3_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_2_4_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_2_5_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_2_6_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_2_7_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_3_0_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_3_1_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_3_2_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_3_3_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_3_4_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_3_5_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_3_6_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_3_7_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_4_0_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_4_1_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_4_2_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_4_3_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_4_4_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_4_5_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_4_6_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_4_7_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_5_0_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_5_1_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_5_2_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_5_3_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_5_4_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_5_5_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_5_6_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_5_7_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_6_0_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_6_1_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_6_2_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_6_3_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_6_4_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_6_5_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_6_6_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_6_7_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_7_0_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_7_1_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_7_2_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_7_3_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_7_4_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_7_5_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_7_6_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_7_7_x0" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_0_0_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_0_1_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_0_2_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_0_3_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_0_4_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_0_5_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_0_6_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_0_7_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_1_0_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_1_1_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_1_2_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_1_3_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_1_4_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_1_5_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_1_6_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_1_7_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_2_0_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_2_1_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_2_2_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_2_3_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_2_4_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_2_5_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_2_6_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_2_7_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_3_0_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_3_1_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_3_2_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_3_3_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_3_4_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_3_5_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_3_6_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_3_7_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_4_0_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_4_1_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_4_2_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_4_3_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_4_4_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_4_5_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_4_6_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_4_7_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_5_0_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_5_1_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_5_2_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_5_3_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_5_4_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_5_5_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_5_6_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_5_7_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_6_0_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_6_1_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_6_2_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_6_3_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_6_4_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_6_5_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_6_6_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_6_7_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_7_0_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_7_1_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_7_2_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_7_3_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_7_4_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_7_5_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_7_6_x1" local_C -impl bram -type ram_2p
set_directive_bind_storage "PE_wrapper_7_7_x1" local_C -impl bram -type ram_2p
