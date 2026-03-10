// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module laser (
  S_AXI_araddr,
  S_AXI_arprot,
  S_AXI_arready,
  S_AXI_arvalid,
  S_AXI_awaddr,
  S_AXI_awprot,
  S_AXI_awready,
  S_AXI_awvalid,
  S_AXI_bready,
  S_AXI_bresp,
  S_AXI_bvalid,
  S_AXI_rdata,
  S_AXI_rready,
  S_AXI_rresp,
  S_AXI_rvalid,
  S_AXI_wdata,
  S_AXI_wready,
  S_AXI_wstrb,
  S_AXI_wvalid,
  en,
  frame_clk,
  image_size,
  line_clk,
  pixel_clk,
  pulses_per_pixel,
  refclk_out,
  stop_out,
  axi_clk,
  axi_aresetn,
  laser_clk,
  laser_aresetn
);

  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *)
  (* X_INTERFACE_MODE = "slave S_AXI" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 18, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN laser_axi_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
  input [17:0]S_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *)
  input [2:0]S_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *)
  output S_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *)
  input S_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *)
  input [17:0]S_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *)
  input [2:0]S_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *)
  output S_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *)
  input S_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *)
  input S_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *)
  output [1:0]S_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *)
  output S_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *)
  output [31:0]S_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *)
  input S_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *)
  output [1:0]S_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *)
  output S_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *)
  input [31:0]S_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *)
  output S_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *)
  input [3:0]S_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *)
  input S_AXI_wvalid;
  (* X_INTERFACE_IGNORE = "true" *)
  input en;
  (* X_INTERFACE_IGNORE = "true" *)
  output frame_clk;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]image_size;
  (* X_INTERFACE_IGNORE = "true" *)
  output line_clk;
  (* X_INTERFACE_IGNORE = "true" *)
  output pixel_clk;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]pulses_per_pixel;
  (* X_INTERFACE_IGNORE = "true" *)
  output refclk_out;
  (* X_INTERFACE_IGNORE = "true" *)
  output stop_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AXI_CLK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.AXI_CLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AXI_CLK, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN laser_axi_clk, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET axi_aresetn, INSERT_VIP 0" *)
  input axi_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AXI_ARESETN RST" *)
  (* X_INTERFACE_MODE = "slave RST.AXI_ARESETN" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  input axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.LASER_CLK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.LASER_CLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.LASER_CLK, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN laser_laser_clk, ASSOCIATED_RESET aresetn_laser:laser_aresetn, INSERT_VIP 0" *)
  input laser_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.LASER_ARESETN RST" *)
  (* X_INTERFACE_MODE = "slave RST.LASER_ARESETN" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.LASER_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  input laser_aresetn;

  // stub module has no contents

endmodule
