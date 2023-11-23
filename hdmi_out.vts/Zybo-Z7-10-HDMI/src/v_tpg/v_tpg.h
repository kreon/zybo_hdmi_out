/************************************************************************/
/*																		*/
/*	v_tpg.h	--		for Zynq systems						*/
/*																		*/
/************************************************************************/
/*	Author: 											*/
/*	Copyright 2023								*/
/************************************************************************/
/*  Module Description: 												*/
/*																		*/
/*		Implements an accurate delay function using the scu	timer.     	*/
/*		Code from this module will cause conflicts with other code that */
/*		requires the Zynq's scu timer.									*/
/*																		*/
/*		This module contains code from the Xilinx Demo titled			*/
/*		"xscutimer_polled_example.c"									*/
/*																		*/
/************************************************************************/
/*  Revision History:													*/
/* 																		*/
/*		21/11/2023(SamB): Created										*/
/*																		*/
/************************************************************************/
#ifndef V_TPG_H_
#define V_TPG_H_

#include "xil_types.h"
#include "xparameters.h"

#include "sleep.h"
#include "xv_tpg.h"
#include "xvtc.h"
#include "xvidc.h"

/* ------------------------------------------------------------ */
/*					Miscellaneous Declarations					*/
/* ------------------------------------------------------------ */


/* ------------------------------------------------------------ */
/*					Procedure Declarations						*/
/* ------------------------------------------------------------ */

int v_tpg(void);

/* ------------------------------------------------------------ */

/************************************************************************/


#endif /* V_TPG_H_ */
