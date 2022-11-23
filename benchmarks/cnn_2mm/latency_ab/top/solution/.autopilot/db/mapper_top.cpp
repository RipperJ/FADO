#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
struct __cosim_s40__ { char data[64]; };
extern "C" void top(__cosim_s40__*, __cosim_s40__*, __cosim_s40__*, int, int, int);
extern "C" void apatb_top_hw(volatile void * __xlx_apatb_param_A, volatile void * __xlx_apatb_param_B, volatile void * __xlx_apatb_param_C) {
  // Collect __xlx_A__tmp_vec
  vector<sc_bv<512> >__xlx_A__tmp_vec;
  for (int j = 0, e = 1024; j != e; ++j) {
    sc_bv<512> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_A)[j*8+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_A)[j*8+1];
    _xlx_tmp_sc.range(191, 128) = ((long long*)__xlx_apatb_param_A)[j*8+2];
    _xlx_tmp_sc.range(255, 192) = ((long long*)__xlx_apatb_param_A)[j*8+3];
    _xlx_tmp_sc.range(319, 256) = ((long long*)__xlx_apatb_param_A)[j*8+4];
    _xlx_tmp_sc.range(383, 320) = ((long long*)__xlx_apatb_param_A)[j*8+5];
    _xlx_tmp_sc.range(447, 384) = ((long long*)__xlx_apatb_param_A)[j*8+6];
    _xlx_tmp_sc.range(511, 448) = ((long long*)__xlx_apatb_param_A)[j*8+7];
    __xlx_A__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A = 1024;
  int __xlx_offset_param_A = 0;
  int __xlx_offset_byte_param_A = 0*64;
  __cosim_s40__* __xlx_A__input_buffer= new __cosim_s40__[__xlx_A__tmp_vec.size()];
  for (int i = 0; i < __xlx_A__tmp_vec.size(); ++i) {
    ((long long*)__xlx_A__input_buffer)[i*8+0] = __xlx_A__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_A__input_buffer)[i*8+1] = __xlx_A__tmp_vec[i].range(127, 64).to_uint64();
    ((long long*)__xlx_A__input_buffer)[i*8+2] = __xlx_A__tmp_vec[i].range(191, 128).to_uint64();
    ((long long*)__xlx_A__input_buffer)[i*8+3] = __xlx_A__tmp_vec[i].range(255, 192).to_uint64();
    ((long long*)__xlx_A__input_buffer)[i*8+4] = __xlx_A__tmp_vec[i].range(319, 256).to_uint64();
    ((long long*)__xlx_A__input_buffer)[i*8+5] = __xlx_A__tmp_vec[i].range(383, 320).to_uint64();
    ((long long*)__xlx_A__input_buffer)[i*8+6] = __xlx_A__tmp_vec[i].range(447, 384).to_uint64();
    ((long long*)__xlx_A__input_buffer)[i*8+7] = __xlx_A__tmp_vec[i].range(511, 448).to_uint64();
  }
  // Collect __xlx_B__tmp_vec
  vector<sc_bv<512> >__xlx_B__tmp_vec;
  for (int j = 0, e = 1024; j != e; ++j) {
    sc_bv<512> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_B)[j*8+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_B)[j*8+1];
    _xlx_tmp_sc.range(191, 128) = ((long long*)__xlx_apatb_param_B)[j*8+2];
    _xlx_tmp_sc.range(255, 192) = ((long long*)__xlx_apatb_param_B)[j*8+3];
    _xlx_tmp_sc.range(319, 256) = ((long long*)__xlx_apatb_param_B)[j*8+4];
    _xlx_tmp_sc.range(383, 320) = ((long long*)__xlx_apatb_param_B)[j*8+5];
    _xlx_tmp_sc.range(447, 384) = ((long long*)__xlx_apatb_param_B)[j*8+6];
    _xlx_tmp_sc.range(511, 448) = ((long long*)__xlx_apatb_param_B)[j*8+7];
    __xlx_B__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B = 1024;
  int __xlx_offset_param_B = 0;
  int __xlx_offset_byte_param_B = 0*64;
  __cosim_s40__* __xlx_B__input_buffer= new __cosim_s40__[__xlx_B__tmp_vec.size()];
  for (int i = 0; i < __xlx_B__tmp_vec.size(); ++i) {
    ((long long*)__xlx_B__input_buffer)[i*8+0] = __xlx_B__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_B__input_buffer)[i*8+1] = __xlx_B__tmp_vec[i].range(127, 64).to_uint64();
    ((long long*)__xlx_B__input_buffer)[i*8+2] = __xlx_B__tmp_vec[i].range(191, 128).to_uint64();
    ((long long*)__xlx_B__input_buffer)[i*8+3] = __xlx_B__tmp_vec[i].range(255, 192).to_uint64();
    ((long long*)__xlx_B__input_buffer)[i*8+4] = __xlx_B__tmp_vec[i].range(319, 256).to_uint64();
    ((long long*)__xlx_B__input_buffer)[i*8+5] = __xlx_B__tmp_vec[i].range(383, 320).to_uint64();
    ((long long*)__xlx_B__input_buffer)[i*8+6] = __xlx_B__tmp_vec[i].range(447, 384).to_uint64();
    ((long long*)__xlx_B__input_buffer)[i*8+7] = __xlx_B__tmp_vec[i].range(511, 448).to_uint64();
  }
  // Collect __xlx_C__tmp_vec
  vector<sc_bv<512> >__xlx_C__tmp_vec;
  for (int j = 0, e = 1024; j != e; ++j) {
    sc_bv<512> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_C)[j*8+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_C)[j*8+1];
    _xlx_tmp_sc.range(191, 128) = ((long long*)__xlx_apatb_param_C)[j*8+2];
    _xlx_tmp_sc.range(255, 192) = ((long long*)__xlx_apatb_param_C)[j*8+3];
    _xlx_tmp_sc.range(319, 256) = ((long long*)__xlx_apatb_param_C)[j*8+4];
    _xlx_tmp_sc.range(383, 320) = ((long long*)__xlx_apatb_param_C)[j*8+5];
    _xlx_tmp_sc.range(447, 384) = ((long long*)__xlx_apatb_param_C)[j*8+6];
    _xlx_tmp_sc.range(511, 448) = ((long long*)__xlx_apatb_param_C)[j*8+7];
    __xlx_C__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_C = 1024;
  int __xlx_offset_param_C = 0;
  int __xlx_offset_byte_param_C = 0*64;
  __cosim_s40__* __xlx_C__input_buffer= new __cosim_s40__[__xlx_C__tmp_vec.size()];
  for (int i = 0; i < __xlx_C__tmp_vec.size(); ++i) {
    ((long long*)__xlx_C__input_buffer)[i*8+0] = __xlx_C__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_C__input_buffer)[i*8+1] = __xlx_C__tmp_vec[i].range(127, 64).to_uint64();
    ((long long*)__xlx_C__input_buffer)[i*8+2] = __xlx_C__tmp_vec[i].range(191, 128).to_uint64();
    ((long long*)__xlx_C__input_buffer)[i*8+3] = __xlx_C__tmp_vec[i].range(255, 192).to_uint64();
    ((long long*)__xlx_C__input_buffer)[i*8+4] = __xlx_C__tmp_vec[i].range(319, 256).to_uint64();
    ((long long*)__xlx_C__input_buffer)[i*8+5] = __xlx_C__tmp_vec[i].range(383, 320).to_uint64();
    ((long long*)__xlx_C__input_buffer)[i*8+6] = __xlx_C__tmp_vec[i].range(447, 384).to_uint64();
    ((long long*)__xlx_C__input_buffer)[i*8+7] = __xlx_C__tmp_vec[i].range(511, 448).to_uint64();
  }
  // DUT call
  top(__xlx_A__input_buffer, __xlx_B__input_buffer, __xlx_C__input_buffer, __xlx_offset_byte_param_A, __xlx_offset_byte_param_B, __xlx_offset_byte_param_C);
// print __xlx_apatb_param_A
  sc_bv<512>*__xlx_A_output_buffer = new sc_bv<512>[__xlx_size_param_A];
  for (int i = 0; i < __xlx_size_param_A; ++i) {
    char* start = (char*)(&(__xlx_A__input_buffer[__xlx_offset_param_A]));
    __xlx_A_output_buffer[i].range(63, 0) = ((long long*)start)[i*8+0];
    __xlx_A_output_buffer[i].range(127, 64) = ((long long*)start)[i*8+1];
    __xlx_A_output_buffer[i].range(191, 128) = ((long long*)start)[i*8+2];
    __xlx_A_output_buffer[i].range(255, 192) = ((long long*)start)[i*8+3];
    __xlx_A_output_buffer[i].range(319, 256) = ((long long*)start)[i*8+4];
    __xlx_A_output_buffer[i].range(383, 320) = ((long long*)start)[i*8+5];
    __xlx_A_output_buffer[i].range(447, 384) = ((long long*)start)[i*8+6];
    __xlx_A_output_buffer[i].range(511, 448) = ((long long*)start)[i*8+7];
  }
  for (int i = 0; i < __xlx_size_param_A; ++i) {
    ((long long*)__xlx_apatb_param_A)[i*8+0] = __xlx_A_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_A)[i*8+1] = __xlx_A_output_buffer[i].range(127, 64).to_uint64();
    ((long long*)__xlx_apatb_param_A)[i*8+2] = __xlx_A_output_buffer[i].range(191, 128).to_uint64();
    ((long long*)__xlx_apatb_param_A)[i*8+3] = __xlx_A_output_buffer[i].range(255, 192).to_uint64();
    ((long long*)__xlx_apatb_param_A)[i*8+4] = __xlx_A_output_buffer[i].range(319, 256).to_uint64();
    ((long long*)__xlx_apatb_param_A)[i*8+5] = __xlx_A_output_buffer[i].range(383, 320).to_uint64();
    ((long long*)__xlx_apatb_param_A)[i*8+6] = __xlx_A_output_buffer[i].range(447, 384).to_uint64();
    ((long long*)__xlx_apatb_param_A)[i*8+7] = __xlx_A_output_buffer[i].range(511, 448).to_uint64();
  }
// print __xlx_apatb_param_B
  sc_bv<512>*__xlx_B_output_buffer = new sc_bv<512>[__xlx_size_param_B];
  for (int i = 0; i < __xlx_size_param_B; ++i) {
    char* start = (char*)(&(__xlx_B__input_buffer[__xlx_offset_param_B]));
    __xlx_B_output_buffer[i].range(63, 0) = ((long long*)start)[i*8+0];
    __xlx_B_output_buffer[i].range(127, 64) = ((long long*)start)[i*8+1];
    __xlx_B_output_buffer[i].range(191, 128) = ((long long*)start)[i*8+2];
    __xlx_B_output_buffer[i].range(255, 192) = ((long long*)start)[i*8+3];
    __xlx_B_output_buffer[i].range(319, 256) = ((long long*)start)[i*8+4];
    __xlx_B_output_buffer[i].range(383, 320) = ((long long*)start)[i*8+5];
    __xlx_B_output_buffer[i].range(447, 384) = ((long long*)start)[i*8+6];
    __xlx_B_output_buffer[i].range(511, 448) = ((long long*)start)[i*8+7];
  }
  for (int i = 0; i < __xlx_size_param_B; ++i) {
    ((long long*)__xlx_apatb_param_B)[i*8+0] = __xlx_B_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_B)[i*8+1] = __xlx_B_output_buffer[i].range(127, 64).to_uint64();
    ((long long*)__xlx_apatb_param_B)[i*8+2] = __xlx_B_output_buffer[i].range(191, 128).to_uint64();
    ((long long*)__xlx_apatb_param_B)[i*8+3] = __xlx_B_output_buffer[i].range(255, 192).to_uint64();
    ((long long*)__xlx_apatb_param_B)[i*8+4] = __xlx_B_output_buffer[i].range(319, 256).to_uint64();
    ((long long*)__xlx_apatb_param_B)[i*8+5] = __xlx_B_output_buffer[i].range(383, 320).to_uint64();
    ((long long*)__xlx_apatb_param_B)[i*8+6] = __xlx_B_output_buffer[i].range(447, 384).to_uint64();
    ((long long*)__xlx_apatb_param_B)[i*8+7] = __xlx_B_output_buffer[i].range(511, 448).to_uint64();
  }
// print __xlx_apatb_param_C
  sc_bv<512>*__xlx_C_output_buffer = new sc_bv<512>[__xlx_size_param_C];
  for (int i = 0; i < __xlx_size_param_C; ++i) {
    char* start = (char*)(&(__xlx_C__input_buffer[__xlx_offset_param_C]));
    __xlx_C_output_buffer[i].range(63, 0) = ((long long*)start)[i*8+0];
    __xlx_C_output_buffer[i].range(127, 64) = ((long long*)start)[i*8+1];
    __xlx_C_output_buffer[i].range(191, 128) = ((long long*)start)[i*8+2];
    __xlx_C_output_buffer[i].range(255, 192) = ((long long*)start)[i*8+3];
    __xlx_C_output_buffer[i].range(319, 256) = ((long long*)start)[i*8+4];
    __xlx_C_output_buffer[i].range(383, 320) = ((long long*)start)[i*8+5];
    __xlx_C_output_buffer[i].range(447, 384) = ((long long*)start)[i*8+6];
    __xlx_C_output_buffer[i].range(511, 448) = ((long long*)start)[i*8+7];
  }
  for (int i = 0; i < __xlx_size_param_C; ++i) {
    ((long long*)__xlx_apatb_param_C)[i*8+0] = __xlx_C_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_C)[i*8+1] = __xlx_C_output_buffer[i].range(127, 64).to_uint64();
    ((long long*)__xlx_apatb_param_C)[i*8+2] = __xlx_C_output_buffer[i].range(191, 128).to_uint64();
    ((long long*)__xlx_apatb_param_C)[i*8+3] = __xlx_C_output_buffer[i].range(255, 192).to_uint64();
    ((long long*)__xlx_apatb_param_C)[i*8+4] = __xlx_C_output_buffer[i].range(319, 256).to_uint64();
    ((long long*)__xlx_apatb_param_C)[i*8+5] = __xlx_C_output_buffer[i].range(383, 320).to_uint64();
    ((long long*)__xlx_apatb_param_C)[i*8+6] = __xlx_C_output_buffer[i].range(447, 384).to_uint64();
    ((long long*)__xlx_apatb_param_C)[i*8+7] = __xlx_C_output_buffer[i].range(511, 448).to_uint64();
  }
}
