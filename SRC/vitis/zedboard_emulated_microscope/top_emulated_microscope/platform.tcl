# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\openTCSPC3\SRC\vitis\zedboard_emulated_microscope\top_emulated_microscope\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\openTCSPC3\SRC\vitis\zedboard_emulated_microscope\top_emulated_microscope\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {top_emulated_microscope}\
-hw {C:\openTCSPC3\SRC\vitis\zedboard_emulated_microscope\top_emulated_microscope.xsa}\
-out {C:/openTCSPC3/SRC/vitis/zedboard_emulated_microscope}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {top_emulated_microscope}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
platform generate
platform active {top_emulated_microscope}
platform config -updatehw {C:/openTCSPC3/SRC/vitis/zedboard_emulated_microscope/top_emulated_microscope.xsa}
platform config -updatehw {C:/openTCSPC3/Projects/zedboard_emulated_microscope/top_emulated_microscope2.xsa}
platform generate -domains 
platform generate -domains standalone_ps7_cortexa9_0 
platform active {top_emulated_microscope}
platform config -updatehw {C:/openTCSPC3/Projects/zedboard_emulated_microscope/top_emulated_microscope3.xsa}
platform generate -domains 
platform config -updatehw {C:/openTCSPC3/Projects/zedboard_emulated_microscope/top_emulated_microscope4.xsa}
platform generate -domains 
platform config -updatehw {C:/openTCSPC3/Projects/zedboard_emulated_microscope/top_emulated_microscope5.xsa}
platform generate -domains 
platform config -updatehw {C:/openTCSPC3/Projects/zedboard_emulated_microscope/top_emulated_microscope6.xsa}
platform generate -domains 
platform generate -domains 
platform config -updatehw {C:/openTCSPC3/Projects/zedboard_emulated_microscope/top_emulated_microscope7.xsa}
platform generate -domains 
platform active {top_emulated_microscope}
platform config -updatehw {C:/openTCSPC3/Projects/zedboard_emulated_microscope/top_emulated_microscope8.xsa}
platform generate
platform config -updatehw {C:/openTCSPC3/Projects/zedboard_emulated_microscope/top_emulated_microscope9.xsa}
platform generate -domains 
platform active {top_emulated_microscope}
platform config -updatehw {C:/openTCSPC3/Projects/zedboard_emulated_microscope/top_emulated_microscope10.xsa}
platform generate
platform active {top_emulated_microscope}
platform config -updatehw {C:/openTCSPC3/Projects/zedboard_emulated_microscope/top_emulated_microscope11.xsa}
platform generate
platform active {top_emulated_microscope}
platform config -updatehw {C:/openTCSPC3/Projects/zedboard_emulated_microscope/top_emulated_microscope12.xsa}
platform generate -domains 
platform active {top_emulated_microscope}
platform config -updatehw {C:/openTCSPC3/Projects/zedboard_emulated_microscope/top_emulated_microscope13.xsa}
platform generate -domains 
platform config -updatehw {C:/openTCSPC3/Projects/zedboard_emulated_microscope/top_emulated_microscope14.xsa}
platform generate -domains 
platform config -updatehw {C:/openTCSPC3/Projects/zedboard_emulated_microscope/top_emulated_microscope15.xsa}
platform generate -domains 
platform config -updatehw {C:/openTCSPC3/Projects/zedboard_emulated_microscope/top_emulated_microscope16.xsa}
platform generate -domains 
platform config -updatehw {C:/openTCSPC3/Projects/zedboard_emulated_microscope/top_emulated_microscope17.xsa}
platform generate -domains 
platform config -updatehw {C:/openTCSPC3/Projects/zedboard_emulated_microscope/top_emulated_microscope18.xsa}
platform generate -domains 
platform config -updatehw {C:/openTCSPC3/Projects/zedboard_emulated_microscope/top_emulated_microscope19.xsa}
platform generate -domains 
platform config -updatehw {C:/openTCSPC3/Projects/zedboard_emulated_microscope/top_emulated_microscope20.xsa}
platform generate -domains 
