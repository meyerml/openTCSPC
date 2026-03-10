# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\openTCSPC3\SRC\vitis\platform\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\openTCSPC3\SRC\vitis\platform\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {platform}\
-hw {C:\Users\marce\OneDrive\Dokumente\zynq_project\photonsorting\sg_stream\signal_generator_wrapper63.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {C:/openTCSPC3/SRC/vitis}

platform write
platform generate -domains 
platform active {platform}
platform generate
platform config -updatehw {C:/openTCSPC3/SRC/vitis/zedboard_emulated_microscope/top_emulated_microscope.xsa}
platform generate -domains 
platform generate -domains standalone_domain 
