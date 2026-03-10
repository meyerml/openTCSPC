// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Mar 10 16:59:58 2026
// Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/marce/OneDrive/Desktop/openTCSPC3/SRC/Microscope/Microscope.gen/sources_1/bd/laser/ip/laser_laser_signal_generat_0_0/laser_laser_signal_generat_0_0_stub.v
// Design      : laser_laser_signal_generat_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "laser_laser_signal_generat_0_0,laser_signal_generator,{}" *) (* CORE_GENERATION_INFO = "laser_laser_signal_generat_0_0,laser_signal_generator,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=laser_signal_generator,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,return_counter_clocks=16,pulses_per_photon=4,pulses_per_photon_return=8,warmup_pulses=16,addr_width=18}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "laser_signal_generator,Vivado 2024.2" *) 
module laser_laser_signal_generat_0_0(en, aresetn, clk, image_size, pulses_per_pixel, 
  refclk_out, stop_out, frame_clk_r, line_clk_r, pixel_clk_r, CNTVALUEOUT_dbg, 
  warmup_pulse_counter_dbg, start_frame_dbg, state_dbg, line_complete_dbg, 
  pixel_complete_dbg, m_arvalid_n_dbg, m_arvalid_r_dbg, m_araddr, m_arvalid, m_arready, 
  m_rdata, m_rvalid, m_rready)
/* synthesis syn_black_box black_box_pad_pin="en,aresetn,image_size[31:0],pulses_per_pixel[31:0],refclk_out,stop_out,frame_clk_r,line_clk_r,pixel_clk_r,CNTVALUEOUT_dbg[4:0],warmup_pulse_counter_dbg[3:0],start_frame_dbg,state_dbg[2:0],line_complete_dbg,pixel_complete_dbg,m_arvalid_n_dbg,m_arvalid_r_dbg,m_araddr[17:0],m_arvalid,m_arready,m_rdata[31:0],m_rvalid,m_rready" */
/* synthesis syn_force_seq_prim="clk" */;
  input en;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF AXI4lite_m, ASSOCIATED_RESET aresetn, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN laser_laser_clk, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  input [31:0]image_size;
  input [31:0]pulses_per_pixel;
  output refclk_out;
  output stop_out;
  output frame_clk_r;
  output line_clk_r;
  output pixel_clk_r;
  output [4:0]CNTVALUEOUT_dbg;
  output [3:0]warmup_pulse_counter_dbg;
  output start_frame_dbg;
  output [2:0]state_dbg;
  output line_complete_dbg;
  output pixel_complete_dbg;
  output m_arvalid_n_dbg;
  output m_arvalid_r_dbg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4lite_m ARADDR" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI4lite_m, FREQ_HZ 10000000, DATA_WIDTH 32, PROTOCOL AXI4LITE, ID_WIDTH 0, ADDR_WIDTH 18, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN laser_laser_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [17:0]m_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4lite_m ARVALID" *) output m_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4lite_m ARREADY" *) input m_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4lite_m RDATA" *) input [31:0]m_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4lite_m RVALID" *) input m_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4lite_m RREADY" *) output m_rready;
endmodule
