# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\xil_prj\hdmi_out\hdmi_out.vts\hdmi_out_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\xil_prj\hdmi_out\hdmi_out.vts\hdmi_out_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {hdmi_out_wrapper}\
-hw {C:\xil_prj\hdmi_out\hdmi_out_wrapper.xsa}\
-out {C:/xil_prj/hdmi_out/hdmi_out.vts}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {hdmi_out_wrapper}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
platform active {hdmi_out_wrapper}
platform config -updatehw {C:/xil_prj/hdmi_out/hdmi_out_wrapper.xsa}
platform generate -domains 
platform generate
platform active {hdmi_out_wrapper}
platform config -updatehw {C:/xil_prj/hdmi_out/hdmi_out_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/xil_prj/hdmi_out/hdmi_out_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/xil_prj/hdmi_out/hdmi_out_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/xil_prj/hdmi_out/hdmi_out_wrapper.xsa}
platform generate -domains 
platform config -remove-boot-bsp
platform write
platform generate -domains zynq_fsbl 
platform config -updatehw {C:/xil_prj/hdmi_out/hdmi_out_wrapper.xsa}
platform generate -domains 
bsp reload
platform generate -domains 
platform config -updatehw {C:/xil_prj/hdmi_out/hdmi_out_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/xil_prj/hdmi_out/hdmi_out_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/xil_prj/hdmi_out/hdmi_out_wrapper.xsa}
platform generate -domains 
platform active {hdmi_out_wrapper}
bsp reload
platform generate -domains 
platform config -updatehw {C:/xil_prj/hdmi_out/hdmi_out_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/xil_prj/hdmi_out/hdmi_out_wrapper.xsa}
platform generate -domains 
bsp reload
platform generate -domains 
platform active {hdmi_out_wrapper}
platform config -updatehw {C:/xil_prj/hdmi_out/hdmi_out_wrapper.xsa}
platform generate -domains 
