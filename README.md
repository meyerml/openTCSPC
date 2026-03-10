# openTCSPC


## Overview
<img src="https://github.com/meyerml/openTCSPC/blob/main/images/pcb.png?raw=true" alt="PCB" width="300" align="right" style="margin-left: 20px;">

OpenTCSPC is an open source **Time Correlated Single Photon Counting** (TCSPC) System based on AMD Zynq SoC and a ScioSense GPX2 TDC. 

It consists of:
-  an FPGA extension card
-  FGPA HDL code
-  C-code for driving the FPGA.
  
For getting started, please have a look at the Quick Start guide.

This project uses HDL on Git ([hog]([https://microbots.io/pages/learn-codecell](https://hog.readthedocs.io/en/latest/index.html))): 
the main project (zedboard_emulated_microscope) uses 3 IP cores. Their HDL code is also part of this repository. 
in SRC/vitis/zedboard_emulated_microscope, the vitis code for the Zynq's ARM processor can be found.



