// (c) Copyright 2023 Advanced Micro Devices, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
////////////////////////////////////////////////////////////
/*
 * HLS AXI I/O Function Header File
 */

#ifndef ___HLS__AXI_IO__
#define ___HLS__AXI_IO__

#include "ap_axi_sdata.h"
#include "utils/x_hls_utils.h"
#include <assert.h>

namespace hls {

template<int W, typename T>
void AXIGetBitFields(ap_uint<W> pix, int start, int w, T& val) {
#pragma HLS inline
    assert(start >= 0 && start+w <= W);
    val = (T)pix(start+w-1, start);
}

template<int W>
void AXIGetBitFields(ap_uint<W> pix, int start, int w, float& val) {
#pragma HLS inline
    assert(w == 32 && start >= 0 && start+w <= W);
    fp_struct<float> temp((ap_uint<32>)pix(start+w-1, start));
    val =  temp.to_float();
}

template<int W>
void AXIGetBitFields(ap_uint<W> pix, int start, int w, double& val) {
#pragma HLS inline
    assert(w == 64 && start >= 0 && start+w <= W);
    fp_struct<double> temp((ap_uint<64>)pix(start+w-1, start));
    val = temp.to_double();
}

template<int W, typename T>
void AXIGetBitFields(ap_axiu<W,1,1,1> axi, int start, int w, T& val) {
#pragma HLS inline
    AXIGetBitFields(axi.data, start, w, val);
}

template<int W, typename T>
void AXISetBitFields(ap_uint<W>& pix, int start, int w, T val) {
#pragma HLS inline
    assert(start >= 0 && start+w <= W);
    pix(start+w-1, start) = val;
}

template<int W>
void AXISetBitFields(ap_uint<W>& pix, int start, int w, float val) {
#pragma HLS inline
    assert(w == 32 && start >= 0 && start+w <= W);
    fp_struct<float> temp(val);
    pix(start+w-1, start) = temp.data();
}

template<int W>
void AXISetBitFields(ap_uint<W>& pix, int start, int w, double val) {
#pragma HLS inline
    assert(w == 64 && start >= 0 && start+w <= W);
    fp_struct<double> temp(val);
    pix(start+w-1, start) = temp.data();
}

template<int W, typename T>
void AXISetBitFields(ap_axiu<W,1,1,1>& axi, int start, int w, T val) {
#pragma HLS inline
    AXISetBitFields(axi.data, start, w, val);
}

} // namespace hls

#endif


