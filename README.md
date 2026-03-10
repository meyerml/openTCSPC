# openTCSPC

<img src="https://microbots.io/cdn/shop/files/penny_600x.png?v=1719926378" alt="CodeCell" width="300" align="right" style="margin-left: 20px;">

## Overview

OpenTCSPC is an open source **Time Correlated Single Photon Counting** (TCSPC) System based on AMD Zynq SoC and a ScioSense GPX2 TDC. 

It consists of:
-  an FPGA extension card
-  FGPA HDL code
-  C-code for driving the FPGA.
  
For getting started, please have a look at the Quick Start guide.

This project uses HDL on Git ([hog]([https://microbots.io/pages/learn-codecell](https://hog.readthedocs.io/en/latest/index.html))): 
the main project (zedboard_emulated_microscope) uses 3 IP cores. Their HDL code is also part of this repository. 
in SRC/vitis/zedboard_emulated_microscope, the vitis code for the Zynq's ARM processor can be found.

Available Versions:

| Model | Microcontroller | Features | Typical Use |
|:------|:----------------|:----------|:-------------|
| **CodeCell C3 Light** | ESP32-C3-MINI-1-N4 | 4MB Flash, Wi-Fi 4 + BLE 5, LiPo Charging via USB-C, Light + Proximity Sensor | Basic sensing and IoT projects |
| **CodeCell C3** | ESP32-C3-MINI-1-N4 | 4MB Flash, Wi-Fi 4 + BLE 5, LiPo Charging via USB-C, Light + Proximity Sensor + 9-Axis IMU Motion Sensor | Robotics & Wearables |
| **CodeCell C6** | ESP32-C6-MINI-1-H8 | 8MB Flash, Wi-Fi 6 + BLE 5 + Zigbee, LiPo Charging via USB-C, Light + Proximity + 9-Axis IMU Sensor | Robotics & Wearables with Low-Power Modes |
| **CodeCell C6 Drive** | ESP32-C6-MINI-1-H8 | 8MB Flash, Wi-Fi 6 + BLE 5 + Zigbee, LiPo Charging via USB-C, Light + Proximity + 9-Axis IMU Sensor, Dual H-Bridge Motor Drivers | All-in-One Robotics Controller |

