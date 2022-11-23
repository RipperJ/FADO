// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XTOP_H
#define XTOP_H

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
#include "xtop_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_BaseAddress;
} XTop_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XTop;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XTop_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XTop_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XTop_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XTop_ReadReg(BaseAddress, RegOffset) \
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
int XTop_Initialize(XTop *InstancePtr, u16 DeviceId);
XTop_Config* XTop_LookupConfig(u16 DeviceId);
int XTop_CfgInitialize(XTop *InstancePtr, XTop_Config *ConfigPtr);
#else
int XTop_Initialize(XTop *InstancePtr, const char* InstanceName);
int XTop_Release(XTop *InstancePtr);
#endif

void XTop_Start(XTop *InstancePtr);
u32 XTop_IsDone(XTop *InstancePtr);
u32 XTop_IsIdle(XTop *InstancePtr);
u32 XTop_IsReady(XTop *InstancePtr);
void XTop_Continue(XTop *InstancePtr);
void XTop_EnableAutoRestart(XTop *InstancePtr);
void XTop_DisableAutoRestart(XTop *InstancePtr);

void XTop_Set_A(XTop *InstancePtr, u64 Data);
u64 XTop_Get_A(XTop *InstancePtr);
void XTop_Set_B(XTop *InstancePtr, u64 Data);
u64 XTop_Get_B(XTop *InstancePtr);
void XTop_Set_C(XTop *InstancePtr, u64 Data);
u64 XTop_Get_C(XTop *InstancePtr);
void XTop_Set_D(XTop *InstancePtr, u64 Data);
u64 XTop_Get_D(XTop *InstancePtr);

void XTop_InterruptGlobalEnable(XTop *InstancePtr);
void XTop_InterruptGlobalDisable(XTop *InstancePtr);
void XTop_InterruptEnable(XTop *InstancePtr, u32 Mask);
void XTop_InterruptDisable(XTop *InstancePtr, u32 Mask);
void XTop_InterruptClear(XTop *InstancePtr, u32 Mask);
u32 XTop_InterruptGetEnabled(XTop *InstancePtr);
u32 XTop_InterruptGetStatus(XTop *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
