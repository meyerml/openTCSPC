//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Fri Jun 19 12:07:36 2026
//Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
//Command     : generate_target zedboard_real_microscope_wrapper.bd
//Design      : zedboard_real_microscope_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module zedboard_real_microscope_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    buffer_overflow,
    disable_p,
    frame_clk,
    frame_clk_sim,
    frame_n,
    frame_p,
    l_clk_in_n,
    l_clk_in_p,
    l_clk_out_n,
    l_clk_out_p,
    level_shifter_en,
    line_clk,
    line_clk_sim,
    pixel_clk,
    pixel_clk_sim,
    refclk_out_sim,
    refres_p,
    sdo_n,
    sdo_p,
    spi_cs_n,
    spi_miso,
    spi_mosi,
    spi_sclk,
    stop_out_sim);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output [0:0]buffer_overflow;
  output [0:0]disable_p;
  input frame_clk;
  output frame_clk_sim;
  input frame_n;
  input frame_p;
  input l_clk_in_n;
  input l_clk_in_p;
  output l_clk_out_n;
  output l_clk_out_p;
  output [0:0]level_shifter_en;
  input line_clk;
  output line_clk_sim;
  input pixel_clk;
  output pixel_clk_sim;
  output refclk_out_sim;
  output [0:0]refres_p;
  input sdo_n;
  input sdo_p;
  output [0:0]spi_cs_n;
  input spi_miso;
  output spi_mosi;
  output spi_sclk;
  output stop_out_sim;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [0:0]buffer_overflow;
  wire [0:0]disable_p;
  wire frame_clk;
  wire frame_clk_sim;
  wire frame_n;
  wire frame_p;
  wire l_clk_in_n;
  wire l_clk_in_p;
  wire l_clk_out_n;
  wire l_clk_out_p;
  wire [0:0]level_shifter_en;
  wire line_clk;
  wire line_clk_sim;
  wire pixel_clk;
  wire pixel_clk_sim;
  wire refclk_out_sim;
  wire [0:0]refres_p;
  wire sdo_n;
  wire sdo_p;
  wire [0:0]spi_cs_n;
  wire spi_miso;
  wire spi_mosi;
  wire spi_sclk;
  wire stop_out_sim;

  zedboard_real_microscope zedboard_real_microscope_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .buffer_overflow(buffer_overflow),
        .disable_p(disable_p),
        .frame_clk(frame_clk),
        .frame_clk_sim(frame_clk_sim),
        .frame_n(frame_n),
        .frame_p(frame_p),
        .l_clk_in_n(l_clk_in_n),
        .l_clk_in_p(l_clk_in_p),
        .l_clk_out_n(l_clk_out_n),
        .l_clk_out_p(l_clk_out_p),
        .level_shifter_en(level_shifter_en),
        .line_clk(line_clk),
        .line_clk_sim(line_clk_sim),
        .pixel_clk(pixel_clk),
        .pixel_clk_sim(pixel_clk_sim),
        .refclk_out_sim(refclk_out_sim),
        .refres_p(refres_p),
        .sdo_n(sdo_n),
        .sdo_p(sdo_p),
        .spi_cs_n(spi_cs_n),
        .spi_miso(spi_miso),
        .spi_mosi(spi_mosi),
        .spi_sclk(spi_sclk),
        .stop_out_sim(stop_out_sim));
endmodule
