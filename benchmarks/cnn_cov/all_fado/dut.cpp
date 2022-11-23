#include <ap_int.h>
#include <hls_stream.h>

/* Data Type */
typedef ap_uint<512> A_t16;
typedef ap_uint<256> A_t8;
typedef ap_uint<512> B_t16;
typedef ap_uint<256> B_t8;
typedef ap_uint<512> C_t16;
typedef ap_uint<64> C_t2;

typedef ap_uint<512> DATA_TYPE;

void nondf_kernel_cov_x0(DATA_TYPE float_n, ap_uint<512> xout[4096], ap_uint<512> xin[4096]) {
#pragma HLS INLINE off
#pragma HLS INTERFACE ap_memory port = xout
#pragma HLS INTERFACE ap_memory port = xin
    int i, j, k;
    DATA_TYPE mean[64];
    DATA_TYPE data[64][64];
    DATA_TYPE cov[64][64];

nondf_kernel_cov_x0_loop_1:     for (i = 0; i < 64; i++) {     // SKIP_DSE
nondf_kernel_cov_x0_loop_2:         for (j = 0; j < 64; j++) { // SKIP_DSE
            data[i][j] = xout[64 * i + j];
        }
    }

nondf_kernel_cov_x0_loop_3:     for (j = 0; j < 64; j++) // {"mean": 1, "data": 2}
    {
        mean[j] = 0;
nondf_kernel_cov_x0_loop_4:         for (i = 0; i < 64; i++) // {"mean": 1, "data": 1}
            mean[j] += data[i][j];
        mean[j] /= float_n;
    }

nondf_kernel_cov_x0_loop_5:     for (i = 0; i < 64; i++)     // {"data": 1}
nondf_kernel_cov_x0_loop_6:         for (j = 0; j < 64; j++) // {"mean": 1, "data": 2}
            data[i][j] -= mean[j];

nondf_kernel_cov_x0_loop_7:     for (i = 0; i < 64; i++)     // {"data": 2, "cov": 2, "cov": 1}
nondf_kernel_cov_x0_loop_8:         for (j = 0; j < 64; j++) // {"data": 2, "cov": 2, "cov": 1}
        {
            cov[i][j] = 0;
nondf_kernel_cov_x0_loop_9:             for (k = 0; k < 64; k++) // {"data": 1}
                cov[i][j] += data[k][i] * data[k][j];
            cov[i][j] /= (float_n - 1);
            cov[j][i] = cov[i][j];
        }

nondf_kernel_cov_x0_loop_10:     for (i = 0; i < 64; i++) {     // SKIP_DSE
nondf_kernel_cov_x0_loop_11:         for (j = 0; j < 64; j++) { // SKIP_DSE
            xin[64 * i + j] = cov[i][j];
        }
    }
}

void nondf_kernel_cov_x1(DATA_TYPE float_n, ap_uint<512> xout[4096], ap_uint<512> xin[4096]) {
#pragma HLS INLINE off
#pragma HLS INTERFACE ap_memory port = xout
#pragma HLS INTERFACE ap_memory port = xin
    int i, j, k;
    DATA_TYPE mean[64];
    DATA_TYPE data[64][64];
    DATA_TYPE cov[64][64];

nondf_kernel_cov_x1_loop_1:     for (i = 0; i < 64; i++) {     // SKIP_DSE
nondf_kernel_cov_x1_loop_2:         for (j = 0; j < 64; j++) { // SKIP_DSE
            data[i][j] = xout[64 * i + j];
        }
    }

nondf_kernel_cov_x1_loop_3:     for (j = 0; j < 64; j++) // {"mean": 1, "data": 2}
    {
        mean[j] = 0;
nondf_kernel_cov_x1_loop_4:         for (i = 0; i < 64; i++) // {"mean": 1, "data": 1}
            mean[j] += data[i][j];
        mean[j] /= float_n;
    }

nondf_kernel_cov_x1_loop_5:     for (i = 0; i < 64; i++)     // {"data": 1}
nondf_kernel_cov_x1_loop_6:         for (j = 0; j < 64; j++) // {"mean": 1, "data": 2}
            data[i][j] -= mean[j];

nondf_kernel_cov_x1_loop_7:     for (i = 0; i < 64; i++)     // {"data": 2, "cov": 2, "cov": 1}
nondf_kernel_cov_x1_loop_8:         for (j = 0; j < 64; j++) // {"data": 2, "cov": 2, "cov": 1}
        {
            cov[i][j] = 0;
nondf_kernel_cov_x1_loop_9:             for (k = 0; k < 64; k++) // {"data": 1}
                cov[i][j] += data[k][i] * data[k][j];
            cov[i][j] /= (float_n - 1);
            cov[j][i] = cov[i][j];
        }

nondf_kernel_cov_x1_loop_10:     for (i = 0; i < 64; i++) {     // SKIP_DSE
nondf_kernel_cov_x1_loop_11:         for (j = 0; j < 64; j++) { // SKIP_DSE
            xin[64 * i + j] = cov[i][j];
        }
    }
}

/* Module Definition */
void A_IO_L3_in_x0(A_t16 *A, hls::stream<A_t8> &fifo_A_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    /* Variable Declaration */

A_IO_L3_in_x0_loop_1:     for (ap_uint<13> i = 0; i < 2048; i++) {
        A_t16 mem_data;
        A_t8 fifo_data;
        mem_data = A[i];
A_IO_L3_in_x0_loop_2:         for (ap_uint<2> p = 0; p < 2; p++) {
            fifo_data = mem_data(255, 0);
            mem_data = mem_data >> 256;
            fifo_A_local_out.write(fifo_data);
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_IO_L2_in_0_x0(int idx, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<A_t8> &fifo_A_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    A_t8 local_A_ping[16][32];
#pragma HLS BIND_STORAGE variable = local_A_ping type = RAM_2P impl = BRAM
    A_t8 local_A_pong[16][32];
#pragma HLS BIND_STORAGE variable = local_A_pong type = RAM_2P impl = BRAM
    /* Variable Declaration */

    // array
    /* Variable Declaration */

A_IO_L2_in_0_x0_loop_1:     for (ap_uint<5> c3 = p0; c3 <= 12; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L2
A_IO_L2_in_0_x0_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 15; c4 += 1) {
            // access_coalesce
A_IO_L2_in_0_x0_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                A_t8 fifo_data;
                fifo_data = fifo_A_in.read();
                if (c3 == p0) {
                    local_A_pong[c4][c5] = fifo_data;
                } else {
                    fifo_A_out.write(fifo_data);
                }
            }
        }
    }

    // io_L1
    // pe
A_IO_L2_in_0_x0_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
A_IO_L2_in_0_x0_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
A_IO_L2_in_0_x0_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                A_t8 fifo_data;
                fifo_data = local_A_pong[c7][c5];
                fifo_A_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_IO_L2_in_1_x0(int idx, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<A_t8> &fifo_A_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    A_t8 local_A_ping[16][32];
#pragma HLS BIND_STORAGE variable = local_A_ping type = RAM_2P impl = BRAM
    A_t8 local_A_pong[16][32];
#pragma HLS BIND_STORAGE variable = local_A_pong type = RAM_2P impl = BRAM
    /* Variable Declaration */

    // array
    /* Variable Declaration */

A_IO_L2_in_1_x0_loop_1:     for (ap_uint<5> c3 = p0; c3 <= 12; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L2
A_IO_L2_in_1_x0_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 15; c4 += 1) {
            // access_coalesce
A_IO_L2_in_1_x0_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                A_t8 fifo_data;
                fifo_data = fifo_A_in.read();
                if (c3 == p0) {
                    local_A_pong[c4][c5] = fifo_data;
                } else {
                    fifo_A_out.write(fifo_data);
                }
            }
        }
    }

    // io_L1
    // pe
A_IO_L2_in_1_x0_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
A_IO_L2_in_1_x0_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
A_IO_L2_in_1_x0_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                A_t8 fifo_data;
                fifo_data = local_A_pong[c7][c5];
                fifo_A_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_IO_L2_in_2_x0(int idx, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<A_t8> &fifo_A_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    A_t8 local_A_ping[16][32];
#pragma HLS BIND_STORAGE variable = local_A_ping type = RAM_2P impl = BRAM
    A_t8 local_A_pong[16][32];
#pragma HLS BIND_STORAGE variable = local_A_pong type = RAM_2P impl = BRAM
    /* Variable Declaration */

    // array
    /* Variable Declaration */

A_IO_L2_in_2_x0_loop_1:     for (ap_uint<5> c3 = p0; c3 <= 12; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L2
A_IO_L2_in_2_x0_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 15; c4 += 1) {
            // access_coalesce
A_IO_L2_in_2_x0_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                A_t8 fifo_data;
                fifo_data = fifo_A_in.read();
                if (c3 == p0) {
                    local_A_pong[c4][c5] = fifo_data;
                } else {
                    fifo_A_out.write(fifo_data);
                }
            }
        }
    }

    // io_L1
    // pe
A_IO_L2_in_2_x0_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
A_IO_L2_in_2_x0_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
A_IO_L2_in_2_x0_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                A_t8 fifo_data;
                fifo_data = local_A_pong[c7][c5];
                fifo_A_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_IO_L2_in_3_x0(int idx, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<A_t8> &fifo_A_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    A_t8 local_A_ping[16][32];
#pragma HLS BIND_STORAGE variable = local_A_ping type = RAM_2P impl = BRAM
    A_t8 local_A_pong[16][32];
#pragma HLS BIND_STORAGE variable = local_A_pong type = RAM_2P impl = BRAM
    /* Variable Declaration */

    // array
    /* Variable Declaration */

A_IO_L2_in_3_x0_loop_1:     for (ap_uint<5> c3 = p0; c3 <= 12; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L2
A_IO_L2_in_3_x0_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 15; c4 += 1) {
            // access_coalesce
A_IO_L2_in_3_x0_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                A_t8 fifo_data;
                fifo_data = fifo_A_in.read();
                if (c3 == p0) {
                    local_A_pong[c4][c5] = fifo_data;
                } else {
                    fifo_A_out.write(fifo_data);
                }
            }
        }
    }

    // io_L1
    // pe
A_IO_L2_in_3_x0_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
A_IO_L2_in_3_x0_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
A_IO_L2_in_3_x0_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                A_t8 fifo_data;
                fifo_data = local_A_pong[c7][c5];
                fifo_A_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_IO_L2_in_4_x0(int idx, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<A_t8> &fifo_A_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    A_t8 local_A_ping[16][32];
#pragma HLS BIND_STORAGE variable = local_A_ping type = RAM_2P impl = BRAM
    A_t8 local_A_pong[16][32];
#pragma HLS BIND_STORAGE variable = local_A_pong type = RAM_2P impl = BRAM
    /* Variable Declaration */

    // array
    /* Variable Declaration */

A_IO_L2_in_4_x0_loop_1:     for (ap_uint<5> c3 = p0; c3 <= 12; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L2
A_IO_L2_in_4_x0_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 15; c4 += 1) {
            // access_coalesce
A_IO_L2_in_4_x0_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                A_t8 fifo_data;
                fifo_data = fifo_A_in.read();
                if (c3 == p0) {
                    local_A_pong[c4][c5] = fifo_data;
                } else {
                    fifo_A_out.write(fifo_data);
                }
            }
        }
    }

    // io_L1
    // pe
A_IO_L2_in_4_x0_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
A_IO_L2_in_4_x0_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
A_IO_L2_in_4_x0_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                A_t8 fifo_data;
                fifo_data = local_A_pong[c7][c5];
                fifo_A_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_IO_L2_in_5_x0(int idx, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<A_t8> &fifo_A_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    A_t8 local_A_ping[16][32];
#pragma HLS BIND_STORAGE variable = local_A_ping type = RAM_2P impl = BRAM
    A_t8 local_A_pong[16][32];
#pragma HLS BIND_STORAGE variable = local_A_pong type = RAM_2P impl = BRAM
    /* Variable Declaration */

    // array
    /* Variable Declaration */

A_IO_L2_in_5_x0_loop_1:     for (ap_uint<5> c3 = p0; c3 <= 12; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L2
A_IO_L2_in_5_x0_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 15; c4 += 1) {
            // access_coalesce
A_IO_L2_in_5_x0_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                A_t8 fifo_data;
                fifo_data = fifo_A_in.read();
                if (c3 == p0) {
                    local_A_pong[c4][c5] = fifo_data;
                } else {
                    fifo_A_out.write(fifo_data);
                }
            }
        }
    }

    // io_L1
    // pe
A_IO_L2_in_5_x0_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
A_IO_L2_in_5_x0_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
A_IO_L2_in_5_x0_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                A_t8 fifo_data;
                fifo_data = local_A_pong[c7][c5];
                fifo_A_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_IO_L2_in_6_x0(int idx, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<A_t8> &fifo_A_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    A_t8 local_A_ping[16][32];
#pragma HLS BIND_STORAGE variable = local_A_ping type = RAM_2P impl = BRAM
    A_t8 local_A_pong[16][32];
#pragma HLS BIND_STORAGE variable = local_A_pong type = RAM_2P impl = BRAM
    /* Variable Declaration */

    // array
    /* Variable Declaration */

A_IO_L2_in_6_x0_loop_1:     for (ap_uint<5> c3 = p0; c3 <= 12; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L2
A_IO_L2_in_6_x0_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 15; c4 += 1) {
            // access_coalesce
A_IO_L2_in_6_x0_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                A_t8 fifo_data;
                fifo_data = fifo_A_in.read();
                if (c3 == p0) {
                    local_A_pong[c4][c5] = fifo_data;
                } else {
                    fifo_A_out.write(fifo_data);
                }
            }
        }
    }

    // io_L1
    // pe
A_IO_L2_in_6_x0_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
A_IO_L2_in_6_x0_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
A_IO_L2_in_6_x0_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                A_t8 fifo_data;
                fifo_data = local_A_pong[c7][c5];
                fifo_A_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_IO_L2_in_7_x0(int idx, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<A_t8> &fifo_A_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    A_t8 local_A_ping[16][32];
#pragma HLS BIND_STORAGE variable = local_A_ping type = RAM_2P impl = BRAM
    A_t8 local_A_pong[16][32];
#pragma HLS BIND_STORAGE variable = local_A_pong type = RAM_2P impl = BRAM
    /* Variable Declaration */

    // array
    /* Variable Declaration */

A_IO_L2_in_7_x0_loop_1:     for (ap_uint<5> c3 = p0; c3 <= 12; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L2
A_IO_L2_in_7_x0_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 15; c4 += 1) {
            // access_coalesce
A_IO_L2_in_7_x0_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                A_t8 fifo_data;
                fifo_data = fifo_A_in.read();
                if (c3 == p0) {
                    local_A_pong[c4][c5] = fifo_data;
                } else {
                    fifo_A_out.write(fifo_data);
                }
            }
        }
    }

    // io_L1
    // pe
A_IO_L2_in_7_x0_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
A_IO_L2_in_7_x0_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
A_IO_L2_in_7_x0_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                A_t8 fifo_data;
                fifo_data = local_A_pong[c7][c5];
                fifo_A_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_IO_L2_in_8_x0(int idx, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<A_t8> &fifo_A_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    A_t8 local_A_ping[16][32];
#pragma HLS BIND_STORAGE variable = local_A_ping type = RAM_2P impl = BRAM
    A_t8 local_A_pong[16][32];
#pragma HLS BIND_STORAGE variable = local_A_pong type = RAM_2P impl = BRAM
    /* Variable Declaration */

    // array
    /* Variable Declaration */

A_IO_L2_in_8_x0_loop_1:     for (ap_uint<5> c3 = p0; c3 <= 12; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L2
A_IO_L2_in_8_x0_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 15; c4 += 1) {
            // access_coalesce
A_IO_L2_in_8_x0_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                A_t8 fifo_data;
                fifo_data = fifo_A_in.read();
                if (c3 == p0) {
                    local_A_pong[c4][c5] = fifo_data;
                } else {
                    fifo_A_out.write(fifo_data);
                }
            }
        }
    }

    // io_L1
    // pe
A_IO_L2_in_8_x0_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
A_IO_L2_in_8_x0_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
A_IO_L2_in_8_x0_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                A_t8 fifo_data;
                fifo_data = local_A_pong[c7][c5];
                fifo_A_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_IO_L2_in_9_x0(int idx, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<A_t8> &fifo_A_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    A_t8 local_A_ping[16][32];
#pragma HLS BIND_STORAGE variable = local_A_ping type = RAM_2P impl = BRAM
    A_t8 local_A_pong[16][32];
#pragma HLS BIND_STORAGE variable = local_A_pong type = RAM_2P impl = BRAM
    /* Variable Declaration */

    // array
    /* Variable Declaration */

A_IO_L2_in_9_x0_loop_1:     for (ap_uint<5> c3 = p0; c3 <= 12; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L2
A_IO_L2_in_9_x0_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 15; c4 += 1) {
            // access_coalesce
A_IO_L2_in_9_x0_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                A_t8 fifo_data;
                fifo_data = fifo_A_in.read();
                if (c3 == p0) {
                    local_A_pong[c4][c5] = fifo_data;
                } else {
                    fifo_A_out.write(fifo_data);
                }
            }
        }
    }

    // io_L1
    // pe
A_IO_L2_in_9_x0_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
A_IO_L2_in_9_x0_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
A_IO_L2_in_9_x0_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                A_t8 fifo_data;
                fifo_data = local_A_pong[c7][c5];
                fifo_A_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_IO_L2_in_10_x0(int idx, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<A_t8> &fifo_A_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    A_t8 local_A_ping[16][32];
#pragma HLS BIND_STORAGE variable = local_A_ping type = RAM_2P impl = BRAM
    A_t8 local_A_pong[16][32];
#pragma HLS BIND_STORAGE variable = local_A_pong type = RAM_2P impl = BRAM
    /* Variable Declaration */

    // array
    /* Variable Declaration */

A_IO_L2_in_10_x0_loop_1:     for (ap_uint<5> c3 = p0; c3 <= 12; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L2
A_IO_L2_in_10_x0_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 15; c4 += 1) {
            // access_coalesce
A_IO_L2_in_10_x0_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                A_t8 fifo_data;
                fifo_data = fifo_A_in.read();
                if (c3 == p0) {
                    local_A_pong[c4][c5] = fifo_data;
                } else {
                    fifo_A_out.write(fifo_data);
                }
            }
        }
    }

    // io_L1
    // pe
A_IO_L2_in_10_x0_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
A_IO_L2_in_10_x0_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
A_IO_L2_in_10_x0_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                A_t8 fifo_data;
                fifo_data = local_A_pong[c7][c5];
                fifo_A_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_IO_L2_in_11_x0(int idx, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<A_t8> &fifo_A_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    A_t8 local_A_ping[16][32];
#pragma HLS BIND_STORAGE variable = local_A_ping type = RAM_2P impl = BRAM
    A_t8 local_A_pong[16][32];
#pragma HLS BIND_STORAGE variable = local_A_pong type = RAM_2P impl = BRAM
    /* Variable Declaration */

    // array
    /* Variable Declaration */

A_IO_L2_in_11_x0_loop_1:     for (ap_uint<5> c3 = p0; c3 <= 12; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L2
A_IO_L2_in_11_x0_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 15; c4 += 1) {
            // access_coalesce
A_IO_L2_in_11_x0_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                A_t8 fifo_data;
                fifo_data = fifo_A_in.read();
                if (c3 == p0) {
                    local_A_pong[c4][c5] = fifo_data;
                } else {
                    fifo_A_out.write(fifo_data);
                }
            }
        }
    }

    // io_L1
    // pe
A_IO_L2_in_11_x0_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
A_IO_L2_in_11_x0_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
A_IO_L2_in_11_x0_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                A_t8 fifo_data;
                fifo_data = local_A_pong[c7][c5];
                fifo_A_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_IO_L2_in_boundary_x0(int idx, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    A_t8 local_A_ping[16][32];
#pragma HLS BIND_STORAGE variable = local_A_ping type = RAM_2P impl = BRAM
    A_t8 local_A_pong[16][32];
#pragma HLS BIND_STORAGE variable = local_A_pong type = RAM_2P impl = BRAM
    /* Variable Declaration */

A_IO_L2_in_boundary_x0_loop_1:     for (ap_uint<5> c3 = p0; c3 <= 12; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 1 max = 1
        // io_L2
A_IO_L2_in_boundary_x0_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 15; c4 += 1) {
            // access_coalesce
A_IO_L2_in_boundary_x0_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                A_t8 fifo_data;
                fifo_data = fifo_A_in.read();
                local_A_pong[c4][c5] = fifo_data;
            }
        }
    }
A_IO_L2_in_boundary_x0_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
A_IO_L2_in_boundary_x0_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
A_IO_L2_in_boundary_x0_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                A_t8 fifo_data;
                fifo_data = local_A_pong[c7][c5];
                fifo_A_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void B_IO_L3_in_x0(B_t16 *B, hls::stream<B_t8> &fifo_B_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    /* Variable Declaration */

B_IO_L3_in_x0_loop_1:     for (ap_uint<12> i = 0; i < 2048; i++) {
        B_t16 mem_data;
        B_t8 fifo_data;
        mem_data = B[i];
B_IO_L3_in_x0_loop_2:         for (ap_uint<2> p = 0; p < 2; p++) {
            fifo_data = mem_data(255, 0);
            mem_data = mem_data >> 256;
            fifo_B_local_out.write(fifo_data);
        }
    }
}
/* Module Definition */

/* Module Definition */
void B_IO_L2_in_x0(int idx, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<B_t8> &fifo_B_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    B_t8 local_B_ping[64][32];
#pragma HLS BIND_STORAGE variable = local_B_ping type = RAM_2P impl = BRAM
    B_t8 local_B_pong[64][32];
#pragma HLS BIND_STORAGE variable = local_B_pong type = RAM_2P impl = BRAM
    bool arb = 0;
    bool inter_trans_en = 1;
    bool intra_trans_en = 0;
    /* Variable Declaration */
B_IO_L2_in_x0_loop_1:     for (ap_uint<2> c3 = p0; c3 <= 1; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 2
        // io_L2
B_IO_L2_in_x0_loop_2:         for (ap_uint<7> c4 = 0; c4 <= 63; c4 += 1) {
            // access_coalesce
B_IO_L2_in_x0_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                B_t8 fifo_data;
                fifo_data = fifo_B_in.read();
                if (c3 == p0) {
                    local_B_pong[c4][c5] = fifo_data;
                } else {
                    fifo_B_out.write(fifo_data);
                }
            }
        }
    }
B_IO_L2_in_x0_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
B_IO_L2_in_x0_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
B_IO_L2_in_x0_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                B_t8 fifo_data;
                fifo_data = local_B_pong[c6][c5];
                fifo_B_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void B_IO_L2_in_boundary_x0(int idx, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    B_t8 local_B_ping[64][32];
#pragma HLS BIND_STORAGE variable = local_B_ping type = RAM_2P impl = BRAM
    B_t8 local_B_pong[64][32];
#pragma HLS BIND_STORAGE variable = local_B_pong type = RAM_2P impl = BRAM
    /* Variable Declaration */
B_IO_L2_in_boundary_x0_loop_1:     for (ap_uint<2> c3 = p0; c3 <= 1; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 1 max = 1
        // io_L2
B_IO_L2_in_boundary_x0_loop_2:         for (ap_uint<7> c4 = 0; c4 <= 63; c4 += 1) {
            // access_coalesce
B_IO_L2_in_boundary_x0_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                B_t8 fifo_data;
                fifo_data = fifo_B_in.read();
                local_B_pong[c4][c5] = fifo_data;
            }
        }
    }
B_IO_L2_in_boundary_x0_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
B_IO_L2_in_boundary_x0_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
B_IO_L2_in_boundary_x0_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                B_t8 fifo_data;
                fifo_data = local_B_pong[c6][c5];
                fifo_B_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void PE_wrapper_12_1_x0(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_12_1_x0_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_12_1_x0_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_12_1_x0_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_12_1_x0_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_12_1_x0_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_12_1_x0_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_12_1_x0_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_12_1_x0_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_12_0_x0(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_12_0_x0_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_12_0_x0_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_12_0_x0_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_12_0_x0_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_12_0_x0_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_12_0_x0_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_12_0_x0_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_12_0_x0_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_11_1_x0(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_11_1_x0_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_11_1_x0_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_11_1_x0_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_11_1_x0_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_11_1_x0_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_11_1_x0_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_11_1_x0_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_11_1_x0_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_11_0_x0(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_11_0_x0_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_11_0_x0_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_11_0_x0_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_11_0_x0_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_11_0_x0_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_11_0_x0_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_11_0_x0_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_11_0_x0_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_10_1_x0(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_10_1_x0_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_10_1_x0_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_10_1_x0_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_10_1_x0_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_10_1_x0_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_10_1_x0_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_10_1_x0_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_10_1_x0_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_10_0_x0(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_10_0_x0_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_10_0_x0_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_10_0_x0_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_10_0_x0_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_10_0_x0_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_10_0_x0_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_10_0_x0_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_10_0_x0_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_9_1_x0(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_9_1_x0_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_9_1_x0_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_9_1_x0_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_9_1_x0_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_9_1_x0_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_9_1_x0_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_9_1_x0_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_9_1_x0_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_9_0_x0(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_9_0_x0_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_9_0_x0_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_9_0_x0_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_9_0_x0_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_9_0_x0_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_9_0_x0_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_9_0_x0_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_9_0_x0_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_8_1_x0(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_8_1_x0_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_8_1_x0_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_8_1_x0_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_8_1_x0_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_8_1_x0_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_8_1_x0_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_8_1_x0_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_8_1_x0_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_8_0_x0(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_8_0_x0_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_8_0_x0_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_8_0_x0_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_8_0_x0_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_8_0_x0_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_8_0_x0_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_8_0_x0_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_8_0_x0_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_7_1_x0(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_7_1_x0_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_7_1_x0_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_7_1_x0_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_7_1_x0_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_7_1_x0_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_7_1_x0_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_7_1_x0_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_7_1_x0_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_7_0_x0(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_7_0_x0_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_7_0_x0_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_7_0_x0_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_7_0_x0_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_7_0_x0_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_7_0_x0_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_7_0_x0_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_7_0_x0_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_6_1_x0(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_6_1_x0_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_6_1_x0_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_6_1_x0_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_6_1_x0_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_6_1_x0_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_6_1_x0_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_6_1_x0_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_6_1_x0_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_6_0_x0(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_6_0_x0_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_6_0_x0_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_6_0_x0_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_6_0_x0_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_6_0_x0_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_6_0_x0_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_6_0_x0_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_6_0_x0_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_5_1_x0(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_5_1_x0_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_5_1_x0_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_5_1_x0_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_5_1_x0_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_5_1_x0_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_5_1_x0_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_5_1_x0_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_5_1_x0_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_5_0_x0(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_5_0_x0_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_5_0_x0_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_5_0_x0_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_5_0_x0_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_5_0_x0_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_5_0_x0_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_5_0_x0_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_5_0_x0_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_4_1_x0(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_4_1_x0_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_4_1_x0_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_4_1_x0_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_4_1_x0_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_4_1_x0_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_4_1_x0_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_4_1_x0_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_4_1_x0_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_4_0_x0(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_4_0_x0_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_4_0_x0_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_4_0_x0_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_4_0_x0_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_4_0_x0_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_4_0_x0_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_4_0_x0_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_4_0_x0_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_3_1_x0(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_3_1_x0_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_3_1_x0_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_3_1_x0_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_3_1_x0_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_3_1_x0_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_3_1_x0_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_3_1_x0_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_3_1_x0_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_3_0_x0(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_3_0_x0_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_3_0_x0_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_3_0_x0_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_3_0_x0_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_3_0_x0_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_3_0_x0_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_3_0_x0_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_3_0_x0_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_2_1_x0(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_2_1_x0_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_2_1_x0_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_2_1_x0_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_2_1_x0_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_2_1_x0_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_2_1_x0_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_2_1_x0_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_2_1_x0_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_2_0_x0(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_2_0_x0_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_2_0_x0_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_2_0_x0_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_2_0_x0_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_2_0_x0_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_2_0_x0_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_2_0_x0_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_2_0_x0_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_1_1_x0(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_1_1_x0_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_1_1_x0_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_1_1_x0_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_1_1_x0_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_1_1_x0_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_1_1_x0_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_1_1_x0_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_1_1_x0_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_1_0_x0(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_1_0_x0_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_1_0_x0_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_1_0_x0_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_1_0_x0_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_1_0_x0_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_1_0_x0_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_1_0_x0_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_1_0_x0_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_0_1_x0(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_0_1_x0_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_0_1_x0_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_0_1_x0_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_0_1_x0_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_0_1_x0_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_0_1_x0_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_0_1_x0_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_0_1_x0_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_0_0_x0(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_0_0_x0_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_0_0_x0_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_0_0_x0_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_0_0_x0_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_0_0_x0_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_0_0_x0_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_0_0_x0_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_0_0_x0_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_PE_dummy_0_x0(int idx, int idy, hls::stream<A_t8> &fifo_A_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
A_PE_dummy_0_x0_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
A_PE_dummy_0_x0_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
A_PE_dummy_0_x0_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    A_t8 fifo_data;
                    fifo_data = fifo_A_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_PE_dummy_1_x0(int idx, int idy, hls::stream<A_t8> &fifo_A_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
A_PE_dummy_1_x0_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
A_PE_dummy_1_x0_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
A_PE_dummy_1_x0_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    A_t8 fifo_data;
                    fifo_data = fifo_A_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_PE_dummy_2_x0(int idx, int idy, hls::stream<A_t8> &fifo_A_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
A_PE_dummy_2_x0_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
A_PE_dummy_2_x0_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
A_PE_dummy_2_x0_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    A_t8 fifo_data;
                    fifo_data = fifo_A_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_PE_dummy_3_x0(int idx, int idy, hls::stream<A_t8> &fifo_A_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
A_PE_dummy_3_x0_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
A_PE_dummy_3_x0_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
A_PE_dummy_3_x0_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    A_t8 fifo_data;
                    fifo_data = fifo_A_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_PE_dummy_4_x0(int idx, int idy, hls::stream<A_t8> &fifo_A_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
A_PE_dummy_4_x0_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
A_PE_dummy_4_x0_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
A_PE_dummy_4_x0_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    A_t8 fifo_data;
                    fifo_data = fifo_A_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_PE_dummy_5_x0(int idx, int idy, hls::stream<A_t8> &fifo_A_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
A_PE_dummy_5_x0_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
A_PE_dummy_5_x0_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
A_PE_dummy_5_x0_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    A_t8 fifo_data;
                    fifo_data = fifo_A_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_PE_dummy_6_x0(int idx, int idy, hls::stream<A_t8> &fifo_A_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
A_PE_dummy_6_x0_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
A_PE_dummy_6_x0_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
A_PE_dummy_6_x0_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    A_t8 fifo_data;
                    fifo_data = fifo_A_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_PE_dummy_7_x0(int idx, int idy, hls::stream<A_t8> &fifo_A_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
A_PE_dummy_7_x0_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
A_PE_dummy_7_x0_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
A_PE_dummy_7_x0_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    A_t8 fifo_data;
                    fifo_data = fifo_A_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_PE_dummy_8_x0(int idx, int idy, hls::stream<A_t8> &fifo_A_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
A_PE_dummy_8_x0_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
A_PE_dummy_8_x0_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
A_PE_dummy_8_x0_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    A_t8 fifo_data;
                    fifo_data = fifo_A_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_PE_dummy_9_x0(int idx, int idy, hls::stream<A_t8> &fifo_A_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
A_PE_dummy_9_x0_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
A_PE_dummy_9_x0_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
A_PE_dummy_9_x0_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    A_t8 fifo_data;
                    fifo_data = fifo_A_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_PE_dummy_10_x0(int idx, int idy, hls::stream<A_t8> &fifo_A_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
A_PE_dummy_10_x0_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
A_PE_dummy_10_x0_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
A_PE_dummy_10_x0_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    A_t8 fifo_data;
                    fifo_data = fifo_A_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_PE_dummy_11_x0(int idx, int idy, hls::stream<A_t8> &fifo_A_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
A_PE_dummy_11_x0_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
A_PE_dummy_11_x0_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
A_PE_dummy_11_x0_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    A_t8 fifo_data;
                    fifo_data = fifo_A_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_PE_dummy_12_x0(int idx, int idy, hls::stream<A_t8> &fifo_A_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
A_PE_dummy_12_x0_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
A_PE_dummy_12_x0_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
A_PE_dummy_12_x0_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    A_t8 fifo_data;
                    fifo_data = fifo_A_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void B_PE_dummy_0_x0(int idx, int idy, hls::stream<B_t8> &fifo_B_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
B_PE_dummy_0_x0_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
B_PE_dummy_0_x0_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
B_PE_dummy_0_x0_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    B_t8 fifo_data;
                    fifo_data = fifo_B_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void B_PE_dummy_1_x0(int idx, int idy, hls::stream<B_t8> &fifo_B_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
B_PE_dummy_1_x0_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
B_PE_dummy_1_x0_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
B_PE_dummy_1_x0_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    B_t8 fifo_data;
                    fifo_data = fifo_B_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_0_x0(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_0_x0_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_0_x0_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_0_x0_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_0_x0_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_0_x0_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_0_x0_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_1_x0(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_1_x0_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_1_x0_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_1_x0_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_1_x0_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_1_x0_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_1_x0_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_2_x0(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_2_x0_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_2_x0_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_2_x0_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_2_x0_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_2_x0_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_2_x0_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_3_x0(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_3_x0_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_3_x0_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_3_x0_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_3_x0_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_3_x0_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_3_x0_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_4_x0(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_4_x0_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_4_x0_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_4_x0_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_4_x0_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_4_x0_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_4_x0_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_5_x0(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_5_x0_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_5_x0_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_5_x0_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_5_x0_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_5_x0_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_5_x0_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_6_x0(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_6_x0_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_6_x0_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_6_x0_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_6_x0_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_6_x0_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_6_x0_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_7_x0(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_7_x0_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_7_x0_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_7_x0_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_7_x0_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_7_x0_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_7_x0_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_8_x0(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_8_x0_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_8_x0_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_8_x0_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_8_x0_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_8_x0_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_8_x0_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_9_x0(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_9_x0_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_9_x0_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_9_x0_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_9_x0_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_9_x0_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_9_x0_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_10_x0(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_10_x0_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_10_x0_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_10_x0_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_10_x0_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_10_x0_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_10_x0_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_11_x0(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_11_x0_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_11_x0_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_11_x0_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_11_x0_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_11_x0_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_11_x0_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_12_x0(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_12_x0_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_12_x0_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_12_x0_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_12_x0_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_12_x0_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_12_x0_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_13_x0(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_13_x0_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_13_x0_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_13_x0_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_13_x0_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_13_x0_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_13_x0_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_14_x0(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_14_x0_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_14_x0_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_14_x0_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_14_x0_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_14_x0_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_14_x0_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_15_x0(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_15_x0_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_15_x0_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_15_x0_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_15_x0_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_15_x0_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_15_x0_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_16_x0(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_16_x0_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_16_x0_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_16_x0_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_16_x0_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_16_x0_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_16_x0_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_17_x0(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_17_x0_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_17_x0_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_17_x0_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_17_x0_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_17_x0_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_17_x0_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_18_x0(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_18_x0_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_18_x0_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_18_x0_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_18_x0_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_18_x0_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_18_x0_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_19_x0(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_19_x0_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_19_x0_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_19_x0_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_19_x0_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_19_x0_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_19_x0_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_20_x0(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_20_x0_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_20_x0_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_20_x0_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_20_x0_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_20_x0_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_20_x0_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_21_x0(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_21_x0_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_21_x0_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_21_x0_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_21_x0_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_21_x0_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_21_x0_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_22_x0(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_22_x0_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_22_x0_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_22_x0_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_22_x0_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_22_x0_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_22_x0_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_23_x0(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_23_x0_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_23_x0_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_23_x0_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_23_x0_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_23_x0_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_23_x0_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_boundary_0_x0(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    /* Variable Declaration */
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_boundary_0_x0_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_boundary_0_x0_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_boundary_0_x0_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
    /* Variable Declaration */

C_drain_IO_L1_out_boundary_0_x0_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 1 max = 1
        // io_L1
C_drain_IO_L1_out_boundary_0_x0_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_boundary_0_x0_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                fifo_data = local_C[c5][c6];
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_boundary_1_x0(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    /* Variable Declaration */
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_boundary_1_x0_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_boundary_1_x0_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_boundary_1_x0_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
    /* Variable Declaration */

C_drain_IO_L1_out_boundary_1_x0_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 1 max = 1
        // io_L1
C_drain_IO_L1_out_boundary_1_x0_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_boundary_1_x0_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                fifo_data = local_C[c5][c6];
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L2_out_x0(int idx, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<C_t2> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    /* Variable Declaration */

    // array
    // io_L3
C_drain_IO_L2_out_x0_loop_1:     for (ap_uint<2> c3 = p0; c3 <= 1; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 2
        // io_L2
C_drain_IO_L2_out_x0_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 12; c4 += 1) {
            // io_L1
            // pe
C_drain_IO_L2_out_x0_loop_3:             for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
                // access_coalesce
C_drain_IO_L2_out_x0_loop_4:                 for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                    C_t2 fifo_data;
                    if (c3 == p0) {
                        fifo_data = fifo_C_drain_local_in.read();
                    } else {
                        fifo_data = fifo_C_drain_in.read();
                    }
                    fifo_C_drain_out.write(fifo_data);
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L2_out_boundary_x0(int idx, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<C_t2> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    /* Variable Declaration */

    // array
    // io_L3
C_drain_IO_L2_out_boundary_x0_loop_1:     for (ap_uint<2> c3 = p0; c3 <= 1; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 1 max = 1
        // io_L2
C_drain_IO_L2_out_boundary_x0_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 12; c4 += 1) {
            // io_L1
            // pe
C_drain_IO_L2_out_boundary_x0_loop_3:             for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
                // access_coalesce
C_drain_IO_L2_out_boundary_x0_loop_4:                 for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                    C_t2 fifo_data;
                    fifo_data = fifo_C_drain_local_in.read();
                    fifo_C_drain_out.write(fifo_data);
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L3_out_x0(C_t16 *C, hls::stream<C_t2> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    /* Variable Declaration */

C_drain_IO_L3_out_x0_loop_1:     for (ap_uint<12> i = 0; i < 2048; i++) {
        C_t16 mem_data;
        C_t2 fifo_data;
        C_t2 mem_data_split[8];
C_drain_IO_L3_out_x0_loop_2:         for (ap_uint<4> p = 0; p < 8; p++) {
            fifo_data = fifo_C_drain_local_in.read();
            mem_data_split[p] = fifo_data;
        }
        mem_data = (mem_data_split[7], mem_data_split[6], mem_data_split[5], mem_data_split[4], mem_data_split[3], mem_data_split[2], mem_data_split[1], mem_data_split[0]);
        C[i] = mem_data;
    }
}
/* Module Definition */

void kernel3_x0(A_t16 *A, B_t16 *B, C_t16 *C) {
#pragma HLS inline off
#pragma HLS DATAFLOW disable_start_propagation

    /* FIFO Declaration */
    /* A_IO_L2_in fifo */ hls::stream<A_t8> fifo_A_A_IO_L2_in_0_x0;
#pragma HLS STREAM variable = fifo_A_A_IO_L2_in_0_x0 depth = 2
    /* A_IO_L2_in fifo */ hls::stream<A_t8> fifo_A_A_IO_L2_in_1_x0;
#pragma HLS STREAM variable = fifo_A_A_IO_L2_in_1_x0 depth = 2
    /* A_IO_L2_in fifo */ hls::stream<A_t8> fifo_A_A_IO_L2_in_2_x0;
#pragma HLS STREAM variable = fifo_A_A_IO_L2_in_2_x0 depth = 2
    /* A_IO_L2_in fifo */ hls::stream<A_t8> fifo_A_A_IO_L2_in_3_x0;
#pragma HLS STREAM variable = fifo_A_A_IO_L2_in_3_x0 depth = 2
    /* A_IO_L2_in fifo */ hls::stream<A_t8> fifo_A_A_IO_L2_in_4_x0;
#pragma HLS STREAM variable = fifo_A_A_IO_L2_in_4_x0 depth = 2
    /* A_IO_L2_in fifo */ hls::stream<A_t8> fifo_A_A_IO_L2_in_5_x0;
#pragma HLS STREAM variable = fifo_A_A_IO_L2_in_5_x0 depth = 2
    /* A_IO_L2_in fifo */ hls::stream<A_t8> fifo_A_A_IO_L2_in_6_x0;
#pragma HLS STREAM variable = fifo_A_A_IO_L2_in_6_x0 depth = 2
    /* A_IO_L2_in fifo */ hls::stream<A_t8> fifo_A_A_IO_L2_in_7_x0;
#pragma HLS STREAM variable = fifo_A_A_IO_L2_in_7_x0 depth = 2
    /* A_IO_L2_in fifo */ hls::stream<A_t8> fifo_A_A_IO_L2_in_8_x0;
#pragma HLS STREAM variable = fifo_A_A_IO_L2_in_8_x0 depth = 2
    /* A_IO_L2_in fifo */ hls::stream<A_t8> fifo_A_A_IO_L2_in_9_x0;
#pragma HLS STREAM variable = fifo_A_A_IO_L2_in_9_x0 depth = 2
    /* A_IO_L2_in fifo */ hls::stream<A_t8> fifo_A_A_IO_L2_in_10_x0;
#pragma HLS STREAM variable = fifo_A_A_IO_L2_in_10_x0 depth = 2
    /* A_IO_L2_in fifo */ hls::stream<A_t8> fifo_A_A_IO_L2_in_11_x0;
#pragma HLS STREAM variable = fifo_A_A_IO_L2_in_11_x0 depth = 2
    /* A_IO_L2_in fifo */ hls::stream<A_t8> fifo_A_A_IO_L2_in_12_x0;
#pragma HLS STREAM variable = fifo_A_A_IO_L2_in_12_x0 depth = 2
    /* B_IO_L2_in fifo */ hls::stream<B_t8> fifo_B_B_IO_L2_in_0_x0;
#pragma HLS STREAM variable = fifo_B_B_IO_L2_in_0_x0 depth = 2
    /* B_IO_L2_in fifo */ hls::stream<B_t8> fifo_B_B_IO_L2_in_1_x0;
#pragma HLS STREAM variable = fifo_B_B_IO_L2_in_1_x0 depth = 2
    /* B_IO_L2_in fifo */ hls::stream<B_t8> fifo_B_B_IO_L2_in_2_x0;
#pragma HLS STREAM variable = fifo_B_B_IO_L2_in_2_x0 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_0_0_x0;
#pragma HLS STREAM variable = fifo_A_PE_0_0_x0 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_0_1_x0;
#pragma HLS STREAM variable = fifo_A_PE_0_1_x0 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_0_2_x0;
#pragma HLS STREAM variable = fifo_A_PE_0_2_x0 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_1_0_x0;
#pragma HLS STREAM variable = fifo_A_PE_1_0_x0 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_1_1_x0;
#pragma HLS STREAM variable = fifo_A_PE_1_1_x0 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_1_2_x0;
#pragma HLS STREAM variable = fifo_A_PE_1_2_x0 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_2_0_x0;
#pragma HLS STREAM variable = fifo_A_PE_2_0_x0 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_2_1_x0;
#pragma HLS STREAM variable = fifo_A_PE_2_1_x0 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_2_2_x0;
#pragma HLS STREAM variable = fifo_A_PE_2_2_x0 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_3_0_x0;
#pragma HLS STREAM variable = fifo_A_PE_3_0_x0 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_3_1_x0;
#pragma HLS STREAM variable = fifo_A_PE_3_1_x0 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_3_2_x0;
#pragma HLS STREAM variable = fifo_A_PE_3_2_x0 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_4_0_x0;
#pragma HLS STREAM variable = fifo_A_PE_4_0_x0 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_4_1_x0;
#pragma HLS STREAM variable = fifo_A_PE_4_1_x0 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_4_2_x0;
#pragma HLS STREAM variable = fifo_A_PE_4_2_x0 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_5_0_x0;
#pragma HLS STREAM variable = fifo_A_PE_5_0_x0 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_5_1_x0;
#pragma HLS STREAM variable = fifo_A_PE_5_1_x0 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_5_2_x0;
#pragma HLS STREAM variable = fifo_A_PE_5_2_x0 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_6_0_x0;
#pragma HLS STREAM variable = fifo_A_PE_6_0_x0 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_6_1_x0;
#pragma HLS STREAM variable = fifo_A_PE_6_1_x0 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_6_2_x0;
#pragma HLS STREAM variable = fifo_A_PE_6_2_x0 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_7_0_x0;
#pragma HLS STREAM variable = fifo_A_PE_7_0_x0 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_7_1_x0;
#pragma HLS STREAM variable = fifo_A_PE_7_1_x0 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_7_2_x0;
#pragma HLS STREAM variable = fifo_A_PE_7_2_x0 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_8_0_x0;
#pragma HLS STREAM variable = fifo_A_PE_8_0_x0 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_8_1_x0;
#pragma HLS STREAM variable = fifo_A_PE_8_1_x0 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_8_2_x0;
#pragma HLS STREAM variable = fifo_A_PE_8_2_x0 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_9_0_x0;
#pragma HLS STREAM variable = fifo_A_PE_9_0_x0 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_9_1_x0;
#pragma HLS STREAM variable = fifo_A_PE_9_1_x0 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_9_2_x0;
#pragma HLS STREAM variable = fifo_A_PE_9_2_x0 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_10_0_x0;
#pragma HLS STREAM variable = fifo_A_PE_10_0_x0 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_10_1_x0;
#pragma HLS STREAM variable = fifo_A_PE_10_1_x0 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_10_2_x0;
#pragma HLS STREAM variable = fifo_A_PE_10_2_x0 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_11_0_x0;
#pragma HLS STREAM variable = fifo_A_PE_11_0_x0 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_11_1_x0;
#pragma HLS STREAM variable = fifo_A_PE_11_1_x0 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_11_2_x0;
#pragma HLS STREAM variable = fifo_A_PE_11_2_x0 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_12_0_x0;
#pragma HLS STREAM variable = fifo_A_PE_12_0_x0 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_12_1_x0;
#pragma HLS STREAM variable = fifo_A_PE_12_1_x0 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_12_2_x0;
#pragma HLS STREAM variable = fifo_A_PE_12_2_x0 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_0_0_x0;
#pragma HLS STREAM variable = fifo_B_PE_0_0_x0 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_1_0_x0;
#pragma HLS STREAM variable = fifo_B_PE_1_0_x0 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_2_0_x0;
#pragma HLS STREAM variable = fifo_B_PE_2_0_x0 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_3_0_x0;
#pragma HLS STREAM variable = fifo_B_PE_3_0_x0 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_4_0_x0;
#pragma HLS STREAM variable = fifo_B_PE_4_0_x0 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_5_0_x0;
#pragma HLS STREAM variable = fifo_B_PE_5_0_x0 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_6_0_x0;
#pragma HLS STREAM variable = fifo_B_PE_6_0_x0 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_7_0_x0;
#pragma HLS STREAM variable = fifo_B_PE_7_0_x0 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_8_0_x0;
#pragma HLS STREAM variable = fifo_B_PE_8_0_x0 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_9_0_x0;
#pragma HLS STREAM variable = fifo_B_PE_9_0_x0 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_10_0_x0;
#pragma HLS STREAM variable = fifo_B_PE_10_0_x0 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_11_0_x0;
#pragma HLS STREAM variable = fifo_B_PE_11_0_x0 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_12_0_x0;
#pragma HLS STREAM variable = fifo_B_PE_12_0_x0 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_13_0_x0;
#pragma HLS STREAM variable = fifo_B_PE_13_0_x0 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_0_1_x0;
#pragma HLS STREAM variable = fifo_B_PE_0_1_x0 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_1_1_x0;
#pragma HLS STREAM variable = fifo_B_PE_1_1_x0 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_2_1_x0;
#pragma HLS STREAM variable = fifo_B_PE_2_1_x0 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_3_1_x0;
#pragma HLS STREAM variable = fifo_B_PE_3_1_x0 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_4_1_x0;
#pragma HLS STREAM variable = fifo_B_PE_4_1_x0 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_5_1_x0;
#pragma HLS STREAM variable = fifo_B_PE_5_1_x0 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_6_1_x0;
#pragma HLS STREAM variable = fifo_B_PE_6_1_x0 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_7_1_x0;
#pragma HLS STREAM variable = fifo_B_PE_7_1_x0 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_8_1_x0;
#pragma HLS STREAM variable = fifo_B_PE_8_1_x0 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_9_1_x0;
#pragma HLS STREAM variable = fifo_B_PE_9_1_x0 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_10_1_x0;
#pragma HLS STREAM variable = fifo_B_PE_10_1_x0 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_11_1_x0;
#pragma HLS STREAM variable = fifo_B_PE_11_1_x0 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_12_1_x0;
#pragma HLS STREAM variable = fifo_B_PE_12_1_x0 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_13_1_x0;
#pragma HLS STREAM variable = fifo_B_PE_13_1_x0 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_0_0_x0;
#pragma HLS STREAM variable = fifo_C_drain_PE_0_0_x0 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_1_0_x0;
#pragma HLS STREAM variable = fifo_C_drain_PE_1_0_x0 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_2_0_x0;
#pragma HLS STREAM variable = fifo_C_drain_PE_2_0_x0 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_3_0_x0;
#pragma HLS STREAM variable = fifo_C_drain_PE_3_0_x0 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_4_0_x0;
#pragma HLS STREAM variable = fifo_C_drain_PE_4_0_x0 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_5_0_x0;
#pragma HLS STREAM variable = fifo_C_drain_PE_5_0_x0 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_6_0_x0;
#pragma HLS STREAM variable = fifo_C_drain_PE_6_0_x0 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_7_0_x0;
#pragma HLS STREAM variable = fifo_C_drain_PE_7_0_x0 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_8_0_x0;
#pragma HLS STREAM variable = fifo_C_drain_PE_8_0_x0 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_9_0_x0;
#pragma HLS STREAM variable = fifo_C_drain_PE_9_0_x0 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_10_0_x0;
#pragma HLS STREAM variable = fifo_C_drain_PE_10_0_x0 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_11_0_x0;
#pragma HLS STREAM variable = fifo_C_drain_PE_11_0_x0 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_12_0_x0;
#pragma HLS STREAM variable = fifo_C_drain_PE_12_0_x0 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_0_1_x0;
#pragma HLS STREAM variable = fifo_C_drain_PE_0_1_x0 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_1_1_x0;
#pragma HLS STREAM variable = fifo_C_drain_PE_1_1_x0 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_2_1_x0;
#pragma HLS STREAM variable = fifo_C_drain_PE_2_1_x0 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_3_1_x0;
#pragma HLS STREAM variable = fifo_C_drain_PE_3_1_x0 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_4_1_x0;
#pragma HLS STREAM variable = fifo_C_drain_PE_4_1_x0 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_5_1_x0;
#pragma HLS STREAM variable = fifo_C_drain_PE_5_1_x0 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_6_1_x0;
#pragma HLS STREAM variable = fifo_C_drain_PE_6_1_x0 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_7_1_x0;
#pragma HLS STREAM variable = fifo_C_drain_PE_7_1_x0 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_8_1_x0;
#pragma HLS STREAM variable = fifo_C_drain_PE_8_1_x0 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_9_1_x0;
#pragma HLS STREAM variable = fifo_C_drain_PE_9_1_x0 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_10_1_x0;
#pragma HLS STREAM variable = fifo_C_drain_PE_10_1_x0 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_11_1_x0;
#pragma HLS STREAM variable = fifo_C_drain_PE_11_1_x0 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_12_1_x0;
#pragma HLS STREAM variable = fifo_C_drain_PE_12_1_x0 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_0_0_x0;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_0_0_x0 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_0_1_x0;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_0_1_x0 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_0_2_x0;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_0_2_x0 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_0_3_x0;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_0_3_x0 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_0_4_x0;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_0_4_x0 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_0_5_x0;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_0_5_x0 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_0_6_x0;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_0_6_x0 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_0_7_x0;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_0_7_x0 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_0_8_x0;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_0_8_x0 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_0_9_x0;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_0_9_x0 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_0_10_x0;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_0_10_x0 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_0_11_x0;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_0_11_x0 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_0_12_x0;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_0_12_x0 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_0_13_x0;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_0_13_x0 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_1_0_x0;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_1_0_x0 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_1_1_x0;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_1_1_x0 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_1_2_x0;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_1_2_x0 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_1_3_x0;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_1_3_x0 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_1_4_x0;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_1_4_x0 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_1_5_x0;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_1_5_x0 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_1_6_x0;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_1_6_x0 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_1_7_x0;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_1_7_x0 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_1_8_x0;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_1_8_x0 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_1_9_x0;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_1_9_x0 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_1_10_x0;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_1_10_x0 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_1_11_x0;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_1_11_x0 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_1_12_x0;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_1_12_x0 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_1_13_x0;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_1_13_x0 depth = 2
    /* C_drain_IO_L2_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L2_out_0_x0;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L2_out_0_x0 depth = 2
    /* C_drain_IO_L2_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L2_out_1_x0;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L2_out_1_x0 depth = 2
    /* FIFO Declaration */

    /* Module Call */
    A_IO_L3_in_x0(

        /* array */ A,
        /* fifo */ fifo_A_A_IO_L2_in_0_x0);
    /* Module Call */

    /* Module Call */
    A_IO_L2_in_0_x0(

        /* module id */ 0,
        /* fifo */ fifo_A_A_IO_L2_in_0_x0,
        /* fifo */ fifo_A_A_IO_L2_in_1_x0,
        /* fifo */ fifo_A_PE_0_0_x0);
    /* Module Call */

    /* Module Call */
    A_IO_L2_in_1_x0(

        /* module id */ 1,
        /* fifo */ fifo_A_A_IO_L2_in_1_x0,
        /* fifo */ fifo_A_A_IO_L2_in_2_x0,
        /* fifo */ fifo_A_PE_1_0_x0);
    /* Module Call */

    /* Module Call */
    A_IO_L2_in_2_x0(

        /* module id */ 2,
        /* fifo */ fifo_A_A_IO_L2_in_2_x0,
        /* fifo */ fifo_A_A_IO_L2_in_3_x0,
        /* fifo */ fifo_A_PE_2_0_x0);
    /* Module Call */

    /* Module Call */
    A_IO_L2_in_3_x0(

        /* module id */ 3,
        /* fifo */ fifo_A_A_IO_L2_in_3_x0,
        /* fifo */ fifo_A_A_IO_L2_in_4_x0,
        /* fifo */ fifo_A_PE_3_0_x0);
    /* Module Call */

    /* Module Call */
    A_IO_L2_in_4_x0(

        /* module id */ 4,
        /* fifo */ fifo_A_A_IO_L2_in_4_x0,
        /* fifo */ fifo_A_A_IO_L2_in_5_x0,
        /* fifo */ fifo_A_PE_4_0_x0);
    /* Module Call */

    /* Module Call */
    A_IO_L2_in_5_x0(

        /* module id */ 5,
        /* fifo */ fifo_A_A_IO_L2_in_5_x0,
        /* fifo */ fifo_A_A_IO_L2_in_6_x0,
        /* fifo */ fifo_A_PE_5_0_x0);
    /* Module Call */

    /* Module Call */
    A_IO_L2_in_6_x0(

        /* module id */ 6,
        /* fifo */ fifo_A_A_IO_L2_in_6_x0,
        /* fifo */ fifo_A_A_IO_L2_in_7_x0,
        /* fifo */ fifo_A_PE_6_0_x0);
    /* Module Call */

    /* Module Call */
    A_IO_L2_in_7_x0(

        /* module id */ 7,
        /* fifo */ fifo_A_A_IO_L2_in_7_x0,
        /* fifo */ fifo_A_A_IO_L2_in_8_x0,
        /* fifo */ fifo_A_PE_7_0_x0);
    /* Module Call */

    /* Module Call */
    A_IO_L2_in_8_x0(

        /* module id */ 8,
        /* fifo */ fifo_A_A_IO_L2_in_8_x0,
        /* fifo */ fifo_A_A_IO_L2_in_9_x0,
        /* fifo */ fifo_A_PE_8_0_x0);
    /* Module Call */

    /* Module Call */
    A_IO_L2_in_9_x0(

        /* module id */ 9,
        /* fifo */ fifo_A_A_IO_L2_in_9_x0,
        /* fifo */ fifo_A_A_IO_L2_in_10_x0,
        /* fifo */ fifo_A_PE_9_0_x0);
    /* Module Call */

    /* Module Call */
    A_IO_L2_in_10_x0(

        /* module id */ 10,
        /* fifo */ fifo_A_A_IO_L2_in_10_x0,
        /* fifo */ fifo_A_A_IO_L2_in_11_x0,
        /* fifo */ fifo_A_PE_10_0_x0);
    /* Module Call */

    /* Module Call */
    A_IO_L2_in_11_x0(

        /* module id */ 11,
        /* fifo */ fifo_A_A_IO_L2_in_11_x0,
        /* fifo */ fifo_A_A_IO_L2_in_12_x0,
        /* fifo */ fifo_A_PE_11_0_x0);
    /* Module Call */

    /* Module Call */
    A_IO_L2_in_boundary_x0(

        /* module id */ 12,
        /* fifo */ fifo_A_A_IO_L2_in_12_x0,
        /* fifo */ fifo_A_PE_12_0_x0);
    /* Module Call */

    /* Module Call */
    B_IO_L3_in_x0(

        /* array */ B,
        /* fifo */ fifo_B_B_IO_L2_in_0_x0);
    /* Module Call */

    /* Module Call */
    B_IO_L2_in_x0(

        /* module id */ 0,
        /* fifo */ fifo_B_B_IO_L2_in_0_x0,
        /* fifo */ fifo_B_B_IO_L2_in_1_x0,
        /* fifo */ fifo_B_PE_0_0_x0);
    /* Module Call */

    /* Module Call */
    B_IO_L2_in_boundary_x0(

        /* module id */ 1,
        /* fifo */ fifo_B_B_IO_L2_in_1_x0,
        /* fifo */ fifo_B_PE_0_1_x0);
    /* Module Call */

    /* Module Call */
    PE_wrapper_0_0_x0(

        /* module id */ 0,
        /* module id */ 0,
        /* fifo */ fifo_A_PE_0_0_x0,
        /* fifo */ fifo_A_PE_0_1_x0,
        /* fifo */ fifo_B_PE_0_0_x0,
        /* fifo */ fifo_B_PE_1_0_x0,
        /* fifo */ fifo_C_drain_PE_0_0_x0);
    /* Module Call */

    /* Module Call */
    PE_wrapper_0_1_x0(

        /* module id */ 0,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_0_1_x0,
        /* fifo */ fifo_A_PE_0_2_x0,
        /* fifo */ fifo_B_PE_0_1_x0,
        /* fifo */ fifo_B_PE_1_1_x0,
        /* fifo */ fifo_C_drain_PE_0_1_x0);
    /* Module Call */

    /* Module Call */
    PE_wrapper_1_0_x0(

        /* module id */ 1,
        /* module id */ 0,
        /* fifo */ fifo_A_PE_1_0_x0,
        /* fifo */ fifo_A_PE_1_1_x0,
        /* fifo */ fifo_B_PE_1_0_x0,
        /* fifo */ fifo_B_PE_2_0_x0,
        /* fifo */ fifo_C_drain_PE_1_0_x0);
    /* Module Call */

    /* Module Call */
    PE_wrapper_1_1_x0(

        /* module id */ 1,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_1_1_x0,
        /* fifo */ fifo_A_PE_1_2_x0,
        /* fifo */ fifo_B_PE_1_1_x0,
        /* fifo */ fifo_B_PE_2_1_x0,
        /* fifo */ fifo_C_drain_PE_1_1_x0);
    /* Module Call */

    /* Module Call */
    PE_wrapper_2_0_x0(

        /* module id */ 2,
        /* module id */ 0,
        /* fifo */ fifo_A_PE_2_0_x0,
        /* fifo */ fifo_A_PE_2_1_x0,
        /* fifo */ fifo_B_PE_2_0_x0,
        /* fifo */ fifo_B_PE_3_0_x0,
        /* fifo */ fifo_C_drain_PE_2_0_x0);
    /* Module Call */

    /* Module Call */
    PE_wrapper_2_1_x0(

        /* module id */ 2,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_2_1_x0,
        /* fifo */ fifo_A_PE_2_2_x0,
        /* fifo */ fifo_B_PE_2_1_x0,
        /* fifo */ fifo_B_PE_3_1_x0,
        /* fifo */ fifo_C_drain_PE_2_1_x0);
    /* Module Call */

    /* Module Call */
    PE_wrapper_3_0_x0(

        /* module id */ 3,
        /* module id */ 0,
        /* fifo */ fifo_A_PE_3_0_x0,
        /* fifo */ fifo_A_PE_3_1_x0,
        /* fifo */ fifo_B_PE_3_0_x0,
        /* fifo */ fifo_B_PE_4_0_x0,
        /* fifo */ fifo_C_drain_PE_3_0_x0);
    /* Module Call */

    /* Module Call */
    PE_wrapper_3_1_x0(

        /* module id */ 3,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_3_1_x0,
        /* fifo */ fifo_A_PE_3_2_x0,
        /* fifo */ fifo_B_PE_3_1_x0,
        /* fifo */ fifo_B_PE_4_1_x0,
        /* fifo */ fifo_C_drain_PE_3_1_x0);
    /* Module Call */

    /* Module Call */
    PE_wrapper_4_0_x0(

        /* module id */ 4,
        /* module id */ 0,
        /* fifo */ fifo_A_PE_4_0_x0,
        /* fifo */ fifo_A_PE_4_1_x0,
        /* fifo */ fifo_B_PE_4_0_x0,
        /* fifo */ fifo_B_PE_5_0_x0,
        /* fifo */ fifo_C_drain_PE_4_0_x0);
    /* Module Call */

    /* Module Call */
    PE_wrapper_4_1_x0(

        /* module id */ 4,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_4_1_x0,
        /* fifo */ fifo_A_PE_4_2_x0,
        /* fifo */ fifo_B_PE_4_1_x0,
        /* fifo */ fifo_B_PE_5_1_x0,
        /* fifo */ fifo_C_drain_PE_4_1_x0);
    /* Module Call */

    /* Module Call */
    PE_wrapper_5_0_x0(

        /* module id */ 5,
        /* module id */ 0,
        /* fifo */ fifo_A_PE_5_0_x0,
        /* fifo */ fifo_A_PE_5_1_x0,
        /* fifo */ fifo_B_PE_5_0_x0,
        /* fifo */ fifo_B_PE_6_0_x0,
        /* fifo */ fifo_C_drain_PE_5_0_x0);
    /* Module Call */

    /* Module Call */
    PE_wrapper_5_1_x0(

        /* module id */ 5,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_5_1_x0,
        /* fifo */ fifo_A_PE_5_2_x0,
        /* fifo */ fifo_B_PE_5_1_x0,
        /* fifo */ fifo_B_PE_6_1_x0,
        /* fifo */ fifo_C_drain_PE_5_1_x0);
    /* Module Call */

    /* Module Call */
    PE_wrapper_6_0_x0(

        /* module id */ 6,
        /* module id */ 0,
        /* fifo */ fifo_A_PE_6_0_x0,
        /* fifo */ fifo_A_PE_6_1_x0,
        /* fifo */ fifo_B_PE_6_0_x0,
        /* fifo */ fifo_B_PE_7_0_x0,
        /* fifo */ fifo_C_drain_PE_6_0_x0);
    /* Module Call */

    /* Module Call */
    PE_wrapper_6_1_x0(

        /* module id */ 6,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_6_1_x0,
        /* fifo */ fifo_A_PE_6_2_x0,
        /* fifo */ fifo_B_PE_6_1_x0,
        /* fifo */ fifo_B_PE_7_1_x0,
        /* fifo */ fifo_C_drain_PE_6_1_x0);
    /* Module Call */

    /* Module Call */
    PE_wrapper_7_0_x0(

        /* module id */ 7,
        /* module id */ 0,
        /* fifo */ fifo_A_PE_7_0_x0,
        /* fifo */ fifo_A_PE_7_1_x0,
        /* fifo */ fifo_B_PE_7_0_x0,
        /* fifo */ fifo_B_PE_8_0_x0,
        /* fifo */ fifo_C_drain_PE_7_0_x0);
    /* Module Call */

    /* Module Call */
    PE_wrapper_7_1_x0(

        /* module id */ 7,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_7_1_x0,
        /* fifo */ fifo_A_PE_7_2_x0,
        /* fifo */ fifo_B_PE_7_1_x0,
        /* fifo */ fifo_B_PE_8_1_x0,
        /* fifo */ fifo_C_drain_PE_7_1_x0);
    /* Module Call */

    /* Module Call */
    PE_wrapper_8_0_x0(

        /* module id */ 8,
        /* module id */ 0,
        /* fifo */ fifo_A_PE_8_0_x0,
        /* fifo */ fifo_A_PE_8_1_x0,
        /* fifo */ fifo_B_PE_8_0_x0,
        /* fifo */ fifo_B_PE_9_0_x0,
        /* fifo */ fifo_C_drain_PE_8_0_x0);
    /* Module Call */

    /* Module Call */
    PE_wrapper_8_1_x0(

        /* module id */ 8,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_8_1_x0,
        /* fifo */ fifo_A_PE_8_2_x0,
        /* fifo */ fifo_B_PE_8_1_x0,
        /* fifo */ fifo_B_PE_9_1_x0,
        /* fifo */ fifo_C_drain_PE_8_1_x0);
    /* Module Call */

    /* Module Call */
    PE_wrapper_9_0_x0(

        /* module id */ 9,
        /* module id */ 0,
        /* fifo */ fifo_A_PE_9_0_x0,
        /* fifo */ fifo_A_PE_9_1_x0,
        /* fifo */ fifo_B_PE_9_0_x0,
        /* fifo */ fifo_B_PE_10_0_x0,
        /* fifo */ fifo_C_drain_PE_9_0_x0);
    /* Module Call */

    /* Module Call */
    PE_wrapper_9_1_x0(

        /* module id */ 9,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_9_1_x0,
        /* fifo */ fifo_A_PE_9_2_x0,
        /* fifo */ fifo_B_PE_9_1_x0,
        /* fifo */ fifo_B_PE_10_1_x0,
        /* fifo */ fifo_C_drain_PE_9_1_x0);
    /* Module Call */

    /* Module Call */
    PE_wrapper_10_0_x0(

        /* module id */ 10,
        /* module id */ 0,
        /* fifo */ fifo_A_PE_10_0_x0,
        /* fifo */ fifo_A_PE_10_1_x0,
        /* fifo */ fifo_B_PE_10_0_x0,
        /* fifo */ fifo_B_PE_11_0_x0,
        /* fifo */ fifo_C_drain_PE_10_0_x0);
    /* Module Call */

    /* Module Call */
    PE_wrapper_10_1_x0(

        /* module id */ 10,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_10_1_x0,
        /* fifo */ fifo_A_PE_10_2_x0,
        /* fifo */ fifo_B_PE_10_1_x0,
        /* fifo */ fifo_B_PE_11_1_x0,
        /* fifo */ fifo_C_drain_PE_10_1_x0);
    /* Module Call */

    /* Module Call */
    PE_wrapper_11_0_x0(

        /* module id */ 11,
        /* module id */ 0,
        /* fifo */ fifo_A_PE_11_0_x0,
        /* fifo */ fifo_A_PE_11_1_x0,
        /* fifo */ fifo_B_PE_11_0_x0,
        /* fifo */ fifo_B_PE_12_0_x0,
        /* fifo */ fifo_C_drain_PE_11_0_x0);
    /* Module Call */

    /* Module Call */
    PE_wrapper_11_1_x0(

        /* module id */ 11,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_11_1_x0,
        /* fifo */ fifo_A_PE_11_2_x0,
        /* fifo */ fifo_B_PE_11_1_x0,
        /* fifo */ fifo_B_PE_12_1_x0,
        /* fifo */ fifo_C_drain_PE_11_1_x0);
    /* Module Call */

    /* Module Call */
    PE_wrapper_12_0_x0(

        /* module id */ 12,
        /* module id */ 0,
        /* fifo */ fifo_A_PE_12_0_x0,
        /* fifo */ fifo_A_PE_12_1_x0,
        /* fifo */ fifo_B_PE_12_0_x0,
        /* fifo */ fifo_B_PE_13_0_x0,
        /* fifo */ fifo_C_drain_PE_12_0_x0);
    /* Module Call */

    /* Module Call */
    PE_wrapper_12_1_x0(

        /* module id */ 12,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_12_1_x0,
        /* fifo */ fifo_A_PE_12_2_x0,
        /* fifo */ fifo_B_PE_12_1_x0,
        /* fifo */ fifo_B_PE_13_1_x0,
        /* fifo */ fifo_C_drain_PE_12_1_x0);
    /* Module Call */

    /* Module Call */
    A_PE_dummy_0_x0(

        /* module id */ 0,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_0_2_x0);
    /* Module Call */

    /* Module Call */
    A_PE_dummy_1_x0(

        /* module id */ 1,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_1_2_x0);
    /* Module Call */

    /* Module Call */
    A_PE_dummy_2_x0(

        /* module id */ 2,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_2_2_x0);
    /* Module Call */

    /* Module Call */
    A_PE_dummy_3_x0(

        /* module id */ 3,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_3_2_x0);
    /* Module Call */

    /* Module Call */
    A_PE_dummy_4_x0(

        /* module id */ 4,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_4_2_x0);
    /* Module Call */

    /* Module Call */
    A_PE_dummy_5_x0(

        /* module id */ 5,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_5_2_x0);
    /* Module Call */

    /* Module Call */
    A_PE_dummy_6_x0(

        /* module id */ 6,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_6_2_x0);
    /* Module Call */

    /* Module Call */
    A_PE_dummy_7_x0(

        /* module id */ 7,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_7_2_x0);
    /* Module Call */

    /* Module Call */
    A_PE_dummy_8_x0(

        /* module id */ 8,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_8_2_x0);
    /* Module Call */

    /* Module Call */
    A_PE_dummy_9_x0(

        /* module id */ 9,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_9_2_x0);
    /* Module Call */

    /* Module Call */
    A_PE_dummy_10_x0(

        /* module id */ 10,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_10_2_x0);
    /* Module Call */

    /* Module Call */
    A_PE_dummy_11_x0(

        /* module id */ 11,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_11_2_x0);
    /* Module Call */

    /* Module Call */
    A_PE_dummy_12_x0(

        /* module id */ 12,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_12_2_x0);
    /* Module Call */

    /* Module Call */
    B_PE_dummy_0_x0(

        /* module id */ 12,
        /* module id */ 0,
        /* fifo */ fifo_B_PE_13_0_x0);
    /* Module Call */

    /* Module Call */
    B_PE_dummy_1_x0(

        /* module id */ 12,
        /* module id */ 1,
        /* fifo */ fifo_B_PE_13_1_x0);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_boundary_0_x0(

        /* module id */ 0,
        /* module id */ 12,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_12_x0,
        /* fifo */ fifo_C_drain_PE_12_0_x0);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_0_x0(

        /* module id */ 0,
        /* module id */ 11,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_12_x0,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_11_x0,
        /* fifo */ fifo_C_drain_PE_11_0_x0);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_1_x0(

        /* module id */ 0,
        /* module id */ 10,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_11_x0,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_10_x0,
        /* fifo */ fifo_C_drain_PE_10_0_x0);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_2_x0(

        /* module id */ 0,
        /* module id */ 9,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_10_x0,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_9_x0,
        /* fifo */ fifo_C_drain_PE_9_0_x0);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_3_x0(

        /* module id */ 0,
        /* module id */ 8,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_9_x0,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_8_x0,
        /* fifo */ fifo_C_drain_PE_8_0_x0);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_4_x0(

        /* module id */ 0,
        /* module id */ 7,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_8_x0,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_7_x0,
        /* fifo */ fifo_C_drain_PE_7_0_x0);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_5_x0(

        /* module id */ 0,
        /* module id */ 6,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_7_x0,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_6_x0,
        /* fifo */ fifo_C_drain_PE_6_0_x0);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_6_x0(

        /* module id */ 0,
        /* module id */ 5,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_6_x0,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_5_x0,
        /* fifo */ fifo_C_drain_PE_5_0_x0);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_7_x0(

        /* module id */ 0,
        /* module id */ 4,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_5_x0,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_4_x0,
        /* fifo */ fifo_C_drain_PE_4_0_x0);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_8_x0(

        /* module id */ 0,
        /* module id */ 3,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_4_x0,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_3_x0,
        /* fifo */ fifo_C_drain_PE_3_0_x0);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_9_x0(

        /* module id */ 0,
        /* module id */ 2,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_3_x0,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_2_x0,
        /* fifo */ fifo_C_drain_PE_2_0_x0);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_10_x0(

        /* module id */ 0,
        /* module id */ 1,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_2_x0,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_1_x0,
        /* fifo */ fifo_C_drain_PE_1_0_x0);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_11_x0(

        /* module id */ 0,
        /* module id */ 0,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_1_x0,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_0_x0,
        /* fifo */ fifo_C_drain_PE_0_0_x0);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_boundary_1_x0(

        /* module id */ 1,
        /* module id */ 12,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_12_x0,
        /* fifo */ fifo_C_drain_PE_12_1_x0);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_12_x0(

        /* module id */ 1,
        /* module id */ 11,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_12_x0,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_11_x0,
        /* fifo */ fifo_C_drain_PE_11_1_x0);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_13_x0(

        /* module id */ 1,
        /* module id */ 10,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_11_x0,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_10_x0,
        /* fifo */ fifo_C_drain_PE_10_1_x0);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_14_x0(

        /* module id */ 1,
        /* module id */ 9,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_10_x0,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_9_x0,
        /* fifo */ fifo_C_drain_PE_9_1_x0);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_15_x0(

        /* module id */ 1,
        /* module id */ 8,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_9_x0,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_8_x0,
        /* fifo */ fifo_C_drain_PE_8_1_x0);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_16_x0(

        /* module id */ 1,
        /* module id */ 7,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_8_x0,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_7_x0,
        /* fifo */ fifo_C_drain_PE_7_1_x0);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_17_x0(

        /* module id */ 1,
        /* module id */ 6,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_7_x0,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_6_x0,
        /* fifo */ fifo_C_drain_PE_6_1_x0);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_18_x0(

        /* module id */ 1,
        /* module id */ 5,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_6_x0,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_5_x0,
        /* fifo */ fifo_C_drain_PE_5_1_x0);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_19_x0(

        /* module id */ 1,
        /* module id */ 4,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_5_x0,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_4_x0,
        /* fifo */ fifo_C_drain_PE_4_1_x0);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_20_x0(

        /* module id */ 1,
        /* module id */ 3,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_4_x0,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_3_x0,
        /* fifo */ fifo_C_drain_PE_3_1_x0);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_21_x0(

        /* module id */ 1,
        /* module id */ 2,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_3_x0,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_2_x0,
        /* fifo */ fifo_C_drain_PE_2_1_x0);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_22_x0(

        /* module id */ 1,
        /* module id */ 1,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_2_x0,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_1_x0,
        /* fifo */ fifo_C_drain_PE_1_1_x0);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_23_x0(

        /* module id */ 1,
        /* module id */ 0,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_1_x0,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_0_x0,
        /* fifo */ fifo_C_drain_PE_0_1_x0);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L2_out_boundary_x0(

        /* module id */ 1,
        /* fifo */ fifo_C_drain_C_drain_IO_L2_out_1_x0,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_0_x0);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L2_out_x0(

        /* module id */ 0,
        /* fifo */ fifo_C_drain_C_drain_IO_L2_out_1_x0,
        /* fifo */ fifo_C_drain_C_drain_IO_L2_out_0_x0,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_0_x0);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L3_out_x0(

        /* array */ C,
        /* fifo */ fifo_C_drain_C_drain_IO_L2_out_0_x0);
    /* Module Call */
}
/* Module Definition */
void A_IO_L3_in_x1(A_t16 *A, hls::stream<A_t8> &fifo_A_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    /* Variable Declaration */

A_IO_L3_in_x1_loop_1:     for (ap_uint<13> i = 0; i < 2048; i++) {
        A_t16 mem_data;
        A_t8 fifo_data;
        mem_data = A[i];
A_IO_L3_in_x1_loop_2:         for (ap_uint<2> p = 0; p < 2; p++) {
            fifo_data = mem_data(255, 0);
            mem_data = mem_data >> 256;
            fifo_A_local_out.write(fifo_data);
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_IO_L2_in_0_x1(int idx, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<A_t8> &fifo_A_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    A_t8 local_A_ping[16][32];
#pragma HLS BIND_STORAGE variable = local_A_ping type = RAM_2P impl = BRAM
    A_t8 local_A_pong[16][32];
#pragma HLS BIND_STORAGE variable = local_A_pong type = RAM_2P impl = BRAM
    /* Variable Declaration */

    // array
    /* Variable Declaration */

A_IO_L2_in_0_x1_loop_1:     for (ap_uint<5> c3 = p0; c3 <= 12; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L2
A_IO_L2_in_0_x1_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 15; c4 += 1) {
            // access_coalesce
A_IO_L2_in_0_x1_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                A_t8 fifo_data;
                fifo_data = fifo_A_in.read();
                if (c3 == p0) {
                    local_A_pong[c4][c5] = fifo_data;
                } else {
                    fifo_A_out.write(fifo_data);
                }
            }
        }
    }

    // io_L1
    // pe
A_IO_L2_in_0_x1_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
A_IO_L2_in_0_x1_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
A_IO_L2_in_0_x1_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                A_t8 fifo_data;
                fifo_data = local_A_pong[c7][c5];
                fifo_A_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_IO_L2_in_1_x1(int idx, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<A_t8> &fifo_A_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    A_t8 local_A_ping[16][32];
#pragma HLS BIND_STORAGE variable = local_A_ping type = RAM_2P impl = BRAM
    A_t8 local_A_pong[16][32];
#pragma HLS BIND_STORAGE variable = local_A_pong type = RAM_2P impl = BRAM
    /* Variable Declaration */

    // array
    /* Variable Declaration */

A_IO_L2_in_1_x1_loop_1:     for (ap_uint<5> c3 = p0; c3 <= 12; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L2
A_IO_L2_in_1_x1_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 15; c4 += 1) {
            // access_coalesce
A_IO_L2_in_1_x1_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                A_t8 fifo_data;
                fifo_data = fifo_A_in.read();
                if (c3 == p0) {
                    local_A_pong[c4][c5] = fifo_data;
                } else {
                    fifo_A_out.write(fifo_data);
                }
            }
        }
    }

    // io_L1
    // pe
A_IO_L2_in_1_x1_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
A_IO_L2_in_1_x1_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
A_IO_L2_in_1_x1_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                A_t8 fifo_data;
                fifo_data = local_A_pong[c7][c5];
                fifo_A_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_IO_L2_in_2_x1(int idx, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<A_t8> &fifo_A_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    A_t8 local_A_ping[16][32];
#pragma HLS BIND_STORAGE variable = local_A_ping type = RAM_2P impl = BRAM
    A_t8 local_A_pong[16][32];
#pragma HLS BIND_STORAGE variable = local_A_pong type = RAM_2P impl = BRAM
    /* Variable Declaration */

    // array
    /* Variable Declaration */

A_IO_L2_in_2_x1_loop_1:     for (ap_uint<5> c3 = p0; c3 <= 12; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L2
A_IO_L2_in_2_x1_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 15; c4 += 1) {
            // access_coalesce
A_IO_L2_in_2_x1_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                A_t8 fifo_data;
                fifo_data = fifo_A_in.read();
                if (c3 == p0) {
                    local_A_pong[c4][c5] = fifo_data;
                } else {
                    fifo_A_out.write(fifo_data);
                }
            }
        }
    }

    // io_L1
    // pe
A_IO_L2_in_2_x1_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
A_IO_L2_in_2_x1_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
A_IO_L2_in_2_x1_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                A_t8 fifo_data;
                fifo_data = local_A_pong[c7][c5];
                fifo_A_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_IO_L2_in_3_x1(int idx, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<A_t8> &fifo_A_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    A_t8 local_A_ping[16][32];
#pragma HLS BIND_STORAGE variable = local_A_ping type = RAM_2P impl = BRAM
    A_t8 local_A_pong[16][32];
#pragma HLS BIND_STORAGE variable = local_A_pong type = RAM_2P impl = BRAM
    /* Variable Declaration */

    // array
    /* Variable Declaration */

A_IO_L2_in_3_x1_loop_1:     for (ap_uint<5> c3 = p0; c3 <= 12; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L2
A_IO_L2_in_3_x1_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 15; c4 += 1) {
            // access_coalesce
A_IO_L2_in_3_x1_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                A_t8 fifo_data;
                fifo_data = fifo_A_in.read();
                if (c3 == p0) {
                    local_A_pong[c4][c5] = fifo_data;
                } else {
                    fifo_A_out.write(fifo_data);
                }
            }
        }
    }

    // io_L1
    // pe
A_IO_L2_in_3_x1_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
A_IO_L2_in_3_x1_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
A_IO_L2_in_3_x1_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                A_t8 fifo_data;
                fifo_data = local_A_pong[c7][c5];
                fifo_A_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_IO_L2_in_4_x1(int idx, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<A_t8> &fifo_A_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    A_t8 local_A_ping[16][32];
#pragma HLS BIND_STORAGE variable = local_A_ping type = RAM_2P impl = BRAM
    A_t8 local_A_pong[16][32];
#pragma HLS BIND_STORAGE variable = local_A_pong type = RAM_2P impl = BRAM
    /* Variable Declaration */

    // array
    /* Variable Declaration */

A_IO_L2_in_4_x1_loop_1:     for (ap_uint<5> c3 = p0; c3 <= 12; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L2
A_IO_L2_in_4_x1_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 15; c4 += 1) {
            // access_coalesce
A_IO_L2_in_4_x1_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                A_t8 fifo_data;
                fifo_data = fifo_A_in.read();
                if (c3 == p0) {
                    local_A_pong[c4][c5] = fifo_data;
                } else {
                    fifo_A_out.write(fifo_data);
                }
            }
        }
    }

    // io_L1
    // pe
A_IO_L2_in_4_x1_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
A_IO_L2_in_4_x1_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
A_IO_L2_in_4_x1_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                A_t8 fifo_data;
                fifo_data = local_A_pong[c7][c5];
                fifo_A_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_IO_L2_in_5_x1(int idx, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<A_t8> &fifo_A_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    A_t8 local_A_ping[16][32];
#pragma HLS BIND_STORAGE variable = local_A_ping type = RAM_2P impl = BRAM
    A_t8 local_A_pong[16][32];
#pragma HLS BIND_STORAGE variable = local_A_pong type = RAM_2P impl = BRAM
    /* Variable Declaration */

    // array
    /* Variable Declaration */

A_IO_L2_in_5_x1_loop_1:     for (ap_uint<5> c3 = p0; c3 <= 12; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L2
A_IO_L2_in_5_x1_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 15; c4 += 1) {
            // access_coalesce
A_IO_L2_in_5_x1_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                A_t8 fifo_data;
                fifo_data = fifo_A_in.read();
                if (c3 == p0) {
                    local_A_pong[c4][c5] = fifo_data;
                } else {
                    fifo_A_out.write(fifo_data);
                }
            }
        }
    }

    // io_L1
    // pe
A_IO_L2_in_5_x1_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
A_IO_L2_in_5_x1_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
A_IO_L2_in_5_x1_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                A_t8 fifo_data;
                fifo_data = local_A_pong[c7][c5];
                fifo_A_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_IO_L2_in_6_x1(int idx, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<A_t8> &fifo_A_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    A_t8 local_A_ping[16][32];
#pragma HLS BIND_STORAGE variable = local_A_ping type = RAM_2P impl = BRAM
    A_t8 local_A_pong[16][32];
#pragma HLS BIND_STORAGE variable = local_A_pong type = RAM_2P impl = BRAM
    /* Variable Declaration */

    // array
    /* Variable Declaration */

A_IO_L2_in_6_x1_loop_1:     for (ap_uint<5> c3 = p0; c3 <= 12; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L2
A_IO_L2_in_6_x1_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 15; c4 += 1) {
            // access_coalesce
A_IO_L2_in_6_x1_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                A_t8 fifo_data;
                fifo_data = fifo_A_in.read();
                if (c3 == p0) {
                    local_A_pong[c4][c5] = fifo_data;
                } else {
                    fifo_A_out.write(fifo_data);
                }
            }
        }
    }

    // io_L1
    // pe
A_IO_L2_in_6_x1_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
A_IO_L2_in_6_x1_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
A_IO_L2_in_6_x1_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                A_t8 fifo_data;
                fifo_data = local_A_pong[c7][c5];
                fifo_A_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_IO_L2_in_7_x1(int idx, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<A_t8> &fifo_A_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    A_t8 local_A_ping[16][32];
#pragma HLS BIND_STORAGE variable = local_A_ping type = RAM_2P impl = BRAM
    A_t8 local_A_pong[16][32];
#pragma HLS BIND_STORAGE variable = local_A_pong type = RAM_2P impl = BRAM
    /* Variable Declaration */

    // array
    /* Variable Declaration */

A_IO_L2_in_7_x1_loop_1:     for (ap_uint<5> c3 = p0; c3 <= 12; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L2
A_IO_L2_in_7_x1_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 15; c4 += 1) {
            // access_coalesce
A_IO_L2_in_7_x1_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                A_t8 fifo_data;
                fifo_data = fifo_A_in.read();
                if (c3 == p0) {
                    local_A_pong[c4][c5] = fifo_data;
                } else {
                    fifo_A_out.write(fifo_data);
                }
            }
        }
    }

    // io_L1
    // pe
A_IO_L2_in_7_x1_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
A_IO_L2_in_7_x1_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
A_IO_L2_in_7_x1_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                A_t8 fifo_data;
                fifo_data = local_A_pong[c7][c5];
                fifo_A_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_IO_L2_in_8_x1(int idx, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<A_t8> &fifo_A_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    A_t8 local_A_ping[16][32];
#pragma HLS BIND_STORAGE variable = local_A_ping type = RAM_2P impl = BRAM
    A_t8 local_A_pong[16][32];
#pragma HLS BIND_STORAGE variable = local_A_pong type = RAM_2P impl = BRAM
    /* Variable Declaration */

    // array
    /* Variable Declaration */

A_IO_L2_in_8_x1_loop_1:     for (ap_uint<5> c3 = p0; c3 <= 12; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L2
A_IO_L2_in_8_x1_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 15; c4 += 1) {
            // access_coalesce
A_IO_L2_in_8_x1_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                A_t8 fifo_data;
                fifo_data = fifo_A_in.read();
                if (c3 == p0) {
                    local_A_pong[c4][c5] = fifo_data;
                } else {
                    fifo_A_out.write(fifo_data);
                }
            }
        }
    }

    // io_L1
    // pe
A_IO_L2_in_8_x1_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
A_IO_L2_in_8_x1_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
A_IO_L2_in_8_x1_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                A_t8 fifo_data;
                fifo_data = local_A_pong[c7][c5];
                fifo_A_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_IO_L2_in_9_x1(int idx, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<A_t8> &fifo_A_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    A_t8 local_A_ping[16][32];
#pragma HLS BIND_STORAGE variable = local_A_ping type = RAM_2P impl = BRAM
    A_t8 local_A_pong[16][32];
#pragma HLS BIND_STORAGE variable = local_A_pong type = RAM_2P impl = BRAM
    /* Variable Declaration */

    // array
    /* Variable Declaration */

A_IO_L2_in_9_x1_loop_1:     for (ap_uint<5> c3 = p0; c3 <= 12; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L2
A_IO_L2_in_9_x1_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 15; c4 += 1) {
            // access_coalesce
A_IO_L2_in_9_x1_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                A_t8 fifo_data;
                fifo_data = fifo_A_in.read();
                if (c3 == p0) {
                    local_A_pong[c4][c5] = fifo_data;
                } else {
                    fifo_A_out.write(fifo_data);
                }
            }
        }
    }

    // io_L1
    // pe
A_IO_L2_in_9_x1_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
A_IO_L2_in_9_x1_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
A_IO_L2_in_9_x1_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                A_t8 fifo_data;
                fifo_data = local_A_pong[c7][c5];
                fifo_A_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_IO_L2_in_10_x1(int idx, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<A_t8> &fifo_A_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    A_t8 local_A_ping[16][32];
#pragma HLS BIND_STORAGE variable = local_A_ping type = RAM_2P impl = BRAM
    A_t8 local_A_pong[16][32];
#pragma HLS BIND_STORAGE variable = local_A_pong type = RAM_2P impl = BRAM
    /* Variable Declaration */

    // array
    /* Variable Declaration */

A_IO_L2_in_10_x1_loop_1:     for (ap_uint<5> c3 = p0; c3 <= 12; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L2
A_IO_L2_in_10_x1_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 15; c4 += 1) {
            // access_coalesce
A_IO_L2_in_10_x1_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                A_t8 fifo_data;
                fifo_data = fifo_A_in.read();
                if (c3 == p0) {
                    local_A_pong[c4][c5] = fifo_data;
                } else {
                    fifo_A_out.write(fifo_data);
                }
            }
        }
    }

    // io_L1
    // pe
A_IO_L2_in_10_x1_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
A_IO_L2_in_10_x1_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
A_IO_L2_in_10_x1_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                A_t8 fifo_data;
                fifo_data = local_A_pong[c7][c5];
                fifo_A_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_IO_L2_in_11_x1(int idx, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<A_t8> &fifo_A_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    A_t8 local_A_ping[16][32];
#pragma HLS BIND_STORAGE variable = local_A_ping type = RAM_2P impl = BRAM
    A_t8 local_A_pong[16][32];
#pragma HLS BIND_STORAGE variable = local_A_pong type = RAM_2P impl = BRAM
    /* Variable Declaration */

    // array
    /* Variable Declaration */

A_IO_L2_in_11_x1_loop_1:     for (ap_uint<5> c3 = p0; c3 <= 12; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L2
A_IO_L2_in_11_x1_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 15; c4 += 1) {
            // access_coalesce
A_IO_L2_in_11_x1_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                A_t8 fifo_data;
                fifo_data = fifo_A_in.read();
                if (c3 == p0) {
                    local_A_pong[c4][c5] = fifo_data;
                } else {
                    fifo_A_out.write(fifo_data);
                }
            }
        }
    }

    // io_L1
    // pe
A_IO_L2_in_11_x1_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
A_IO_L2_in_11_x1_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
A_IO_L2_in_11_x1_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                A_t8 fifo_data;
                fifo_data = local_A_pong[c7][c5];
                fifo_A_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_IO_L2_in_boundary_x1(int idx, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    A_t8 local_A_ping[16][32];
#pragma HLS BIND_STORAGE variable = local_A_ping type = RAM_2P impl = BRAM
    A_t8 local_A_pong[16][32];
#pragma HLS BIND_STORAGE variable = local_A_pong type = RAM_2P impl = BRAM
    /* Variable Declaration */

A_IO_L2_in_boundary_x1_loop_1:     for (ap_uint<5> c3 = p0; c3 <= 12; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 1 max = 1
        // io_L2
A_IO_L2_in_boundary_x1_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 15; c4 += 1) {
            // access_coalesce
A_IO_L2_in_boundary_x1_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                A_t8 fifo_data;
                fifo_data = fifo_A_in.read();
                local_A_pong[c4][c5] = fifo_data;
            }
        }
    }
A_IO_L2_in_boundary_x1_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
A_IO_L2_in_boundary_x1_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
A_IO_L2_in_boundary_x1_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                A_t8 fifo_data;
                fifo_data = local_A_pong[c7][c5];
                fifo_A_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void B_IO_L3_in_x1(B_t16 *B, hls::stream<B_t8> &fifo_B_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    /* Variable Declaration */

B_IO_L3_in_x1_loop_1:     for (ap_uint<12> i = 0; i < 2048; i++) {
        B_t16 mem_data;
        B_t8 fifo_data;
        mem_data = B[i];
B_IO_L3_in_x1_loop_2:         for (ap_uint<2> p = 0; p < 2; p++) {
            fifo_data = mem_data(255, 0);
            mem_data = mem_data >> 256;
            fifo_B_local_out.write(fifo_data);
        }
    }
}
/* Module Definition */

/* Module Definition */
void B_IO_L2_in_x1(int idx, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<B_t8> &fifo_B_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    B_t8 local_B_ping[64][32];
#pragma HLS BIND_STORAGE variable = local_B_ping type = RAM_2P impl = BRAM
    B_t8 local_B_pong[64][32];
#pragma HLS BIND_STORAGE variable = local_B_pong type = RAM_2P impl = BRAM
    bool arb = 0;
    bool inter_trans_en = 1;
    bool intra_trans_en = 0;
    /* Variable Declaration */
B_IO_L2_in_x1_loop_1:     for (ap_uint<2> c3 = p0; c3 <= 1; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 2
        // io_L2
B_IO_L2_in_x1_loop_2:         for (ap_uint<7> c4 = 0; c4 <= 63; c4 += 1) {
            // access_coalesce
B_IO_L2_in_x1_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                B_t8 fifo_data;
                fifo_data = fifo_B_in.read();
                if (c3 == p0) {
                    local_B_pong[c4][c5] = fifo_data;
                } else {
                    fifo_B_out.write(fifo_data);
                }
            }
        }
    }
B_IO_L2_in_x1_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
B_IO_L2_in_x1_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
B_IO_L2_in_x1_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                B_t8 fifo_data;
                fifo_data = local_B_pong[c6][c5];
                fifo_B_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void B_IO_L2_in_boundary_x1(int idx, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    B_t8 local_B_ping[64][32];
#pragma HLS BIND_STORAGE variable = local_B_ping type = RAM_2P impl = BRAM
    B_t8 local_B_pong[64][32];
#pragma HLS BIND_STORAGE variable = local_B_pong type = RAM_2P impl = BRAM
    /* Variable Declaration */
B_IO_L2_in_boundary_x1_loop_1:     for (ap_uint<2> c3 = p0; c3 <= 1; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 1 max = 1
        // io_L2
B_IO_L2_in_boundary_x1_loop_2:         for (ap_uint<7> c4 = 0; c4 <= 63; c4 += 1) {
            // access_coalesce
B_IO_L2_in_boundary_x1_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                B_t8 fifo_data;
                fifo_data = fifo_B_in.read();
                local_B_pong[c4][c5] = fifo_data;
            }
        }
    }
B_IO_L2_in_boundary_x1_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
B_IO_L2_in_boundary_x1_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
B_IO_L2_in_boundary_x1_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                B_t8 fifo_data;
                fifo_data = local_B_pong[c6][c5];
                fifo_B_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void PE_wrapper_12_1_x1(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_12_1_x1_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_12_1_x1_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_12_1_x1_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_12_1_x1_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_12_1_x1_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_12_1_x1_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_12_1_x1_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_12_1_x1_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_12_0_x1(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_12_0_x1_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_12_0_x1_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_12_0_x1_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_12_0_x1_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_12_0_x1_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_12_0_x1_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_12_0_x1_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_12_0_x1_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_11_1_x1(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_11_1_x1_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_11_1_x1_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_11_1_x1_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_11_1_x1_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_11_1_x1_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_11_1_x1_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_11_1_x1_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_11_1_x1_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_11_0_x1(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_11_0_x1_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_11_0_x1_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_11_0_x1_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_11_0_x1_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_11_0_x1_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_11_0_x1_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_11_0_x1_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_11_0_x1_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_10_1_x1(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_10_1_x1_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_10_1_x1_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_10_1_x1_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_10_1_x1_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_10_1_x1_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_10_1_x1_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_10_1_x1_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_10_1_x1_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_10_0_x1(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_10_0_x1_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_10_0_x1_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_10_0_x1_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_10_0_x1_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_10_0_x1_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_10_0_x1_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_10_0_x1_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_10_0_x1_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_9_1_x1(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_9_1_x1_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_9_1_x1_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_9_1_x1_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_9_1_x1_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_9_1_x1_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_9_1_x1_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_9_1_x1_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_9_1_x1_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_9_0_x1(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_9_0_x1_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_9_0_x1_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_9_0_x1_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_9_0_x1_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_9_0_x1_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_9_0_x1_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_9_0_x1_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_9_0_x1_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_8_1_x1(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_8_1_x1_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_8_1_x1_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_8_1_x1_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_8_1_x1_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_8_1_x1_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_8_1_x1_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_8_1_x1_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_8_1_x1_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_8_0_x1(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_8_0_x1_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_8_0_x1_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_8_0_x1_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_8_0_x1_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_8_0_x1_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_8_0_x1_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_8_0_x1_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_8_0_x1_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_7_1_x1(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_7_1_x1_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_7_1_x1_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_7_1_x1_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_7_1_x1_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_7_1_x1_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_7_1_x1_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_7_1_x1_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_7_1_x1_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_7_0_x1(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_7_0_x1_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_7_0_x1_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_7_0_x1_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_7_0_x1_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_7_0_x1_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_7_0_x1_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_7_0_x1_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_7_0_x1_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_6_1_x1(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_6_1_x1_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_6_1_x1_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_6_1_x1_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_6_1_x1_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_6_1_x1_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_6_1_x1_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_6_1_x1_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_6_1_x1_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_6_0_x1(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_6_0_x1_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_6_0_x1_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_6_0_x1_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_6_0_x1_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_6_0_x1_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_6_0_x1_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_6_0_x1_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_6_0_x1_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_5_1_x1(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_5_1_x1_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_5_1_x1_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_5_1_x1_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_5_1_x1_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_5_1_x1_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_5_1_x1_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_5_1_x1_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_5_1_x1_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_5_0_x1(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_5_0_x1_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_5_0_x1_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_5_0_x1_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_5_0_x1_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_5_0_x1_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_5_0_x1_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_5_0_x1_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_5_0_x1_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_4_1_x1(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_4_1_x1_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_4_1_x1_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_4_1_x1_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_4_1_x1_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_4_1_x1_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_4_1_x1_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_4_1_x1_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_4_1_x1_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_4_0_x1(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_4_0_x1_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_4_0_x1_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_4_0_x1_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_4_0_x1_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_4_0_x1_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_4_0_x1_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_4_0_x1_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_4_0_x1_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_3_1_x1(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_3_1_x1_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_3_1_x1_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_3_1_x1_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_3_1_x1_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_3_1_x1_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_3_1_x1_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_3_1_x1_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_3_1_x1_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_3_0_x1(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_3_0_x1_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_3_0_x1_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_3_0_x1_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_3_0_x1_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_3_0_x1_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_3_0_x1_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_3_0_x1_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_3_0_x1_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_2_1_x1(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_2_1_x1_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_2_1_x1_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_2_1_x1_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_2_1_x1_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_2_1_x1_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_2_1_x1_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_2_1_x1_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_2_1_x1_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_2_0_x1(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_2_0_x1_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_2_0_x1_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_2_0_x1_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_2_0_x1_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_2_0_x1_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_2_0_x1_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_2_0_x1_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_2_0_x1_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_1_1_x1(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_1_1_x1_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_1_1_x1_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_1_1_x1_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_1_1_x1_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_1_1_x1_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_1_1_x1_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_1_1_x1_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_1_1_x1_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_1_0_x1(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_1_0_x1_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_1_0_x1_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_1_0_x1_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_1_0_x1_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_1_0_x1_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_1_0_x1_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_1_0_x1_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_1_0_x1_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_0_1_x1(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_0_1_x1_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_0_1_x1_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_0_1_x1_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_0_1_x1_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_0_1_x1_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_0_1_x1_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_0_1_x1_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_0_1_x1_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_0_0_x1(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_0_0_x1_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_0_0_x1_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_0_0_x1_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_0_0_x1_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_0_0_x1_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_0_0_x1_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_0_0_x1_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_0_0_x1_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_PE_dummy_0_x1(int idx, int idy, hls::stream<A_t8> &fifo_A_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
A_PE_dummy_0_x1_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
A_PE_dummy_0_x1_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
A_PE_dummy_0_x1_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    A_t8 fifo_data;
                    fifo_data = fifo_A_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_PE_dummy_1_x1(int idx, int idy, hls::stream<A_t8> &fifo_A_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
A_PE_dummy_1_x1_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
A_PE_dummy_1_x1_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
A_PE_dummy_1_x1_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    A_t8 fifo_data;
                    fifo_data = fifo_A_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_PE_dummy_2_x1(int idx, int idy, hls::stream<A_t8> &fifo_A_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
A_PE_dummy_2_x1_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
A_PE_dummy_2_x1_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
A_PE_dummy_2_x1_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    A_t8 fifo_data;
                    fifo_data = fifo_A_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_PE_dummy_3_x1(int idx, int idy, hls::stream<A_t8> &fifo_A_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
A_PE_dummy_3_x1_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
A_PE_dummy_3_x1_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
A_PE_dummy_3_x1_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    A_t8 fifo_data;
                    fifo_data = fifo_A_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_PE_dummy_4_x1(int idx, int idy, hls::stream<A_t8> &fifo_A_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
A_PE_dummy_4_x1_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
A_PE_dummy_4_x1_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
A_PE_dummy_4_x1_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    A_t8 fifo_data;
                    fifo_data = fifo_A_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_PE_dummy_5_x1(int idx, int idy, hls::stream<A_t8> &fifo_A_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
A_PE_dummy_5_x1_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
A_PE_dummy_5_x1_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
A_PE_dummy_5_x1_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    A_t8 fifo_data;
                    fifo_data = fifo_A_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_PE_dummy_6_x1(int idx, int idy, hls::stream<A_t8> &fifo_A_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
A_PE_dummy_6_x1_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
A_PE_dummy_6_x1_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
A_PE_dummy_6_x1_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    A_t8 fifo_data;
                    fifo_data = fifo_A_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_PE_dummy_7_x1(int idx, int idy, hls::stream<A_t8> &fifo_A_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
A_PE_dummy_7_x1_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
A_PE_dummy_7_x1_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
A_PE_dummy_7_x1_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    A_t8 fifo_data;
                    fifo_data = fifo_A_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_PE_dummy_8_x1(int idx, int idy, hls::stream<A_t8> &fifo_A_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
A_PE_dummy_8_x1_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
A_PE_dummy_8_x1_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
A_PE_dummy_8_x1_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    A_t8 fifo_data;
                    fifo_data = fifo_A_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_PE_dummy_9_x1(int idx, int idy, hls::stream<A_t8> &fifo_A_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
A_PE_dummy_9_x1_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
A_PE_dummy_9_x1_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
A_PE_dummy_9_x1_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    A_t8 fifo_data;
                    fifo_data = fifo_A_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_PE_dummy_10_x1(int idx, int idy, hls::stream<A_t8> &fifo_A_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
A_PE_dummy_10_x1_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
A_PE_dummy_10_x1_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
A_PE_dummy_10_x1_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    A_t8 fifo_data;
                    fifo_data = fifo_A_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_PE_dummy_11_x1(int idx, int idy, hls::stream<A_t8> &fifo_A_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
A_PE_dummy_11_x1_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
A_PE_dummy_11_x1_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
A_PE_dummy_11_x1_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    A_t8 fifo_data;
                    fifo_data = fifo_A_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_PE_dummy_12_x1(int idx, int idy, hls::stream<A_t8> &fifo_A_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
A_PE_dummy_12_x1_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
A_PE_dummy_12_x1_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
A_PE_dummy_12_x1_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    A_t8 fifo_data;
                    fifo_data = fifo_A_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void B_PE_dummy_0_x1(int idx, int idy, hls::stream<B_t8> &fifo_B_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
B_PE_dummy_0_x1_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
B_PE_dummy_0_x1_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
B_PE_dummy_0_x1_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    B_t8 fifo_data;
                    fifo_data = fifo_B_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void B_PE_dummy_1_x1(int idx, int idy, hls::stream<B_t8> &fifo_B_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
B_PE_dummy_1_x1_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
B_PE_dummy_1_x1_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
B_PE_dummy_1_x1_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    B_t8 fifo_data;
                    fifo_data = fifo_B_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_0_x1(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_0_x1_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_0_x1_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_0_x1_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_0_x1_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_0_x1_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_0_x1_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_1_x1(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_1_x1_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_1_x1_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_1_x1_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_1_x1_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_1_x1_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_1_x1_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_2_x1(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_2_x1_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_2_x1_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_2_x1_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_2_x1_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_2_x1_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_2_x1_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_3_x1(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_3_x1_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_3_x1_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_3_x1_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_3_x1_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_3_x1_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_3_x1_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_4_x1(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_4_x1_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_4_x1_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_4_x1_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_4_x1_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_4_x1_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_4_x1_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_5_x1(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_5_x1_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_5_x1_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_5_x1_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_5_x1_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_5_x1_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_5_x1_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_6_x1(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_6_x1_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_6_x1_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_6_x1_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_6_x1_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_6_x1_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_6_x1_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_7_x1(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_7_x1_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_7_x1_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_7_x1_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_7_x1_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_7_x1_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_7_x1_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_8_x1(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_8_x1_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_8_x1_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_8_x1_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_8_x1_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_8_x1_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_8_x1_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_9_x1(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_9_x1_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_9_x1_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_9_x1_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_9_x1_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_9_x1_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_9_x1_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_10_x1(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_10_x1_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_10_x1_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_10_x1_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_10_x1_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_10_x1_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_10_x1_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_11_x1(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_11_x1_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_11_x1_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_11_x1_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_11_x1_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_11_x1_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_11_x1_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_12_x1(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_12_x1_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_12_x1_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_12_x1_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_12_x1_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_12_x1_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_12_x1_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_13_x1(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_13_x1_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_13_x1_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_13_x1_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_13_x1_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_13_x1_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_13_x1_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_14_x1(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_14_x1_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_14_x1_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_14_x1_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_14_x1_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_14_x1_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_14_x1_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_15_x1(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_15_x1_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_15_x1_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_15_x1_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_15_x1_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_15_x1_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_15_x1_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_16_x1(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_16_x1_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_16_x1_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_16_x1_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_16_x1_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_16_x1_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_16_x1_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_17_x1(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_17_x1_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_17_x1_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_17_x1_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_17_x1_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_17_x1_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_17_x1_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_18_x1(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_18_x1_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_18_x1_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_18_x1_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_18_x1_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_18_x1_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_18_x1_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_19_x1(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_19_x1_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_19_x1_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_19_x1_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_19_x1_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_19_x1_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_19_x1_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_20_x1(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_20_x1_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_20_x1_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_20_x1_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_20_x1_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_20_x1_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_20_x1_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_21_x1(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_21_x1_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_21_x1_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_21_x1_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_21_x1_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_21_x1_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_21_x1_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_22_x1(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_22_x1_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_22_x1_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_22_x1_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_22_x1_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_22_x1_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_22_x1_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_23_x1(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_23_x1_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_23_x1_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_23_x1_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_23_x1_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_23_x1_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_23_x1_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_boundary_0_x1(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    /* Variable Declaration */
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_boundary_0_x1_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_boundary_0_x1_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_boundary_0_x1_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
    /* Variable Declaration */

C_drain_IO_L1_out_boundary_0_x1_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 1 max = 1
        // io_L1
C_drain_IO_L1_out_boundary_0_x1_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_boundary_0_x1_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                fifo_data = local_C[c5][c6];
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_boundary_1_x1(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    /* Variable Declaration */
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_boundary_1_x1_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_boundary_1_x1_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_boundary_1_x1_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
    /* Variable Declaration */

C_drain_IO_L1_out_boundary_1_x1_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 1 max = 1
        // io_L1
C_drain_IO_L1_out_boundary_1_x1_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_boundary_1_x1_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                fifo_data = local_C[c5][c6];
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L2_out_x1(int idx, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<C_t2> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    /* Variable Declaration */

    // array
    // io_L3
C_drain_IO_L2_out_x1_loop_1:     for (ap_uint<2> c3 = p0; c3 <= 1; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 2
        // io_L2
C_drain_IO_L2_out_x1_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 12; c4 += 1) {
            // io_L1
            // pe
C_drain_IO_L2_out_x1_loop_3:             for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
                // access_coalesce
C_drain_IO_L2_out_x1_loop_4:                 for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                    C_t2 fifo_data;
                    if (c3 == p0) {
                        fifo_data = fifo_C_drain_local_in.read();
                    } else {
                        fifo_data = fifo_C_drain_in.read();
                    }
                    fifo_C_drain_out.write(fifo_data);
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L2_out_boundary_x1(int idx, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<C_t2> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    /* Variable Declaration */

    // array
    // io_L3
C_drain_IO_L2_out_boundary_x1_loop_1:     for (ap_uint<2> c3 = p0; c3 <= 1; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 1 max = 1
        // io_L2
C_drain_IO_L2_out_boundary_x1_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 12; c4 += 1) {
            // io_L1
            // pe
C_drain_IO_L2_out_boundary_x1_loop_3:             for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
                // access_coalesce
C_drain_IO_L2_out_boundary_x1_loop_4:                 for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                    C_t2 fifo_data;
                    fifo_data = fifo_C_drain_local_in.read();
                    fifo_C_drain_out.write(fifo_data);
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L3_out_x1(C_t16 *C, hls::stream<C_t2> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    /* Variable Declaration */

C_drain_IO_L3_out_x1_loop_1:     for (ap_uint<12> i = 0; i < 2048; i++) {
        C_t16 mem_data;
        C_t2 fifo_data;
        C_t2 mem_data_split[8];
C_drain_IO_L3_out_x1_loop_2:         for (ap_uint<4> p = 0; p < 8; p++) {
            fifo_data = fifo_C_drain_local_in.read();
            mem_data_split[p] = fifo_data;
        }
        mem_data = (mem_data_split[7], mem_data_split[6], mem_data_split[5], mem_data_split[4], mem_data_split[3], mem_data_split[2], mem_data_split[1], mem_data_split[0]);
        C[i] = mem_data;
    }
}
/* Module Definition */

void kernel3_x1(A_t16 *A, B_t16 *B, C_t16 *C) {
#pragma HLS inline off
#pragma HLS DATAFLOW disable_start_propagation

    /* FIFO Declaration */
    /* A_IO_L2_in fifo */ hls::stream<A_t8> fifo_A_A_IO_L2_in_0_x1;
#pragma HLS STREAM variable = fifo_A_A_IO_L2_in_0_x1 depth = 2
    /* A_IO_L2_in fifo */ hls::stream<A_t8> fifo_A_A_IO_L2_in_1_x1;
#pragma HLS STREAM variable = fifo_A_A_IO_L2_in_1_x1 depth = 2
    /* A_IO_L2_in fifo */ hls::stream<A_t8> fifo_A_A_IO_L2_in_2_x1;
#pragma HLS STREAM variable = fifo_A_A_IO_L2_in_2_x1 depth = 2
    /* A_IO_L2_in fifo */ hls::stream<A_t8> fifo_A_A_IO_L2_in_3_x1;
#pragma HLS STREAM variable = fifo_A_A_IO_L2_in_3_x1 depth = 2
    /* A_IO_L2_in fifo */ hls::stream<A_t8> fifo_A_A_IO_L2_in_4_x1;
#pragma HLS STREAM variable = fifo_A_A_IO_L2_in_4_x1 depth = 2
    /* A_IO_L2_in fifo */ hls::stream<A_t8> fifo_A_A_IO_L2_in_5_x1;
#pragma HLS STREAM variable = fifo_A_A_IO_L2_in_5_x1 depth = 2
    /* A_IO_L2_in fifo */ hls::stream<A_t8> fifo_A_A_IO_L2_in_6_x1;
#pragma HLS STREAM variable = fifo_A_A_IO_L2_in_6_x1 depth = 2
    /* A_IO_L2_in fifo */ hls::stream<A_t8> fifo_A_A_IO_L2_in_7_x1;
#pragma HLS STREAM variable = fifo_A_A_IO_L2_in_7_x1 depth = 2
    /* A_IO_L2_in fifo */ hls::stream<A_t8> fifo_A_A_IO_L2_in_8_x1;
#pragma HLS STREAM variable = fifo_A_A_IO_L2_in_8_x1 depth = 2
    /* A_IO_L2_in fifo */ hls::stream<A_t8> fifo_A_A_IO_L2_in_9_x1;
#pragma HLS STREAM variable = fifo_A_A_IO_L2_in_9_x1 depth = 2
    /* A_IO_L2_in fifo */ hls::stream<A_t8> fifo_A_A_IO_L2_in_10_x1;
#pragma HLS STREAM variable = fifo_A_A_IO_L2_in_10_x1 depth = 2
    /* A_IO_L2_in fifo */ hls::stream<A_t8> fifo_A_A_IO_L2_in_11_x1;
#pragma HLS STREAM variable = fifo_A_A_IO_L2_in_11_x1 depth = 2
    /* A_IO_L2_in fifo */ hls::stream<A_t8> fifo_A_A_IO_L2_in_12_x1;
#pragma HLS STREAM variable = fifo_A_A_IO_L2_in_12_x1 depth = 2
    /* B_IO_L2_in fifo */ hls::stream<B_t8> fifo_B_B_IO_L2_in_0_x1;
#pragma HLS STREAM variable = fifo_B_B_IO_L2_in_0_x1 depth = 2
    /* B_IO_L2_in fifo */ hls::stream<B_t8> fifo_B_B_IO_L2_in_1_x1;
#pragma HLS STREAM variable = fifo_B_B_IO_L2_in_1_x1 depth = 2
    /* B_IO_L2_in fifo */ hls::stream<B_t8> fifo_B_B_IO_L2_in_2_x1;
#pragma HLS STREAM variable = fifo_B_B_IO_L2_in_2_x1 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_0_0_x1;
#pragma HLS STREAM variable = fifo_A_PE_0_0_x1 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_0_1_x1;
#pragma HLS STREAM variable = fifo_A_PE_0_1_x1 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_0_2_x1;
#pragma HLS STREAM variable = fifo_A_PE_0_2_x1 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_1_0_x1;
#pragma HLS STREAM variable = fifo_A_PE_1_0_x1 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_1_1_x1;
#pragma HLS STREAM variable = fifo_A_PE_1_1_x1 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_1_2_x1;
#pragma HLS STREAM variable = fifo_A_PE_1_2_x1 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_2_0_x1;
#pragma HLS STREAM variable = fifo_A_PE_2_0_x1 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_2_1_x1;
#pragma HLS STREAM variable = fifo_A_PE_2_1_x1 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_2_2_x1;
#pragma HLS STREAM variable = fifo_A_PE_2_2_x1 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_3_0_x1;
#pragma HLS STREAM variable = fifo_A_PE_3_0_x1 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_3_1_x1;
#pragma HLS STREAM variable = fifo_A_PE_3_1_x1 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_3_2_x1;
#pragma HLS STREAM variable = fifo_A_PE_3_2_x1 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_4_0_x1;
#pragma HLS STREAM variable = fifo_A_PE_4_0_x1 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_4_1_x1;
#pragma HLS STREAM variable = fifo_A_PE_4_1_x1 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_4_2_x1;
#pragma HLS STREAM variable = fifo_A_PE_4_2_x1 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_5_0_x1;
#pragma HLS STREAM variable = fifo_A_PE_5_0_x1 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_5_1_x1;
#pragma HLS STREAM variable = fifo_A_PE_5_1_x1 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_5_2_x1;
#pragma HLS STREAM variable = fifo_A_PE_5_2_x1 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_6_0_x1;
#pragma HLS STREAM variable = fifo_A_PE_6_0_x1 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_6_1_x1;
#pragma HLS STREAM variable = fifo_A_PE_6_1_x1 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_6_2_x1;
#pragma HLS STREAM variable = fifo_A_PE_6_2_x1 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_7_0_x1;
#pragma HLS STREAM variable = fifo_A_PE_7_0_x1 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_7_1_x1;
#pragma HLS STREAM variable = fifo_A_PE_7_1_x1 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_7_2_x1;
#pragma HLS STREAM variable = fifo_A_PE_7_2_x1 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_8_0_x1;
#pragma HLS STREAM variable = fifo_A_PE_8_0_x1 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_8_1_x1;
#pragma HLS STREAM variable = fifo_A_PE_8_1_x1 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_8_2_x1;
#pragma HLS STREAM variable = fifo_A_PE_8_2_x1 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_9_0_x1;
#pragma HLS STREAM variable = fifo_A_PE_9_0_x1 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_9_1_x1;
#pragma HLS STREAM variable = fifo_A_PE_9_1_x1 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_9_2_x1;
#pragma HLS STREAM variable = fifo_A_PE_9_2_x1 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_10_0_x1;
#pragma HLS STREAM variable = fifo_A_PE_10_0_x1 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_10_1_x1;
#pragma HLS STREAM variable = fifo_A_PE_10_1_x1 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_10_2_x1;
#pragma HLS STREAM variable = fifo_A_PE_10_2_x1 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_11_0_x1;
#pragma HLS STREAM variable = fifo_A_PE_11_0_x1 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_11_1_x1;
#pragma HLS STREAM variable = fifo_A_PE_11_1_x1 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_11_2_x1;
#pragma HLS STREAM variable = fifo_A_PE_11_2_x1 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_12_0_x1;
#pragma HLS STREAM variable = fifo_A_PE_12_0_x1 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_12_1_x1;
#pragma HLS STREAM variable = fifo_A_PE_12_1_x1 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_12_2_x1;
#pragma HLS STREAM variable = fifo_A_PE_12_2_x1 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_0_0_x1;
#pragma HLS STREAM variable = fifo_B_PE_0_0_x1 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_1_0_x1;
#pragma HLS STREAM variable = fifo_B_PE_1_0_x1 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_2_0_x1;
#pragma HLS STREAM variable = fifo_B_PE_2_0_x1 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_3_0_x1;
#pragma HLS STREAM variable = fifo_B_PE_3_0_x1 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_4_0_x1;
#pragma HLS STREAM variable = fifo_B_PE_4_0_x1 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_5_0_x1;
#pragma HLS STREAM variable = fifo_B_PE_5_0_x1 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_6_0_x1;
#pragma HLS STREAM variable = fifo_B_PE_6_0_x1 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_7_0_x1;
#pragma HLS STREAM variable = fifo_B_PE_7_0_x1 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_8_0_x1;
#pragma HLS STREAM variable = fifo_B_PE_8_0_x1 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_9_0_x1;
#pragma HLS STREAM variable = fifo_B_PE_9_0_x1 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_10_0_x1;
#pragma HLS STREAM variable = fifo_B_PE_10_0_x1 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_11_0_x1;
#pragma HLS STREAM variable = fifo_B_PE_11_0_x1 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_12_0_x1;
#pragma HLS STREAM variable = fifo_B_PE_12_0_x1 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_13_0_x1;
#pragma HLS STREAM variable = fifo_B_PE_13_0_x1 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_0_1_x1;
#pragma HLS STREAM variable = fifo_B_PE_0_1_x1 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_1_1_x1;
#pragma HLS STREAM variable = fifo_B_PE_1_1_x1 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_2_1_x1;
#pragma HLS STREAM variable = fifo_B_PE_2_1_x1 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_3_1_x1;
#pragma HLS STREAM variable = fifo_B_PE_3_1_x1 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_4_1_x1;
#pragma HLS STREAM variable = fifo_B_PE_4_1_x1 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_5_1_x1;
#pragma HLS STREAM variable = fifo_B_PE_5_1_x1 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_6_1_x1;
#pragma HLS STREAM variable = fifo_B_PE_6_1_x1 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_7_1_x1;
#pragma HLS STREAM variable = fifo_B_PE_7_1_x1 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_8_1_x1;
#pragma HLS STREAM variable = fifo_B_PE_8_1_x1 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_9_1_x1;
#pragma HLS STREAM variable = fifo_B_PE_9_1_x1 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_10_1_x1;
#pragma HLS STREAM variable = fifo_B_PE_10_1_x1 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_11_1_x1;
#pragma HLS STREAM variable = fifo_B_PE_11_1_x1 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_12_1_x1;
#pragma HLS STREAM variable = fifo_B_PE_12_1_x1 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_13_1_x1;
#pragma HLS STREAM variable = fifo_B_PE_13_1_x1 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_0_0_x1;
#pragma HLS STREAM variable = fifo_C_drain_PE_0_0_x1 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_1_0_x1;
#pragma HLS STREAM variable = fifo_C_drain_PE_1_0_x1 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_2_0_x1;
#pragma HLS STREAM variable = fifo_C_drain_PE_2_0_x1 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_3_0_x1;
#pragma HLS STREAM variable = fifo_C_drain_PE_3_0_x1 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_4_0_x1;
#pragma HLS STREAM variable = fifo_C_drain_PE_4_0_x1 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_5_0_x1;
#pragma HLS STREAM variable = fifo_C_drain_PE_5_0_x1 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_6_0_x1;
#pragma HLS STREAM variable = fifo_C_drain_PE_6_0_x1 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_7_0_x1;
#pragma HLS STREAM variable = fifo_C_drain_PE_7_0_x1 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_8_0_x1;
#pragma HLS STREAM variable = fifo_C_drain_PE_8_0_x1 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_9_0_x1;
#pragma HLS STREAM variable = fifo_C_drain_PE_9_0_x1 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_10_0_x1;
#pragma HLS STREAM variable = fifo_C_drain_PE_10_0_x1 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_11_0_x1;
#pragma HLS STREAM variable = fifo_C_drain_PE_11_0_x1 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_12_0_x1;
#pragma HLS STREAM variable = fifo_C_drain_PE_12_0_x1 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_0_1_x1;
#pragma HLS STREAM variable = fifo_C_drain_PE_0_1_x1 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_1_1_x1;
#pragma HLS STREAM variable = fifo_C_drain_PE_1_1_x1 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_2_1_x1;
#pragma HLS STREAM variable = fifo_C_drain_PE_2_1_x1 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_3_1_x1;
#pragma HLS STREAM variable = fifo_C_drain_PE_3_1_x1 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_4_1_x1;
#pragma HLS STREAM variable = fifo_C_drain_PE_4_1_x1 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_5_1_x1;
#pragma HLS STREAM variable = fifo_C_drain_PE_5_1_x1 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_6_1_x1;
#pragma HLS STREAM variable = fifo_C_drain_PE_6_1_x1 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_7_1_x1;
#pragma HLS STREAM variable = fifo_C_drain_PE_7_1_x1 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_8_1_x1;
#pragma HLS STREAM variable = fifo_C_drain_PE_8_1_x1 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_9_1_x1;
#pragma HLS STREAM variable = fifo_C_drain_PE_9_1_x1 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_10_1_x1;
#pragma HLS STREAM variable = fifo_C_drain_PE_10_1_x1 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_11_1_x1;
#pragma HLS STREAM variable = fifo_C_drain_PE_11_1_x1 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_12_1_x1;
#pragma HLS STREAM variable = fifo_C_drain_PE_12_1_x1 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_0_0_x1;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_0_0_x1 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_0_1_x1;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_0_1_x1 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_0_2_x1;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_0_2_x1 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_0_3_x1;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_0_3_x1 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_0_4_x1;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_0_4_x1 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_0_5_x1;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_0_5_x1 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_0_6_x1;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_0_6_x1 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_0_7_x1;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_0_7_x1 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_0_8_x1;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_0_8_x1 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_0_9_x1;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_0_9_x1 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_0_10_x1;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_0_10_x1 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_0_11_x1;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_0_11_x1 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_0_12_x1;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_0_12_x1 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_0_13_x1;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_0_13_x1 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_1_0_x1;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_1_0_x1 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_1_1_x1;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_1_1_x1 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_1_2_x1;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_1_2_x1 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_1_3_x1;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_1_3_x1 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_1_4_x1;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_1_4_x1 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_1_5_x1;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_1_5_x1 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_1_6_x1;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_1_6_x1 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_1_7_x1;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_1_7_x1 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_1_8_x1;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_1_8_x1 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_1_9_x1;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_1_9_x1 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_1_10_x1;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_1_10_x1 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_1_11_x1;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_1_11_x1 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_1_12_x1;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_1_12_x1 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_1_13_x1;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_1_13_x1 depth = 2
    /* C_drain_IO_L2_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L2_out_0_x1;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L2_out_0_x1 depth = 2
    /* C_drain_IO_L2_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L2_out_1_x1;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L2_out_1_x1 depth = 2
    /* FIFO Declaration */

    /* Module Call */
    A_IO_L3_in_x1(

        /* array */ A,
        /* fifo */ fifo_A_A_IO_L2_in_0_x1);
    /* Module Call */

    /* Module Call */
    A_IO_L2_in_0_x1(

        /* module id */ 0,
        /* fifo */ fifo_A_A_IO_L2_in_0_x1,
        /* fifo */ fifo_A_A_IO_L2_in_1_x1,
        /* fifo */ fifo_A_PE_0_0_x1);
    /* Module Call */

    /* Module Call */
    A_IO_L2_in_1_x1(

        /* module id */ 1,
        /* fifo */ fifo_A_A_IO_L2_in_1_x1,
        /* fifo */ fifo_A_A_IO_L2_in_2_x1,
        /* fifo */ fifo_A_PE_1_0_x1);
    /* Module Call */

    /* Module Call */
    A_IO_L2_in_2_x1(

        /* module id */ 2,
        /* fifo */ fifo_A_A_IO_L2_in_2_x1,
        /* fifo */ fifo_A_A_IO_L2_in_3_x1,
        /* fifo */ fifo_A_PE_2_0_x1);
    /* Module Call */

    /* Module Call */
    A_IO_L2_in_3_x1(

        /* module id */ 3,
        /* fifo */ fifo_A_A_IO_L2_in_3_x1,
        /* fifo */ fifo_A_A_IO_L2_in_4_x1,
        /* fifo */ fifo_A_PE_3_0_x1);
    /* Module Call */

    /* Module Call */
    A_IO_L2_in_4_x1(

        /* module id */ 4,
        /* fifo */ fifo_A_A_IO_L2_in_4_x1,
        /* fifo */ fifo_A_A_IO_L2_in_5_x1,
        /* fifo */ fifo_A_PE_4_0_x1);
    /* Module Call */

    /* Module Call */
    A_IO_L2_in_5_x1(

        /* module id */ 5,
        /* fifo */ fifo_A_A_IO_L2_in_5_x1,
        /* fifo */ fifo_A_A_IO_L2_in_6_x1,
        /* fifo */ fifo_A_PE_5_0_x1);
    /* Module Call */

    /* Module Call */
    A_IO_L2_in_6_x1(

        /* module id */ 6,
        /* fifo */ fifo_A_A_IO_L2_in_6_x1,
        /* fifo */ fifo_A_A_IO_L2_in_7_x1,
        /* fifo */ fifo_A_PE_6_0_x1);
    /* Module Call */

    /* Module Call */
    A_IO_L2_in_7_x1(

        /* module id */ 7,
        /* fifo */ fifo_A_A_IO_L2_in_7_x1,
        /* fifo */ fifo_A_A_IO_L2_in_8_x1,
        /* fifo */ fifo_A_PE_7_0_x1);
    /* Module Call */

    /* Module Call */
    A_IO_L2_in_8_x1(

        /* module id */ 8,
        /* fifo */ fifo_A_A_IO_L2_in_8_x1,
        /* fifo */ fifo_A_A_IO_L2_in_9_x1,
        /* fifo */ fifo_A_PE_8_0_x1);
    /* Module Call */

    /* Module Call */
    A_IO_L2_in_9_x1(

        /* module id */ 9,
        /* fifo */ fifo_A_A_IO_L2_in_9_x1,
        /* fifo */ fifo_A_A_IO_L2_in_10_x1,
        /* fifo */ fifo_A_PE_9_0_x1);
    /* Module Call */

    /* Module Call */
    A_IO_L2_in_10_x1(

        /* module id */ 10,
        /* fifo */ fifo_A_A_IO_L2_in_10_x1,
        /* fifo */ fifo_A_A_IO_L2_in_11_x1,
        /* fifo */ fifo_A_PE_10_0_x1);
    /* Module Call */

    /* Module Call */
    A_IO_L2_in_11_x1(

        /* module id */ 11,
        /* fifo */ fifo_A_A_IO_L2_in_11_x1,
        /* fifo */ fifo_A_A_IO_L2_in_12_x1,
        /* fifo */ fifo_A_PE_11_0_x1);
    /* Module Call */

    /* Module Call */
    A_IO_L2_in_boundary_x1(

        /* module id */ 12,
        /* fifo */ fifo_A_A_IO_L2_in_12_x1,
        /* fifo */ fifo_A_PE_12_0_x1);
    /* Module Call */

    /* Module Call */
    B_IO_L3_in_x1(

        /* array */ B,
        /* fifo */ fifo_B_B_IO_L2_in_0_x1);
    /* Module Call */

    /* Module Call */
    B_IO_L2_in_x1(

        /* module id */ 0,
        /* fifo */ fifo_B_B_IO_L2_in_0_x1,
        /* fifo */ fifo_B_B_IO_L2_in_1_x1,
        /* fifo */ fifo_B_PE_0_0_x1);
    /* Module Call */

    /* Module Call */
    B_IO_L2_in_boundary_x1(

        /* module id */ 1,
        /* fifo */ fifo_B_B_IO_L2_in_1_x1,
        /* fifo */ fifo_B_PE_0_1_x1);
    /* Module Call */

    /* Module Call */
    PE_wrapper_0_0_x1(

        /* module id */ 0,
        /* module id */ 0,
        /* fifo */ fifo_A_PE_0_0_x1,
        /* fifo */ fifo_A_PE_0_1_x1,
        /* fifo */ fifo_B_PE_0_0_x1,
        /* fifo */ fifo_B_PE_1_0_x1,
        /* fifo */ fifo_C_drain_PE_0_0_x1);
    /* Module Call */

    /* Module Call */
    PE_wrapper_0_1_x1(

        /* module id */ 0,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_0_1_x1,
        /* fifo */ fifo_A_PE_0_2_x1,
        /* fifo */ fifo_B_PE_0_1_x1,
        /* fifo */ fifo_B_PE_1_1_x1,
        /* fifo */ fifo_C_drain_PE_0_1_x1);
    /* Module Call */

    /* Module Call */
    PE_wrapper_1_0_x1(

        /* module id */ 1,
        /* module id */ 0,
        /* fifo */ fifo_A_PE_1_0_x1,
        /* fifo */ fifo_A_PE_1_1_x1,
        /* fifo */ fifo_B_PE_1_0_x1,
        /* fifo */ fifo_B_PE_2_0_x1,
        /* fifo */ fifo_C_drain_PE_1_0_x1);
    /* Module Call */

    /* Module Call */
    PE_wrapper_1_1_x1(

        /* module id */ 1,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_1_1_x1,
        /* fifo */ fifo_A_PE_1_2_x1,
        /* fifo */ fifo_B_PE_1_1_x1,
        /* fifo */ fifo_B_PE_2_1_x1,
        /* fifo */ fifo_C_drain_PE_1_1_x1);
    /* Module Call */

    /* Module Call */
    PE_wrapper_2_0_x1(

        /* module id */ 2,
        /* module id */ 0,
        /* fifo */ fifo_A_PE_2_0_x1,
        /* fifo */ fifo_A_PE_2_1_x1,
        /* fifo */ fifo_B_PE_2_0_x1,
        /* fifo */ fifo_B_PE_3_0_x1,
        /* fifo */ fifo_C_drain_PE_2_0_x1);
    /* Module Call */

    /* Module Call */
    PE_wrapper_2_1_x1(

        /* module id */ 2,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_2_1_x1,
        /* fifo */ fifo_A_PE_2_2_x1,
        /* fifo */ fifo_B_PE_2_1_x1,
        /* fifo */ fifo_B_PE_3_1_x1,
        /* fifo */ fifo_C_drain_PE_2_1_x1);
    /* Module Call */

    /* Module Call */
    PE_wrapper_3_0_x1(

        /* module id */ 3,
        /* module id */ 0,
        /* fifo */ fifo_A_PE_3_0_x1,
        /* fifo */ fifo_A_PE_3_1_x1,
        /* fifo */ fifo_B_PE_3_0_x1,
        /* fifo */ fifo_B_PE_4_0_x1,
        /* fifo */ fifo_C_drain_PE_3_0_x1);
    /* Module Call */

    /* Module Call */
    PE_wrapper_3_1_x1(

        /* module id */ 3,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_3_1_x1,
        /* fifo */ fifo_A_PE_3_2_x1,
        /* fifo */ fifo_B_PE_3_1_x1,
        /* fifo */ fifo_B_PE_4_1_x1,
        /* fifo */ fifo_C_drain_PE_3_1_x1);
    /* Module Call */

    /* Module Call */
    PE_wrapper_4_0_x1(

        /* module id */ 4,
        /* module id */ 0,
        /* fifo */ fifo_A_PE_4_0_x1,
        /* fifo */ fifo_A_PE_4_1_x1,
        /* fifo */ fifo_B_PE_4_0_x1,
        /* fifo */ fifo_B_PE_5_0_x1,
        /* fifo */ fifo_C_drain_PE_4_0_x1);
    /* Module Call */

    /* Module Call */
    PE_wrapper_4_1_x1(

        /* module id */ 4,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_4_1_x1,
        /* fifo */ fifo_A_PE_4_2_x1,
        /* fifo */ fifo_B_PE_4_1_x1,
        /* fifo */ fifo_B_PE_5_1_x1,
        /* fifo */ fifo_C_drain_PE_4_1_x1);
    /* Module Call */

    /* Module Call */
    PE_wrapper_5_0_x1(

        /* module id */ 5,
        /* module id */ 0,
        /* fifo */ fifo_A_PE_5_0_x1,
        /* fifo */ fifo_A_PE_5_1_x1,
        /* fifo */ fifo_B_PE_5_0_x1,
        /* fifo */ fifo_B_PE_6_0_x1,
        /* fifo */ fifo_C_drain_PE_5_0_x1);
    /* Module Call */

    /* Module Call */
    PE_wrapper_5_1_x1(

        /* module id */ 5,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_5_1_x1,
        /* fifo */ fifo_A_PE_5_2_x1,
        /* fifo */ fifo_B_PE_5_1_x1,
        /* fifo */ fifo_B_PE_6_1_x1,
        /* fifo */ fifo_C_drain_PE_5_1_x1);
    /* Module Call */

    /* Module Call */
    PE_wrapper_6_0_x1(

        /* module id */ 6,
        /* module id */ 0,
        /* fifo */ fifo_A_PE_6_0_x1,
        /* fifo */ fifo_A_PE_6_1_x1,
        /* fifo */ fifo_B_PE_6_0_x1,
        /* fifo */ fifo_B_PE_7_0_x1,
        /* fifo */ fifo_C_drain_PE_6_0_x1);
    /* Module Call */

    /* Module Call */
    PE_wrapper_6_1_x1(

        /* module id */ 6,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_6_1_x1,
        /* fifo */ fifo_A_PE_6_2_x1,
        /* fifo */ fifo_B_PE_6_1_x1,
        /* fifo */ fifo_B_PE_7_1_x1,
        /* fifo */ fifo_C_drain_PE_6_1_x1);
    /* Module Call */

    /* Module Call */
    PE_wrapper_7_0_x1(

        /* module id */ 7,
        /* module id */ 0,
        /* fifo */ fifo_A_PE_7_0_x1,
        /* fifo */ fifo_A_PE_7_1_x1,
        /* fifo */ fifo_B_PE_7_0_x1,
        /* fifo */ fifo_B_PE_8_0_x1,
        /* fifo */ fifo_C_drain_PE_7_0_x1);
    /* Module Call */

    /* Module Call */
    PE_wrapper_7_1_x1(

        /* module id */ 7,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_7_1_x1,
        /* fifo */ fifo_A_PE_7_2_x1,
        /* fifo */ fifo_B_PE_7_1_x1,
        /* fifo */ fifo_B_PE_8_1_x1,
        /* fifo */ fifo_C_drain_PE_7_1_x1);
    /* Module Call */

    /* Module Call */
    PE_wrapper_8_0_x1(

        /* module id */ 8,
        /* module id */ 0,
        /* fifo */ fifo_A_PE_8_0_x1,
        /* fifo */ fifo_A_PE_8_1_x1,
        /* fifo */ fifo_B_PE_8_0_x1,
        /* fifo */ fifo_B_PE_9_0_x1,
        /* fifo */ fifo_C_drain_PE_8_0_x1);
    /* Module Call */

    /* Module Call */
    PE_wrapper_8_1_x1(

        /* module id */ 8,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_8_1_x1,
        /* fifo */ fifo_A_PE_8_2_x1,
        /* fifo */ fifo_B_PE_8_1_x1,
        /* fifo */ fifo_B_PE_9_1_x1,
        /* fifo */ fifo_C_drain_PE_8_1_x1);
    /* Module Call */

    /* Module Call */
    PE_wrapper_9_0_x1(

        /* module id */ 9,
        /* module id */ 0,
        /* fifo */ fifo_A_PE_9_0_x1,
        /* fifo */ fifo_A_PE_9_1_x1,
        /* fifo */ fifo_B_PE_9_0_x1,
        /* fifo */ fifo_B_PE_10_0_x1,
        /* fifo */ fifo_C_drain_PE_9_0_x1);
    /* Module Call */

    /* Module Call */
    PE_wrapper_9_1_x1(

        /* module id */ 9,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_9_1_x1,
        /* fifo */ fifo_A_PE_9_2_x1,
        /* fifo */ fifo_B_PE_9_1_x1,
        /* fifo */ fifo_B_PE_10_1_x1,
        /* fifo */ fifo_C_drain_PE_9_1_x1);
    /* Module Call */

    /* Module Call */
    PE_wrapper_10_0_x1(

        /* module id */ 10,
        /* module id */ 0,
        /* fifo */ fifo_A_PE_10_0_x1,
        /* fifo */ fifo_A_PE_10_1_x1,
        /* fifo */ fifo_B_PE_10_0_x1,
        /* fifo */ fifo_B_PE_11_0_x1,
        /* fifo */ fifo_C_drain_PE_10_0_x1);
    /* Module Call */

    /* Module Call */
    PE_wrapper_10_1_x1(

        /* module id */ 10,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_10_1_x1,
        /* fifo */ fifo_A_PE_10_2_x1,
        /* fifo */ fifo_B_PE_10_1_x1,
        /* fifo */ fifo_B_PE_11_1_x1,
        /* fifo */ fifo_C_drain_PE_10_1_x1);
    /* Module Call */

    /* Module Call */
    PE_wrapper_11_0_x1(

        /* module id */ 11,
        /* module id */ 0,
        /* fifo */ fifo_A_PE_11_0_x1,
        /* fifo */ fifo_A_PE_11_1_x1,
        /* fifo */ fifo_B_PE_11_0_x1,
        /* fifo */ fifo_B_PE_12_0_x1,
        /* fifo */ fifo_C_drain_PE_11_0_x1);
    /* Module Call */

    /* Module Call */
    PE_wrapper_11_1_x1(

        /* module id */ 11,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_11_1_x1,
        /* fifo */ fifo_A_PE_11_2_x1,
        /* fifo */ fifo_B_PE_11_1_x1,
        /* fifo */ fifo_B_PE_12_1_x1,
        /* fifo */ fifo_C_drain_PE_11_1_x1);
    /* Module Call */

    /* Module Call */
    PE_wrapper_12_0_x1(

        /* module id */ 12,
        /* module id */ 0,
        /* fifo */ fifo_A_PE_12_0_x1,
        /* fifo */ fifo_A_PE_12_1_x1,
        /* fifo */ fifo_B_PE_12_0_x1,
        /* fifo */ fifo_B_PE_13_0_x1,
        /* fifo */ fifo_C_drain_PE_12_0_x1);
    /* Module Call */

    /* Module Call */
    PE_wrapper_12_1_x1(

        /* module id */ 12,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_12_1_x1,
        /* fifo */ fifo_A_PE_12_2_x1,
        /* fifo */ fifo_B_PE_12_1_x1,
        /* fifo */ fifo_B_PE_13_1_x1,
        /* fifo */ fifo_C_drain_PE_12_1_x1);
    /* Module Call */

    /* Module Call */
    A_PE_dummy_0_x1(

        /* module id */ 0,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_0_2_x1);
    /* Module Call */

    /* Module Call */
    A_PE_dummy_1_x1(

        /* module id */ 1,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_1_2_x1);
    /* Module Call */

    /* Module Call */
    A_PE_dummy_2_x1(

        /* module id */ 2,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_2_2_x1);
    /* Module Call */

    /* Module Call */
    A_PE_dummy_3_x1(

        /* module id */ 3,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_3_2_x1);
    /* Module Call */

    /* Module Call */
    A_PE_dummy_4_x1(

        /* module id */ 4,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_4_2_x1);
    /* Module Call */

    /* Module Call */
    A_PE_dummy_5_x1(

        /* module id */ 5,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_5_2_x1);
    /* Module Call */

    /* Module Call */
    A_PE_dummy_6_x1(

        /* module id */ 6,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_6_2_x1);
    /* Module Call */

    /* Module Call */
    A_PE_dummy_7_x1(

        /* module id */ 7,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_7_2_x1);
    /* Module Call */

    /* Module Call */
    A_PE_dummy_8_x1(

        /* module id */ 8,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_8_2_x1);
    /* Module Call */

    /* Module Call */
    A_PE_dummy_9_x1(

        /* module id */ 9,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_9_2_x1);
    /* Module Call */

    /* Module Call */
    A_PE_dummy_10_x1(

        /* module id */ 10,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_10_2_x1);
    /* Module Call */

    /* Module Call */
    A_PE_dummy_11_x1(

        /* module id */ 11,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_11_2_x1);
    /* Module Call */

    /* Module Call */
    A_PE_dummy_12_x1(

        /* module id */ 12,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_12_2_x1);
    /* Module Call */

    /* Module Call */
    B_PE_dummy_0_x1(

        /* module id */ 12,
        /* module id */ 0,
        /* fifo */ fifo_B_PE_13_0_x1);
    /* Module Call */

    /* Module Call */
    B_PE_dummy_1_x1(

        /* module id */ 12,
        /* module id */ 1,
        /* fifo */ fifo_B_PE_13_1_x1);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_boundary_0_x1(

        /* module id */ 0,
        /* module id */ 12,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_12_x1,
        /* fifo */ fifo_C_drain_PE_12_0_x1);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_0_x1(

        /* module id */ 0,
        /* module id */ 11,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_12_x1,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_11_x1,
        /* fifo */ fifo_C_drain_PE_11_0_x1);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_1_x1(

        /* module id */ 0,
        /* module id */ 10,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_11_x1,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_10_x1,
        /* fifo */ fifo_C_drain_PE_10_0_x1);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_2_x1(

        /* module id */ 0,
        /* module id */ 9,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_10_x1,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_9_x1,
        /* fifo */ fifo_C_drain_PE_9_0_x1);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_3_x1(

        /* module id */ 0,
        /* module id */ 8,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_9_x1,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_8_x1,
        /* fifo */ fifo_C_drain_PE_8_0_x1);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_4_x1(

        /* module id */ 0,
        /* module id */ 7,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_8_x1,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_7_x1,
        /* fifo */ fifo_C_drain_PE_7_0_x1);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_5_x1(

        /* module id */ 0,
        /* module id */ 6,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_7_x1,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_6_x1,
        /* fifo */ fifo_C_drain_PE_6_0_x1);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_6_x1(

        /* module id */ 0,
        /* module id */ 5,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_6_x1,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_5_x1,
        /* fifo */ fifo_C_drain_PE_5_0_x1);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_7_x1(

        /* module id */ 0,
        /* module id */ 4,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_5_x1,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_4_x1,
        /* fifo */ fifo_C_drain_PE_4_0_x1);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_8_x1(

        /* module id */ 0,
        /* module id */ 3,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_4_x1,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_3_x1,
        /* fifo */ fifo_C_drain_PE_3_0_x1);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_9_x1(

        /* module id */ 0,
        /* module id */ 2,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_3_x1,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_2_x1,
        /* fifo */ fifo_C_drain_PE_2_0_x1);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_10_x1(

        /* module id */ 0,
        /* module id */ 1,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_2_x1,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_1_x1,
        /* fifo */ fifo_C_drain_PE_1_0_x1);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_11_x1(

        /* module id */ 0,
        /* module id */ 0,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_1_x1,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_0_x1,
        /* fifo */ fifo_C_drain_PE_0_0_x1);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_boundary_1_x1(

        /* module id */ 1,
        /* module id */ 12,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_12_x1,
        /* fifo */ fifo_C_drain_PE_12_1_x1);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_12_x1(

        /* module id */ 1,
        /* module id */ 11,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_12_x1,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_11_x1,
        /* fifo */ fifo_C_drain_PE_11_1_x1);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_13_x1(

        /* module id */ 1,
        /* module id */ 10,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_11_x1,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_10_x1,
        /* fifo */ fifo_C_drain_PE_10_1_x1);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_14_x1(

        /* module id */ 1,
        /* module id */ 9,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_10_x1,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_9_x1,
        /* fifo */ fifo_C_drain_PE_9_1_x1);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_15_x1(

        /* module id */ 1,
        /* module id */ 8,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_9_x1,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_8_x1,
        /* fifo */ fifo_C_drain_PE_8_1_x1);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_16_x1(

        /* module id */ 1,
        /* module id */ 7,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_8_x1,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_7_x1,
        /* fifo */ fifo_C_drain_PE_7_1_x1);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_17_x1(

        /* module id */ 1,
        /* module id */ 6,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_7_x1,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_6_x1,
        /* fifo */ fifo_C_drain_PE_6_1_x1);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_18_x1(

        /* module id */ 1,
        /* module id */ 5,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_6_x1,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_5_x1,
        /* fifo */ fifo_C_drain_PE_5_1_x1);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_19_x1(

        /* module id */ 1,
        /* module id */ 4,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_5_x1,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_4_x1,
        /* fifo */ fifo_C_drain_PE_4_1_x1);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_20_x1(

        /* module id */ 1,
        /* module id */ 3,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_4_x1,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_3_x1,
        /* fifo */ fifo_C_drain_PE_3_1_x1);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_21_x1(

        /* module id */ 1,
        /* module id */ 2,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_3_x1,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_2_x1,
        /* fifo */ fifo_C_drain_PE_2_1_x1);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_22_x1(

        /* module id */ 1,
        /* module id */ 1,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_2_x1,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_1_x1,
        /* fifo */ fifo_C_drain_PE_1_1_x1);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_23_x1(

        /* module id */ 1,
        /* module id */ 0,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_1_x1,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_0_x1,
        /* fifo */ fifo_C_drain_PE_0_1_x1);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L2_out_boundary_x1(

        /* module id */ 1,
        /* fifo */ fifo_C_drain_C_drain_IO_L2_out_1_x1,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_0_x1);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L2_out_x1(

        /* module id */ 0,
        /* fifo */ fifo_C_drain_C_drain_IO_L2_out_1_x1,
        /* fifo */ fifo_C_drain_C_drain_IO_L2_out_0_x1,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_0_x1);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L3_out_x1(

        /* array */ C,
        /* fifo */ fifo_C_drain_C_drain_IO_L2_out_0_x1);
    /* Module Call */
}
/* Module Definition */
void A_IO_L3_in_x2(A_t16 *A, hls::stream<A_t8> &fifo_A_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    /* Variable Declaration */

A_IO_L3_in_x2_loop_1:     for (ap_uint<13> i = 0; i < 2048; i++) {
        A_t16 mem_data;
        A_t8 fifo_data;
        mem_data = A[i];
A_IO_L3_in_x2_loop_2:         for (ap_uint<2> p = 0; p < 2; p++) {
            fifo_data = mem_data(255, 0);
            mem_data = mem_data >> 256;
            fifo_A_local_out.write(fifo_data);
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_IO_L2_in_0_x2(int idx, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<A_t8> &fifo_A_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    A_t8 local_A_ping[16][32];
#pragma HLS BIND_STORAGE variable = local_A_ping type = RAM_2P impl = BRAM
    A_t8 local_A_pong[16][32];
#pragma HLS BIND_STORAGE variable = local_A_pong type = RAM_2P impl = BRAM
    /* Variable Declaration */

    // array
    /* Variable Declaration */

A_IO_L2_in_0_x2_loop_1:     for (ap_uint<5> c3 = p0; c3 <= 12; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L2
A_IO_L2_in_0_x2_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 15; c4 += 1) {
            // access_coalesce
A_IO_L2_in_0_x2_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                A_t8 fifo_data;
                fifo_data = fifo_A_in.read();
                if (c3 == p0) {
                    local_A_pong[c4][c5] = fifo_data;
                } else {
                    fifo_A_out.write(fifo_data);
                }
            }
        }
    }

    // io_L1
    // pe
A_IO_L2_in_0_x2_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
A_IO_L2_in_0_x2_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
A_IO_L2_in_0_x2_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                A_t8 fifo_data;
                fifo_data = local_A_pong[c7][c5];
                fifo_A_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_IO_L2_in_1_x2(int idx, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<A_t8> &fifo_A_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    A_t8 local_A_ping[16][32];
#pragma HLS BIND_STORAGE variable = local_A_ping type = RAM_2P impl = BRAM
    A_t8 local_A_pong[16][32];
#pragma HLS BIND_STORAGE variable = local_A_pong type = RAM_2P impl = BRAM
    /* Variable Declaration */

    // array
    /* Variable Declaration */

A_IO_L2_in_1_x2_loop_1:     for (ap_uint<5> c3 = p0; c3 <= 12; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L2
A_IO_L2_in_1_x2_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 15; c4 += 1) {
            // access_coalesce
A_IO_L2_in_1_x2_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                A_t8 fifo_data;
                fifo_data = fifo_A_in.read();
                if (c3 == p0) {
                    local_A_pong[c4][c5] = fifo_data;
                } else {
                    fifo_A_out.write(fifo_data);
                }
            }
        }
    }

    // io_L1
    // pe
A_IO_L2_in_1_x2_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
A_IO_L2_in_1_x2_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
A_IO_L2_in_1_x2_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                A_t8 fifo_data;
                fifo_data = local_A_pong[c7][c5];
                fifo_A_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_IO_L2_in_2_x2(int idx, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<A_t8> &fifo_A_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    A_t8 local_A_ping[16][32];
#pragma HLS BIND_STORAGE variable = local_A_ping type = RAM_2P impl = BRAM
    A_t8 local_A_pong[16][32];
#pragma HLS BIND_STORAGE variable = local_A_pong type = RAM_2P impl = BRAM
    /* Variable Declaration */

    // array
    /* Variable Declaration */

A_IO_L2_in_2_x2_loop_1:     for (ap_uint<5> c3 = p0; c3 <= 12; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L2
A_IO_L2_in_2_x2_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 15; c4 += 1) {
            // access_coalesce
A_IO_L2_in_2_x2_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                A_t8 fifo_data;
                fifo_data = fifo_A_in.read();
                if (c3 == p0) {
                    local_A_pong[c4][c5] = fifo_data;
                } else {
                    fifo_A_out.write(fifo_data);
                }
            }
        }
    }

    // io_L1
    // pe
A_IO_L2_in_2_x2_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
A_IO_L2_in_2_x2_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
A_IO_L2_in_2_x2_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                A_t8 fifo_data;
                fifo_data = local_A_pong[c7][c5];
                fifo_A_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_IO_L2_in_3_x2(int idx, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<A_t8> &fifo_A_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    A_t8 local_A_ping[16][32];
#pragma HLS BIND_STORAGE variable = local_A_ping type = RAM_2P impl = BRAM
    A_t8 local_A_pong[16][32];
#pragma HLS BIND_STORAGE variable = local_A_pong type = RAM_2P impl = BRAM
    /* Variable Declaration */

    // array
    /* Variable Declaration */

A_IO_L2_in_3_x2_loop_1:     for (ap_uint<5> c3 = p0; c3 <= 12; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L2
A_IO_L2_in_3_x2_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 15; c4 += 1) {
            // access_coalesce
A_IO_L2_in_3_x2_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                A_t8 fifo_data;
                fifo_data = fifo_A_in.read();
                if (c3 == p0) {
                    local_A_pong[c4][c5] = fifo_data;
                } else {
                    fifo_A_out.write(fifo_data);
                }
            }
        }
    }

    // io_L1
    // pe
A_IO_L2_in_3_x2_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
A_IO_L2_in_3_x2_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
A_IO_L2_in_3_x2_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                A_t8 fifo_data;
                fifo_data = local_A_pong[c7][c5];
                fifo_A_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_IO_L2_in_4_x2(int idx, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<A_t8> &fifo_A_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    A_t8 local_A_ping[16][32];
#pragma HLS BIND_STORAGE variable = local_A_ping type = RAM_2P impl = BRAM
    A_t8 local_A_pong[16][32];
#pragma HLS BIND_STORAGE variable = local_A_pong type = RAM_2P impl = BRAM
    /* Variable Declaration */

    // array
    /* Variable Declaration */

A_IO_L2_in_4_x2_loop_1:     for (ap_uint<5> c3 = p0; c3 <= 12; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L2
A_IO_L2_in_4_x2_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 15; c4 += 1) {
            // access_coalesce
A_IO_L2_in_4_x2_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                A_t8 fifo_data;
                fifo_data = fifo_A_in.read();
                if (c3 == p0) {
                    local_A_pong[c4][c5] = fifo_data;
                } else {
                    fifo_A_out.write(fifo_data);
                }
            }
        }
    }

    // io_L1
    // pe
A_IO_L2_in_4_x2_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
A_IO_L2_in_4_x2_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
A_IO_L2_in_4_x2_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                A_t8 fifo_data;
                fifo_data = local_A_pong[c7][c5];
                fifo_A_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_IO_L2_in_5_x2(int idx, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<A_t8> &fifo_A_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    A_t8 local_A_ping[16][32];
#pragma HLS BIND_STORAGE variable = local_A_ping type = RAM_2P impl = BRAM
    A_t8 local_A_pong[16][32];
#pragma HLS BIND_STORAGE variable = local_A_pong type = RAM_2P impl = BRAM
    /* Variable Declaration */

    // array
    /* Variable Declaration */

A_IO_L2_in_5_x2_loop_1:     for (ap_uint<5> c3 = p0; c3 <= 12; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L2
A_IO_L2_in_5_x2_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 15; c4 += 1) {
            // access_coalesce
A_IO_L2_in_5_x2_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                A_t8 fifo_data;
                fifo_data = fifo_A_in.read();
                if (c3 == p0) {
                    local_A_pong[c4][c5] = fifo_data;
                } else {
                    fifo_A_out.write(fifo_data);
                }
            }
        }
    }

    // io_L1
    // pe
A_IO_L2_in_5_x2_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
A_IO_L2_in_5_x2_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
A_IO_L2_in_5_x2_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                A_t8 fifo_data;
                fifo_data = local_A_pong[c7][c5];
                fifo_A_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_IO_L2_in_6_x2(int idx, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<A_t8> &fifo_A_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    A_t8 local_A_ping[16][32];
#pragma HLS BIND_STORAGE variable = local_A_ping type = RAM_2P impl = BRAM
    A_t8 local_A_pong[16][32];
#pragma HLS BIND_STORAGE variable = local_A_pong type = RAM_2P impl = BRAM
    /* Variable Declaration */

    // array
    /* Variable Declaration */

A_IO_L2_in_6_x2_loop_1:     for (ap_uint<5> c3 = p0; c3 <= 12; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L2
A_IO_L2_in_6_x2_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 15; c4 += 1) {
            // access_coalesce
A_IO_L2_in_6_x2_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                A_t8 fifo_data;
                fifo_data = fifo_A_in.read();
                if (c3 == p0) {
                    local_A_pong[c4][c5] = fifo_data;
                } else {
                    fifo_A_out.write(fifo_data);
                }
            }
        }
    }

    // io_L1
    // pe
A_IO_L2_in_6_x2_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
A_IO_L2_in_6_x2_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
A_IO_L2_in_6_x2_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                A_t8 fifo_data;
                fifo_data = local_A_pong[c7][c5];
                fifo_A_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_IO_L2_in_7_x2(int idx, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<A_t8> &fifo_A_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    A_t8 local_A_ping[16][32];
#pragma HLS BIND_STORAGE variable = local_A_ping type = RAM_2P impl = BRAM
    A_t8 local_A_pong[16][32];
#pragma HLS BIND_STORAGE variable = local_A_pong type = RAM_2P impl = BRAM
    /* Variable Declaration */

    // array
    /* Variable Declaration */

A_IO_L2_in_7_x2_loop_1:     for (ap_uint<5> c3 = p0; c3 <= 12; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L2
A_IO_L2_in_7_x2_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 15; c4 += 1) {
            // access_coalesce
A_IO_L2_in_7_x2_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                A_t8 fifo_data;
                fifo_data = fifo_A_in.read();
                if (c3 == p0) {
                    local_A_pong[c4][c5] = fifo_data;
                } else {
                    fifo_A_out.write(fifo_data);
                }
            }
        }
    }

    // io_L1
    // pe
A_IO_L2_in_7_x2_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
A_IO_L2_in_7_x2_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
A_IO_L2_in_7_x2_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                A_t8 fifo_data;
                fifo_data = local_A_pong[c7][c5];
                fifo_A_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_IO_L2_in_8_x2(int idx, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<A_t8> &fifo_A_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    A_t8 local_A_ping[16][32];
#pragma HLS BIND_STORAGE variable = local_A_ping type = RAM_2P impl = BRAM
    A_t8 local_A_pong[16][32];
#pragma HLS BIND_STORAGE variable = local_A_pong type = RAM_2P impl = BRAM
    /* Variable Declaration */

    // array
    /* Variable Declaration */

A_IO_L2_in_8_x2_loop_1:     for (ap_uint<5> c3 = p0; c3 <= 12; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L2
A_IO_L2_in_8_x2_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 15; c4 += 1) {
            // access_coalesce
A_IO_L2_in_8_x2_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                A_t8 fifo_data;
                fifo_data = fifo_A_in.read();
                if (c3 == p0) {
                    local_A_pong[c4][c5] = fifo_data;
                } else {
                    fifo_A_out.write(fifo_data);
                }
            }
        }
    }

    // io_L1
    // pe
A_IO_L2_in_8_x2_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
A_IO_L2_in_8_x2_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
A_IO_L2_in_8_x2_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                A_t8 fifo_data;
                fifo_data = local_A_pong[c7][c5];
                fifo_A_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_IO_L2_in_9_x2(int idx, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<A_t8> &fifo_A_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    A_t8 local_A_ping[16][32];
#pragma HLS BIND_STORAGE variable = local_A_ping type = RAM_2P impl = BRAM
    A_t8 local_A_pong[16][32];
#pragma HLS BIND_STORAGE variable = local_A_pong type = RAM_2P impl = BRAM
    /* Variable Declaration */

    // array
    /* Variable Declaration */

A_IO_L2_in_9_x2_loop_1:     for (ap_uint<5> c3 = p0; c3 <= 12; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L2
A_IO_L2_in_9_x2_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 15; c4 += 1) {
            // access_coalesce
A_IO_L2_in_9_x2_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                A_t8 fifo_data;
                fifo_data = fifo_A_in.read();
                if (c3 == p0) {
                    local_A_pong[c4][c5] = fifo_data;
                } else {
                    fifo_A_out.write(fifo_data);
                }
            }
        }
    }

    // io_L1
    // pe
A_IO_L2_in_9_x2_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
A_IO_L2_in_9_x2_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
A_IO_L2_in_9_x2_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                A_t8 fifo_data;
                fifo_data = local_A_pong[c7][c5];
                fifo_A_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_IO_L2_in_10_x2(int idx, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<A_t8> &fifo_A_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    A_t8 local_A_ping[16][32];
#pragma HLS BIND_STORAGE variable = local_A_ping type = RAM_2P impl = BRAM
    A_t8 local_A_pong[16][32];
#pragma HLS BIND_STORAGE variable = local_A_pong type = RAM_2P impl = BRAM
    /* Variable Declaration */

    // array
    /* Variable Declaration */

A_IO_L2_in_10_x2_loop_1:     for (ap_uint<5> c3 = p0; c3 <= 12; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L2
A_IO_L2_in_10_x2_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 15; c4 += 1) {
            // access_coalesce
A_IO_L2_in_10_x2_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                A_t8 fifo_data;
                fifo_data = fifo_A_in.read();
                if (c3 == p0) {
                    local_A_pong[c4][c5] = fifo_data;
                } else {
                    fifo_A_out.write(fifo_data);
                }
            }
        }
    }

    // io_L1
    // pe
A_IO_L2_in_10_x2_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
A_IO_L2_in_10_x2_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
A_IO_L2_in_10_x2_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                A_t8 fifo_data;
                fifo_data = local_A_pong[c7][c5];
                fifo_A_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_IO_L2_in_11_x2(int idx, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<A_t8> &fifo_A_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    A_t8 local_A_ping[16][32];
#pragma HLS BIND_STORAGE variable = local_A_ping type = RAM_2P impl = BRAM
    A_t8 local_A_pong[16][32];
#pragma HLS BIND_STORAGE variable = local_A_pong type = RAM_2P impl = BRAM
    /* Variable Declaration */

    // array
    /* Variable Declaration */

A_IO_L2_in_11_x2_loop_1:     for (ap_uint<5> c3 = p0; c3 <= 12; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L2
A_IO_L2_in_11_x2_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 15; c4 += 1) {
            // access_coalesce
A_IO_L2_in_11_x2_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                A_t8 fifo_data;
                fifo_data = fifo_A_in.read();
                if (c3 == p0) {
                    local_A_pong[c4][c5] = fifo_data;
                } else {
                    fifo_A_out.write(fifo_data);
                }
            }
        }
    }

    // io_L1
    // pe
A_IO_L2_in_11_x2_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
A_IO_L2_in_11_x2_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
A_IO_L2_in_11_x2_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                A_t8 fifo_data;
                fifo_data = local_A_pong[c7][c5];
                fifo_A_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_IO_L2_in_boundary_x2(int idx, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    A_t8 local_A_ping[16][32];
#pragma HLS BIND_STORAGE variable = local_A_ping type = RAM_2P impl = BRAM
    A_t8 local_A_pong[16][32];
#pragma HLS BIND_STORAGE variable = local_A_pong type = RAM_2P impl = BRAM
    /* Variable Declaration */

A_IO_L2_in_boundary_x2_loop_1:     for (ap_uint<5> c3 = p0; c3 <= 12; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 1 max = 1
        // io_L2
A_IO_L2_in_boundary_x2_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 15; c4 += 1) {
            // access_coalesce
A_IO_L2_in_boundary_x2_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                A_t8 fifo_data;
                fifo_data = fifo_A_in.read();
                local_A_pong[c4][c5] = fifo_data;
            }
        }
    }
A_IO_L2_in_boundary_x2_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
A_IO_L2_in_boundary_x2_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
A_IO_L2_in_boundary_x2_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                A_t8 fifo_data;
                fifo_data = local_A_pong[c7][c5];
                fifo_A_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void B_IO_L3_in_x2(B_t16 *B, hls::stream<B_t8> &fifo_B_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    /* Variable Declaration */

B_IO_L3_in_x2_loop_1:     for (ap_uint<12> i = 0; i < 2048; i++) {
        B_t16 mem_data;
        B_t8 fifo_data;
        mem_data = B[i];
B_IO_L3_in_x2_loop_2:         for (ap_uint<2> p = 0; p < 2; p++) {
            fifo_data = mem_data(255, 0);
            mem_data = mem_data >> 256;
            fifo_B_local_out.write(fifo_data);
        }
    }
}
/* Module Definition */

/* Module Definition */
void B_IO_L2_in_x2(int idx, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<B_t8> &fifo_B_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    B_t8 local_B_ping[64][32];
#pragma HLS BIND_STORAGE variable = local_B_ping type = RAM_2P impl = BRAM
    B_t8 local_B_pong[64][32];
#pragma HLS BIND_STORAGE variable = local_B_pong type = RAM_2P impl = BRAM
    bool arb = 0;
    bool inter_trans_en = 1;
    bool intra_trans_en = 0;
    /* Variable Declaration */
B_IO_L2_in_x2_loop_1:     for (ap_uint<2> c3 = p0; c3 <= 1; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 2
        // io_L2
B_IO_L2_in_x2_loop_2:         for (ap_uint<7> c4 = 0; c4 <= 63; c4 += 1) {
            // access_coalesce
B_IO_L2_in_x2_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                B_t8 fifo_data;
                fifo_data = fifo_B_in.read();
                if (c3 == p0) {
                    local_B_pong[c4][c5] = fifo_data;
                } else {
                    fifo_B_out.write(fifo_data);
                }
            }
        }
    }
B_IO_L2_in_x2_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
B_IO_L2_in_x2_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
B_IO_L2_in_x2_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                B_t8 fifo_data;
                fifo_data = local_B_pong[c6][c5];
                fifo_B_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void B_IO_L2_in_boundary_x2(int idx, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_local_out) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    B_t8 local_B_ping[64][32];
#pragma HLS BIND_STORAGE variable = local_B_ping type = RAM_2P impl = BRAM
    B_t8 local_B_pong[64][32];
#pragma HLS BIND_STORAGE variable = local_B_pong type = RAM_2P impl = BRAM
    /* Variable Declaration */
B_IO_L2_in_boundary_x2_loop_1:     for (ap_uint<2> c3 = p0; c3 <= 1; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 1 max = 1
        // io_L2
B_IO_L2_in_boundary_x2_loop_2:         for (ap_uint<7> c4 = 0; c4 <= 63; c4 += 1) {
            // access_coalesce
B_IO_L2_in_boundary_x2_loop_3:             for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
                B_t8 fifo_data;
                fifo_data = fifo_B_in.read();
                local_B_pong[c4][c5] = fifo_data;
            }
        }
    }
B_IO_L2_in_boundary_x2_loop_4:     for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
        // latency
B_IO_L2_in_boundary_x2_loop_5:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
B_IO_L2_in_boundary_x2_loop_6:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                B_t8 fifo_data;
                fifo_data = local_B_pong[c6][c5];
                fifo_B_local_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void PE_wrapper_12_1_x2(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_12_1_x2_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_12_1_x2_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_12_1_x2_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_12_1_x2_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_12_1_x2_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_12_1_x2_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_12_1_x2_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_12_1_x2_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_12_0_x2(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_12_0_x2_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_12_0_x2_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_12_0_x2_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_12_0_x2_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_12_0_x2_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_12_0_x2_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_12_0_x2_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_12_0_x2_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_11_1_x2(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_11_1_x2_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_11_1_x2_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_11_1_x2_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_11_1_x2_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_11_1_x2_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_11_1_x2_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_11_1_x2_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_11_1_x2_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_11_0_x2(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_11_0_x2_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_11_0_x2_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_11_0_x2_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_11_0_x2_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_11_0_x2_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_11_0_x2_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_11_0_x2_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_11_0_x2_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_10_1_x2(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_10_1_x2_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_10_1_x2_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_10_1_x2_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_10_1_x2_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_10_1_x2_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_10_1_x2_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_10_1_x2_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_10_1_x2_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_10_0_x2(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_10_0_x2_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_10_0_x2_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_10_0_x2_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_10_0_x2_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_10_0_x2_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_10_0_x2_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_10_0_x2_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_10_0_x2_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_9_1_x2(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_9_1_x2_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_9_1_x2_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_9_1_x2_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_9_1_x2_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_9_1_x2_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_9_1_x2_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_9_1_x2_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_9_1_x2_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_9_0_x2(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_9_0_x2_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_9_0_x2_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_9_0_x2_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_9_0_x2_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_9_0_x2_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_9_0_x2_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_9_0_x2_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_9_0_x2_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_8_1_x2(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_8_1_x2_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_8_1_x2_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_8_1_x2_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_8_1_x2_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_8_1_x2_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_8_1_x2_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_8_1_x2_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_8_1_x2_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_8_0_x2(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_8_0_x2_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_8_0_x2_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_8_0_x2_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_8_0_x2_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_8_0_x2_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_8_0_x2_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_8_0_x2_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_8_0_x2_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_7_1_x2(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_7_1_x2_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_7_1_x2_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_7_1_x2_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_7_1_x2_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_7_1_x2_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_7_1_x2_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_7_1_x2_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_7_1_x2_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_7_0_x2(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_7_0_x2_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_7_0_x2_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_7_0_x2_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_7_0_x2_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_7_0_x2_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_7_0_x2_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_7_0_x2_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_7_0_x2_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_6_1_x2(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_6_1_x2_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_6_1_x2_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_6_1_x2_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_6_1_x2_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_6_1_x2_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_6_1_x2_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_6_1_x2_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_6_1_x2_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_6_0_x2(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_6_0_x2_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_6_0_x2_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_6_0_x2_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_6_0_x2_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_6_0_x2_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_6_0_x2_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_6_0_x2_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_6_0_x2_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_5_1_x2(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_5_1_x2_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_5_1_x2_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_5_1_x2_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_5_1_x2_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_5_1_x2_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_5_1_x2_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_5_1_x2_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_5_1_x2_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_5_0_x2(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_5_0_x2_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_5_0_x2_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_5_0_x2_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_5_0_x2_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_5_0_x2_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_5_0_x2_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_5_0_x2_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_5_0_x2_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_4_1_x2(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_4_1_x2_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_4_1_x2_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_4_1_x2_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_4_1_x2_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_4_1_x2_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_4_1_x2_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_4_1_x2_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_4_1_x2_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_4_0_x2(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_4_0_x2_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_4_0_x2_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_4_0_x2_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_4_0_x2_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_4_0_x2_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_4_0_x2_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_4_0_x2_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_4_0_x2_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_3_1_x2(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_3_1_x2_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_3_1_x2_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_3_1_x2_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_3_1_x2_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_3_1_x2_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_3_1_x2_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_3_1_x2_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_3_1_x2_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_3_0_x2(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_3_0_x2_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_3_0_x2_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_3_0_x2_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_3_0_x2_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_3_0_x2_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_3_0_x2_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_3_0_x2_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_3_0_x2_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_2_1_x2(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_2_1_x2_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_2_1_x2_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_2_1_x2_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_2_1_x2_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_2_1_x2_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_2_1_x2_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_2_1_x2_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_2_1_x2_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_2_0_x2(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_2_0_x2_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_2_0_x2_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_2_0_x2_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_2_0_x2_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_2_0_x2_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_2_0_x2_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_2_0_x2_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_2_0_x2_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_1_1_x2(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_1_1_x2_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_1_1_x2_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_1_1_x2_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_1_1_x2_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_1_1_x2_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_1_1_x2_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_1_1_x2_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_1_1_x2_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_1_0_x2(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_1_0_x2_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_1_0_x2_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_1_0_x2_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_1_0_x2_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_1_0_x2_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_1_0_x2_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_1_0_x2_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_1_0_x2_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_0_1_x2(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_0_1_x2_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_0_1_x2_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_0_1_x2_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_0_1_x2_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_0_1_x2_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_0_1_x2_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_0_1_x2_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_0_1_x2_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */
/* Module Definition */
void PE_wrapper_0_0_x2(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<float> &fifo_C_drain_out) {
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    float local_A[1][8];
    float local_B[1][8];
    float local_C[16][64];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    {
        // array
        // pe
        // latency
PE_wrapper_0_0_x2_loop_1:         for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
            // latency
PE_wrapper_0_0_x2_loop_2:             for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                // simd
                // hls_unroll
                local_C[c7][c6] = 0;
            }
        }
        // array
        // pe
PE_wrapper_0_0_x2_loop_3:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
PE_wrapper_0_0_x2_loop_4:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
PE_wrapper_0_0_x2_loop_5:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    {
                        {
                            A_t8 fifo_data;
                            fifo_data = fifo_A_in.read();
PE_wrapper_0_0_x2_loop_6:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_A[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        {
                            B_t8 fifo_data;
                            fifo_data = fifo_B_in.read();
PE_wrapper_0_0_x2_loop_7:                             for (ap_uint<4> n = 0; n < 8; n++) {
                                union {
                                    unsigned int ui;
                                    float ut;
                                } u;
                                u.ui = (unsigned int)fifo_data(31, 0);
                                local_B[0][n] = u.ut;
                                fifo_data = fifo_data >> 32;
                            }
                        }
                        // simd
PE_wrapper_0_0_x2_loop_8:                         for (ap_uint<4> c8 = 0; c8 <= 7; c8 += 1) {
                            local_C[c7][c6] = (local_C[c7][c6] + (local_A[0][c8] * local_B[0][c8]));
                        }
                        if (c5 == 31)
                            fifo_C_drain_out.write(local_C[c7][c6]);
                        {
                            B_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_B[0][7];
                            u6.ut = local_B[0][6];
                            u5.ut = local_B[0][5];
                            u4.ut = local_B[0][4];
                            u3.ut = local_B[0][3];
                            u2.ut = local_B[0][2];
                            u1.ut = local_B[0][1];
                            u0.ut = local_B[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_B_out.write(fifo_data);
                        }
                        {
                            A_t8 fifo_data;
                            union {
                                unsigned int ui;
                                float ut;
                            } u7, u6, u5, u4, u3, u2, u1, u0;
                            u7.ut = local_A[0][7];
                            u6.ut = local_A[0][6];
                            u5.ut = local_A[0][5];
                            u4.ut = local_A[0][4];
                            u3.ut = local_A[0][3];
                            u2.ut = local_A[0][2];
                            u1.ut = local_A[0][1];
                            u0.ut = local_A[0][0];
                            fifo_data = (ap_uint<32>(u7.ui), ap_uint<32>(u6.ui), ap_uint<32>(u5.ui), ap_uint<32>(u4.ui), ap_uint<32>(u3.ui), ap_uint<32>(u2.ui), ap_uint<32>(u1.ui), ap_uint<32>(u0.ui));
                            fifo_A_out.write(fifo_data);
                        }
                    }
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_PE_dummy_0_x2(int idx, int idy, hls::stream<A_t8> &fifo_A_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
A_PE_dummy_0_x2_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
A_PE_dummy_0_x2_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
A_PE_dummy_0_x2_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    A_t8 fifo_data;
                    fifo_data = fifo_A_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_PE_dummy_1_x2(int idx, int idy, hls::stream<A_t8> &fifo_A_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
A_PE_dummy_1_x2_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
A_PE_dummy_1_x2_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
A_PE_dummy_1_x2_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    A_t8 fifo_data;
                    fifo_data = fifo_A_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_PE_dummy_2_x2(int idx, int idy, hls::stream<A_t8> &fifo_A_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
A_PE_dummy_2_x2_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
A_PE_dummy_2_x2_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
A_PE_dummy_2_x2_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    A_t8 fifo_data;
                    fifo_data = fifo_A_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_PE_dummy_3_x2(int idx, int idy, hls::stream<A_t8> &fifo_A_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
A_PE_dummy_3_x2_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
A_PE_dummy_3_x2_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
A_PE_dummy_3_x2_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    A_t8 fifo_data;
                    fifo_data = fifo_A_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_PE_dummy_4_x2(int idx, int idy, hls::stream<A_t8> &fifo_A_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
A_PE_dummy_4_x2_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
A_PE_dummy_4_x2_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
A_PE_dummy_4_x2_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    A_t8 fifo_data;
                    fifo_data = fifo_A_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_PE_dummy_5_x2(int idx, int idy, hls::stream<A_t8> &fifo_A_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
A_PE_dummy_5_x2_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
A_PE_dummy_5_x2_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
A_PE_dummy_5_x2_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    A_t8 fifo_data;
                    fifo_data = fifo_A_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_PE_dummy_6_x2(int idx, int idy, hls::stream<A_t8> &fifo_A_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
A_PE_dummy_6_x2_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
A_PE_dummy_6_x2_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
A_PE_dummy_6_x2_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    A_t8 fifo_data;
                    fifo_data = fifo_A_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_PE_dummy_7_x2(int idx, int idy, hls::stream<A_t8> &fifo_A_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
A_PE_dummy_7_x2_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
A_PE_dummy_7_x2_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
A_PE_dummy_7_x2_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    A_t8 fifo_data;
                    fifo_data = fifo_A_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_PE_dummy_8_x2(int idx, int idy, hls::stream<A_t8> &fifo_A_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
A_PE_dummy_8_x2_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
A_PE_dummy_8_x2_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
A_PE_dummy_8_x2_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    A_t8 fifo_data;
                    fifo_data = fifo_A_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_PE_dummy_9_x2(int idx, int idy, hls::stream<A_t8> &fifo_A_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
A_PE_dummy_9_x2_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
A_PE_dummy_9_x2_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
A_PE_dummy_9_x2_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    A_t8 fifo_data;
                    fifo_data = fifo_A_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_PE_dummy_10_x2(int idx, int idy, hls::stream<A_t8> &fifo_A_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
A_PE_dummy_10_x2_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
A_PE_dummy_10_x2_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
A_PE_dummy_10_x2_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    A_t8 fifo_data;
                    fifo_data = fifo_A_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_PE_dummy_11_x2(int idx, int idy, hls::stream<A_t8> &fifo_A_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
A_PE_dummy_11_x2_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
A_PE_dummy_11_x2_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
A_PE_dummy_11_x2_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    A_t8 fifo_data;
                    fifo_data = fifo_A_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void A_PE_dummy_12_x2(int idx, int idy, hls::stream<A_t8> &fifo_A_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
A_PE_dummy_12_x2_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
A_PE_dummy_12_x2_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
A_PE_dummy_12_x2_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    A_t8 fifo_data;
                    fifo_data = fifo_A_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void B_PE_dummy_0_x2(int idx, int idy, hls::stream<B_t8> &fifo_B_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
B_PE_dummy_0_x2_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
B_PE_dummy_0_x2_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
B_PE_dummy_0_x2_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    B_t8 fifo_data;
                    fifo_data = fifo_B_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void B_PE_dummy_1_x2(int idx, int idy, hls::stream<B_t8> &fifo_B_in) {
    int p0 = idx, p1 = idy; // module id

    {
        // array
        {}
        // array
        // pe
B_PE_dummy_1_x2_loop_1:         for (ap_uint<6> c5 = 0; c5 <= 31; c5 += 1) {
            // latency
B_PE_dummy_1_x2_loop_2:             for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
                // latency
B_PE_dummy_1_x2_loop_3:                 for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
                    B_t8 fifo_data;
                    fifo_data = fifo_B_in.read();
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_0_x2(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_0_x2_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_0_x2_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_0_x2_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_0_x2_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_0_x2_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_0_x2_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_1_x2(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_1_x2_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_1_x2_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_1_x2_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_1_x2_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_1_x2_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_1_x2_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_2_x2(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_2_x2_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_2_x2_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_2_x2_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_2_x2_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_2_x2_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_2_x2_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_3_x2(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_3_x2_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_3_x2_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_3_x2_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_3_x2_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_3_x2_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_3_x2_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_4_x2(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_4_x2_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_4_x2_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_4_x2_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_4_x2_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_4_x2_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_4_x2_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_5_x2(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_5_x2_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_5_x2_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_5_x2_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_5_x2_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_5_x2_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_5_x2_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_6_x2(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_6_x2_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_6_x2_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_6_x2_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_6_x2_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_6_x2_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_6_x2_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_7_x2(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_7_x2_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_7_x2_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_7_x2_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_7_x2_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_7_x2_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_7_x2_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_8_x2(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_8_x2_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_8_x2_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_8_x2_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_8_x2_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_8_x2_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_8_x2_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_9_x2(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_9_x2_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_9_x2_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_9_x2_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_9_x2_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_9_x2_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_9_x2_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_10_x2(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_10_x2_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_10_x2_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_10_x2_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_10_x2_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_10_x2_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_10_x2_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_11_x2(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_11_x2_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_11_x2_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_11_x2_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_11_x2_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_11_x2_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_11_x2_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_12_x2(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_12_x2_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_12_x2_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_12_x2_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_12_x2_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_12_x2_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_12_x2_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_13_x2(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_13_x2_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_13_x2_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_13_x2_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_13_x2_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_13_x2_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_13_x2_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_14_x2(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_14_x2_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_14_x2_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_14_x2_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_14_x2_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_14_x2_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_14_x2_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_15_x2(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_15_x2_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_15_x2_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_15_x2_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_15_x2_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_15_x2_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_15_x2_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_16_x2(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_16_x2_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_16_x2_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_16_x2_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_16_x2_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_16_x2_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_16_x2_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_17_x2(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_17_x2_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_17_x2_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_17_x2_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_17_x2_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_17_x2_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_17_x2_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_18_x2(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_18_x2_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_18_x2_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_18_x2_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_18_x2_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_18_x2_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_18_x2_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_19_x2(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_19_x2_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_19_x2_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_19_x2_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_19_x2_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_19_x2_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_19_x2_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_20_x2(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_20_x2_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_20_x2_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_20_x2_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_20_x2_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_20_x2_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_20_x2_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_21_x2(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_21_x2_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_21_x2_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_21_x2_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_21_x2_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_21_x2_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_21_x2_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_22_x2(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_22_x2_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_22_x2_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_22_x2_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_22_x2_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_22_x2_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_22_x2_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_23_x2(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_23_x2_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_23_x2_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_23_x2_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
C_drain_IO_L1_out_23_x2_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 13
        // io_L1
C_drain_IO_L1_out_23_x2_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_23_x2_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                if (c4 == p1) {
                    fifo_data = local_C[c5][c6];
                } else {
                    fifo_data = fifo_C_drain_in.read();
                }
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_boundary_0_x2(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    /* Variable Declaration */
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_boundary_0_x2_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_boundary_0_x2_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_boundary_0_x2_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
    /* Variable Declaration */

C_drain_IO_L1_out_boundary_0_x2_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 1 max = 1
        // io_L1
C_drain_IO_L1_out_boundary_0_x2_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_boundary_0_x2_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                fifo_data = local_C[c5][c6];
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L1_out_boundary_1_x2(int idx, int idy, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<float> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx, p1 = idy; // module id
    C_t2 local_C[16][32];
#pragma HLS BIND_STORAGE variable = local_C type = RAM_2P impl = BRAM
    /* Variable Declaration */

    /* Variable Declaration */
    ap_uint<32> buf_data_split[2];
    /* Variable Declaration */

    // io_L1
    // pe
    // latency
C_drain_IO_L1_out_boundary_1_x2_loop_1:     for (ap_uint<7> c6 = 0; c6 <= 63; c6 += 1) {
        // latency
C_drain_IO_L1_out_boundary_1_x2_loop_2:         for (ap_uint<5> c7 = 0; c7 <= 15; c7 += 1) {
            // simd
            float fifo_data;
            C_t2 buf_data;
            buf_data = local_C[c7][c6 / 2];
C_drain_IO_L1_out_boundary_1_x2_loop_3:             for (ap_uint<2> n = 0; n < 2; n++) {
                buf_data_split[n] = buf_data(31, 0);
                buf_data = buf_data >> 32;
            }
            int split_i = (c6) % 2;
            fifo_data = fifo_C_drain_local_in.read();
            union {
                unsigned int ui;
                float ut;
            } u;
            u.ut = fifo_data;
            buf_data_split[split_i] = ap_uint<32>(u.ui);
            buf_data = (buf_data_split[1], buf_data_split[0]);
            local_C[c7][c6 / 2] = buf_data;
        }
    }
    /* Variable Declaration */

C_drain_IO_L1_out_boundary_1_x2_loop_4:     for (ap_uint<5> c4 = p1; c4 <= 12; c4 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 1 max = 1
        // io_L1
C_drain_IO_L1_out_boundary_1_x2_loop_5:         for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
            // access_coalesce
C_drain_IO_L1_out_boundary_1_x2_loop_6:             for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                C_t2 fifo_data;
                fifo_data = local_C[c5][c6];
                fifo_C_drain_out.write(fifo_data);
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L2_out_x2(int idx, hls::stream<C_t2> &fifo_C_drain_in, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<C_t2> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    /* Variable Declaration */

    // array
    // io_L3
C_drain_IO_L2_out_x2_loop_1:     for (ap_uint<2> c3 = p0; c3 <= 1; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 2 max = 2
        // io_L2
C_drain_IO_L2_out_x2_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 12; c4 += 1) {
            // io_L1
            // pe
C_drain_IO_L2_out_x2_loop_3:             for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
                // access_coalesce
C_drain_IO_L2_out_x2_loop_4:                 for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                    C_t2 fifo_data;
                    if (c3 == p0) {
                        fifo_data = fifo_C_drain_local_in.read();
                    } else {
                        fifo_data = fifo_C_drain_in.read();
                    }
                    fifo_C_drain_out.write(fifo_data);
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L2_out_boundary_x2(int idx, hls::stream<C_t2> &fifo_C_drain_out, hls::stream<C_t2> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    int p0 = idx; // module id
    /* Variable Declaration */

    // array
    // io_L3
C_drain_IO_L2_out_boundary_x2_loop_1:     for (ap_uint<2> c3 = p0; c3 <= 1; c3 += 1) {
#pragma HLS LOOP_TRIPCOUNT min = 1 max = 1
        // io_L2
C_drain_IO_L2_out_boundary_x2_loop_2:         for (ap_uint<5> c4 = 0; c4 <= 12; c4 += 1) {
            // io_L1
            // pe
C_drain_IO_L2_out_boundary_x2_loop_3:             for (ap_uint<5> c5 = 0; c5 <= 15; c5 += 1) {
                // access_coalesce
C_drain_IO_L2_out_boundary_x2_loop_4:                 for (ap_uint<6> c6 = 0; c6 <= 31; c6 += 1) {
                    C_t2 fifo_data;
                    fifo_data = fifo_C_drain_local_in.read();
                    fifo_C_drain_out.write(fifo_data);
                }
            }
        }
    }
}
/* Module Definition */

/* Module Definition */
void C_drain_IO_L3_out_x2(C_t16 *C, hls::stream<C_t2> &fifo_C_drain_local_in) {
#pragma HLS INLINE OFF
    /* Variable Declaration */
    /* Variable Declaration */

C_drain_IO_L3_out_x2_loop_1:     for (ap_uint<12> i = 0; i < 2048; i++) {
        C_t16 mem_data;
        C_t2 fifo_data;
        C_t2 mem_data_split[8];
C_drain_IO_L3_out_x2_loop_2:         for (ap_uint<4> p = 0; p < 8; p++) {
            fifo_data = fifo_C_drain_local_in.read();
            mem_data_split[p] = fifo_data;
        }
        mem_data = (mem_data_split[7], mem_data_split[6], mem_data_split[5], mem_data_split[4], mem_data_split[3], mem_data_split[2], mem_data_split[1], mem_data_split[0]);
        C[i] = mem_data;
    }
}
/* Module Definition */

void kernel3_x2(A_t16 *A, B_t16 *B, C_t16 *C) {
#pragma HLS inline off
#pragma HLS DATAFLOW disable_start_propagation

    /* FIFO Declaration */
    /* A_IO_L2_in fifo */ hls::stream<A_t8> fifo_A_A_IO_L2_in_0_x2;
#pragma HLS STREAM variable = fifo_A_A_IO_L2_in_0_x2 depth = 2
    /* A_IO_L2_in fifo */ hls::stream<A_t8> fifo_A_A_IO_L2_in_1_x2;
#pragma HLS STREAM variable = fifo_A_A_IO_L2_in_1_x2 depth = 2
    /* A_IO_L2_in fifo */ hls::stream<A_t8> fifo_A_A_IO_L2_in_2_x2;
#pragma HLS STREAM variable = fifo_A_A_IO_L2_in_2_x2 depth = 2
    /* A_IO_L2_in fifo */ hls::stream<A_t8> fifo_A_A_IO_L2_in_3_x2;
#pragma HLS STREAM variable = fifo_A_A_IO_L2_in_3_x2 depth = 2
    /* A_IO_L2_in fifo */ hls::stream<A_t8> fifo_A_A_IO_L2_in_4_x2;
#pragma HLS STREAM variable = fifo_A_A_IO_L2_in_4_x2 depth = 2
    /* A_IO_L2_in fifo */ hls::stream<A_t8> fifo_A_A_IO_L2_in_5_x2;
#pragma HLS STREAM variable = fifo_A_A_IO_L2_in_5_x2 depth = 2
    /* A_IO_L2_in fifo */ hls::stream<A_t8> fifo_A_A_IO_L2_in_6_x2;
#pragma HLS STREAM variable = fifo_A_A_IO_L2_in_6_x2 depth = 2
    /* A_IO_L2_in fifo */ hls::stream<A_t8> fifo_A_A_IO_L2_in_7_x2;
#pragma HLS STREAM variable = fifo_A_A_IO_L2_in_7_x2 depth = 2
    /* A_IO_L2_in fifo */ hls::stream<A_t8> fifo_A_A_IO_L2_in_8_x2;
#pragma HLS STREAM variable = fifo_A_A_IO_L2_in_8_x2 depth = 2
    /* A_IO_L2_in fifo */ hls::stream<A_t8> fifo_A_A_IO_L2_in_9_x2;
#pragma HLS STREAM variable = fifo_A_A_IO_L2_in_9_x2 depth = 2
    /* A_IO_L2_in fifo */ hls::stream<A_t8> fifo_A_A_IO_L2_in_10_x2;
#pragma HLS STREAM variable = fifo_A_A_IO_L2_in_10_x2 depth = 2
    /* A_IO_L2_in fifo */ hls::stream<A_t8> fifo_A_A_IO_L2_in_11_x2;
#pragma HLS STREAM variable = fifo_A_A_IO_L2_in_11_x2 depth = 2
    /* A_IO_L2_in fifo */ hls::stream<A_t8> fifo_A_A_IO_L2_in_12_x2;
#pragma HLS STREAM variable = fifo_A_A_IO_L2_in_12_x2 depth = 2
    /* B_IO_L2_in fifo */ hls::stream<B_t8> fifo_B_B_IO_L2_in_0_x2;
#pragma HLS STREAM variable = fifo_B_B_IO_L2_in_0_x2 depth = 2
    /* B_IO_L2_in fifo */ hls::stream<B_t8> fifo_B_B_IO_L2_in_1_x2;
#pragma HLS STREAM variable = fifo_B_B_IO_L2_in_1_x2 depth = 2
    /* B_IO_L2_in fifo */ hls::stream<B_t8> fifo_B_B_IO_L2_in_2_x2;
#pragma HLS STREAM variable = fifo_B_B_IO_L2_in_2_x2 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_0_0_x2;
#pragma HLS STREAM variable = fifo_A_PE_0_0_x2 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_0_1_x2;
#pragma HLS STREAM variable = fifo_A_PE_0_1_x2 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_0_2_x2;
#pragma HLS STREAM variable = fifo_A_PE_0_2_x2 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_1_0_x2;
#pragma HLS STREAM variable = fifo_A_PE_1_0_x2 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_1_1_x2;
#pragma HLS STREAM variable = fifo_A_PE_1_1_x2 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_1_2_x2;
#pragma HLS STREAM variable = fifo_A_PE_1_2_x2 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_2_0_x2;
#pragma HLS STREAM variable = fifo_A_PE_2_0_x2 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_2_1_x2;
#pragma HLS STREAM variable = fifo_A_PE_2_1_x2 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_2_2_x2;
#pragma HLS STREAM variable = fifo_A_PE_2_2_x2 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_3_0_x2;
#pragma HLS STREAM variable = fifo_A_PE_3_0_x2 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_3_1_x2;
#pragma HLS STREAM variable = fifo_A_PE_3_1_x2 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_3_2_x2;
#pragma HLS STREAM variable = fifo_A_PE_3_2_x2 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_4_0_x2;
#pragma HLS STREAM variable = fifo_A_PE_4_0_x2 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_4_1_x2;
#pragma HLS STREAM variable = fifo_A_PE_4_1_x2 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_4_2_x2;
#pragma HLS STREAM variable = fifo_A_PE_4_2_x2 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_5_0_x2;
#pragma HLS STREAM variable = fifo_A_PE_5_0_x2 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_5_1_x2;
#pragma HLS STREAM variable = fifo_A_PE_5_1_x2 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_5_2_x2;
#pragma HLS STREAM variable = fifo_A_PE_5_2_x2 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_6_0_x2;
#pragma HLS STREAM variable = fifo_A_PE_6_0_x2 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_6_1_x2;
#pragma HLS STREAM variable = fifo_A_PE_6_1_x2 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_6_2_x2;
#pragma HLS STREAM variable = fifo_A_PE_6_2_x2 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_7_0_x2;
#pragma HLS STREAM variable = fifo_A_PE_7_0_x2 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_7_1_x2;
#pragma HLS STREAM variable = fifo_A_PE_7_1_x2 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_7_2_x2;
#pragma HLS STREAM variable = fifo_A_PE_7_2_x2 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_8_0_x2;
#pragma HLS STREAM variable = fifo_A_PE_8_0_x2 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_8_1_x2;
#pragma HLS STREAM variable = fifo_A_PE_8_1_x2 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_8_2_x2;
#pragma HLS STREAM variable = fifo_A_PE_8_2_x2 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_9_0_x2;
#pragma HLS STREAM variable = fifo_A_PE_9_0_x2 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_9_1_x2;
#pragma HLS STREAM variable = fifo_A_PE_9_1_x2 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_9_2_x2;
#pragma HLS STREAM variable = fifo_A_PE_9_2_x2 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_10_0_x2;
#pragma HLS STREAM variable = fifo_A_PE_10_0_x2 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_10_1_x2;
#pragma HLS STREAM variable = fifo_A_PE_10_1_x2 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_10_2_x2;
#pragma HLS STREAM variable = fifo_A_PE_10_2_x2 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_11_0_x2;
#pragma HLS STREAM variable = fifo_A_PE_11_0_x2 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_11_1_x2;
#pragma HLS STREAM variable = fifo_A_PE_11_1_x2 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_11_2_x2;
#pragma HLS STREAM variable = fifo_A_PE_11_2_x2 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_12_0_x2;
#pragma HLS STREAM variable = fifo_A_PE_12_0_x2 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_12_1_x2;
#pragma HLS STREAM variable = fifo_A_PE_12_1_x2 depth = 2
    /* PE fifo */ hls::stream<A_t8> fifo_A_PE_12_2_x2;
#pragma HLS STREAM variable = fifo_A_PE_12_2_x2 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_0_0_x2;
#pragma HLS STREAM variable = fifo_B_PE_0_0_x2 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_1_0_x2;
#pragma HLS STREAM variable = fifo_B_PE_1_0_x2 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_2_0_x2;
#pragma HLS STREAM variable = fifo_B_PE_2_0_x2 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_3_0_x2;
#pragma HLS STREAM variable = fifo_B_PE_3_0_x2 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_4_0_x2;
#pragma HLS STREAM variable = fifo_B_PE_4_0_x2 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_5_0_x2;
#pragma HLS STREAM variable = fifo_B_PE_5_0_x2 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_6_0_x2;
#pragma HLS STREAM variable = fifo_B_PE_6_0_x2 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_7_0_x2;
#pragma HLS STREAM variable = fifo_B_PE_7_0_x2 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_8_0_x2;
#pragma HLS STREAM variable = fifo_B_PE_8_0_x2 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_9_0_x2;
#pragma HLS STREAM variable = fifo_B_PE_9_0_x2 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_10_0_x2;
#pragma HLS STREAM variable = fifo_B_PE_10_0_x2 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_11_0_x2;
#pragma HLS STREAM variable = fifo_B_PE_11_0_x2 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_12_0_x2;
#pragma HLS STREAM variable = fifo_B_PE_12_0_x2 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_13_0_x2;
#pragma HLS STREAM variable = fifo_B_PE_13_0_x2 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_0_1_x2;
#pragma HLS STREAM variable = fifo_B_PE_0_1_x2 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_1_1_x2;
#pragma HLS STREAM variable = fifo_B_PE_1_1_x2 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_2_1_x2;
#pragma HLS STREAM variable = fifo_B_PE_2_1_x2 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_3_1_x2;
#pragma HLS STREAM variable = fifo_B_PE_3_1_x2 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_4_1_x2;
#pragma HLS STREAM variable = fifo_B_PE_4_1_x2 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_5_1_x2;
#pragma HLS STREAM variable = fifo_B_PE_5_1_x2 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_6_1_x2;
#pragma HLS STREAM variable = fifo_B_PE_6_1_x2 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_7_1_x2;
#pragma HLS STREAM variable = fifo_B_PE_7_1_x2 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_8_1_x2;
#pragma HLS STREAM variable = fifo_B_PE_8_1_x2 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_9_1_x2;
#pragma HLS STREAM variable = fifo_B_PE_9_1_x2 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_10_1_x2;
#pragma HLS STREAM variable = fifo_B_PE_10_1_x2 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_11_1_x2;
#pragma HLS STREAM variable = fifo_B_PE_11_1_x2 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_12_1_x2;
#pragma HLS STREAM variable = fifo_B_PE_12_1_x2 depth = 2
    /* PE fifo */ hls::stream<B_t8> fifo_B_PE_13_1_x2;
#pragma HLS STREAM variable = fifo_B_PE_13_1_x2 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_0_0_x2;
#pragma HLS STREAM variable = fifo_C_drain_PE_0_0_x2 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_1_0_x2;
#pragma HLS STREAM variable = fifo_C_drain_PE_1_0_x2 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_2_0_x2;
#pragma HLS STREAM variable = fifo_C_drain_PE_2_0_x2 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_3_0_x2;
#pragma HLS STREAM variable = fifo_C_drain_PE_3_0_x2 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_4_0_x2;
#pragma HLS STREAM variable = fifo_C_drain_PE_4_0_x2 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_5_0_x2;
#pragma HLS STREAM variable = fifo_C_drain_PE_5_0_x2 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_6_0_x2;
#pragma HLS STREAM variable = fifo_C_drain_PE_6_0_x2 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_7_0_x2;
#pragma HLS STREAM variable = fifo_C_drain_PE_7_0_x2 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_8_0_x2;
#pragma HLS STREAM variable = fifo_C_drain_PE_8_0_x2 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_9_0_x2;
#pragma HLS STREAM variable = fifo_C_drain_PE_9_0_x2 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_10_0_x2;
#pragma HLS STREAM variable = fifo_C_drain_PE_10_0_x2 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_11_0_x2;
#pragma HLS STREAM variable = fifo_C_drain_PE_11_0_x2 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_12_0_x2;
#pragma HLS STREAM variable = fifo_C_drain_PE_12_0_x2 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_0_1_x2;
#pragma HLS STREAM variable = fifo_C_drain_PE_0_1_x2 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_1_1_x2;
#pragma HLS STREAM variable = fifo_C_drain_PE_1_1_x2 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_2_1_x2;
#pragma HLS STREAM variable = fifo_C_drain_PE_2_1_x2 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_3_1_x2;
#pragma HLS STREAM variable = fifo_C_drain_PE_3_1_x2 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_4_1_x2;
#pragma HLS STREAM variable = fifo_C_drain_PE_4_1_x2 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_5_1_x2;
#pragma HLS STREAM variable = fifo_C_drain_PE_5_1_x2 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_6_1_x2;
#pragma HLS STREAM variable = fifo_C_drain_PE_6_1_x2 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_7_1_x2;
#pragma HLS STREAM variable = fifo_C_drain_PE_7_1_x2 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_8_1_x2;
#pragma HLS STREAM variable = fifo_C_drain_PE_8_1_x2 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_9_1_x2;
#pragma HLS STREAM variable = fifo_C_drain_PE_9_1_x2 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_10_1_x2;
#pragma HLS STREAM variable = fifo_C_drain_PE_10_1_x2 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_11_1_x2;
#pragma HLS STREAM variable = fifo_C_drain_PE_11_1_x2 depth = 2
    /* PE fifo */ hls::stream<float> fifo_C_drain_PE_12_1_x2;
#pragma HLS STREAM variable = fifo_C_drain_PE_12_1_x2 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_0_0_x2;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_0_0_x2 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_0_1_x2;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_0_1_x2 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_0_2_x2;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_0_2_x2 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_0_3_x2;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_0_3_x2 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_0_4_x2;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_0_4_x2 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_0_5_x2;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_0_5_x2 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_0_6_x2;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_0_6_x2 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_0_7_x2;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_0_7_x2 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_0_8_x2;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_0_8_x2 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_0_9_x2;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_0_9_x2 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_0_10_x2;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_0_10_x2 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_0_11_x2;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_0_11_x2 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_0_12_x2;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_0_12_x2 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_0_13_x2;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_0_13_x2 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_1_0_x2;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_1_0_x2 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_1_1_x2;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_1_1_x2 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_1_2_x2;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_1_2_x2 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_1_3_x2;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_1_3_x2 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_1_4_x2;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_1_4_x2 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_1_5_x2;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_1_5_x2 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_1_6_x2;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_1_6_x2 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_1_7_x2;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_1_7_x2 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_1_8_x2;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_1_8_x2 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_1_9_x2;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_1_9_x2 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_1_10_x2;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_1_10_x2 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_1_11_x2;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_1_11_x2 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_1_12_x2;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_1_12_x2 depth = 2
    /* C_drain_IO_L1_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L1_out_1_13_x2;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L1_out_1_13_x2 depth = 2
    /* C_drain_IO_L2_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L2_out_0_x2;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L2_out_0_x2 depth = 2
    /* C_drain_IO_L2_out fifo */ hls::stream<C_t2> fifo_C_drain_C_drain_IO_L2_out_1_x2;
#pragma HLS STREAM variable = fifo_C_drain_C_drain_IO_L2_out_1_x2 depth = 2
    /* FIFO Declaration */

    /* Module Call */
    A_IO_L3_in_x2(

        /* array */ A,
        /* fifo */ fifo_A_A_IO_L2_in_0_x2);
    /* Module Call */

    /* Module Call */
    A_IO_L2_in_0_x2(

        /* module id */ 0,
        /* fifo */ fifo_A_A_IO_L2_in_0_x2,
        /* fifo */ fifo_A_A_IO_L2_in_1_x2,
        /* fifo */ fifo_A_PE_0_0_x2);
    /* Module Call */

    /* Module Call */
    A_IO_L2_in_1_x2(

        /* module id */ 1,
        /* fifo */ fifo_A_A_IO_L2_in_1_x2,
        /* fifo */ fifo_A_A_IO_L2_in_2_x2,
        /* fifo */ fifo_A_PE_1_0_x2);
    /* Module Call */

    /* Module Call */
    A_IO_L2_in_2_x2(

        /* module id */ 2,
        /* fifo */ fifo_A_A_IO_L2_in_2_x2,
        /* fifo */ fifo_A_A_IO_L2_in_3_x2,
        /* fifo */ fifo_A_PE_2_0_x2);
    /* Module Call */

    /* Module Call */
    A_IO_L2_in_3_x2(

        /* module id */ 3,
        /* fifo */ fifo_A_A_IO_L2_in_3_x2,
        /* fifo */ fifo_A_A_IO_L2_in_4_x2,
        /* fifo */ fifo_A_PE_3_0_x2);
    /* Module Call */

    /* Module Call */
    A_IO_L2_in_4_x2(

        /* module id */ 4,
        /* fifo */ fifo_A_A_IO_L2_in_4_x2,
        /* fifo */ fifo_A_A_IO_L2_in_5_x2,
        /* fifo */ fifo_A_PE_4_0_x2);
    /* Module Call */

    /* Module Call */
    A_IO_L2_in_5_x2(

        /* module id */ 5,
        /* fifo */ fifo_A_A_IO_L2_in_5_x2,
        /* fifo */ fifo_A_A_IO_L2_in_6_x2,
        /* fifo */ fifo_A_PE_5_0_x2);
    /* Module Call */

    /* Module Call */
    A_IO_L2_in_6_x2(

        /* module id */ 6,
        /* fifo */ fifo_A_A_IO_L2_in_6_x2,
        /* fifo */ fifo_A_A_IO_L2_in_7_x2,
        /* fifo */ fifo_A_PE_6_0_x2);
    /* Module Call */

    /* Module Call */
    A_IO_L2_in_7_x2(

        /* module id */ 7,
        /* fifo */ fifo_A_A_IO_L2_in_7_x2,
        /* fifo */ fifo_A_A_IO_L2_in_8_x2,
        /* fifo */ fifo_A_PE_7_0_x2);
    /* Module Call */

    /* Module Call */
    A_IO_L2_in_8_x2(

        /* module id */ 8,
        /* fifo */ fifo_A_A_IO_L2_in_8_x2,
        /* fifo */ fifo_A_A_IO_L2_in_9_x2,
        /* fifo */ fifo_A_PE_8_0_x2);
    /* Module Call */

    /* Module Call */
    A_IO_L2_in_9_x2(

        /* module id */ 9,
        /* fifo */ fifo_A_A_IO_L2_in_9_x2,
        /* fifo */ fifo_A_A_IO_L2_in_10_x2,
        /* fifo */ fifo_A_PE_9_0_x2);
    /* Module Call */

    /* Module Call */
    A_IO_L2_in_10_x2(

        /* module id */ 10,
        /* fifo */ fifo_A_A_IO_L2_in_10_x2,
        /* fifo */ fifo_A_A_IO_L2_in_11_x2,
        /* fifo */ fifo_A_PE_10_0_x2);
    /* Module Call */

    /* Module Call */
    A_IO_L2_in_11_x2(

        /* module id */ 11,
        /* fifo */ fifo_A_A_IO_L2_in_11_x2,
        /* fifo */ fifo_A_A_IO_L2_in_12_x2,
        /* fifo */ fifo_A_PE_11_0_x2);
    /* Module Call */

    /* Module Call */
    A_IO_L2_in_boundary_x2(

        /* module id */ 12,
        /* fifo */ fifo_A_A_IO_L2_in_12_x2,
        /* fifo */ fifo_A_PE_12_0_x2);
    /* Module Call */

    /* Module Call */
    B_IO_L3_in_x2(

        /* array */ B,
        /* fifo */ fifo_B_B_IO_L2_in_0_x2);
    /* Module Call */

    /* Module Call */
    B_IO_L2_in_x2(

        /* module id */ 0,
        /* fifo */ fifo_B_B_IO_L2_in_0_x2,
        /* fifo */ fifo_B_B_IO_L2_in_1_x2,
        /* fifo */ fifo_B_PE_0_0_x2);
    /* Module Call */

    /* Module Call */
    B_IO_L2_in_boundary_x2(

        /* module id */ 1,
        /* fifo */ fifo_B_B_IO_L2_in_1_x2,
        /* fifo */ fifo_B_PE_0_1_x2);
    /* Module Call */

    /* Module Call */
    PE_wrapper_0_0_x2(

        /* module id */ 0,
        /* module id */ 0,
        /* fifo */ fifo_A_PE_0_0_x2,
        /* fifo */ fifo_A_PE_0_1_x2,
        /* fifo */ fifo_B_PE_0_0_x2,
        /* fifo */ fifo_B_PE_1_0_x2,
        /* fifo */ fifo_C_drain_PE_0_0_x2);
    /* Module Call */

    /* Module Call */
    PE_wrapper_0_1_x2(

        /* module id */ 0,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_0_1_x2,
        /* fifo */ fifo_A_PE_0_2_x2,
        /* fifo */ fifo_B_PE_0_1_x2,
        /* fifo */ fifo_B_PE_1_1_x2,
        /* fifo */ fifo_C_drain_PE_0_1_x2);
    /* Module Call */

    /* Module Call */
    PE_wrapper_1_0_x2(

        /* module id */ 1,
        /* module id */ 0,
        /* fifo */ fifo_A_PE_1_0_x2,
        /* fifo */ fifo_A_PE_1_1_x2,
        /* fifo */ fifo_B_PE_1_0_x2,
        /* fifo */ fifo_B_PE_2_0_x2,
        /* fifo */ fifo_C_drain_PE_1_0_x2);
    /* Module Call */

    /* Module Call */
    PE_wrapper_1_1_x2(

        /* module id */ 1,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_1_1_x2,
        /* fifo */ fifo_A_PE_1_2_x2,
        /* fifo */ fifo_B_PE_1_1_x2,
        /* fifo */ fifo_B_PE_2_1_x2,
        /* fifo */ fifo_C_drain_PE_1_1_x2);
    /* Module Call */

    /* Module Call */
    PE_wrapper_2_0_x2(

        /* module id */ 2,
        /* module id */ 0,
        /* fifo */ fifo_A_PE_2_0_x2,
        /* fifo */ fifo_A_PE_2_1_x2,
        /* fifo */ fifo_B_PE_2_0_x2,
        /* fifo */ fifo_B_PE_3_0_x2,
        /* fifo */ fifo_C_drain_PE_2_0_x2);
    /* Module Call */

    /* Module Call */
    PE_wrapper_2_1_x2(

        /* module id */ 2,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_2_1_x2,
        /* fifo */ fifo_A_PE_2_2_x2,
        /* fifo */ fifo_B_PE_2_1_x2,
        /* fifo */ fifo_B_PE_3_1_x2,
        /* fifo */ fifo_C_drain_PE_2_1_x2);
    /* Module Call */

    /* Module Call */
    PE_wrapper_3_0_x2(

        /* module id */ 3,
        /* module id */ 0,
        /* fifo */ fifo_A_PE_3_0_x2,
        /* fifo */ fifo_A_PE_3_1_x2,
        /* fifo */ fifo_B_PE_3_0_x2,
        /* fifo */ fifo_B_PE_4_0_x2,
        /* fifo */ fifo_C_drain_PE_3_0_x2);
    /* Module Call */

    /* Module Call */
    PE_wrapper_3_1_x2(

        /* module id */ 3,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_3_1_x2,
        /* fifo */ fifo_A_PE_3_2_x2,
        /* fifo */ fifo_B_PE_3_1_x2,
        /* fifo */ fifo_B_PE_4_1_x2,
        /* fifo */ fifo_C_drain_PE_3_1_x2);
    /* Module Call */

    /* Module Call */
    PE_wrapper_4_0_x2(

        /* module id */ 4,
        /* module id */ 0,
        /* fifo */ fifo_A_PE_4_0_x2,
        /* fifo */ fifo_A_PE_4_1_x2,
        /* fifo */ fifo_B_PE_4_0_x2,
        /* fifo */ fifo_B_PE_5_0_x2,
        /* fifo */ fifo_C_drain_PE_4_0_x2);
    /* Module Call */

    /* Module Call */
    PE_wrapper_4_1_x2(

        /* module id */ 4,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_4_1_x2,
        /* fifo */ fifo_A_PE_4_2_x2,
        /* fifo */ fifo_B_PE_4_1_x2,
        /* fifo */ fifo_B_PE_5_1_x2,
        /* fifo */ fifo_C_drain_PE_4_1_x2);
    /* Module Call */

    /* Module Call */
    PE_wrapper_5_0_x2(

        /* module id */ 5,
        /* module id */ 0,
        /* fifo */ fifo_A_PE_5_0_x2,
        /* fifo */ fifo_A_PE_5_1_x2,
        /* fifo */ fifo_B_PE_5_0_x2,
        /* fifo */ fifo_B_PE_6_0_x2,
        /* fifo */ fifo_C_drain_PE_5_0_x2);
    /* Module Call */

    /* Module Call */
    PE_wrapper_5_1_x2(

        /* module id */ 5,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_5_1_x2,
        /* fifo */ fifo_A_PE_5_2_x2,
        /* fifo */ fifo_B_PE_5_1_x2,
        /* fifo */ fifo_B_PE_6_1_x2,
        /* fifo */ fifo_C_drain_PE_5_1_x2);
    /* Module Call */

    /* Module Call */
    PE_wrapper_6_0_x2(

        /* module id */ 6,
        /* module id */ 0,
        /* fifo */ fifo_A_PE_6_0_x2,
        /* fifo */ fifo_A_PE_6_1_x2,
        /* fifo */ fifo_B_PE_6_0_x2,
        /* fifo */ fifo_B_PE_7_0_x2,
        /* fifo */ fifo_C_drain_PE_6_0_x2);
    /* Module Call */

    /* Module Call */
    PE_wrapper_6_1_x2(

        /* module id */ 6,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_6_1_x2,
        /* fifo */ fifo_A_PE_6_2_x2,
        /* fifo */ fifo_B_PE_6_1_x2,
        /* fifo */ fifo_B_PE_7_1_x2,
        /* fifo */ fifo_C_drain_PE_6_1_x2);
    /* Module Call */

    /* Module Call */
    PE_wrapper_7_0_x2(

        /* module id */ 7,
        /* module id */ 0,
        /* fifo */ fifo_A_PE_7_0_x2,
        /* fifo */ fifo_A_PE_7_1_x2,
        /* fifo */ fifo_B_PE_7_0_x2,
        /* fifo */ fifo_B_PE_8_0_x2,
        /* fifo */ fifo_C_drain_PE_7_0_x2);
    /* Module Call */

    /* Module Call */
    PE_wrapper_7_1_x2(

        /* module id */ 7,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_7_1_x2,
        /* fifo */ fifo_A_PE_7_2_x2,
        /* fifo */ fifo_B_PE_7_1_x2,
        /* fifo */ fifo_B_PE_8_1_x2,
        /* fifo */ fifo_C_drain_PE_7_1_x2);
    /* Module Call */

    /* Module Call */
    PE_wrapper_8_0_x2(

        /* module id */ 8,
        /* module id */ 0,
        /* fifo */ fifo_A_PE_8_0_x2,
        /* fifo */ fifo_A_PE_8_1_x2,
        /* fifo */ fifo_B_PE_8_0_x2,
        /* fifo */ fifo_B_PE_9_0_x2,
        /* fifo */ fifo_C_drain_PE_8_0_x2);
    /* Module Call */

    /* Module Call */
    PE_wrapper_8_1_x2(

        /* module id */ 8,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_8_1_x2,
        /* fifo */ fifo_A_PE_8_2_x2,
        /* fifo */ fifo_B_PE_8_1_x2,
        /* fifo */ fifo_B_PE_9_1_x2,
        /* fifo */ fifo_C_drain_PE_8_1_x2);
    /* Module Call */

    /* Module Call */
    PE_wrapper_9_0_x2(

        /* module id */ 9,
        /* module id */ 0,
        /* fifo */ fifo_A_PE_9_0_x2,
        /* fifo */ fifo_A_PE_9_1_x2,
        /* fifo */ fifo_B_PE_9_0_x2,
        /* fifo */ fifo_B_PE_10_0_x2,
        /* fifo */ fifo_C_drain_PE_9_0_x2);
    /* Module Call */

    /* Module Call */
    PE_wrapper_9_1_x2(

        /* module id */ 9,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_9_1_x2,
        /* fifo */ fifo_A_PE_9_2_x2,
        /* fifo */ fifo_B_PE_9_1_x2,
        /* fifo */ fifo_B_PE_10_1_x2,
        /* fifo */ fifo_C_drain_PE_9_1_x2);
    /* Module Call */

    /* Module Call */
    PE_wrapper_10_0_x2(

        /* module id */ 10,
        /* module id */ 0,
        /* fifo */ fifo_A_PE_10_0_x2,
        /* fifo */ fifo_A_PE_10_1_x2,
        /* fifo */ fifo_B_PE_10_0_x2,
        /* fifo */ fifo_B_PE_11_0_x2,
        /* fifo */ fifo_C_drain_PE_10_0_x2);
    /* Module Call */

    /* Module Call */
    PE_wrapper_10_1_x2(

        /* module id */ 10,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_10_1_x2,
        /* fifo */ fifo_A_PE_10_2_x2,
        /* fifo */ fifo_B_PE_10_1_x2,
        /* fifo */ fifo_B_PE_11_1_x2,
        /* fifo */ fifo_C_drain_PE_10_1_x2);
    /* Module Call */

    /* Module Call */
    PE_wrapper_11_0_x2(

        /* module id */ 11,
        /* module id */ 0,
        /* fifo */ fifo_A_PE_11_0_x2,
        /* fifo */ fifo_A_PE_11_1_x2,
        /* fifo */ fifo_B_PE_11_0_x2,
        /* fifo */ fifo_B_PE_12_0_x2,
        /* fifo */ fifo_C_drain_PE_11_0_x2);
    /* Module Call */

    /* Module Call */
    PE_wrapper_11_1_x2(

        /* module id */ 11,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_11_1_x2,
        /* fifo */ fifo_A_PE_11_2_x2,
        /* fifo */ fifo_B_PE_11_1_x2,
        /* fifo */ fifo_B_PE_12_1_x2,
        /* fifo */ fifo_C_drain_PE_11_1_x2);
    /* Module Call */

    /* Module Call */
    PE_wrapper_12_0_x2(

        /* module id */ 12,
        /* module id */ 0,
        /* fifo */ fifo_A_PE_12_0_x2,
        /* fifo */ fifo_A_PE_12_1_x2,
        /* fifo */ fifo_B_PE_12_0_x2,
        /* fifo */ fifo_B_PE_13_0_x2,
        /* fifo */ fifo_C_drain_PE_12_0_x2);
    /* Module Call */

    /* Module Call */
    PE_wrapper_12_1_x2(

        /* module id */ 12,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_12_1_x2,
        /* fifo */ fifo_A_PE_12_2_x2,
        /* fifo */ fifo_B_PE_12_1_x2,
        /* fifo */ fifo_B_PE_13_1_x2,
        /* fifo */ fifo_C_drain_PE_12_1_x2);
    /* Module Call */

    /* Module Call */
    A_PE_dummy_0_x2(

        /* module id */ 0,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_0_2_x2);
    /* Module Call */

    /* Module Call */
    A_PE_dummy_1_x2(

        /* module id */ 1,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_1_2_x2);
    /* Module Call */

    /* Module Call */
    A_PE_dummy_2_x2(

        /* module id */ 2,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_2_2_x2);
    /* Module Call */

    /* Module Call */
    A_PE_dummy_3_x2(

        /* module id */ 3,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_3_2_x2);
    /* Module Call */

    /* Module Call */
    A_PE_dummy_4_x2(

        /* module id */ 4,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_4_2_x2);
    /* Module Call */

    /* Module Call */
    A_PE_dummy_5_x2(

        /* module id */ 5,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_5_2_x2);
    /* Module Call */

    /* Module Call */
    A_PE_dummy_6_x2(

        /* module id */ 6,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_6_2_x2);
    /* Module Call */

    /* Module Call */
    A_PE_dummy_7_x2(

        /* module id */ 7,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_7_2_x2);
    /* Module Call */

    /* Module Call */
    A_PE_dummy_8_x2(

        /* module id */ 8,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_8_2_x2);
    /* Module Call */

    /* Module Call */
    A_PE_dummy_9_x2(

        /* module id */ 9,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_9_2_x2);
    /* Module Call */

    /* Module Call */
    A_PE_dummy_10_x2(

        /* module id */ 10,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_10_2_x2);
    /* Module Call */

    /* Module Call */
    A_PE_dummy_11_x2(

        /* module id */ 11,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_11_2_x2);
    /* Module Call */

    /* Module Call */
    A_PE_dummy_12_x2(

        /* module id */ 12,
        /* module id */ 1,
        /* fifo */ fifo_A_PE_12_2_x2);
    /* Module Call */

    /* Module Call */
    B_PE_dummy_0_x2(

        /* module id */ 12,
        /* module id */ 0,
        /* fifo */ fifo_B_PE_13_0_x2);
    /* Module Call */

    /* Module Call */
    B_PE_dummy_1_x2(

        /* module id */ 12,
        /* module id */ 1,
        /* fifo */ fifo_B_PE_13_1_x2);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_boundary_0_x2(

        /* module id */ 0,
        /* module id */ 12,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_12_x2,
        /* fifo */ fifo_C_drain_PE_12_0_x2);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_0_x2(

        /* module id */ 0,
        /* module id */ 11,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_12_x2,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_11_x2,
        /* fifo */ fifo_C_drain_PE_11_0_x2);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_1_x2(

        /* module id */ 0,
        /* module id */ 10,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_11_x2,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_10_x2,
        /* fifo */ fifo_C_drain_PE_10_0_x2);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_2_x2(

        /* module id */ 0,
        /* module id */ 9,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_10_x2,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_9_x2,
        /* fifo */ fifo_C_drain_PE_9_0_x2);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_3_x2(

        /* module id */ 0,
        /* module id */ 8,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_9_x2,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_8_x2,
        /* fifo */ fifo_C_drain_PE_8_0_x2);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_4_x2(

        /* module id */ 0,
        /* module id */ 7,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_8_x2,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_7_x2,
        /* fifo */ fifo_C_drain_PE_7_0_x2);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_5_x2(

        /* module id */ 0,
        /* module id */ 6,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_7_x2,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_6_x2,
        /* fifo */ fifo_C_drain_PE_6_0_x2);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_6_x2(

        /* module id */ 0,
        /* module id */ 5,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_6_x2,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_5_x2,
        /* fifo */ fifo_C_drain_PE_5_0_x2);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_7_x2(

        /* module id */ 0,
        /* module id */ 4,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_5_x2,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_4_x2,
        /* fifo */ fifo_C_drain_PE_4_0_x2);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_8_x2(

        /* module id */ 0,
        /* module id */ 3,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_4_x2,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_3_x2,
        /* fifo */ fifo_C_drain_PE_3_0_x2);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_9_x2(

        /* module id */ 0,
        /* module id */ 2,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_3_x2,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_2_x2,
        /* fifo */ fifo_C_drain_PE_2_0_x2);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_10_x2(

        /* module id */ 0,
        /* module id */ 1,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_2_x2,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_1_x2,
        /* fifo */ fifo_C_drain_PE_1_0_x2);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_11_x2(

        /* module id */ 0,
        /* module id */ 0,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_1_x2,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_0_x2,
        /* fifo */ fifo_C_drain_PE_0_0_x2);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_boundary_1_x2(

        /* module id */ 1,
        /* module id */ 12,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_12_x2,
        /* fifo */ fifo_C_drain_PE_12_1_x2);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_12_x2(

        /* module id */ 1,
        /* module id */ 11,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_12_x2,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_11_x2,
        /* fifo */ fifo_C_drain_PE_11_1_x2);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_13_x2(

        /* module id */ 1,
        /* module id */ 10,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_11_x2,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_10_x2,
        /* fifo */ fifo_C_drain_PE_10_1_x2);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_14_x2(

        /* module id */ 1,
        /* module id */ 9,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_10_x2,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_9_x2,
        /* fifo */ fifo_C_drain_PE_9_1_x2);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_15_x2(

        /* module id */ 1,
        /* module id */ 8,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_9_x2,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_8_x2,
        /* fifo */ fifo_C_drain_PE_8_1_x2);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_16_x2(

        /* module id */ 1,
        /* module id */ 7,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_8_x2,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_7_x2,
        /* fifo */ fifo_C_drain_PE_7_1_x2);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_17_x2(

        /* module id */ 1,
        /* module id */ 6,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_7_x2,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_6_x2,
        /* fifo */ fifo_C_drain_PE_6_1_x2);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_18_x2(

        /* module id */ 1,
        /* module id */ 5,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_6_x2,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_5_x2,
        /* fifo */ fifo_C_drain_PE_5_1_x2);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_19_x2(

        /* module id */ 1,
        /* module id */ 4,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_5_x2,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_4_x2,
        /* fifo */ fifo_C_drain_PE_4_1_x2);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_20_x2(

        /* module id */ 1,
        /* module id */ 3,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_4_x2,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_3_x2,
        /* fifo */ fifo_C_drain_PE_3_1_x2);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_21_x2(

        /* module id */ 1,
        /* module id */ 2,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_3_x2,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_2_x2,
        /* fifo */ fifo_C_drain_PE_2_1_x2);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_22_x2(

        /* module id */ 1,
        /* module id */ 1,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_2_x2,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_1_x2,
        /* fifo */ fifo_C_drain_PE_1_1_x2);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L1_out_23_x2(

        /* module id */ 1,
        /* module id */ 0,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_1_x2,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_0_x2,
        /* fifo */ fifo_C_drain_PE_0_1_x2);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L2_out_boundary_x2(

        /* module id */ 1,
        /* fifo */ fifo_C_drain_C_drain_IO_L2_out_1_x2,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_1_0_x2);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L2_out_x2(

        /* module id */ 0,
        /* fifo */ fifo_C_drain_C_drain_IO_L2_out_1_x2,
        /* fifo */ fifo_C_drain_C_drain_IO_L2_out_0_x2,
        /* fifo */ fifo_C_drain_C_drain_IO_L1_out_0_0_x2);
    /* Module Call */

    /* Module Call */
    C_drain_IO_L3_out_x2(

        /* array */ C,
        /* fifo */ fifo_C_drain_C_drain_IO_L2_out_0_x2);
    /* Module Call */
}

extern "C" {
void top(A_t16 *A, B_t16 *B, C_t16 *C) {
#pragma HLS INTERFACE m_axi port = A offset = slave bundle = gmem_A depth = 4096
#pragma HLS INTERFACE m_axi port = B offset = slave bundle = gmem_B depth = 4096
#pragma HLS INTERFACE m_axi port = C offset = slave bundle = gmem_C depth = 4096
#pragma HLS INTERFACE s_axilite port = A bundle = control
#pragma HLS INTERFACE s_axilite port = B bundle = control
#pragma HLS INTERFACE s_axilite port = C bundle = control
#pragma HLS INTERFACE s_axilite port = return bundle = control

    DATA_TYPE temp_xout0[4096], temp_xin1[4096];
    DATA_TYPE temp_xout1[4096], temp_xin2[4096];
    kernel3_x0(A, B, temp_xout0);
    nondf_kernel_cov_x0(1024, temp_xout0, temp_xin1);
    kernel3_x1(temp_xin1, temp_xin1, temp_xout1);
    nondf_kernel_cov_x1(1024, temp_xout1, temp_xin2);
    kernel3_x2(temp_xin2, temp_xin2, C);
}
}
