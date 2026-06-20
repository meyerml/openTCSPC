# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\openTCSPC3\SRC\zedboard_real_microscope\vitis\platform\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\openTCSPC3\SRC\zedboard_real_microscope\vitis\platform\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {platform}\
-hw {C:\openTCSPC3\SRC\zedboard_real_microscope\vitis\zedboard_real_microscope_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {C:/openTCSPC3/SRC/zedboard_real_microscope/vitis}

platform write
platform generate -domains 
platform active {platform}
platform generate
bsp reload
bsp setlib -name xilffs -ver 5.3
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_domain 
platform config -updatehw {C:/openTCSPC3/SRC/zedboard_real_microscope/vitis/zedboard_real_microscope_wrapper.xsa}
platform config -updatehw {C:/openTCSPC3/SRC/zedboard_real_microscope/vitis/zedboard_real_microscope_wrapper2.xsa}
platform generate -domains 
platform active {platform}
platform config -updatehw {C:/openTCSPC3/SRC/zedboard_real_microscope/vitis/zedboard_real_microscope_wrapper3.xsa}
platform generate -domains 
platform config -updatehw {C:/openTCSPC3/SRC/zedboard_real_microscope/vitis/zedboard_real_microscope_wrapper4.xsa}
platform generate -domains 
platform config -updatehw {C:/openTCSPC3/SRC/zedboard_real_microscope/vitis/zedboard_real_microscope_wrapper5.xsa}
platform generate -domains 
platform active {platform}
platform config -updatehw {C:/openTCSPC3/SRC/zedboard_real_microscope/vitis/zedboard_real_microscope_wrapper_fast_slew.xsa}
platform generate -domains 
platform active {platform}
platform config -updatehw {C:/openTCSPC3/SRC/zedboard_real_microscope/vitis/zedboard_real_microscope_wrapper_8_fast.xsa}
platform generate -domains 
platform config -updatehw {C:/openTCSPC3/SRC/zedboard_real_microscope/vitis/zedboard_real_microscope_wrapper_8_slow.xsa}
platform generate -domains 
