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
#ifndef _V_TPG_H_
#define _V_TPG_H_

//#include "hls_video.h"
#include "hls_video.h"
#include "ap_int.h"

typedef unsigned char      U8;
typedef unsigned short     U16;
typedef unsigned int       U32;

typedef signed char        I8;
typedef signed short       I16;
typedef signed int         I32;
//Signed arbitrary precision types
typedef ap_int<11>         I11;

#define Y_CH                   (0)
#define U_CH                   (1)
#define V_CH                   (2)

//Maximum Image Size
#define HSC_MAX_WIDTH          (8192)
#define HSC_MAX_HEIGHT         (3840)

const U8 colorRgb = 0;
const U8 color444 = 1;
const U8 color422 = 2;
const U8 color420 = 3;


#define NUM_BARS   8

//File I/O
#define SRC_IMAGE            "tpg_1920x1080"


#define CLAMP(a,lo,hi)       ((a)<(lo)?(lo) : ((a)>(hi) ? (hi) : (a)))

typedef ap_uint<BITS_PER_COMPONENT>                       								PIXEL_TYPE;
typedef hls::Scalar<NR_COMPONENTS, PIXEL_TYPE >     									YUV_PIXEL;
typedef hls::Scalar<NR_COMPONENTS*SAMPLES_PER_CLOCK, PIXEL_TYPE >						YUV_MULTI_PIXEL;
typedef hls::Scalar<1, PIXEL_TYPE > 													Y_PIXEL;
typedef hls::Scalar<SAMPLES_PER_CLOCK, PIXEL_TYPE >  									Y_MULTI_PIXEL;
typedef hls::Scalar<1, PIXEL_TYPE> 														C_PIXEL;
typedef hls::Scalar<SAMPLES_PER_CLOCK, PIXEL_TYPE >  									C_MULTI_PIXEL;
typedef ap_uint<SAMPLES_PER_CLOCK*BITS_PER_COMPONENT>   								Y_MEM_PIXEL_TYPE;
typedef ap_uint<SAMPLES_PER_CLOCK*BITS_PER_COMPONENT>   								C_MEM_PIXEL_TYPE;


//Define double Pixel format

//Define quad pixel format
typedef struct
{
    U16 y;
    U16 u;
    U16 v;
} YUV3;

typedef struct
{
    U16 r;
    U16 g;
    U16 b;
} RGB3;

typedef hls::stream<ap_axiu<BITS_PER_CLOCK,1,1,1> >              HSC_AXI_STREAM_IN;
typedef hls::stream<ap_axiu<BITS_PER_CLOCK,1,1,1> >              HSC_AXI_STREAM_OUT;
typedef hls::Mat<HSC_MAX_HEIGHT, HSC_MAX_WIDTH, HLS_8UC3>    		 HSC_YUV_IMAGE;
typedef HSC_YUV_IMAGE                                        			 HSC_RGB_IMAGE;
typedef hls::stream<YUV_MULTI_PIXEL>                      			     HSC_STREAM_MULTIPIX;


// top level function for HW synthesis
extern void v_tpg(
#if (ENABLE_AXI4S_SLAVE==1)
				HSC_AXI_STREAM_IN& hinput,
#endif
                U16 &height,
                U16 &width,
				U16 &field_id,
				bool &fid_in,
#if (ENABLE_AXI4S_SLAVE==1)
                U16 &passthruStartX,
                U16 &passthruStartY,
                U16 &passthruEndX,
                U16 &passthruEndY,
				U8  &enableInput,
#endif
                U8  &bckgndId,
                U8  &ovrlayId,
                U8 	&maskId,
                U8  &motionSpeed,
                U8  &colorFormat,
                U16 &crossHairX,
                U16 &crossHairY,
                U16 &ZplateHorContStart,
                U16 &ZplateHorContDelta,
                U16 &ZplateVerContStart,
                U16 &ZplateVerContDelta,
                U16 &boxSize,
                U16 &boxColorR,
                U16 &boxColorG,
                U16 &boxColorB,
			    U8  &dpDynamicRange,
			    U8  &dpYUVCoef,
				U16 &bck_motion_en,
                HSC_AXI_STREAM_OUT& houtput,
				bool& fid
                );

#endif
