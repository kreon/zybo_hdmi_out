
�
!Problem parsing board file - %s%s22*board2\
ZC:/Xilinx/Vivado/2023.2/data/xhub/boards/XilinxBoardStore/boards/Xilinx/zybo/B.3/board.xml2
 Z49-56h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:052

00:00:062	
478.5002	
189.773Z17-268h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
s
 Loaded user IP repository '%s'.
1135*coregen2,
*d:/Work/Boards/Zybo/Projects/hdmi_out/repoZ19-1700h px� 
[
 Loaded user IP repository '%s'.
1135*coregen2
c:/Xil_prj/libraryZ19-1700h px� 
j
"Loaded Vivado IP repository '%s'.
1332*coregen2!
C:/Xilinx/Vivado/2023.2/data/ipZ19-2313h px� 
�
�Duplicate Interface found for '%s'. The one found in location '%s' will take precedence over the same Interface in location '%s'2273*coregen2$
"digilentinc.com:interface:tmds:1.02K
Id:/Work/Boards/Zybo/Projects/hdmi_out/repo/digilent/if/tmds_v1_0/tmds.xml2*
(c:/Xil_prj/library/if/tmds_v1_0/tmds.xmlZ19-4830h px� 
g
-IPCACHE: Running cache check for IP inst: %s
2546*coregen2
hdmi_out_v_tc_1_0Z19-6924h px� 
�
Command: %s
53*	vivadotcl2f
dsynth_design -top hdmi_out_v_tc_1_0 -part xc7z010clg400-1 -incremental_mode off -mode out_of_contextZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7z010Z17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7z010Z17-349h px� 
D
Loading part %s157*device2
xc7z010clg400-1Z21-403h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
14492Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1335.559 ; gain = 440.531
h px� 
�
synthesizing module '%s'638*oasys2
hdmi_out_v_tc_1_02k
gc:/Xil_prj/hdmi_out/hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_v_tc_1_0/synth/hdmi_out_v_tc_1_0.vhd2
758@Z8-638h px� 
R
%s
*synth2:
8	Parameter C_HAS_AXI4_LITE bound to: 0 - type: integer 
h p
x
� 
P
%s
*synth28
6	Parameter C_HAS_INTC_IF bound to: 0 - type: integer 
h p
x
� 
U
%s
*synth2=
;	Parameter C_ARBITRARY_RES_EN bound to: 0 - type: integer 
h p
x
� 
L
%s
*synth24
2	Parameter C_VID_PPC bound to: 4 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_GEN_INTERLACED bound to: 0 - type: integer 
h p
x
� 
X
%s
*synth2@
>	Parameter C_GEN_HACTIVE_SIZE bound to: 1280 - type: integer 
h p
x
� 
X
%s
*synth2@
>	Parameter C_GEN_VACTIVE_SIZE bound to: 1024 - type: integer 
h p
x
� 
P
%s
*synth28
6	Parameter C_GEN_CPARITY bound to: 0 - type: integer 
h p
x
� 
Y
%s
*synth2A
?	Parameter C_GEN_FIELDID_POLARITY bound to: 1 - type: integer 
h p
x
� 
X
%s
*synth2@
>	Parameter C_GEN_VBLANK_POLARITY bound to: 1 - type: integer 
h p
x
� 
X
%s
*synth2@
>	Parameter C_GEN_HBLANK_POLARITY bound to: 1 - type: integer 
h p
x
� 
W
%s
*synth2?
=	Parameter C_GEN_VSYNC_POLARITY bound to: 1 - type: integer 
h p
x
� 
W
%s
*synth2?
=	Parameter C_GEN_HSYNC_POLARITY bound to: 1 - type: integer 
h p
x
� 
X
%s
*synth2@
>	Parameter C_GEN_AVIDEO_POLARITY bound to: 1 - type: integer 
h p
x
� 
Y
%s
*synth2A
?	Parameter C_GEN_ACHROMA_POLARITY bound to: 1 - type: integer 
h p
x
� 
U
%s
*synth2=
;	Parameter C_GEN_VIDEO_FORMAT bound to: 2 - type: integer 
h p
x
� 
W
%s
*synth2?
=	Parameter C_GEN_HFRAME_SIZE bound to: 1680 - type: integer 
h p
x
� 
Z
%s
*synth2B
@	Parameter C_GEN_F0_VFRAME_SIZE bound to: 1066 - type: integer 
h p
x
� 
Z
%s
*synth2B
@	Parameter C_GEN_F1_VFRAME_SIZE bound to: 1125 - type: integer 
h p
x
� 
W
%s
*synth2?
=	Parameter C_GEN_HSYNC_START bound to: 1328 - type: integer 
h p
x
� 
U
%s
*synth2=
;	Parameter C_GEN_HSYNC_END bound to: 1440 - type: integer 
h p
x
� 
\
%s
*synth2D
B	Parameter C_GEN_F0_VBLANK_HSTART bound to: 1280 - type: integer 
h p
x
� 
Z
%s
*synth2B
@	Parameter C_GEN_F0_VBLANK_HEND bound to: 1280 - type: integer 
h p
x
� 
[
%s
*synth2C
A	Parameter C_GEN_F0_VSYNC_VSTART bound to: 1024 - type: integer 
h p
x
� 
Y
%s
*synth2A
?	Parameter C_GEN_F0_VSYNC_VEND bound to: 1027 - type: integer 
h p
x
� 
[
%s
*synth2C
A	Parameter C_GEN_F0_VSYNC_HSTART bound to: 1280 - type: integer 
h p
x
� 
Y
%s
*synth2A
?	Parameter C_GEN_F0_VSYNC_HEND bound to: 1280 - type: integer 
h p
x
� 
\
%s
*synth2D
B	Parameter C_GEN_F1_VBLANK_HSTART bound to: 2008 - type: integer 
h p
x
� 
Z
%s
*synth2B
@	Parameter C_GEN_F1_VBLANK_HEND bound to: 2008 - type: integer 
h p
x
� 
[
%s
*synth2C
A	Parameter C_GEN_F1_VSYNC_VSTART bound to: 1083 - type: integer 
h p
x
� 
Y
%s
*synth2A
?	Parameter C_GEN_F1_VSYNC_VEND bound to: 1088 - type: integer 
h p
x
� 
[
%s
*synth2C
A	Parameter C_GEN_F1_VSYNC_HSTART bound to: 2008 - type: integer 
h p
x
� 
Y
%s
*synth2A
?	Parameter C_GEN_F1_VSYNC_HEND bound to: 2008 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_FSYNC_HSTART0 bound to: 0 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_FSYNC_VSTART0 bound to: 0 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_FSYNC_HSTART1 bound to: 0 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_FSYNC_VSTART1 bound to: 0 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_FSYNC_HSTART2 bound to: 0 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_FSYNC_VSTART2 bound to: 0 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_FSYNC_HSTART3 bound to: 0 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_FSYNC_VSTART3 bound to: 0 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_FSYNC_HSTART4 bound to: 0 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_FSYNC_VSTART4 bound to: 0 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_FSYNC_HSTART5 bound to: 0 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_FSYNC_VSTART5 bound to: 0 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_FSYNC_HSTART6 bound to: 0 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_FSYNC_VSTART6 bound to: 0 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_FSYNC_HSTART7 bound to: 0 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_FSYNC_VSTART7 bound to: 0 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_FSYNC_HSTART8 bound to: 0 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_FSYNC_VSTART8 bound to: 0 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_FSYNC_HSTART9 bound to: 0 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_FSYNC_VSTART9 bound to: 0 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_FSYNC_HSTART10 bound to: 0 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_FSYNC_VSTART10 bound to: 0 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_FSYNC_HSTART11 bound to: 0 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_FSYNC_VSTART11 bound to: 0 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_FSYNC_HSTART12 bound to: 0 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_FSYNC_VSTART12 bound to: 0 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_FSYNC_HSTART13 bound to: 0 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_FSYNC_VSTART13 bound to: 0 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_FSYNC_HSTART14 bound to: 0 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_FSYNC_VSTART14 bound to: 0 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_FSYNC_HSTART15 bound to: 0 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_FSYNC_VSTART15 bound to: 0 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_MAX_PIXELS bound to: 4096 - type: integer 
h p
x
� 
Q
%s
*synth29
7	Parameter C_MAX_LINES bound to: 4096 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter C_NUM_FSYNCS bound to: 1 - type: integer 
h p
x
� 
Q
%s
*synth29
7	Parameter C_INTERLACE_EN bound to: 0 - type: integer 
h p
x
� 
T
%s
*synth2<
:	Parameter C_GEN_AUTO_SWITCH bound to: 0 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter C_DETECT_EN bound to: 0 - type: integer 
h p
x
� 
L
%s
*synth24
2	Parameter C_SYNC_EN bound to: 0 - type: integer 
h p
x
� 
P
%s
*synth28
6	Parameter C_GENERATE_EN bound to: 1 - type: integer 
h p
x
� 
Q
%s
*synth29
7	Parameter C_DET_HSYNC_EN bound to: 1 - type: integer 
h p
x
� 
Q
%s
*synth29
7	Parameter C_DET_VSYNC_EN bound to: 1 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_DET_HBLANK_EN bound to: 1 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_DET_VBLANK_EN bound to: 1 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_DET_AVIDEO_EN bound to: 1 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_DET_ACHROMA_EN bound to: 0 - type: integer 
h p
x
� 
Q
%s
*synth29
7	Parameter C_GEN_HSYNC_EN bound to: 1 - type: integer 
h p
x
� 
Q
%s
*synth29
7	Parameter C_GEN_VSYNC_EN bound to: 1 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_GEN_HBLANK_EN bound to: 1 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_GEN_VBLANK_EN bound to: 1 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_GEN_AVIDEO_EN bound to: 1 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_GEN_ACHROMA_EN bound to: 0 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_GEN_FIELDID_EN bound to: 0 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_DET_FIELDID_EN bound to: 0 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
v_tc2_
]c:/Xil_prj/hdmi_out/hdmi_out.gen/sources_1/bd/hdmi_out/ipshared/0e63/hdl/v_tc_v6_2_vh_rfs.vhd2
95702
U02
v_tc2k
gc:/Xil_prj/hdmi_out/hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_v_tc_1_0/synth/hdmi_out_v_tc_1_0.vhd2
2448@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_cdc_single2
 2>
:C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2
1528@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_cdc_single2
 2
02
12>
:C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2
1528@Z8-6155h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
hdmi_out_v_tc_1_02
02
12k
gc:/Xil_prj/hdmi_out/hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_v_tc_1_0/synth/hdmi_out_v_tc_1_0.vhd2
758@Z8-256h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v0chroma_start[11]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v0chroma_start[10]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v0chroma_start[9]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v0chroma_start[8]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v0chroma_start[7]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v0chroma_start[6]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v0chroma_start[5]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v0chroma_start[4]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v0chroma_start[3]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v0chroma_start[2]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v0chroma_start[1]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v0chroma_start[0]2
tc_generatorZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1total[11]2
tc_generatorZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1total[10]2
tc_generatorZ8-7129h px� 
}
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1total[9]2
tc_generatorZ8-7129h px� 
}
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1total[8]2
tc_generatorZ8-7129h px� 
}
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1total[7]2
tc_generatorZ8-7129h px� 
}
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1total[6]2
tc_generatorZ8-7129h px� 
}
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1total[5]2
tc_generatorZ8-7129h px� 
}
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1total[4]2
tc_generatorZ8-7129h px� 
}
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1total[3]2
tc_generatorZ8-7129h px� 
}
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1total[2]2
tc_generatorZ8-7129h px� 
}
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1total[1]2
tc_generatorZ8-7129h px� 
}
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1total[0]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1fp_start[11]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1fp_start[10]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1fp_start[9]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1fp_start[8]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1fp_start[7]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1fp_start[6]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1fp_start[5]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1fp_start[4]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1fp_start[3]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1fp_start[2]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1fp_start[1]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1fp_start[0]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1sync_start[11]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1sync_start[10]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1sync_start[9]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1sync_start[8]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1sync_start[7]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1sync_start[6]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1sync_start[5]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1sync_start[4]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1sync_start[3]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1sync_start[2]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1sync_start[1]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1sync_start[0]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1bp_start[11]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1bp_start[10]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1bp_start[9]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1bp_start[8]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1bp_start[7]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1bp_start[6]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1bp_start[5]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1bp_start[4]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1bp_start[3]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1bp_start[2]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1bp_start[1]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1bp_start[0]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1active_start[11]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1active_start[10]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1active_start[9]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1active_start[8]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1active_start[7]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1active_start[6]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1active_start[5]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1active_start[4]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1active_start[3]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1active_start[2]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1active_start[1]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1active_start[0]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1chroma_start[11]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1chroma_start[10]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1chroma_start[9]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1chroma_start[8]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1chroma_start[7]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1chroma_start[6]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1chroma_start[5]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1chroma_start[4]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1chroma_start[3]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1chroma_start[2]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1chroma_start[1]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1chroma_start[0]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1fp_start_hori[11]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1fp_start_hori[10]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1fp_start_hori[9]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1fp_start_hori[8]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1fp_start_hori[7]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1fp_start_hori[6]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1fp_start_hori[5]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1fp_start_hori[4]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1fp_start_hori[3]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1fp_start_hori[2]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1fp_start_hori[1]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1fp_start_hori[0]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1sync_start_hori[11]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1sync_start_hori[10]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1sync_start_hori[9]2
tc_generatorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
gen_v1sync_start_hori[8]2
tc_generatorZ8-7129h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-71292
100Z17-14h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 1464.320 ; gain = 569.293
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 1464.320 ; gain = 569.293
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 1464.320 ; gain = 569.293
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0282

1464.3202
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2i
ec:/Xil_prj/hdmi_out/hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_v_tc_1_0/hdmi_out_v_tc_1_0_ooc.xdc2
U0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2i
ec:/Xil_prj/hdmi_out/hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_v_tc_1_0/hdmi_out_v_tc_1_0_ooc.xdc2
U0	8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2N
JC:/Xil_prj/hdmi_out/hdmi_out.runs/hdmi_out_v_tc_1_0_synth_1/dont_touch.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2N
JC:/Xil_prj/hdmi_out/hdmi_out.runs/hdmi_out_v_tc_1_0_synth_1/dont_touch.xdc8Z20-178h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2l
hc:/Xil_prj/hdmi_out/hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_v_tc_1_0/hdmi_out_v_tc_1_0_clocks.xdc2
U0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2l
hc:/Xil_prj/hdmi_out/hdmi_out.gen/sources_1/bd/hdmi_out/ip/hdmi_out_v_tc_1_0/hdmi_out_v_tc_1_0_clocks.xdc2
U0	8Z20-847h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2D
BC:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2%
#.Xil/hdmi_out_v_tc_1_0_propImpl.xdcZ1-236h px� 
Z
2%s XPM XDC files have been applied to the design.
665*project2
1Z1-1714h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1563.9612
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0182

1563.9732
0.012Z17-268h px� 
Q
!Incremental synthesis strategy %s2274*designutils2
offZ20-5008h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:14 ; elapsed = 00:00:14 . Memory (MB): peak = 1563.973 ; gain = 668.945
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Loading part: xc7z010clg400-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:14 ; elapsed = 00:00:14 . Memory (MB): peak = 1563.973 ; gain = 668.945
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:14 ; elapsed = 00:00:14 . Memory (MB): peak = 1563.973 ; gain = 668.945
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 1563.973 ; gain = 668.945
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   12 Bit       Adders := 3     
h p
x
� 
F
%s
*synth2.
,	   3 Input   12 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit       Adders := 1     
h p
x
� 
&
%s
*synth2
+---XORs : 
h p
x
� 
H
%s
*synth20
.	   2 Input      1 Bit         XORs := 7     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               32 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	               17 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	               12 Bit    Registers := 18    
h p
x
� 
H
%s
*synth20
.	                7 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                3 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                2 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 36    
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit        Muxes := 7     
h p
x
� 
F
%s
*synth2.
,	   2 Input   17 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   12 Bit        Muxes := 15    
h p
x
� 
F
%s
*synth2.
,	   3 Input   12 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 56    
h p
x
� 
F
%s
*synth2.
,	   5 Input    1 Bit        Muxes := 1     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
p
%s
*synth2X
VPart Resources:
DSPs: 80 (col length:40)
BRAMs: 120 (col length: RAMB18 40 RAMB36 20)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:17 ; elapsed = 00:00:17 . Memory (MB): peak = 1563.973 ; gain = 668.945
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 1563.973 ; gain = 668.945
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:22 ; elapsed = 00:00:22 . Memory (MB): peak = 1563.973 ; gain = 668.945
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 1563.973 ; gain = 668.945
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:26 ; elapsed = 00:00:26 . Memory (MB): peak = 1563.973 ; gain = 668.945
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:26 ; elapsed = 00:00:26 . Memory (MB): peak = 1563.973 ; gain = 668.945
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:26 ; elapsed = 00:00:26 . Memory (MB): peak = 1563.973 ; gain = 668.945
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:26 ; elapsed = 00:00:26 . Memory (MB): peak = 1563.973 ; gain = 668.945
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:26 ; elapsed = 00:00:26 . Memory (MB): peak = 1563.973 ; gain = 668.945
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:26 ; elapsed = 00:00:26 . Memory (MB): peak = 1563.973 ; gain = 668.945
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!

Static Shift Register Report:
h p
x
� 
�
%s
*synth2�
�+------------+-------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
h p
x
� 
�
%s
*synth2�
�|Module Name | RTL Name                      | Length | Width | Reset Signal | Pull out first Reg | Pull out last Reg | SRL16E | SRLC32E | 
h p
x
� 
�
%s
*synth2�
�+------------+-------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
h p
x
� 
�
%s
*synth2�
�|v_tc        | U_TC_TOP/detect_en_d_reg[3]   | 4      | 1     | YES          | NO                 | YES               | 1      | 0       | 
h p
x
� 
�
%s
*synth2�
�|v_tc        | U_TC_TOP/generate_en_d_reg[3] | 4      | 1     | YES          | NO                 | YES               | 1      | 0       | 
h p
x
� 
�
%s
*synth2�
�+------------+-------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+

h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|      |Cell   |Count |
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|1     |CARRY4 |    45|
h px� 
2
%s*synth2
|2     |LUT1   |    37|
h px� 
2
%s*synth2
|3     |LUT2   |    46|
h px� 
2
%s*synth2
|4     |LUT3   |    15|
h px� 
2
%s*synth2
|5     |LUT4   |    19|
h px� 
2
%s*synth2
|6     |LUT5   |     9|
h px� 
2
%s*synth2
|7     |LUT6   |    88|
h px� 
2
%s*synth2
|8     |SRL16E |     2|
h px� 
2
%s*synth2
|9     |FDRE   |   227|
h px� 
2
%s*synth2
|10    |FDSE   |    16|
h px� 
2
%s*synth2
+------+-------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:26 ; elapsed = 00:00:26 . Memory (MB): peak = 1563.973 ; gain = 668.945
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
c
%s
*synth2K
ISynthesis finished with 0 errors, 0 critical warnings and 1859 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:17 ; elapsed = 00:00:25 . Memory (MB): peak = 1563.973 ; gain = 569.293
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:26 ; elapsed = 00:00:26 . Memory (MB): peak = 1563.973 ; gain = 668.945
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0232

1563.9732
0.000Z17-268h px� 
T
-Analyzing %s Unisim elements for replacement
17*netlist2
45Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1563.9732
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

11a8c1f8Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
282
1022
12
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:292

00:00:302

1563.9732

1061.621Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0012

1563.9732
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2S
QC:/Xil_prj/hdmi_out/hdmi_out.runs/hdmi_out_v_tc_1_0_synth_1/hdmi_out_v_tc_1_0.dcpZ17-1381h px� 
�
<Added synthesis output to IP cache for IP %s, cache-ID = %s
485*coretcl2
hdmi_out_v_tc_1_02
0a064c19472f210dZ2-1648h px� 
>
Renamed %s cell refs.
330*coretcl2
5Z2-1174h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0012

1563.9732
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2S
QC:/Xil_prj/hdmi_out/hdmi_out.runs/hdmi_out_v_tc_1_0_synth_1/hdmi_out_v_tc_1_0.dcpZ17-1381h px� 
�
%s4*runtcl2z
xExecuting : report_utilization -file hdmi_out_v_tc_1_0_utilization_synth.rpt -pb hdmi_out_v_tc_1_0_utilization_synth.pb
h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Thu Nov 23 11:44:05 2023Z17-206h px� 


End Record