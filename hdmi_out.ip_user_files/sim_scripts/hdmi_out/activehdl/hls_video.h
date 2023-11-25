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
 * HLS Video Header File
 */

#ifndef ___HLS__VIDEO__
#define ___HLS__VIDEO__

#ifndef __cplusplus
#error C++ is required to include this header file
#endif

/* for safety*/
#if (defined(ROWS)|| defined(COLS) || defined(SRC_T) || defined(SRC1_T) || defined(SRC2_T) || defined(DST_T))
#error One or more of the following is defined: ROWS, COLS, SRC_T, SRC1_T, SRC2_T, DST_T. Definition conflicts with their usage as template parameters. 
#endif

#include "hls/hls_axi_io.h"
#include "hls_math.h"
#include "hls_stream.h"

#include "utils/x_hls_utils.h"
#include "utils/x_hls_traits.h"
#include "utils/x_hls_defines.h"
#include "hls/hls_video_types.h"
#include "hls/hls_video_mem.h"
#include "hls/hls_video_core.h"
#include "hls/hls_video_imgbase.h"
#include "hls/hls_video_io.h"

#include "hls/hls_video_arithm.h"
#include "hls/hls_video_imgproc.h"
#include "hls/hls_video_histogram.h"
#include "hls/hls_video_fast.h"
#include "hls/hls_video_undistort.h"
#include "hls/hls_video_hough.h"
#include "hls/hls_video_harris.h"
#include "hls/hls_video_haar.h"
#include "hls/hls_video_stereobm.h"

#endif


