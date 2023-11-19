# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\xil_prj\hdmi_out\hdmi_out.vts\hdmi_out_system\_ide\scripts\debugger_hdmi_out-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\xil_prj\hdmi_out\hdmi_out.vts\hdmi_out_system\_ide\scripts\debugger_hdmi_out-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo 210279A427ADA" && level==0 && jtag_device_ctx=="jsn-Zybo-210279A427ADA-13722093-0"}
fpga -file C:/xil_prj/hdmi_out/hdmi_out.vts/hdmi_out/_ide/bitstream/hdmi_out_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/xil_prj/hdmi_out/hdmi_out.vts/hdmi_out_wrapper/export/hdmi_out_wrapper/hw/hdmi_out_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/xil_prj/hdmi_out/hdmi_out.vts/hdmi_out/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/xil_prj/hdmi_out/hdmi_out.vts/hdmi_out/Debug/hdmi_out.elf
configparams force-mem-access 0
bpadd -addr &main
