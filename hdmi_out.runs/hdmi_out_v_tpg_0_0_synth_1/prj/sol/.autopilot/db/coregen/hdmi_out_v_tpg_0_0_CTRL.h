// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of height
//        bit 15~0 - height[15:0] (Read/Write)
//        others   - reserved
// 0x14 : reserved
// 0x18 : Data signal of width
//        bit 15~0 - width[15:0] (Read/Write)
//        others   - reserved
// 0x1c : reserved
// 0x20 : Data signal of bckgndId
//        bit 7~0 - bckgndId[7:0] (Read/Write)
//        others  - reserved
// 0x24 : reserved
// 0x28 : Data signal of ovrlayId
//        bit 7~0 - ovrlayId[7:0] (Read/Write)
//        others  - reserved
// 0x2c : reserved
// 0x30 : Data signal of maskId
//        bit 7~0 - maskId[7:0] (Read/Write)
//        others  - reserved
// 0x34 : reserved
// 0x38 : Data signal of motionSpeed
//        bit 7~0 - motionSpeed[7:0] (Read/Write)
//        others  - reserved
// 0x3c : reserved
// 0x40 : Data signal of colorFormat
//        bit 7~0 - colorFormat[7:0] (Read/Write)
//        others  - reserved
// 0x44 : reserved
// 0x48 : Data signal of crossHairX
//        bit 15~0 - crossHairX[15:0] (Read/Write)
//        others   - reserved
// 0x4c : reserved
// 0x50 : Data signal of crossHairY
//        bit 15~0 - crossHairY[15:0] (Read/Write)
//        others   - reserved
// 0x54 : reserved
// 0x58 : Data signal of ZplateHorContStart
//        bit 15~0 - ZplateHorContStart[15:0] (Read/Write)
//        others   - reserved
// 0x5c : reserved
// 0x60 : Data signal of ZplateHorContDelta
//        bit 15~0 - ZplateHorContDelta[15:0] (Read/Write)
//        others   - reserved
// 0x64 : reserved
// 0x68 : Data signal of ZplateVerContStart
//        bit 15~0 - ZplateVerContStart[15:0] (Read/Write)
//        others   - reserved
// 0x6c : reserved
// 0x70 : Data signal of ZplateVerContDelta
//        bit 15~0 - ZplateVerContDelta[15:0] (Read/Write)
//        others   - reserved
// 0x74 : reserved
// 0x78 : Data signal of boxSize
//        bit 15~0 - boxSize[15:0] (Read/Write)
//        others   - reserved
// 0x7c : reserved
// 0x80 : Data signal of boxColorR
//        bit 15~0 - boxColorR[15:0] (Read/Write)
//        others   - reserved
// 0x84 : reserved
// 0x88 : Data signal of boxColorG
//        bit 15~0 - boxColorG[15:0] (Read/Write)
//        others   - reserved
// 0x8c : reserved
// 0x90 : Data signal of boxColorB
//        bit 15~0 - boxColorB[15:0] (Read/Write)
//        others   - reserved
// 0x94 : reserved
// 0xc0 : Data signal of dpDynamicRange
//        bit 7~0 - dpDynamicRange[7:0] (Read/Write)
//        others  - reserved
// 0xc4 : reserved
// 0xc8 : Data signal of dpYUVCoef
//        bit 7~0 - dpYUVCoef[7:0] (Read/Write)
//        others  - reserved
// 0xcc : reserved
// 0xd0 : Data signal of field_id
//        bit 15~0 - field_id[15:0] (Read/Write)
//        others   - reserved
// 0xd4 : reserved
// 0xd8 : Data signal of bck_motion_en
//        bit 15~0 - bck_motion_en[15:0] (Read/Write)
//        others   - reserved
// 0xdc : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define HDMI_OUT_V_TPG_0_0_CTRL_ADDR_AP_CTRL                 0x00
#define HDMI_OUT_V_TPG_0_0_CTRL_ADDR_GIE                     0x04
#define HDMI_OUT_V_TPG_0_0_CTRL_ADDR_IER                     0x08
#define HDMI_OUT_V_TPG_0_0_CTRL_ADDR_ISR                     0x0c
#define HDMI_OUT_V_TPG_0_0_CTRL_ADDR_HEIGHT_DATA             0x10
#define HDMI_OUT_V_TPG_0_0_CTRL_BITS_HEIGHT_DATA             16
#define HDMI_OUT_V_TPG_0_0_CTRL_ADDR_WIDTH_DATA              0x18
#define HDMI_OUT_V_TPG_0_0_CTRL_BITS_WIDTH_DATA              16
#define HDMI_OUT_V_TPG_0_0_CTRL_ADDR_BCKGNDID_DATA           0x20
#define HDMI_OUT_V_TPG_0_0_CTRL_BITS_BCKGNDID_DATA           8
#define HDMI_OUT_V_TPG_0_0_CTRL_ADDR_OVRLAYID_DATA           0x28
#define HDMI_OUT_V_TPG_0_0_CTRL_BITS_OVRLAYID_DATA           8
#define HDMI_OUT_V_TPG_0_0_CTRL_ADDR_MASKID_DATA             0x30
#define HDMI_OUT_V_TPG_0_0_CTRL_BITS_MASKID_DATA             8
#define HDMI_OUT_V_TPG_0_0_CTRL_ADDR_MOTIONSPEED_DATA        0x38
#define HDMI_OUT_V_TPG_0_0_CTRL_BITS_MOTIONSPEED_DATA        8
#define HDMI_OUT_V_TPG_0_0_CTRL_ADDR_COLORFORMAT_DATA        0x40
#define HDMI_OUT_V_TPG_0_0_CTRL_BITS_COLORFORMAT_DATA        8
#define HDMI_OUT_V_TPG_0_0_CTRL_ADDR_CROSSHAIRX_DATA         0x48
#define HDMI_OUT_V_TPG_0_0_CTRL_BITS_CROSSHAIRX_DATA         16
#define HDMI_OUT_V_TPG_0_0_CTRL_ADDR_CROSSHAIRY_DATA         0x50
#define HDMI_OUT_V_TPG_0_0_CTRL_BITS_CROSSHAIRY_DATA         16
#define HDMI_OUT_V_TPG_0_0_CTRL_ADDR_ZPLATEHORCONTSTART_DATA 0x58
#define HDMI_OUT_V_TPG_0_0_CTRL_BITS_ZPLATEHORCONTSTART_DATA 16
#define HDMI_OUT_V_TPG_0_0_CTRL_ADDR_ZPLATEHORCONTDELTA_DATA 0x60
#define HDMI_OUT_V_TPG_0_0_CTRL_BITS_ZPLATEHORCONTDELTA_DATA 16
#define HDMI_OUT_V_TPG_0_0_CTRL_ADDR_ZPLATEVERCONTSTART_DATA 0x68
#define HDMI_OUT_V_TPG_0_0_CTRL_BITS_ZPLATEVERCONTSTART_DATA 16
#define HDMI_OUT_V_TPG_0_0_CTRL_ADDR_ZPLATEVERCONTDELTA_DATA 0x70
#define HDMI_OUT_V_TPG_0_0_CTRL_BITS_ZPLATEVERCONTDELTA_DATA 16
#define HDMI_OUT_V_TPG_0_0_CTRL_ADDR_BOXSIZE_DATA            0x78
#define HDMI_OUT_V_TPG_0_0_CTRL_BITS_BOXSIZE_DATA            16
#define HDMI_OUT_V_TPG_0_0_CTRL_ADDR_BOXCOLORR_DATA          0x80
#define HDMI_OUT_V_TPG_0_0_CTRL_BITS_BOXCOLORR_DATA          16
#define HDMI_OUT_V_TPG_0_0_CTRL_ADDR_BOXCOLORG_DATA          0x88
#define HDMI_OUT_V_TPG_0_0_CTRL_BITS_BOXCOLORG_DATA          16
#define HDMI_OUT_V_TPG_0_0_CTRL_ADDR_BOXCOLORB_DATA          0x90
#define HDMI_OUT_V_TPG_0_0_CTRL_BITS_BOXCOLORB_DATA          16
#define HDMI_OUT_V_TPG_0_0_CTRL_ADDR_DPDYNAMICRANGE_DATA     0xc0
#define HDMI_OUT_V_TPG_0_0_CTRL_BITS_DPDYNAMICRANGE_DATA     8
#define HDMI_OUT_V_TPG_0_0_CTRL_ADDR_DPYUVCOEF_DATA          0xc8
#define HDMI_OUT_V_TPG_0_0_CTRL_BITS_DPYUVCOEF_DATA          8
#define HDMI_OUT_V_TPG_0_0_CTRL_ADDR_FIELD_ID_DATA           0xd0
#define HDMI_OUT_V_TPG_0_0_CTRL_BITS_FIELD_ID_DATA           16
#define HDMI_OUT_V_TPG_0_0_CTRL_ADDR_BCK_MOTION_EN_DATA      0xd8
#define HDMI_OUT_V_TPG_0_0_CTRL_BITS_BCK_MOTION_EN_DATA      16
