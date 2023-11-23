// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xhdmi_out_v_tpg_0_0_v_tpg.h"

extern XHdmi_out_v_tpg_0_0_v_tpg_Config XHdmi_out_v_tpg_0_0_v_tpg_ConfigTable[];

#ifdef SDT
XHdmi_out_v_tpg_0_0_v_tpg_Config *XHdmi_out_v_tpg_0_0_v_tpg_LookupConfig(UINTPTR BaseAddress) {
	XHdmi_out_v_tpg_0_0_v_tpg_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XHdmi_out_v_tpg_0_0_v_tpg_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XHdmi_out_v_tpg_0_0_v_tpg_ConfigTable[Index].Hdmi_out_v_tpg_0_0_ctrl_BaseAddress == BaseAddress) {
			ConfigPtr = &XHdmi_out_v_tpg_0_0_v_tpg_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XHdmi_out_v_tpg_0_0_v_tpg_Initialize(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, UINTPTR BaseAddress) {
	XHdmi_out_v_tpg_0_0_v_tpg_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XHdmi_out_v_tpg_0_0_v_tpg_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XHdmi_out_v_tpg_0_0_v_tpg_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XHdmi_out_v_tpg_0_0_v_tpg_Config *XHdmi_out_v_tpg_0_0_v_tpg_LookupConfig(u16 DeviceId) {
	XHdmi_out_v_tpg_0_0_v_tpg_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XHDMI_OUT_V_TPG_0_0_V_TPG_NUM_INSTANCES; Index++) {
		if (XHdmi_out_v_tpg_0_0_v_tpg_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XHdmi_out_v_tpg_0_0_v_tpg_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XHdmi_out_v_tpg_0_0_v_tpg_Initialize(XHdmi_out_v_tpg_0_0_v_tpg *InstancePtr, u16 DeviceId) {
	XHdmi_out_v_tpg_0_0_v_tpg_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XHdmi_out_v_tpg_0_0_v_tpg_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XHdmi_out_v_tpg_0_0_v_tpg_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

