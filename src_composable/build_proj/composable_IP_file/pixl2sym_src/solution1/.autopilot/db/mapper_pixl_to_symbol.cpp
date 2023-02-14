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
unsigned int ap_apatb_data_in_V_data_V_V_cap_bc;
static AESL_RUNTIME_BC __xlx_data_in_V_data_V_V_size_Reader("../tv/stream_size/stream_size_in_data_in_V_data_V.dat");
unsigned int ap_apatb_data_in_V_keep_V_V_cap_bc;
static AESL_RUNTIME_BC __xlx_data_in_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_in_data_in_V_keep_V.dat");
unsigned int ap_apatb_data_in_V_strb_V_V_cap_bc;
static AESL_RUNTIME_BC __xlx_data_in_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_in_data_in_V_strb_V.dat");
unsigned int ap_apatb__V_cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_data_in_V_last_V_V_cap_bc;
static AESL_RUNTIME_BC __xlx_data_in_V_last_V_V_size_Reader("../tv/stream_size/stream_size_in_data_in_V_last_V.dat");
unsigned int ap_apatb__V_cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb__V_cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_data_out_V_data_V_V_cap_bc;
static AESL_RUNTIME_BC __xlx_data_out_V_data_V_V_size_Reader("../tv/stream_size/stream_size_out_data_out_V_data_V.dat");
unsigned int ap_apatb_data_out_V_keep_V_V_cap_bc;
static AESL_RUNTIME_BC __xlx_data_out_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_out_data_out_V_keep_V.dat");
unsigned int ap_apatb_data_out_V_strb_V_V_cap_bc;
static AESL_RUNTIME_BC __xlx_data_out_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_out_data_out_V_strb_V.dat");
unsigned int ap_apatb__V_cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb_data_out_V_last_V_V_cap_bc;
static AESL_RUNTIME_BC __xlx_data_out_V_last_V_V_size_Reader("../tv/stream_size/stream_size_out_data_out_V_last_V.dat");
unsigned int ap_apatb__V_cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb__V_cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
extern "C" void pixl_to_symbol(volatile void *, volatile void *, volatile void *, , volatile void *, , , volatile void *, volatile void *, volatile void *, , volatile void *, , );
extern "C" void apatb_pixl_to_symbol_hw(volatile void * __xlx_apatb_param_data_in_V_data_V, volatile void * __xlx_apatb_param_data_in_V_keep_V, volatile void * __xlx_apatb_param_data_in_V_strb_V, volatile void * __xlx_apatb_param_data_in_V_last_V, volatile void * __xlx_apatb_param_data_out_V_data_V, volatile void * __xlx_apatb_param_data_out_V_keep_V, volatile void * __xlx_apatb_param_data_out_V_strb_V, volatile void * __xlx_apatb_param_data_out_V_last_V) {
  // collect __xlx_data_in_V_data_V_tmp_vec
  unsigned __xlx_data_in_V_data_V_V_tmp_Count = 0;
  unsigned __xlx_data_in_V_data_V_V_read_Size = __xlx_data_in_V_data_V_V_size_Reader.read_size();
  vector<long long> __xlx_data_in_V_data_V_tmp_vec;
  while (!((hls::stream<long long>*)__xlx_apatb_param_data_in_V_data_V)->empty() && __xlx_data_in_V_data_V_V_tmp_Count < __xlx_data_in_V_data_V_V_read_Size) {
    __xlx_data_in_V_data_V_tmp_vec.push_back(((hls::stream<long long>*)__xlx_apatb_param_data_in_V_data_V)->read());
    __xlx_data_in_V_data_V_V_tmp_Count++;
  }
  ap_apatb_data_in_V_data_V_V_cap_bc = __xlx_data_in_V_data_V_tmp_vec.size();
  // store input buffer
  long long* __xlx_data_in_V_data_V_input_buffer= new long long[__xlx_data_in_V_data_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_data_in_V_data_V_tmp_vec.size(); ++i) {
    __xlx_data_in_V_data_V_input_buffer[i] = __xlx_data_in_V_data_V_tmp_vec[i];
  }
  // collect __xlx_data_in_V_keep_V_tmp_vec
  unsigned __xlx_data_in_V_keep_V_V_tmp_Count = 0;
  unsigned __xlx_data_in_V_keep_V_V_read_Size = __xlx_data_in_V_keep_V_V_size_Reader.read_size();
  vector<char> __xlx_data_in_V_keep_V_tmp_vec;
  while (!((hls::stream<char>*)__xlx_apatb_param_data_in_V_keep_V)->empty() && __xlx_data_in_V_keep_V_V_tmp_Count < __xlx_data_in_V_keep_V_V_read_Size) {
    __xlx_data_in_V_keep_V_tmp_vec.push_back(((hls::stream<char>*)__xlx_apatb_param_data_in_V_keep_V)->read());
    __xlx_data_in_V_keep_V_V_tmp_Count++;
  }
  ap_apatb_data_in_V_keep_V_V_cap_bc = __xlx_data_in_V_keep_V_tmp_vec.size();
  // store input buffer
  char* __xlx_data_in_V_keep_V_input_buffer= new char[__xlx_data_in_V_keep_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_data_in_V_keep_V_tmp_vec.size(); ++i) {
    __xlx_data_in_V_keep_V_input_buffer[i] = __xlx_data_in_V_keep_V_tmp_vec[i];
  }
  // collect __xlx_data_in_V_strb_V_tmp_vec
  unsigned __xlx_data_in_V_strb_V_V_tmp_Count = 0;
  unsigned __xlx_data_in_V_strb_V_V_read_Size = __xlx_data_in_V_strb_V_V_size_Reader.read_size();
  vector<char> __xlx_data_in_V_strb_V_tmp_vec;
  while (!((hls::stream<char>*)__xlx_apatb_param_data_in_V_strb_V)->empty() && __xlx_data_in_V_strb_V_V_tmp_Count < __xlx_data_in_V_strb_V_V_read_Size) {
    __xlx_data_in_V_strb_V_tmp_vec.push_back(((hls::stream<char>*)__xlx_apatb_param_data_in_V_strb_V)->read());
    __xlx_data_in_V_strb_V_V_tmp_Count++;
  }
  ap_apatb_data_in_V_strb_V_V_cap_bc = __xlx_data_in_V_strb_V_tmp_vec.size();
  // store input buffer
  char* __xlx_data_in_V_strb_V_input_buffer= new char[__xlx_data_in_V_strb_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_data_in_V_strb_V_tmp_vec.size(); ++i) {
    __xlx_data_in_V_strb_V_input_buffer[i] = __xlx_data_in_V_strb_V_tmp_vec[i];
  }
  // collect __xlx_data_in_V_last_V_tmp_vec
  unsigned __xlx_data_in_V_last_V_V_tmp_Count = 0;
  unsigned __xlx_data_in_V_last_V_V_read_Size = __xlx_data_in_V_last_V_V_size_Reader.read_size();
  vector<char> __xlx_data_in_V_last_V_tmp_vec;
  while (!((hls::stream<char>*)__xlx_apatb_param_data_in_V_last_V)->empty() && __xlx_data_in_V_last_V_V_tmp_Count < __xlx_data_in_V_last_V_V_read_Size) {
    __xlx_data_in_V_last_V_tmp_vec.push_back(((hls::stream<char>*)__xlx_apatb_param_data_in_V_last_V)->read());
    __xlx_data_in_V_last_V_V_tmp_Count++;
  }
  ap_apatb_data_in_V_last_V_V_cap_bc = __xlx_data_in_V_last_V_tmp_vec.size();
  // store input buffer
  char* __xlx_data_in_V_last_V_input_buffer= new char[__xlx_data_in_V_last_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_data_in_V_last_V_tmp_vec.size(); ++i) {
    __xlx_data_in_V_last_V_input_buffer[i] = __xlx_data_in_V_last_V_tmp_vec[i];
  }
  //Create input buffer for data_out_V_data_V
  ap_apatb_data_out_V_data_V_V_cap_bc = __xlx_data_out_V_data_V_V_size_Reader.read_size();
  long long* __xlx_data_out_V_data_V_input_buffer= new long long[ap_apatb_data_out_V_data_V_V_cap_bc];
  //Create input buffer for data_out_V_keep_V
  ap_apatb_data_out_V_keep_V_V_cap_bc = __xlx_data_out_V_keep_V_V_size_Reader.read_size();
  char* __xlx_data_out_V_keep_V_input_buffer= new char[ap_apatb_data_out_V_keep_V_V_cap_bc];
  //Create input buffer for data_out_V_strb_V
  ap_apatb_data_out_V_strb_V_V_cap_bc = __xlx_data_out_V_strb_V_V_size_Reader.read_size();
  char* __xlx_data_out_V_strb_V_input_buffer= new char[ap_apatb_data_out_V_strb_V_V_cap_bc];
  //Create input buffer for data_out_V_last_V
  ap_apatb_data_out_V_last_V_V_cap_bc = __xlx_data_out_V_last_V_V_size_Reader.read_size();
  char* __xlx_data_out_V_last_V_input_buffer= new char[ap_apatb_data_out_V_last_V_V_cap_bc];
  // DUT call
  pixl_to_symbol(__xlx_data_in_V_data_V_input_buffer, __xlx_data_in_V_keep_V_input_buffer, __xlx_data_in_V_strb_V_input_buffer, __xlx_data_in_V_last_V_input_buffer, __xlx_data_out_V_data_V_input_buffer, __xlx_data_out_V_keep_V_input_buffer, __xlx_data_out_V_strb_V_input_buffer, __xlx_data_out_V_last_V_input_buffer);
  for (unsigned i = 0; i <ap_apatb_data_out_V_data_V_V_cap_bc; ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_data_out_V_data_V)->write(__xlx_data_out_V_data_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_data_out_V_keep_V_V_cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_data_out_V_keep_V)->write(__xlx_data_out_V_keep_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_data_out_V_strb_V_V_cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_data_out_V_strb_V)->write(__xlx_data_out_V_strb_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb__V_cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_)->write(__xlx__input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_data_out_V_last_V_V_cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_data_out_V_last_V)->write(__xlx_data_out_V_last_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb__V_cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_)->write(__xlx__input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb__V_cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_)->write(__xlx__input_buffer[i]);
}
