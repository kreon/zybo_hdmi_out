// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xhdmi_out_v_tpg_0_0_v_tpg.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XHdmi_out_v_tpg_0_0_v_tpg_CfgInitialize(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, XHdmi_out_v_tpg_0_0_v_tpg_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress = ConfigPtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XHdmi_out_v_tpg_0_0_v_tpg_Start(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_out_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_AP_CTRL) & 0x80;
    XHdmi_out_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XHdmi_out_v_tpg_0_0_v_tpg_IsDone(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_out_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XHdmi_out_v_tpg_0_0_v_tpg_IsIdle(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_out_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XHdmi_out_v_tpg_0_0_v_tpg_IsReady(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_out_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XHdmi_out_v_tpg_0_0_v_tpg_EnableAutoRestart(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_out_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_AP_CTRL, 0x80);
}

void XHdmi_out_v_tpg_0_0_v_tpg_DisableAutoRestart(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_out_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_AP_CTRL, 0);
}

void XHdmi_out_v_tpg_0_0_v_tpg_Set_height(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_out_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_HEIGHT_DATA, Data);
}

u32 XHdmi_out_v_tpg_0_0_v_tpg_Get_height(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_out_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_HEIGHT_DATA);
    return Data;
}

void XHdmi_out_v_tpg_0_0_v_tpg_Set_width(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_out_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_WIDTH_DATA, Data);
}

u32 XHdmi_out_v_tpg_0_0_v_tpg_Get_width(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_out_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_WIDTH_DATA);
    return Data;
}

void XHdmi_out_v_tpg_0_0_v_tpg_Set_bckgndId(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_out_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_BCKGNDID_DATA, Data);
}

u32 XHdmi_out_v_tpg_0_0_v_tpg_Get_bckgndId(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_out_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_BCKGNDID_DATA);
    return Data;
}

void XHdmi_out_v_tpg_0_0_v_tpg_Set_ovrlayId(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_out_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_OVRLAYID_DATA, Data);
}

u32 XHdmi_out_v_tpg_0_0_v_tpg_Get_ovrlayId(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_out_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_OVRLAYID_DATA);
    return Data;
}

void XHdmi_out_v_tpg_0_0_v_tpg_Set_maskId(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_out_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_MASKID_DATA, Data);
}

u32 XHdmi_out_v_tpg_0_0_v_tpg_Get_maskId(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_out_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_MASKID_DATA);
    return Data;
}

void XHdmi_out_v_tpg_0_0_v_tpg_Set_motionSpeed(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_out_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_MOTIONSPEED_DATA, Data);
}

u32 XHdmi_out_v_tpg_0_0_v_tpg_Get_motionSpeed(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_out_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_MOTIONSPEED_DATA);
    return Data;
}

void XHdmi_out_v_tpg_0_0_v_tpg_Set_colorFormat(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_out_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_COLORFORMAT_DATA, Data);
}

u32 XHdmi_out_v_tpg_0_0_v_tpg_Get_colorFormat(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_out_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_COLORFORMAT_DATA);
    return Data;
}

void XHdmi_out_v_tpg_0_0_v_tpg_Set_crossHairX(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_out_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_CROSSHAIRX_DATA, Data);
}

u32 XHdmi_out_v_tpg_0_0_v_tpg_Get_crossHairX(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_out_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_CROSSHAIRX_DATA);
    return Data;
}

void XHdmi_out_v_tpg_0_0_v_tpg_Set_crossHairY(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_out_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_CROSSHAIRY_DATA, Data);
}

u32 XHdmi_out_v_tpg_0_0_v_tpg_Get_crossHairY(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_out_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_CROSSHAIRY_DATA);
    return Data;
}

void XHdmi_out_v_tpg_0_0_v_tpg_Set_ZplateHorContStart(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_out_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_ZPLATEHORCONTSTART_DATA, Data);
}

u32 XHdmi_out_v_tpg_0_0_v_tpg_Get_ZplateHorContStart(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_out_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_ZPLATEHORCONTSTART_DATA);
    return Data;
}

void XHdmi_out_v_tpg_0_0_v_tpg_Set_ZplateHorContDelta(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_out_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_ZPLATEHORCONTDELTA_DATA, Data);
}

u32 XHdmi_out_v_tpg_0_0_v_tpg_Get_ZplateHorContDelta(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_out_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_ZPLATEHORCONTDELTA_DATA);
    return Data;
}

void XHdmi_out_v_tpg_0_0_v_tpg_Set_ZplateVerContStart(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_out_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_ZPLATEVERCONTSTART_DATA, Data);
}

u32 XHdmi_out_v_tpg_0_0_v_tpg_Get_ZplateVerContStart(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_out_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_ZPLATEVERCONTSTART_DATA);
    return Data;
}

void XHdmi_out_v_tpg_0_0_v_tpg_Set_ZplateVerContDelta(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_out_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_ZPLATEVERCONTDELTA_DATA, Data);
}

u32 XHdmi_out_v_tpg_0_0_v_tpg_Get_ZplateVerContDelta(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_out_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_ZPLATEVERCONTDELTA_DATA);
    return Data;
}

void XHdmi_out_v_tpg_0_0_v_tpg_Set_boxSize(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_out_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_BOXSIZE_DATA, Data);
}

u32 XHdmi_out_v_tpg_0_0_v_tpg_Get_boxSize(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_out_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_BOXSIZE_DATA);
    return Data;
}

void XHdmi_out_v_tpg_0_0_v_tpg_Set_boxColorR(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_out_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_BOXCOLORR_DATA, Data);
}

u32 XHdmi_out_v_tpg_0_0_v_tpg_Get_boxColorR(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_out_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_BOXCOLORR_DATA);
    return Data;
}

void XHdmi_out_v_tpg_0_0_v_tpg_Set_boxColorG(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_out_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_BOXCOLORG_DATA, Data);
}

u32 XHdmi_out_v_tpg_0_0_v_tpg_Get_boxColorG(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_out_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_BOXCOLORG_DATA);
    return Data;
}

void XHdmi_out_v_tpg_0_0_v_tpg_Set_boxColorB(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_out_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_BOXCOLORB_DATA, Data);
}

u32 XHdmi_out_v_tpg_0_0_v_tpg_Get_boxColorB(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_out_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_BOXCOLORB_DATA);
    return Data;
}

void XHdmi_out_v_tpg_0_0_v_tpg_Set_dpDynamicRange(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_out_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_DPDYNAMICRANGE_DATA, Data);
}

u32 XHdmi_out_v_tpg_0_0_v_tpg_Get_dpDynamicRange(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_out_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_DPDYNAMICRANGE_DATA);
    return Data;
}

void XHdmi_out_v_tpg_0_0_v_tpg_Set_dpYUVCoef(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_out_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_DPYUVCOEF_DATA, Data);
}

u32 XHdmi_out_v_tpg_0_0_v_tpg_Get_dpYUVCoef(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_out_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_DPYUVCOEF_DATA);
    return Data;
}

void XHdmi_out_v_tpg_0_0_v_tpg_Set_field_id(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_out_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_FIELD_ID_DATA, Data);
}

u32 XHdmi_out_v_tpg_0_0_v_tpg_Get_field_id(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_out_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_FIELD_ID_DATA);
    return Data;
}

void XHdmi_out_v_tpg_0_0_v_tpg_Set_bck_motion_en(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_out_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_BCK_MOTION_EN_DATA, Data);
}

u32 XHdmi_out_v_tpg_0_0_v_tpg_Get_bck_motion_en(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_out_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_BCK_MOTION_EN_DATA);
    return Data;
}

void XHdmi_out_v_tpg_0_0_v_tpg_InterruptGlobalEnable(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_out_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_GIE, 1);
}

void XHdmi_out_v_tpg_0_0_v_tpg_InterruptGlobalDisable(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_out_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_GIE, 0);
}

void XHdmi_out_v_tpg_0_0_v_tpg_InterruptEnable(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XHdmi_out_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_IER);
    XHdmi_out_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_IER, Register | Mask);
}

void XHdmi_out_v_tpg_0_0_v_tpg_InterruptDisable(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XHdmi_out_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_IER);
    XHdmi_out_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_IER, Register & (~Mask));
}

void XHdmi_out_v_tpg_0_0_v_tpg_InterruptClear(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_out_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_ISR, Mask);
}

u32 XHdmi_out_v_tpg_0_0_v_tpg_InterruptGetEnabled(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHdmi_out_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_IER);
}

u32 XHdmi_out_v_tpg_0_0_v_tpg_InterruptGetStatus(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHdmi_out_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_out_v_tpg_0_0_ctrl_BaseAddress, XHDMI_OUT_V_TPG_0_0_V_TPG_HDMI_OUT_V_TPG_0_0_CTRL_ADDR_ISR);
}

