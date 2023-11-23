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
#ifndef ___HLS__VIDEO__
#error hls_video_histogram.h is not intended to be included directly.  Please include hls_video.h instead.
#endif

#ifndef _HLS_VIDEO_HISTOGRAM_
#define _HLS_VIDEO_HISTOGRAM_

namespace hls {

template<int SRC_T, int DST_T,int ROW, int COL, int N>
void Equalize(
	Mat<ROW, COL, SRC_T>	&_src,
	Mat<ROW, COL, DST_T>	&_dst,
    ap_uint<8> (&map)[N]
                      )
{
    // Assumed 8 bits per pixel
    const int NUM_STATES=4; // must be a even num
    Window<1,NUM_STATES,ap_uint<8> > addr_win;
    // The histogram needs to be able to count up to the number of pixels in the image.
    ap_uint<BitWidth<ROW*COL>::Value> hist_out[N];
    Window<1,NUM_STATES,ap_uint<BitWidth<ROW*COL>::Value> > hist_win;
    ap_uint<BitWidth<ROW*COL>::Value> hist;
    ap_uint<8> addr;
    ap_uint<8> addr_last;
    ap_uint<BitWidth<ROW*COL>::Value> hist_last;
    ap_uint<8> addr_flag;
    ap_uint<BitWidth<ROW*COL>::Value> hist_flag;
    ap_uint<8> addr_w;
    ap_uint<BitWidth<ROW*COL>::Value> hist_w;

    for(int i=0;i<NUM_STATES;i++) {
    #pragma HLS UNROLL
        addr_win(0,i)=i;// initialize with NUM_STATES different address
        hist_win(0,i)=0;
    }

    for(int i=0;i<N;i++)
        hist_out[i]=0;

    int cols=_src.cols;
    int rows=_src.rows;
    assert(rows<=ROW);
    assert(cols<=COL);
 loop_height: for(int i=0;i<rows;i++)
    {
    loop_width: for(int j=0;j<cols;j++)
        {
#pragma HLS PIPELINE
#pragma HLS LOOP_FLATTEN OFF
#pragma HLS DEPENDENCE array inter false
            ap_uint<4> flag=NUM_STATES;
            HLS_TNAME(SRC_T) tempsrc=0;
            HLS_TNAME(DST_T) tempdst=0;
            _src.data_stream[0].read(tempsrc);
            tempdst=map[tempsrc];
            _dst.data_stream[0]<<tempdst;

            for (int m=0; m<NUM_STATES; m++) {
                if (tempsrc==addr_win(0,m)) {
                    flag = m;
                    break;
                }
            }

            latency_region:{
            #pragma HLS latency min=0 max=1
            addr_last = addr_win(0,NUM_STATES-1);
            hist_last = hist_win(0,NUM_STATES-1)+1;

            for (int m=NUM_STATES-1; m>0; m--) {
                addr = addr_win(0,m-1);
                hist = hist_win(0,m-1);
                if (m==NUM_STATES/2) {
                    addr_w = addr;
                    if (m==flag+1) {
                        hist_w = hist+1;
                    } else {
                        hist_w = hist;
                    }
                }
                if (m==flag+1) {
                    addr_flag = addr;
                    hist_flag = hist+1;
                    addr_win(0,m) = addr_flag;
                    hist_win(0,m) = hist_flag;
                } else {
                    addr_win(0,m) = addr;
                    hist_win(0,m) = hist;
                }
            }

            if (flag==NUM_STATES) {
                hist_win(0,0) = hist_out[tempsrc]+1;
                addr_win(0,0) = tempsrc;
            } else if (flag==NUM_STATES-1) {
                addr_win(0,0) = addr_last;
                hist_win(0,0) = hist_last;
            } else if (flag>=NUM_STATES/2) {
                addr_win(0,0) = addr_flag;
                hist_win(0,0) = hist_flag;
            } else {
                addr_win(0,0) = addr_w;
                hist_win(0,0) = hist_w;
            }

            hist_out[addr_w] = hist_w;
            }//latency
        }
    }
    for (int m=0; m<NUM_STATES/2; m++) {
    #pragma HLS PIPELINE
        hist_out[addr_win(0,m)]=hist_win(0,m);
    }

    // floating point probably makes sense here, because cols*rows could be large or small.
    // This could probably be only 8 mantissa bits or so, though.
    float scale = 1.f; //255.0f/(cols*rows);
    ap_uint<BitWidth<ROW*COL>::Value> sum=0;
    bool flag = false;
 loop_normalize: for(int i=0;i<N;i++)
    {
#pragma HLS PIPELINE
        // to keep consistent with opencv's implementation
        if (!flag) {
            if (hist_out[i] != 0) {
                flag = true;
                scale = 255.0f/(cols*rows - hist_out[i]);
                map[i] = 0;
                continue;
            }
        }

        sum+=hist_out[i];
        ap_uint<8> val=sr_cast< ap_uint<8> > (sum*scale);
        map[i]=val;
    }
    map[0]=0;
}

static  ap_uint<8> lut[256];
template<int SRC_T, int DST_T,int ROW, int COL>
void EqualizeHist(
		Mat<ROW, COL, SRC_T>	&_src,
		Mat<ROW, COL, DST_T>	&_dst)
{ 
#pragma HLS INLINE
    Equalize(_src, _dst, lut);
}
}
#endif


