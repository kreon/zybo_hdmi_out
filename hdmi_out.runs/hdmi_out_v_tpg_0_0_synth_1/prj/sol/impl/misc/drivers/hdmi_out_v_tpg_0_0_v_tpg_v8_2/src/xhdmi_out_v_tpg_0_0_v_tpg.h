// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XHDMI_OUT_V_TPG_0_0_V_TPG_H
#define XHDMI_OUT_V_TPG_0_0_V_TPG_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xhdmi_out_v_tpg_0_0_v_tpg_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Hdmi_out_v_tpg_0_0_ctrl_BaseAddress;
} XHdmi_out_v_tpg_0_0_v_tpg_Config;
#endif

typedef struct {
    u64 Hdmi_out_v_tpg_0_0_ctrl_BaseAddress;
    u32 IsReady;
} XHdmi_out_v_tpg_0_0_v_tpg;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XHdmi_out_v_tpg_0_0_v_tpg_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XHdmi_out_v_tpg_0_0_v_tpg_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XHdmi_out_v_tpg_0_0_v_tpg_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XHdmi_out_v_tpg_0_0_v_tpg_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XHdmi_out_v_tpg_0_0_v_tpg_Initialize(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, UINTPTR BaseAddress);
XHdmi_out_v_tpg_0_0_v_tpg_Config* XHdmi_out_v_tpg_0_0_v_tpg_LookupConfig(UINTPTR BaseAddress);
#else
int XHdmi_out_v_tpg_0_0_v_tpg_Initialize(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u16 DeviceId);
XHdmi_out_v_tpg_0_0_v_tpg_Config* XHdmi_out_v_tpg_0_0_v_tpg_LookupConfig(u16 DeviceId);
#endif
int XHdmi_out_v_tpg_0_0_v_tpg_CfgInitialize(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, XHdmi_out_v_tpg_0_0_v_tpg_Config *ConfigPtr);
#else
int XHdmi_out_v_tpg_0_0_v_tpg_Initialize(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, const char* InstanceName);
int XHdmi_out_v_tpg_0_0_v_tpg_Release(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr);
#endif

void XHdmi_out_v_tpg_0_0_v_tpg_Start(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr);
u32 XHdmi_out_v_tpg_0_0_v_tpg_IsDone(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr);
u32 XHdmi_out_v_tpg_0_0_v_tpg_IsIdle(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr);
u32 XHdmi_out_v_tpg_0_0_v_tpg_IsReady(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr);
void XHdmi_out_v_tpg_0_0_v_tpg_EnableAutoRestart(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr);
void XHdmi_out_v_tpg_0_0_v_tpg_DisableAutoRestart(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr);

void XHdmi_out_v_tpg_0_0_v_tpg_Set_height(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Data);
u32 XHdmi_out_v_tpg_0_0_v_tpg_Get_height(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr);
void XHdmi_out_v_tpg_0_0_v_tpg_Set_width(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Data);
u32 XHdmi_out_v_tpg_0_0_v_tpg_Get_width(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr);
void XHdmi_out_v_tpg_0_0_v_tpg_Set_bckgndId(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Data);
u32 XHdmi_out_v_tpg_0_0_v_tpg_Get_bckgndId(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr);
void XHdmi_out_v_tpg_0_0_v_tpg_Set_ovrlayId(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Data);
u32 XHdmi_out_v_tpg_0_0_v_tpg_Get_ovrlayId(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr);
void XHdmi_out_v_tpg_0_0_v_tpg_Set_maskId(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Data);
u32 XHdmi_out_v_tpg_0_0_v_tpg_Get_maskId(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr);
void XHdmi_out_v_tpg_0_0_v_tpg_Set_motionSpeed(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Data);
u32 XHdmi_out_v_tpg_0_0_v_tpg_Get_motionSpeed(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr);
void XHdmi_out_v_tpg_0_0_v_tpg_Set_colorFormat(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Data);
u32 XHdmi_out_v_tpg_0_0_v_tpg_Get_colorFormat(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr);
void XHdmi_out_v_tpg_0_0_v_tpg_Set_crossHairX(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Data);
u32 XHdmi_out_v_tpg_0_0_v_tpg_Get_crossHairX(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr);
void XHdmi_out_v_tpg_0_0_v_tpg_Set_crossHairY(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Data);
u32 XHdmi_out_v_tpg_0_0_v_tpg_Get_crossHairY(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr);
void XHdmi_out_v_tpg_0_0_v_tpg_Set_ZplateHorContStart(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Data);
u32 XHdmi_out_v_tpg_0_0_v_tpg_Get_ZplateHorContStart(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr);
void XHdmi_out_v_tpg_0_0_v_tpg_Set_ZplateHorContDelta(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Data);
u32 XHdmi_out_v_tpg_0_0_v_tpg_Get_ZplateHorContDelta(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr);
void XHdmi_out_v_tpg_0_0_v_tpg_Set_ZplateVerContStart(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Data);
u32 XHdmi_out_v_tpg_0_0_v_tpg_Get_ZplateVerContStart(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr);
void XHdmi_out_v_tpg_0_0_v_tpg_Set_ZplateVerContDelta(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Data);
u32 XHdmi_out_v_tpg_0_0_v_tpg_Get_ZplateVerContDelta(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr);
void XHdmi_out_v_tpg_0_0_v_tpg_Set_boxSize(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Data);
u32 XHdmi_out_v_tpg_0_0_v_tpg_Get_boxSize(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr);
void XHdmi_out_v_tpg_0_0_v_tpg_Set_boxColorR(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Data);
u32 XHdmi_out_v_tpg_0_0_v_tpg_Get_boxColorR(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr);
void XHdmi_out_v_tpg_0_0_v_tpg_Set_boxColorG(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Data);
u32 XHdmi_out_v_tpg_0_0_v_tpg_Get_boxColorG(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr);
void XHdmi_out_v_tpg_0_0_v_tpg_Set_boxColorB(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Data);
u32 XHdmi_out_v_tpg_0_0_v_tpg_Get_boxColorB(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr);
void XHdmi_out_v_tpg_0_0_v_tpg_Set_dpDynamicRange(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Data);
u32 XHdmi_out_v_tpg_0_0_v_tpg_Get_dpDynamicRange(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr);
void XHdmi_out_v_tpg_0_0_v_tpg_Set_dpYUVCoef(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Data);
u32 XHdmi_out_v_tpg_0_0_v_tpg_Get_dpYUVCoef(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr);
void XHdmi_out_v_tpg_0_0_v_tpg_Set_field_id(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Data);
u32 XHdmi_out_v_tpg_0_0_v_tpg_Get_field_id(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr);
void XHdmi_out_v_tpg_0_0_v_tpg_Set_bck_motion_en(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Data);
u32 XHdmi_out_v_tpg_0_0_v_tpg_Get_bck_motion_en(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr);

void XHdmi_out_v_tpg_0_0_v_tpg_InterruptGlobalEnable(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr);
void XHdmi_out_v_tpg_0_0_v_tpg_InterruptGlobalDisable(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr);
void XHdmi_out_v_tpg_0_0_v_tpg_InterruptEnable(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Mask);
void XHdmi_out_v_tpg_0_0_v_tpg_InterruptDisable(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Mask);
void XHdmi_out_v_tpg_0_0_v_tpg_InterruptClear(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Mask);
u32 XHdmi_out_v_tpg_0_0_v_tpg_InterruptGetEnabled(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr);
u32 XHdmi_out_v_tpg_0_0_v_tpg_InterruptGetStatus(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
