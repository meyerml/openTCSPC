// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sun Apr 12 20:17:03 2026
// Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/openTCSPC3/SRC/LVDS_to_AXIS_IDDR.gen/sources_1/bd/LVDS_to_AXIS_IDDR/ip/LVDS_to_AXIS_IDDR_DDR_Stream_to_AXI_St_1_0/LVDS_to_AXIS_IDDR_DDR_Stream_to_AXI_St_1_0_sim_netlist.v
// Design      : LVDS_to_AXIS_IDDR_DDR_Stream_to_AXI_St_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "LVDS_to_AXIS_IDDR_DDR_Stream_to_AXI_St_1_0,DDR_Stream_to_AXI_Stream_IDDR,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "DDR_Stream_to_AXI_Stream_IDDR,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module LVDS_to_AXIS_IDDR_DDR_Stream_to_AXI_St_1_0
   (enable,
    msglen,
    aresetn,
    C,
    D,
    F,
    tready,
    tdata_out,
    tvalid_out);
  input enable;
  input [5:0]msglen;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input C;
  input D;
  input F;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TREADY" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXIS, FREQ_HZ 100000000, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) output [63:0]tdata_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TVALID" *) output tvalid_out;

  wire C;
  wire D;
  wire F;
  wire aresetn;
  wire enable;
  wire [5:0]msglen;
  wire [63:0]tdata_out;
  wire tvalid_out;

  LVDS_to_AXIS_IDDR_DDR_Stream_to_AXI_St_1_0_DDR_Stream_to_AXI_Stream_IDDR inst
       (.C(C),
        .D(D),
        .F(F),
        .aresetn(aresetn),
        .enable(enable),
        .msglen(msglen),
        .tdata_out(tdata_out),
        .tvalid_out(tvalid_out));
endmodule

(* ORIG_REF_NAME = "DDR_Stream_to_AXI_Stream_IDDR" *) 
module LVDS_to_AXIS_IDDR_DDR_Stream_to_AXI_St_1_0_DDR_Stream_to_AXI_Stream_IDDR
   (tdata_out,
    tvalid_out,
    msglen,
    C,
    enable,
    D,
    F,
    aresetn);
  output [63:0]tdata_out;
  output tvalid_out;
  input [5:0]msglen;
  input C;
  input enable;
  input D;
  input F;
  input aresetn;

  wire C;
  wire D;
  wire F;
  wire F_old;
  wire F_old_i_1_n_0;
  wire F_reg;
  wire Q1_D;
  wire Q1_F;
  wire Q1_F_old;
  wire Q2_D;
  wire Q2_F;
  wire Q2_F_old;
  wire aresetn;
  wire data0;
  wire data1;
  wire data10;
  wire data11;
  wire data12;
  wire data13;
  wire data14;
  wire data15;
  wire data2;
  wire data3;
  wire data4;
  wire data5;
  wire data6;
  wire data7;
  wire data8;
  wire data9;
  wire enable;
  wire [63:1]gen_mask_return;
  wire [0:0]gen_mask_return0;
  wire gen_mask_return_carry__0_i_1_n_0;
  wire gen_mask_return_carry__0_i_2_n_0;
  wire gen_mask_return_carry__0_i_3_n_0;
  wire gen_mask_return_carry__0_i_4_n_0;
  wire gen_mask_return_carry__0_n_0;
  wire gen_mask_return_carry__0_n_1;
  wire gen_mask_return_carry__0_n_2;
  wire gen_mask_return_carry__0_n_3;
  wire gen_mask_return_carry__10_i_1_n_0;
  wire gen_mask_return_carry__10_i_2_n_0;
  wire gen_mask_return_carry__10_i_3_n_0;
  wire gen_mask_return_carry__10_i_4_n_0;
  wire gen_mask_return_carry__10_n_0;
  wire gen_mask_return_carry__10_n_1;
  wire gen_mask_return_carry__10_n_2;
  wire gen_mask_return_carry__10_n_3;
  wire gen_mask_return_carry__11_i_1_n_0;
  wire gen_mask_return_carry__11_i_2_n_0;
  wire gen_mask_return_carry__11_i_3_n_0;
  wire gen_mask_return_carry__11_i_4_n_0;
  wire gen_mask_return_carry__11_n_0;
  wire gen_mask_return_carry__11_n_1;
  wire gen_mask_return_carry__11_n_2;
  wire gen_mask_return_carry__11_n_3;
  wire gen_mask_return_carry__12_i_1_n_0;
  wire gen_mask_return_carry__12_i_2_n_0;
  wire gen_mask_return_carry__12_i_3_n_0;
  wire gen_mask_return_carry__12_i_4_n_0;
  wire gen_mask_return_carry__12_n_0;
  wire gen_mask_return_carry__12_n_1;
  wire gen_mask_return_carry__12_n_2;
  wire gen_mask_return_carry__12_n_3;
  wire gen_mask_return_carry__13_i_1_n_0;
  wire gen_mask_return_carry__13_i_2_n_0;
  wire gen_mask_return_carry__13_i_3_n_0;
  wire gen_mask_return_carry__13_i_4_n_0;
  wire gen_mask_return_carry__13_n_0;
  wire gen_mask_return_carry__13_n_1;
  wire gen_mask_return_carry__13_n_2;
  wire gen_mask_return_carry__13_n_3;
  wire gen_mask_return_carry__14_i_1_n_0;
  wire gen_mask_return_carry__14_i_2_n_0;
  wire gen_mask_return_carry__14_i_3_n_0;
  wire gen_mask_return_carry__14_n_2;
  wire gen_mask_return_carry__14_n_3;
  wire gen_mask_return_carry__1_i_1_n_0;
  wire gen_mask_return_carry__1_i_2_n_0;
  wire gen_mask_return_carry__1_i_3_n_0;
  wire gen_mask_return_carry__1_i_4_n_0;
  wire gen_mask_return_carry__1_n_0;
  wire gen_mask_return_carry__1_n_1;
  wire gen_mask_return_carry__1_n_2;
  wire gen_mask_return_carry__1_n_3;
  wire gen_mask_return_carry__2_i_1_n_0;
  wire gen_mask_return_carry__2_i_2_n_0;
  wire gen_mask_return_carry__2_i_3_n_0;
  wire gen_mask_return_carry__2_i_4_n_0;
  wire gen_mask_return_carry__2_n_0;
  wire gen_mask_return_carry__2_n_1;
  wire gen_mask_return_carry__2_n_2;
  wire gen_mask_return_carry__2_n_3;
  wire gen_mask_return_carry__3_i_1_n_0;
  wire gen_mask_return_carry__3_i_2_n_0;
  wire gen_mask_return_carry__3_i_3_n_0;
  wire gen_mask_return_carry__3_i_4_n_0;
  wire gen_mask_return_carry__3_n_0;
  wire gen_mask_return_carry__3_n_1;
  wire gen_mask_return_carry__3_n_2;
  wire gen_mask_return_carry__3_n_3;
  wire gen_mask_return_carry__4_i_1_n_0;
  wire gen_mask_return_carry__4_i_2_n_0;
  wire gen_mask_return_carry__4_i_3_n_0;
  wire gen_mask_return_carry__4_i_4_n_0;
  wire gen_mask_return_carry__4_n_0;
  wire gen_mask_return_carry__4_n_1;
  wire gen_mask_return_carry__4_n_2;
  wire gen_mask_return_carry__4_n_3;
  wire gen_mask_return_carry__5_i_1_n_0;
  wire gen_mask_return_carry__5_i_2_n_0;
  wire gen_mask_return_carry__5_i_3_n_0;
  wire gen_mask_return_carry__5_i_4_n_0;
  wire gen_mask_return_carry__5_n_0;
  wire gen_mask_return_carry__5_n_1;
  wire gen_mask_return_carry__5_n_2;
  wire gen_mask_return_carry__5_n_3;
  wire gen_mask_return_carry__6_i_1_n_0;
  wire gen_mask_return_carry__6_i_2_n_0;
  wire gen_mask_return_carry__6_i_3_n_0;
  wire gen_mask_return_carry__6_i_4_n_0;
  wire gen_mask_return_carry__6_n_0;
  wire gen_mask_return_carry__6_n_1;
  wire gen_mask_return_carry__6_n_2;
  wire gen_mask_return_carry__6_n_3;
  wire gen_mask_return_carry__7_i_1_n_0;
  wire gen_mask_return_carry__7_i_2_n_0;
  wire gen_mask_return_carry__7_i_3_n_0;
  wire gen_mask_return_carry__7_i_4_n_0;
  wire gen_mask_return_carry__7_n_0;
  wire gen_mask_return_carry__7_n_1;
  wire gen_mask_return_carry__7_n_2;
  wire gen_mask_return_carry__7_n_3;
  wire gen_mask_return_carry__8_i_1_n_0;
  wire gen_mask_return_carry__8_i_2_n_0;
  wire gen_mask_return_carry__8_i_3_n_0;
  wire gen_mask_return_carry__8_i_4_n_0;
  wire gen_mask_return_carry__8_n_0;
  wire gen_mask_return_carry__8_n_1;
  wire gen_mask_return_carry__8_n_2;
  wire gen_mask_return_carry__8_n_3;
  wire gen_mask_return_carry__9_i_1_n_0;
  wire gen_mask_return_carry__9_i_2_n_0;
  wire gen_mask_return_carry__9_i_3_n_0;
  wire gen_mask_return_carry__9_i_4_n_0;
  wire gen_mask_return_carry__9_n_0;
  wire gen_mask_return_carry__9_n_1;
  wire gen_mask_return_carry__9_n_2;
  wire gen_mask_return_carry__9_n_3;
  wire gen_mask_return_carry_i_2_n_0;
  wire gen_mask_return_carry_i_3_n_0;
  wire gen_mask_return_carry_i_4_n_0;
  wire gen_mask_return_carry_i_5_n_0;
  wire gen_mask_return_carry_n_0;
  wire gen_mask_return_carry_n_1;
  wire gen_mask_return_carry_n_2;
  wire gen_mask_return_carry_n_3;
  wire [5:0]msglen;
  wire \negedge_Qs_reg_n_0_[0] ;
  wire \negedge_Qs_reg_n_0_[10] ;
  wire \negedge_Qs_reg_n_0_[11] ;
  wire \negedge_Qs_reg_n_0_[12] ;
  wire \negedge_Qs_reg_n_0_[13] ;
  wire \negedge_Qs_reg_n_0_[14] ;
  wire \negedge_Qs_reg_n_0_[15] ;
  wire \negedge_Qs_reg_n_0_[16] ;
  wire \negedge_Qs_reg_n_0_[17] ;
  wire \negedge_Qs_reg_n_0_[18] ;
  wire \negedge_Qs_reg_n_0_[19] ;
  wire \negedge_Qs_reg_n_0_[20] ;
  wire \negedge_Qs_reg_n_0_[21] ;
  wire \negedge_Qs_reg_n_0_[22] ;
  wire \negedge_Qs_reg_n_0_[23] ;
  wire \negedge_Qs_reg_n_0_[24] ;
  wire \negedge_Qs_reg_n_0_[25] ;
  wire \negedge_Qs_reg_n_0_[26] ;
  wire \negedge_Qs_reg_n_0_[27] ;
  wire \negedge_Qs_reg_n_0_[28] ;
  wire \negedge_Qs_reg_n_0_[29] ;
  wire \negedge_Qs_reg_n_0_[2] ;
  wire \negedge_Qs_reg_n_0_[30] ;
  wire \negedge_Qs_reg_n_0_[31] ;
  wire \negedge_Qs_reg_n_0_[3] ;
  wire \negedge_Qs_reg_n_0_[4] ;
  wire \negedge_Qs_reg_n_0_[5] ;
  wire \negedge_Qs_reg_n_0_[6] ;
  wire \negedge_Qs_reg_n_0_[7] ;
  wire \negedge_Qs_reg_n_0_[8] ;
  wire \negedge_Qs_reg_n_0_[9] ;
  wire p_0_in;
  wire [31:0]posedge_Qs;
  wire posedge_first;
  wire posedge_first_i_1_n_0;
  wire shift_register_in;
  wire shift_register_in0;
  wire \shift_register_reg_n_0_[0] ;
  wire \shift_register_reg_n_0_[1] ;
  wire \shift_register_reg_n_0_[2] ;
  wire \shift_register_reg_n_0_[3] ;
  wire \shift_register_reg_n_0_[4] ;
  wire \shift_register_reg_n_0_[5] ;
  wire [63:0]tdata;
  wire \tdata[0]_i_1_n_0 ;
  wire \tdata[10]_i_1_n_0 ;
  wire \tdata[11]_i_1_n_0 ;
  wire \tdata[12]_i_1_n_0 ;
  wire \tdata[13]_i_1_n_0 ;
  wire \tdata[14]_i_1_n_0 ;
  wire \tdata[15]_i_1_n_0 ;
  wire \tdata[16]_i_1_n_0 ;
  wire \tdata[17]_i_1_n_0 ;
  wire \tdata[18]_i_1_n_0 ;
  wire \tdata[19]_i_1_n_0 ;
  wire \tdata[1]_i_1_n_0 ;
  wire \tdata[20]_i_1_n_0 ;
  wire \tdata[21]_i_1_n_0 ;
  wire \tdata[22]_i_1_n_0 ;
  wire \tdata[23]_i_1_n_0 ;
  wire \tdata[24]_i_1_n_0 ;
  wire \tdata[25]_i_1_n_0 ;
  wire \tdata[26]_i_1_n_0 ;
  wire \tdata[27]_i_1_n_0 ;
  wire \tdata[28]_i_1_n_0 ;
  wire \tdata[29]_i_1_n_0 ;
  wire \tdata[2]_i_1_n_0 ;
  wire \tdata[30]_i_1_n_0 ;
  wire \tdata[31]_i_1_n_0 ;
  wire \tdata[32]_i_1_n_0 ;
  wire \tdata[33]_i_1_n_0 ;
  wire \tdata[34]_i_1_n_0 ;
  wire \tdata[35]_i_1_n_0 ;
  wire \tdata[36]_i_1_n_0 ;
  wire \tdata[37]_i_1_n_0 ;
  wire \tdata[38]_i_1_n_0 ;
  wire \tdata[39]_i_1_n_0 ;
  wire \tdata[3]_i_1_n_0 ;
  wire \tdata[40]_i_1_n_0 ;
  wire \tdata[41]_i_1_n_0 ;
  wire \tdata[42]_i_1_n_0 ;
  wire \tdata[43]_i_1_n_0 ;
  wire \tdata[44]_i_1_n_0 ;
  wire \tdata[45]_i_1_n_0 ;
  wire \tdata[46]_i_1_n_0 ;
  wire \tdata[47]_i_1_n_0 ;
  wire \tdata[48]_i_1_n_0 ;
  wire \tdata[49]_i_1_n_0 ;
  wire \tdata[4]_i_1_n_0 ;
  wire \tdata[50]_i_1_n_0 ;
  wire \tdata[51]_i_1_n_0 ;
  wire \tdata[52]_i_1_n_0 ;
  wire \tdata[53]_i_1_n_0 ;
  wire \tdata[54]_i_1_n_0 ;
  wire \tdata[55]_i_1_n_0 ;
  wire \tdata[56]_i_1_n_0 ;
  wire \tdata[57]_i_1_n_0 ;
  wire \tdata[58]_i_1_n_0 ;
  wire \tdata[59]_i_1_n_0 ;
  wire \tdata[5]_i_1_n_0 ;
  wire \tdata[60]_i_1_n_0 ;
  wire \tdata[61]_i_1_n_0 ;
  wire \tdata[62]_i_1_n_0 ;
  wire \tdata[63]_i_1_n_0 ;
  wire \tdata[6]_i_1_n_0 ;
  wire \tdata[7]_i_1_n_0 ;
  wire \tdata[8]_i_1_n_0 ;
  wire \tdata[9]_i_1_n_0 ;
  wire [63:0]tdata_delayed;
  wire \tdata_delayed[0]_i_1_n_0 ;
  wire \tdata_delayed[0]_i_2_n_0 ;
  wire \tdata_delayed[10]_i_1_n_0 ;
  wire \tdata_delayed[11]_i_1_n_0 ;
  wire \tdata_delayed[12]_i_1_n_0 ;
  wire \tdata_delayed[13]_i_1_n_0 ;
  wire \tdata_delayed[14]_i_1_n_0 ;
  wire \tdata_delayed[15]_i_1_n_0 ;
  wire \tdata_delayed[16]_i_1_n_0 ;
  wire \tdata_delayed[17]_i_1_n_0 ;
  wire \tdata_delayed[18]_i_1_n_0 ;
  wire \tdata_delayed[19]_i_1_n_0 ;
  wire \tdata_delayed[1]_i_1_n_0 ;
  wire \tdata_delayed[20]_i_1_n_0 ;
  wire \tdata_delayed[21]_i_1_n_0 ;
  wire \tdata_delayed[22]_i_1_n_0 ;
  wire \tdata_delayed[23]_i_1_n_0 ;
  wire \tdata_delayed[24]_i_1_n_0 ;
  wire \tdata_delayed[25]_i_1_n_0 ;
  wire \tdata_delayed[26]_i_1_n_0 ;
  wire \tdata_delayed[27]_i_1_n_0 ;
  wire \tdata_delayed[28]_i_1_n_0 ;
  wire \tdata_delayed[29]_i_1_n_0 ;
  wire \tdata_delayed[2]_i_1_n_0 ;
  wire \tdata_delayed[30]_i_1_n_0 ;
  wire \tdata_delayed[31]_i_1_n_0 ;
  wire \tdata_delayed[32]_i_1_n_0 ;
  wire \tdata_delayed[33]_i_1_n_0 ;
  wire \tdata_delayed[34]_i_1_n_0 ;
  wire \tdata_delayed[35]_i_1_n_0 ;
  wire \tdata_delayed[36]_i_1_n_0 ;
  wire \tdata_delayed[37]_i_1_n_0 ;
  wire \tdata_delayed[38]_i_1_n_0 ;
  wire \tdata_delayed[39]_i_1_n_0 ;
  wire \tdata_delayed[3]_i_1_n_0 ;
  wire \tdata_delayed[40]_i_1_n_0 ;
  wire \tdata_delayed[41]_i_1_n_0 ;
  wire \tdata_delayed[42]_i_1_n_0 ;
  wire \tdata_delayed[43]_i_1_n_0 ;
  wire \tdata_delayed[44]_i_1_n_0 ;
  wire \tdata_delayed[45]_i_1_n_0 ;
  wire \tdata_delayed[46]_i_1_n_0 ;
  wire \tdata_delayed[47]_i_1_n_0 ;
  wire \tdata_delayed[48]_i_1_n_0 ;
  wire \tdata_delayed[49]_i_1_n_0 ;
  wire \tdata_delayed[4]_i_1_n_0 ;
  wire \tdata_delayed[50]_i_1_n_0 ;
  wire \tdata_delayed[51]_i_1_n_0 ;
  wire \tdata_delayed[52]_i_1_n_0 ;
  wire \tdata_delayed[53]_i_1_n_0 ;
  wire \tdata_delayed[54]_i_1_n_0 ;
  wire \tdata_delayed[55]_i_1_n_0 ;
  wire \tdata_delayed[56]_i_1_n_0 ;
  wire \tdata_delayed[57]_i_1_n_0 ;
  wire \tdata_delayed[58]_i_1_n_0 ;
  wire \tdata_delayed[59]_i_1_n_0 ;
  wire \tdata_delayed[5]_i_1_n_0 ;
  wire \tdata_delayed[60]_i_1_n_0 ;
  wire \tdata_delayed[61]_i_1_n_0 ;
  wire \tdata_delayed[62]_i_1_n_0 ;
  wire \tdata_delayed[63]_i_1_n_0 ;
  wire \tdata_delayed[6]_i_1_n_0 ;
  wire \tdata_delayed[7]_i_1_n_0 ;
  wire \tdata_delayed[8]_i_1_n_0 ;
  wire \tdata_delayed[9]_i_1_n_0 ;
  wire [63:0]tdata_out;
  wire \tdata_out[63]_i_1_n_0 ;
  wire tdata_posedge_first0;
  wire tvalid;
  wire tvalid_2;
  wire tvalid_delayed_i_1_n_0;
  wire tvalid_delayed_reg_n_0;
  wire tvalid_i_1_n_0;
  wire tvalid_i_2_n_0;
  wire tvalid_i_6_n_0;
  wire tvalid_i_7_n_0;
  wire tvalid_i_8_n_0;
  wire tvalid_i_9_n_0;
  wire tvalid_out;
  wire tvalid_reg_i_3_n_0;
  wire tvalid_reg_i_4_n_0;
  wire [3:2]NLW_gen_mask_return_carry__14_CO_UNCONNECTED;
  wire [3:3]NLW_gen_mask_return_carry__14_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'hB8)) 
    F_old_i_1
       (.I0(F_reg),
        .I1(aresetn),
        .I2(F_old),
        .O(F_old_i_1_n_0));
  FDRE F_old_reg
       (.C(C),
        .CE(1'b1),
        .D(F_old_i_1_n_0),
        .Q(F_old),
        .R(1'b0));
  FDCE F_reg_reg
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(F),
        .Q(F_reg));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    IDDR_D
       (.C(C),
        .CE(enable),
        .D(D),
        .Q1(Q1_D),
        .Q2(Q2_D),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    IDDR_F
       (.C(C),
        .CE(enable),
        .D(F),
        .Q1(Q1_F),
        .Q2(Q2_F),
        .R(1'b0),
        .S(1'b0));
  FDCE Q1_F_old_reg
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(Q1_F),
        .Q(Q1_F_old));
  FDCE Q2_F_old_reg
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(Q2_F),
        .Q(Q2_F_old));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_mask_return_carry
       (.CI(1'b0),
        .CO({gen_mask_return_carry_n_0,gen_mask_return_carry_n_1,gen_mask_return_carry_n_2,gen_mask_return_carry_n_3}),
        .CYINIT(gen_mask_return0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(gen_mask_return[4:1]),
        .S({gen_mask_return_carry_i_2_n_0,gen_mask_return_carry_i_3_n_0,gen_mask_return_carry_i_4_n_0,gen_mask_return_carry_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_mask_return_carry__0
       (.CI(gen_mask_return_carry_n_0),
        .CO({gen_mask_return_carry__0_n_0,gen_mask_return_carry__0_n_1,gen_mask_return_carry__0_n_2,gen_mask_return_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(gen_mask_return[8:5]),
        .S({gen_mask_return_carry__0_i_1_n_0,gen_mask_return_carry__0_i_2_n_0,gen_mask_return_carry__0_i_3_n_0,gen_mask_return_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    gen_mask_return_carry__0_i_1
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFFFF)) 
    gen_mask_return_carry__0_i_2
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    gen_mask_return_carry__0_i_3
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    gen_mask_return_carry__0_i_4
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[0]),
        .I4(msglen[1]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_mask_return_carry__1
       (.CI(gen_mask_return_carry__0_n_0),
        .CO({gen_mask_return_carry__1_n_0,gen_mask_return_carry__1_n_1,gen_mask_return_carry__1_n_2,gen_mask_return_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(gen_mask_return[12:9]),
        .S({gen_mask_return_carry__1_i_1_n_0,gen_mask_return_carry__1_i_2_n_0,gen_mask_return_carry__1_i_3_n_0,gen_mask_return_carry__1_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_mask_return_carry__10
       (.CI(gen_mask_return_carry__9_n_0),
        .CO({gen_mask_return_carry__10_n_0,gen_mask_return_carry__10_n_1,gen_mask_return_carry__10_n_2,gen_mask_return_carry__10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(gen_mask_return[48:45]),
        .S({gen_mask_return_carry__10_i_1_n_0,gen_mask_return_carry__10_i_2_n_0,gen_mask_return_carry__10_i_3_n_0,gen_mask_return_carry__10_i_4_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    gen_mask_return_carry__10_i_1
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__10_i_1_n_0));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    gen_mask_return_carry__10_i_2
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__10_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    gen_mask_return_carry__10_i_3
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__10_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    gen_mask_return_carry__10_i_4
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[5]),
        .I3(msglen[0]),
        .I4(msglen[1]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__10_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_mask_return_carry__11
       (.CI(gen_mask_return_carry__10_n_0),
        .CO({gen_mask_return_carry__11_n_0,gen_mask_return_carry__11_n_1,gen_mask_return_carry__11_n_2,gen_mask_return_carry__11_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(gen_mask_return[52:49]),
        .S({gen_mask_return_carry__11_i_1_n_0,gen_mask_return_carry__11_i_2_n_0,gen_mask_return_carry__11_i_3_n_0,gen_mask_return_carry__11_i_4_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFFFFFFF)) 
    gen_mask_return_carry__11_i_1
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__11_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFDFFFFFFF)) 
    gen_mask_return_carry__11_i_2
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__11_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
    gen_mask_return_carry__11_i_3
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__11_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
    gen_mask_return_carry__11_i_4
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[0]),
        .I4(msglen[1]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__11_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_mask_return_carry__12
       (.CI(gen_mask_return_carry__11_n_0),
        .CO({gen_mask_return_carry__12_n_0,gen_mask_return_carry__12_n_1,gen_mask_return_carry__12_n_2,gen_mask_return_carry__12_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(gen_mask_return[56:53]),
        .S({gen_mask_return_carry__12_i_1_n_0,gen_mask_return_carry__12_i_2_n_0,gen_mask_return_carry__12_i_3_n_0,gen_mask_return_carry__12_i_4_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF7F)) 
    gen_mask_return_carry__12_i_1
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__12_i_1_n_0));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    gen_mask_return_carry__12_i_2
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__12_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    gen_mask_return_carry__12_i_3
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__12_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    gen_mask_return_carry__12_i_4
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[0]),
        .I4(msglen[1]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__12_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_mask_return_carry__13
       (.CI(gen_mask_return_carry__12_n_0),
        .CO({gen_mask_return_carry__13_n_0,gen_mask_return_carry__13_n_1,gen_mask_return_carry__13_n_2,gen_mask_return_carry__13_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(gen_mask_return[60:57]),
        .S({gen_mask_return_carry__13_i_1_n_0,gen_mask_return_carry__13_i_2_n_0,gen_mask_return_carry__13_i_3_n_0,gen_mask_return_carry__13_i_4_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFF7FFFFFFFFF)) 
    gen_mask_return_carry__13_i_1
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__13_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFF)) 
    gen_mask_return_carry__13_i_2
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__13_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    gen_mask_return_carry__13_i_3
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__13_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    gen_mask_return_carry__13_i_4
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[0]),
        .I4(msglen[1]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__13_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_mask_return_carry__14
       (.CI(gen_mask_return_carry__13_n_0),
        .CO({NLW_gen_mask_return_carry__14_CO_UNCONNECTED[3:2],gen_mask_return_carry__14_n_2,gen_mask_return_carry__14_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b1}),
        .O({NLW_gen_mask_return_carry__14_O_UNCONNECTED[3],gen_mask_return[63:61]}),
        .S({1'b0,gen_mask_return_carry__14_i_1_n_0,gen_mask_return_carry__14_i_2_n_0,gen_mask_return_carry__14_i_3_n_0}));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    gen_mask_return_carry__14_i_1
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__14_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    gen_mask_return_carry__14_i_2
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__14_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    gen_mask_return_carry__14_i_3
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[0]),
        .I4(msglen[1]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__14_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    gen_mask_return_carry__1_i_1
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFDFFFFFF)) 
    gen_mask_return_carry__1_i_2
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    gen_mask_return_carry__1_i_3
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    gen_mask_return_carry__1_i_4
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[5]),
        .I3(msglen[0]),
        .I4(msglen[1]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_mask_return_carry__2
       (.CI(gen_mask_return_carry__1_n_0),
        .CO({gen_mask_return_carry__2_n_0,gen_mask_return_carry__2_n_1,gen_mask_return_carry__2_n_2,gen_mask_return_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(gen_mask_return[16:13]),
        .S({gen_mask_return_carry__2_i_1_n_0,gen_mask_return_carry__2_i_2_n_0,gen_mask_return_carry__2_i_3_n_0,gen_mask_return_carry__2_i_4_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    gen_mask_return_carry__2_i_1
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__2_i_1_n_0));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    gen_mask_return_carry__2_i_2
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__2_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    gen_mask_return_carry__2_i_3
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    gen_mask_return_carry__2_i_4
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[5]),
        .I3(msglen[0]),
        .I4(msglen[1]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_mask_return_carry__3
       (.CI(gen_mask_return_carry__2_n_0),
        .CO({gen_mask_return_carry__3_n_0,gen_mask_return_carry__3_n_1,gen_mask_return_carry__3_n_2,gen_mask_return_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(gen_mask_return[20:17]),
        .S({gen_mask_return_carry__3_i_1_n_0,gen_mask_return_carry__3_i_2_n_0,gen_mask_return_carry__3_i_3_n_0,gen_mask_return_carry__3_i_4_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    gen_mask_return_carry__3_i_1
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__3_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFDFFFFFF)) 
    gen_mask_return_carry__3_i_2
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__3_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    gen_mask_return_carry__3_i_3
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__3_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    gen_mask_return_carry__3_i_4
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[0]),
        .I4(msglen[1]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_mask_return_carry__4
       (.CI(gen_mask_return_carry__3_n_0),
        .CO({gen_mask_return_carry__4_n_0,gen_mask_return_carry__4_n_1,gen_mask_return_carry__4_n_2,gen_mask_return_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(gen_mask_return[24:21]),
        .S({gen_mask_return_carry__4_i_1_n_0,gen_mask_return_carry__4_i_2_n_0,gen_mask_return_carry__4_i_3_n_0,gen_mask_return_carry__4_i_4_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    gen_mask_return_carry__4_i_1
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__4_i_1_n_0));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    gen_mask_return_carry__4_i_2
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__4_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    gen_mask_return_carry__4_i_3
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__4_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    gen_mask_return_carry__4_i_4
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[0]),
        .I4(msglen[1]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_mask_return_carry__5
       (.CI(gen_mask_return_carry__4_n_0),
        .CO({gen_mask_return_carry__5_n_0,gen_mask_return_carry__5_n_1,gen_mask_return_carry__5_n_2,gen_mask_return_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(gen_mask_return[28:25]),
        .S({gen_mask_return_carry__5_i_1_n_0,gen_mask_return_carry__5_i_2_n_0,gen_mask_return_carry__5_i_3_n_0,gen_mask_return_carry__5_i_4_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFF7FFFFFFFF)) 
    gen_mask_return_carry__5_i_1
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__5_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFF7FFFFFF)) 
    gen_mask_return_carry__5_i_2
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__5_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
    gen_mask_return_carry__5_i_3
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__5_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
    gen_mask_return_carry__5_i_4
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[0]),
        .I4(msglen[1]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_mask_return_carry__6
       (.CI(gen_mask_return_carry__5_n_0),
        .CO({gen_mask_return_carry__6_n_0,gen_mask_return_carry__6_n_1,gen_mask_return_carry__6_n_2,gen_mask_return_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(gen_mask_return[32:29]),
        .S({gen_mask_return_carry__6_i_1_n_0,gen_mask_return_carry__6_i_2_n_0,gen_mask_return_carry__6_i_3_n_0,gen_mask_return_carry__6_i_4_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    gen_mask_return_carry__6_i_1
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__6_i_1_n_0));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    gen_mask_return_carry__6_i_2
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__6_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFF7FFFFFFFFFF)) 
    gen_mask_return_carry__6_i_3
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__6_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFF7FFFFFFFFFF)) 
    gen_mask_return_carry__6_i_4
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[0]),
        .I4(msglen[1]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__6_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_mask_return_carry__7
       (.CI(gen_mask_return_carry__6_n_0),
        .CO({gen_mask_return_carry__7_n_0,gen_mask_return_carry__7_n_1,gen_mask_return_carry__7_n_2,gen_mask_return_carry__7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(gen_mask_return[36:33]),
        .S({gen_mask_return_carry__7_i_1_n_0,gen_mask_return_carry__7_i_2_n_0,gen_mask_return_carry__7_i_3_n_0,gen_mask_return_carry__7_i_4_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFEFFFFFFFFF)) 
    gen_mask_return_carry__7_i_1
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__7_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFFFFF)) 
    gen_mask_return_carry__7_i_2
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__7_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    gen_mask_return_carry__7_i_3
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__7_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    gen_mask_return_carry__7_i_4
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[0]),
        .I4(msglen[1]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__7_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_mask_return_carry__8
       (.CI(gen_mask_return_carry__7_n_0),
        .CO({gen_mask_return_carry__8_n_0,gen_mask_return_carry__8_n_1,gen_mask_return_carry__8_n_2,gen_mask_return_carry__8_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(gen_mask_return[40:37]),
        .S({gen_mask_return_carry__8_i_1_n_0,gen_mask_return_carry__8_i_2_n_0,gen_mask_return_carry__8_i_3_n_0,gen_mask_return_carry__8_i_4_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    gen_mask_return_carry__8_i_1
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__8_i_1_n_0));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    gen_mask_return_carry__8_i_2
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__8_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    gen_mask_return_carry__8_i_3
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__8_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    gen_mask_return_carry__8_i_4
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[0]),
        .I4(msglen[1]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__8_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_mask_return_carry__9
       (.CI(gen_mask_return_carry__8_n_0),
        .CO({gen_mask_return_carry__9_n_0,gen_mask_return_carry__9_n_1,gen_mask_return_carry__9_n_2,gen_mask_return_carry__9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(gen_mask_return[44:41]),
        .S({gen_mask_return_carry__9_i_1_n_0,gen_mask_return_carry__9_i_2_n_0,gen_mask_return_carry__9_i_3_n_0,gen_mask_return_carry__9_i_4_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFFFFFFF)) 
    gen_mask_return_carry__9_i_1
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__9_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFDFFFFFFF)) 
    gen_mask_return_carry__9_i_2
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__9_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
    gen_mask_return_carry__9_i_3
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__9_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
    gen_mask_return_carry__9_i_4
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[5]),
        .I3(msglen[0]),
        .I4(msglen[1]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry__9_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    gen_mask_return_carry_i_1
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    gen_mask_return_carry_i_2
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    gen_mask_return_carry_i_3
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    gen_mask_return_carry_i_4
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    gen_mask_return_carry_i_5
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[5]),
        .I3(msglen[0]),
        .I4(msglen[1]),
        .I5(msglen[2]),
        .O(gen_mask_return_carry_i_5_n_0));
  FDCE \negedge_Qs_reg[0] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(Q2_D),
        .Q(\negedge_Qs_reg_n_0_[0] ));
  FDCE \negedge_Qs_reg[10] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\negedge_Qs_reg_n_0_[9] ),
        .Q(\negedge_Qs_reg_n_0_[10] ));
  FDCE \negedge_Qs_reg[11] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\negedge_Qs_reg_n_0_[10] ),
        .Q(\negedge_Qs_reg_n_0_[11] ));
  FDCE \negedge_Qs_reg[12] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\negedge_Qs_reg_n_0_[11] ),
        .Q(\negedge_Qs_reg_n_0_[12] ));
  FDCE \negedge_Qs_reg[13] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\negedge_Qs_reg_n_0_[12] ),
        .Q(\negedge_Qs_reg_n_0_[13] ));
  FDCE \negedge_Qs_reg[14] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\negedge_Qs_reg_n_0_[13] ),
        .Q(\negedge_Qs_reg_n_0_[14] ));
  FDCE \negedge_Qs_reg[15] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\negedge_Qs_reg_n_0_[14] ),
        .Q(\negedge_Qs_reg_n_0_[15] ));
  FDCE \negedge_Qs_reg[16] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\negedge_Qs_reg_n_0_[15] ),
        .Q(\negedge_Qs_reg_n_0_[16] ));
  FDCE \negedge_Qs_reg[17] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\negedge_Qs_reg_n_0_[16] ),
        .Q(\negedge_Qs_reg_n_0_[17] ));
  FDCE \negedge_Qs_reg[18] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\negedge_Qs_reg_n_0_[17] ),
        .Q(\negedge_Qs_reg_n_0_[18] ));
  FDCE \negedge_Qs_reg[19] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\negedge_Qs_reg_n_0_[18] ),
        .Q(\negedge_Qs_reg_n_0_[19] ));
  FDCE \negedge_Qs_reg[1] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\negedge_Qs_reg_n_0_[0] ),
        .Q(tdata_posedge_first0));
  FDCE \negedge_Qs_reg[20] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\negedge_Qs_reg_n_0_[19] ),
        .Q(\negedge_Qs_reg_n_0_[20] ));
  FDCE \negedge_Qs_reg[21] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\negedge_Qs_reg_n_0_[20] ),
        .Q(\negedge_Qs_reg_n_0_[21] ));
  FDCE \negedge_Qs_reg[22] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\negedge_Qs_reg_n_0_[21] ),
        .Q(\negedge_Qs_reg_n_0_[22] ));
  FDCE \negedge_Qs_reg[23] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\negedge_Qs_reg_n_0_[22] ),
        .Q(\negedge_Qs_reg_n_0_[23] ));
  FDCE \negedge_Qs_reg[24] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\negedge_Qs_reg_n_0_[23] ),
        .Q(\negedge_Qs_reg_n_0_[24] ));
  FDCE \negedge_Qs_reg[25] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\negedge_Qs_reg_n_0_[24] ),
        .Q(\negedge_Qs_reg_n_0_[25] ));
  FDCE \negedge_Qs_reg[26] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\negedge_Qs_reg_n_0_[25] ),
        .Q(\negedge_Qs_reg_n_0_[26] ));
  FDCE \negedge_Qs_reg[27] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\negedge_Qs_reg_n_0_[26] ),
        .Q(\negedge_Qs_reg_n_0_[27] ));
  FDCE \negedge_Qs_reg[28] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\negedge_Qs_reg_n_0_[27] ),
        .Q(\negedge_Qs_reg_n_0_[28] ));
  FDCE \negedge_Qs_reg[29] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\negedge_Qs_reg_n_0_[28] ),
        .Q(\negedge_Qs_reg_n_0_[29] ));
  FDCE \negedge_Qs_reg[2] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_posedge_first0),
        .Q(\negedge_Qs_reg_n_0_[2] ));
  FDCE \negedge_Qs_reg[30] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\negedge_Qs_reg_n_0_[29] ),
        .Q(\negedge_Qs_reg_n_0_[30] ));
  FDCE \negedge_Qs_reg[31] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\negedge_Qs_reg_n_0_[30] ),
        .Q(\negedge_Qs_reg_n_0_[31] ));
  FDCE \negedge_Qs_reg[3] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\negedge_Qs_reg_n_0_[2] ),
        .Q(\negedge_Qs_reg_n_0_[3] ));
  FDCE \negedge_Qs_reg[4] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\negedge_Qs_reg_n_0_[3] ),
        .Q(\negedge_Qs_reg_n_0_[4] ));
  FDCE \negedge_Qs_reg[5] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\negedge_Qs_reg_n_0_[4] ),
        .Q(\negedge_Qs_reg_n_0_[5] ));
  FDCE \negedge_Qs_reg[6] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\negedge_Qs_reg_n_0_[5] ),
        .Q(\negedge_Qs_reg_n_0_[6] ));
  FDCE \negedge_Qs_reg[7] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\negedge_Qs_reg_n_0_[6] ),
        .Q(\negedge_Qs_reg_n_0_[7] ));
  FDCE \negedge_Qs_reg[8] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\negedge_Qs_reg_n_0_[7] ),
        .Q(\negedge_Qs_reg_n_0_[8] ));
  FDCE \negedge_Qs_reg[9] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\negedge_Qs_reg_n_0_[8] ),
        .Q(\negedge_Qs_reg_n_0_[9] ));
  FDCE \posedge_Qs_reg[0] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(Q1_D),
        .Q(posedge_Qs[0]));
  FDCE \posedge_Qs_reg[10] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(posedge_Qs[9]),
        .Q(posedge_Qs[10]));
  FDCE \posedge_Qs_reg[11] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(posedge_Qs[10]),
        .Q(posedge_Qs[11]));
  FDCE \posedge_Qs_reg[12] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(posedge_Qs[11]),
        .Q(posedge_Qs[12]));
  FDCE \posedge_Qs_reg[13] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(posedge_Qs[12]),
        .Q(posedge_Qs[13]));
  FDCE \posedge_Qs_reg[14] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(posedge_Qs[13]),
        .Q(posedge_Qs[14]));
  FDCE \posedge_Qs_reg[15] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(posedge_Qs[14]),
        .Q(posedge_Qs[15]));
  FDCE \posedge_Qs_reg[16] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(posedge_Qs[15]),
        .Q(posedge_Qs[16]));
  FDCE \posedge_Qs_reg[17] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(posedge_Qs[16]),
        .Q(posedge_Qs[17]));
  FDCE \posedge_Qs_reg[18] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(posedge_Qs[17]),
        .Q(posedge_Qs[18]));
  FDCE \posedge_Qs_reg[19] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(posedge_Qs[18]),
        .Q(posedge_Qs[19]));
  FDCE \posedge_Qs_reg[1] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(posedge_Qs[0]),
        .Q(posedge_Qs[1]));
  FDCE \posedge_Qs_reg[20] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(posedge_Qs[19]),
        .Q(posedge_Qs[20]));
  FDCE \posedge_Qs_reg[21] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(posedge_Qs[20]),
        .Q(posedge_Qs[21]));
  FDCE \posedge_Qs_reg[22] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(posedge_Qs[21]),
        .Q(posedge_Qs[22]));
  FDCE \posedge_Qs_reg[23] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(posedge_Qs[22]),
        .Q(posedge_Qs[23]));
  FDCE \posedge_Qs_reg[24] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(posedge_Qs[23]),
        .Q(posedge_Qs[24]));
  FDCE \posedge_Qs_reg[25] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(posedge_Qs[24]),
        .Q(posedge_Qs[25]));
  FDCE \posedge_Qs_reg[26] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(posedge_Qs[25]),
        .Q(posedge_Qs[26]));
  FDCE \posedge_Qs_reg[27] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(posedge_Qs[26]),
        .Q(posedge_Qs[27]));
  FDCE \posedge_Qs_reg[28] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(posedge_Qs[27]),
        .Q(posedge_Qs[28]));
  FDCE \posedge_Qs_reg[29] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(posedge_Qs[28]),
        .Q(posedge_Qs[29]));
  FDCE \posedge_Qs_reg[2] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(posedge_Qs[1]),
        .Q(posedge_Qs[2]));
  FDCE \posedge_Qs_reg[30] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(posedge_Qs[29]),
        .Q(posedge_Qs[30]));
  FDCE \posedge_Qs_reg[31] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(posedge_Qs[30]),
        .Q(posedge_Qs[31]));
  FDCE \posedge_Qs_reg[3] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(posedge_Qs[2]),
        .Q(posedge_Qs[3]));
  FDCE \posedge_Qs_reg[4] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(posedge_Qs[3]),
        .Q(posedge_Qs[4]));
  FDCE \posedge_Qs_reg[5] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(posedge_Qs[4]),
        .Q(posedge_Qs[5]));
  FDCE \posedge_Qs_reg[6] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(posedge_Qs[5]),
        .Q(posedge_Qs[6]));
  FDCE \posedge_Qs_reg[7] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(posedge_Qs[6]),
        .Q(posedge_Qs[7]));
  FDCE \posedge_Qs_reg[8] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(posedge_Qs[7]),
        .Q(posedge_Qs[8]));
  FDCE \posedge_Qs_reg[9] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(posedge_Qs[8]),
        .Q(posedge_Qs[9]));
  LUT5 #(
    .INIT(32'hFEEF1000)) 
    posedge_first_i_1
       (.I0(Q1_F_old),
        .I1(Q2_F_old),
        .I2(Q2_F),
        .I3(Q1_F),
        .I4(posedge_first),
        .O(posedge_first_i_1_n_0));
  FDCE posedge_first_reg
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(posedge_first_i_1_n_0),
        .Q(posedge_first));
  LUT2 #(
    .INIT(4'h2)) 
    shift_register_in_i_1
       (.I0(F_reg),
        .I1(F_old),
        .O(shift_register_in0));
  FDCE shift_register_in_reg
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(shift_register_in0),
        .Q(shift_register_in));
  FDCE \shift_register_reg[0] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(shift_register_in),
        .Q(\shift_register_reg_n_0_[0] ));
  FDCE \shift_register_reg[10] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(data3),
        .Q(data4));
  FDCE \shift_register_reg[11] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(data4),
        .Q(data5));
  FDCE \shift_register_reg[12] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(data5),
        .Q(data6));
  FDCE \shift_register_reg[13] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(data6),
        .Q(data7));
  FDCE \shift_register_reg[14] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(data7),
        .Q(data8));
  FDCE \shift_register_reg[15] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(data8),
        .Q(data9));
  FDCE \shift_register_reg[16] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(data9),
        .Q(data10));
  FDCE \shift_register_reg[17] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(data10),
        .Q(data11));
  FDCE \shift_register_reg[18] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(data11),
        .Q(data12));
  FDCE \shift_register_reg[19] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(data12),
        .Q(data13));
  FDCE \shift_register_reg[1] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\shift_register_reg_n_0_[0] ),
        .Q(\shift_register_reg_n_0_[1] ));
  FDCE \shift_register_reg[20] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(data13),
        .Q(data14));
  FDCE \shift_register_reg[21] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(data14),
        .Q(data15));
  FDCE \shift_register_reg[2] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\shift_register_reg_n_0_[1] ),
        .Q(\shift_register_reg_n_0_[2] ));
  FDCE \shift_register_reg[3] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\shift_register_reg_n_0_[2] ),
        .Q(\shift_register_reg_n_0_[3] ));
  FDCE \shift_register_reg[4] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\shift_register_reg_n_0_[3] ),
        .Q(\shift_register_reg_n_0_[4] ));
  FDCE \shift_register_reg[5] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\shift_register_reg_n_0_[4] ),
        .Q(\shift_register_reg_n_0_[5] ));
  FDCE \shift_register_reg[6] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\shift_register_reg_n_0_[5] ),
        .Q(data0));
  FDCE \shift_register_reg[7] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(data0),
        .Q(data1));
  FDCE \shift_register_reg[8] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(data1),
        .Q(data2));
  FDCE \shift_register_reg[9] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(data2),
        .Q(data3));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[0]_i_1 
       (.I0(\negedge_Qs_reg_n_0_[0] ),
        .I1(posedge_Qs[0]),
        .I2(posedge_first),
        .O(\tdata[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[10]_i_1 
       (.I0(\negedge_Qs_reg_n_0_[5] ),
        .I1(posedge_Qs[5]),
        .I2(posedge_first),
        .O(\tdata[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[11]_i_1 
       (.I0(posedge_Qs[5]),
        .I1(\negedge_Qs_reg_n_0_[6] ),
        .I2(posedge_first),
        .O(\tdata[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[12]_i_1 
       (.I0(\negedge_Qs_reg_n_0_[6] ),
        .I1(posedge_Qs[6]),
        .I2(posedge_first),
        .O(\tdata[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[13]_i_1 
       (.I0(posedge_Qs[6]),
        .I1(\negedge_Qs_reg_n_0_[7] ),
        .I2(posedge_first),
        .O(\tdata[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[14]_i_1 
       (.I0(\negedge_Qs_reg_n_0_[7] ),
        .I1(posedge_Qs[7]),
        .I2(posedge_first),
        .O(\tdata[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[15]_i_1 
       (.I0(posedge_Qs[7]),
        .I1(\negedge_Qs_reg_n_0_[8] ),
        .I2(posedge_first),
        .O(\tdata[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[16]_i_1 
       (.I0(\negedge_Qs_reg_n_0_[8] ),
        .I1(posedge_Qs[8]),
        .I2(posedge_first),
        .O(\tdata[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[17]_i_1 
       (.I0(posedge_Qs[8]),
        .I1(\negedge_Qs_reg_n_0_[9] ),
        .I2(posedge_first),
        .O(\tdata[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[18]_i_1 
       (.I0(\negedge_Qs_reg_n_0_[9] ),
        .I1(posedge_Qs[9]),
        .I2(posedge_first),
        .O(\tdata[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[19]_i_1 
       (.I0(posedge_Qs[9]),
        .I1(\negedge_Qs_reg_n_0_[10] ),
        .I2(posedge_first),
        .O(\tdata[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[1]_i_1 
       (.I0(posedge_Qs[0]),
        .I1(tdata_posedge_first0),
        .I2(posedge_first),
        .O(\tdata[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[20]_i_1 
       (.I0(\negedge_Qs_reg_n_0_[10] ),
        .I1(posedge_Qs[10]),
        .I2(posedge_first),
        .O(\tdata[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[21]_i_1 
       (.I0(posedge_Qs[10]),
        .I1(\negedge_Qs_reg_n_0_[11] ),
        .I2(posedge_first),
        .O(\tdata[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[22]_i_1 
       (.I0(\negedge_Qs_reg_n_0_[11] ),
        .I1(posedge_Qs[11]),
        .I2(posedge_first),
        .O(\tdata[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[23]_i_1 
       (.I0(posedge_Qs[11]),
        .I1(\negedge_Qs_reg_n_0_[12] ),
        .I2(posedge_first),
        .O(\tdata[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[24]_i_1 
       (.I0(\negedge_Qs_reg_n_0_[12] ),
        .I1(posedge_Qs[12]),
        .I2(posedge_first),
        .O(\tdata[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[25]_i_1 
       (.I0(posedge_Qs[12]),
        .I1(\negedge_Qs_reg_n_0_[13] ),
        .I2(posedge_first),
        .O(\tdata[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[26]_i_1 
       (.I0(\negedge_Qs_reg_n_0_[13] ),
        .I1(posedge_Qs[13]),
        .I2(posedge_first),
        .O(\tdata[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[27]_i_1 
       (.I0(posedge_Qs[13]),
        .I1(\negedge_Qs_reg_n_0_[14] ),
        .I2(posedge_first),
        .O(\tdata[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[28]_i_1 
       (.I0(\negedge_Qs_reg_n_0_[14] ),
        .I1(posedge_Qs[14]),
        .I2(posedge_first),
        .O(\tdata[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[29]_i_1 
       (.I0(posedge_Qs[14]),
        .I1(\negedge_Qs_reg_n_0_[15] ),
        .I2(posedge_first),
        .O(\tdata[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[2]_i_1 
       (.I0(tdata_posedge_first0),
        .I1(posedge_Qs[1]),
        .I2(posedge_first),
        .O(\tdata[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[30]_i_1 
       (.I0(\negedge_Qs_reg_n_0_[15] ),
        .I1(posedge_Qs[15]),
        .I2(posedge_first),
        .O(\tdata[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[31]_i_1 
       (.I0(posedge_Qs[15]),
        .I1(\negedge_Qs_reg_n_0_[16] ),
        .I2(posedge_first),
        .O(\tdata[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[32]_i_1 
       (.I0(\negedge_Qs_reg_n_0_[16] ),
        .I1(posedge_Qs[16]),
        .I2(posedge_first),
        .O(\tdata[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[33]_i_1 
       (.I0(posedge_Qs[16]),
        .I1(\negedge_Qs_reg_n_0_[17] ),
        .I2(posedge_first),
        .O(\tdata[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[34]_i_1 
       (.I0(\negedge_Qs_reg_n_0_[17] ),
        .I1(posedge_Qs[17]),
        .I2(posedge_first),
        .O(\tdata[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[35]_i_1 
       (.I0(posedge_Qs[17]),
        .I1(\negedge_Qs_reg_n_0_[18] ),
        .I2(posedge_first),
        .O(\tdata[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[36]_i_1 
       (.I0(\negedge_Qs_reg_n_0_[18] ),
        .I1(posedge_Qs[18]),
        .I2(posedge_first),
        .O(\tdata[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[37]_i_1 
       (.I0(posedge_Qs[18]),
        .I1(\negedge_Qs_reg_n_0_[19] ),
        .I2(posedge_first),
        .O(\tdata[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[38]_i_1 
       (.I0(\negedge_Qs_reg_n_0_[19] ),
        .I1(posedge_Qs[19]),
        .I2(posedge_first),
        .O(\tdata[38]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[39]_i_1 
       (.I0(posedge_Qs[19]),
        .I1(\negedge_Qs_reg_n_0_[20] ),
        .I2(posedge_first),
        .O(\tdata[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[3]_i_1 
       (.I0(posedge_Qs[1]),
        .I1(\negedge_Qs_reg_n_0_[2] ),
        .I2(posedge_first),
        .O(\tdata[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[40]_i_1 
       (.I0(\negedge_Qs_reg_n_0_[20] ),
        .I1(posedge_Qs[20]),
        .I2(posedge_first),
        .O(\tdata[40]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[41]_i_1 
       (.I0(posedge_Qs[20]),
        .I1(\negedge_Qs_reg_n_0_[21] ),
        .I2(posedge_first),
        .O(\tdata[41]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[42]_i_1 
       (.I0(\negedge_Qs_reg_n_0_[21] ),
        .I1(posedge_Qs[21]),
        .I2(posedge_first),
        .O(\tdata[42]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[43]_i_1 
       (.I0(posedge_Qs[21]),
        .I1(\negedge_Qs_reg_n_0_[22] ),
        .I2(posedge_first),
        .O(\tdata[43]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[44]_i_1 
       (.I0(\negedge_Qs_reg_n_0_[22] ),
        .I1(posedge_Qs[22]),
        .I2(posedge_first),
        .O(\tdata[44]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[45]_i_1 
       (.I0(posedge_Qs[22]),
        .I1(\negedge_Qs_reg_n_0_[23] ),
        .I2(posedge_first),
        .O(\tdata[45]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[46]_i_1 
       (.I0(\negedge_Qs_reg_n_0_[23] ),
        .I1(posedge_Qs[23]),
        .I2(posedge_first),
        .O(\tdata[46]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[47]_i_1 
       (.I0(posedge_Qs[23]),
        .I1(\negedge_Qs_reg_n_0_[24] ),
        .I2(posedge_first),
        .O(\tdata[47]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[48]_i_1 
       (.I0(\negedge_Qs_reg_n_0_[24] ),
        .I1(posedge_Qs[24]),
        .I2(posedge_first),
        .O(\tdata[48]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[49]_i_1 
       (.I0(posedge_Qs[24]),
        .I1(\negedge_Qs_reg_n_0_[25] ),
        .I2(posedge_first),
        .O(\tdata[49]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[4]_i_1 
       (.I0(\negedge_Qs_reg_n_0_[2] ),
        .I1(posedge_Qs[2]),
        .I2(posedge_first),
        .O(\tdata[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[50]_i_1 
       (.I0(\negedge_Qs_reg_n_0_[25] ),
        .I1(posedge_Qs[25]),
        .I2(posedge_first),
        .O(\tdata[50]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[51]_i_1 
       (.I0(posedge_Qs[25]),
        .I1(\negedge_Qs_reg_n_0_[26] ),
        .I2(posedge_first),
        .O(\tdata[51]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[52]_i_1 
       (.I0(\negedge_Qs_reg_n_0_[26] ),
        .I1(posedge_Qs[26]),
        .I2(posedge_first),
        .O(\tdata[52]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[53]_i_1 
       (.I0(posedge_Qs[26]),
        .I1(\negedge_Qs_reg_n_0_[27] ),
        .I2(posedge_first),
        .O(\tdata[53]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[54]_i_1 
       (.I0(\negedge_Qs_reg_n_0_[27] ),
        .I1(posedge_Qs[27]),
        .I2(posedge_first),
        .O(\tdata[54]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[55]_i_1 
       (.I0(posedge_Qs[27]),
        .I1(\negedge_Qs_reg_n_0_[28] ),
        .I2(posedge_first),
        .O(\tdata[55]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[56]_i_1 
       (.I0(\negedge_Qs_reg_n_0_[28] ),
        .I1(posedge_Qs[28]),
        .I2(posedge_first),
        .O(\tdata[56]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[57]_i_1 
       (.I0(posedge_Qs[28]),
        .I1(\negedge_Qs_reg_n_0_[29] ),
        .I2(posedge_first),
        .O(\tdata[57]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[58]_i_1 
       (.I0(\negedge_Qs_reg_n_0_[29] ),
        .I1(posedge_Qs[29]),
        .I2(posedge_first),
        .O(\tdata[58]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[59]_i_1 
       (.I0(posedge_Qs[29]),
        .I1(\negedge_Qs_reg_n_0_[30] ),
        .I2(posedge_first),
        .O(\tdata[59]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[5]_i_1 
       (.I0(posedge_Qs[2]),
        .I1(\negedge_Qs_reg_n_0_[3] ),
        .I2(posedge_first),
        .O(\tdata[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[60]_i_1 
       (.I0(\negedge_Qs_reg_n_0_[30] ),
        .I1(posedge_Qs[30]),
        .I2(posedge_first),
        .O(\tdata[60]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[61]_i_1 
       (.I0(posedge_Qs[30]),
        .I1(\negedge_Qs_reg_n_0_[31] ),
        .I2(posedge_first),
        .O(\tdata[61]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[62]_i_1 
       (.I0(\negedge_Qs_reg_n_0_[31] ),
        .I1(posedge_Qs[31]),
        .I2(posedge_first),
        .O(\tdata[62]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tdata[63]_i_1 
       (.I0(posedge_first),
        .I1(posedge_Qs[31]),
        .O(\tdata[63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[6]_i_1 
       (.I0(\negedge_Qs_reg_n_0_[3] ),
        .I1(posedge_Qs[3]),
        .I2(posedge_first),
        .O(\tdata[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[7]_i_1 
       (.I0(posedge_Qs[3]),
        .I1(\negedge_Qs_reg_n_0_[4] ),
        .I2(posedge_first),
        .O(\tdata[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[8]_i_1 
       (.I0(\negedge_Qs_reg_n_0_[4] ),
        .I1(posedge_Qs[4]),
        .I2(posedge_first),
        .O(\tdata[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tdata[9]_i_1 
       (.I0(posedge_Qs[4]),
        .I1(\negedge_Qs_reg_n_0_[5] ),
        .I2(posedge_first),
        .O(\tdata[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \tdata_delayed[0]_i_1 
       (.I0(tdata[0]),
        .I1(\tdata_delayed[0]_i_2_n_0 ),
        .I2(msglen[5]),
        .I3(msglen[3]),
        .I4(msglen[4]),
        .O(\tdata_delayed[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \tdata_delayed[0]_i_2 
       (.I0(msglen[2]),
        .I1(msglen[0]),
        .I2(msglen[1]),
        .O(\tdata_delayed[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[10]_i_1 
       (.I0(tdata[10]),
        .I1(gen_mask_return[10]),
        .O(\tdata_delayed[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[11]_i_1 
       (.I0(tdata[11]),
        .I1(gen_mask_return[11]),
        .O(\tdata_delayed[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[12]_i_1 
       (.I0(tdata[12]),
        .I1(gen_mask_return[12]),
        .O(\tdata_delayed[12]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[13]_i_1 
       (.I0(tdata[13]),
        .I1(gen_mask_return[13]),
        .O(\tdata_delayed[13]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[14]_i_1 
       (.I0(tdata[14]),
        .I1(gen_mask_return[14]),
        .O(\tdata_delayed[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[15]_i_1 
       (.I0(tdata[15]),
        .I1(gen_mask_return[15]),
        .O(\tdata_delayed[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[16]_i_1 
       (.I0(tdata[16]),
        .I1(gen_mask_return[16]),
        .O(\tdata_delayed[16]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[17]_i_1 
       (.I0(tdata[17]),
        .I1(gen_mask_return[17]),
        .O(\tdata_delayed[17]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[18]_i_1 
       (.I0(tdata[18]),
        .I1(gen_mask_return[18]),
        .O(\tdata_delayed[18]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[19]_i_1 
       (.I0(tdata[19]),
        .I1(gen_mask_return[19]),
        .O(\tdata_delayed[19]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[1]_i_1 
       (.I0(tdata[1]),
        .I1(gen_mask_return[1]),
        .O(\tdata_delayed[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[20]_i_1 
       (.I0(tdata[20]),
        .I1(gen_mask_return[20]),
        .O(\tdata_delayed[20]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[21]_i_1 
       (.I0(tdata[21]),
        .I1(gen_mask_return[21]),
        .O(\tdata_delayed[21]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[22]_i_1 
       (.I0(tdata[22]),
        .I1(gen_mask_return[22]),
        .O(\tdata_delayed[22]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[23]_i_1 
       (.I0(tdata[23]),
        .I1(gen_mask_return[23]),
        .O(\tdata_delayed[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[24]_i_1 
       (.I0(tdata[24]),
        .I1(gen_mask_return[24]),
        .O(\tdata_delayed[24]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[25]_i_1 
       (.I0(tdata[25]),
        .I1(gen_mask_return[25]),
        .O(\tdata_delayed[25]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[26]_i_1 
       (.I0(tdata[26]),
        .I1(gen_mask_return[26]),
        .O(\tdata_delayed[26]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[27]_i_1 
       (.I0(tdata[27]),
        .I1(gen_mask_return[27]),
        .O(\tdata_delayed[27]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[28]_i_1 
       (.I0(tdata[28]),
        .I1(gen_mask_return[28]),
        .O(\tdata_delayed[28]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[29]_i_1 
       (.I0(tdata[29]),
        .I1(gen_mask_return[29]),
        .O(\tdata_delayed[29]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[2]_i_1 
       (.I0(tdata[2]),
        .I1(gen_mask_return[2]),
        .O(\tdata_delayed[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[30]_i_1 
       (.I0(tdata[30]),
        .I1(gen_mask_return[30]),
        .O(\tdata_delayed[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[31]_i_1 
       (.I0(tdata[31]),
        .I1(gen_mask_return[31]),
        .O(\tdata_delayed[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[32]_i_1 
       (.I0(tdata[32]),
        .I1(gen_mask_return[32]),
        .O(\tdata_delayed[32]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[33]_i_1 
       (.I0(tdata[33]),
        .I1(gen_mask_return[33]),
        .O(\tdata_delayed[33]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[34]_i_1 
       (.I0(tdata[34]),
        .I1(gen_mask_return[34]),
        .O(\tdata_delayed[34]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[35]_i_1 
       (.I0(tdata[35]),
        .I1(gen_mask_return[35]),
        .O(\tdata_delayed[35]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[36]_i_1 
       (.I0(tdata[36]),
        .I1(gen_mask_return[36]),
        .O(\tdata_delayed[36]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[37]_i_1 
       (.I0(tdata[37]),
        .I1(gen_mask_return[37]),
        .O(\tdata_delayed[37]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[38]_i_1 
       (.I0(tdata[38]),
        .I1(gen_mask_return[38]),
        .O(\tdata_delayed[38]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[39]_i_1 
       (.I0(tdata[39]),
        .I1(gen_mask_return[39]),
        .O(\tdata_delayed[39]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[3]_i_1 
       (.I0(tdata[3]),
        .I1(gen_mask_return[3]),
        .O(\tdata_delayed[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[40]_i_1 
       (.I0(tdata[40]),
        .I1(gen_mask_return[40]),
        .O(\tdata_delayed[40]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[41]_i_1 
       (.I0(tdata[41]),
        .I1(gen_mask_return[41]),
        .O(\tdata_delayed[41]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[42]_i_1 
       (.I0(tdata[42]),
        .I1(gen_mask_return[42]),
        .O(\tdata_delayed[42]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[43]_i_1 
       (.I0(tdata[43]),
        .I1(gen_mask_return[43]),
        .O(\tdata_delayed[43]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[44]_i_1 
       (.I0(tdata[44]),
        .I1(gen_mask_return[44]),
        .O(\tdata_delayed[44]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[45]_i_1 
       (.I0(tdata[45]),
        .I1(gen_mask_return[45]),
        .O(\tdata_delayed[45]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[46]_i_1 
       (.I0(tdata[46]),
        .I1(gen_mask_return[46]),
        .O(\tdata_delayed[46]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[47]_i_1 
       (.I0(tdata[47]),
        .I1(gen_mask_return[47]),
        .O(\tdata_delayed[47]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[48]_i_1 
       (.I0(tdata[48]),
        .I1(gen_mask_return[48]),
        .O(\tdata_delayed[48]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[49]_i_1 
       (.I0(tdata[49]),
        .I1(gen_mask_return[49]),
        .O(\tdata_delayed[49]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[4]_i_1 
       (.I0(tdata[4]),
        .I1(gen_mask_return[4]),
        .O(\tdata_delayed[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[50]_i_1 
       (.I0(tdata[50]),
        .I1(gen_mask_return[50]),
        .O(\tdata_delayed[50]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[51]_i_1 
       (.I0(tdata[51]),
        .I1(gen_mask_return[51]),
        .O(\tdata_delayed[51]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[52]_i_1 
       (.I0(tdata[52]),
        .I1(gen_mask_return[52]),
        .O(\tdata_delayed[52]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[53]_i_1 
       (.I0(tdata[53]),
        .I1(gen_mask_return[53]),
        .O(\tdata_delayed[53]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[54]_i_1 
       (.I0(tdata[54]),
        .I1(gen_mask_return[54]),
        .O(\tdata_delayed[54]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[55]_i_1 
       (.I0(tdata[55]),
        .I1(gen_mask_return[55]),
        .O(\tdata_delayed[55]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[56]_i_1 
       (.I0(tdata[56]),
        .I1(gen_mask_return[56]),
        .O(\tdata_delayed[56]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[57]_i_1 
       (.I0(tdata[57]),
        .I1(gen_mask_return[57]),
        .O(\tdata_delayed[57]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[58]_i_1 
       (.I0(tdata[58]),
        .I1(gen_mask_return[58]),
        .O(\tdata_delayed[58]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[59]_i_1 
       (.I0(tdata[59]),
        .I1(gen_mask_return[59]),
        .O(\tdata_delayed[59]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[5]_i_1 
       (.I0(tdata[5]),
        .I1(gen_mask_return[5]),
        .O(\tdata_delayed[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[60]_i_1 
       (.I0(tdata[60]),
        .I1(gen_mask_return[60]),
        .O(\tdata_delayed[60]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[61]_i_1 
       (.I0(tdata[61]),
        .I1(gen_mask_return[61]),
        .O(\tdata_delayed[61]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[62]_i_1 
       (.I0(tdata[62]),
        .I1(gen_mask_return[62]),
        .O(\tdata_delayed[62]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[63]_i_1 
       (.I0(tdata[63]),
        .I1(gen_mask_return[63]),
        .O(\tdata_delayed[63]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[6]_i_1 
       (.I0(tdata[6]),
        .I1(gen_mask_return[6]),
        .O(\tdata_delayed[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[7]_i_1 
       (.I0(tdata[7]),
        .I1(gen_mask_return[7]),
        .O(\tdata_delayed[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[8]_i_1 
       (.I0(tdata[8]),
        .I1(gen_mask_return[8]),
        .O(\tdata_delayed[8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_delayed[9]_i_1 
       (.I0(tdata[9]),
        .I1(gen_mask_return[9]),
        .O(\tdata_delayed[9]_i_1_n_0 ));
  FDCE \tdata_delayed_reg[0] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[0]_i_1_n_0 ),
        .Q(tdata_delayed[0]));
  FDCE \tdata_delayed_reg[10] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[10]_i_1_n_0 ),
        .Q(tdata_delayed[10]));
  FDCE \tdata_delayed_reg[11] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[11]_i_1_n_0 ),
        .Q(tdata_delayed[11]));
  FDCE \tdata_delayed_reg[12] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[12]_i_1_n_0 ),
        .Q(tdata_delayed[12]));
  FDCE \tdata_delayed_reg[13] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[13]_i_1_n_0 ),
        .Q(tdata_delayed[13]));
  FDCE \tdata_delayed_reg[14] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[14]_i_1_n_0 ),
        .Q(tdata_delayed[14]));
  FDCE \tdata_delayed_reg[15] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[15]_i_1_n_0 ),
        .Q(tdata_delayed[15]));
  FDCE \tdata_delayed_reg[16] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[16]_i_1_n_0 ),
        .Q(tdata_delayed[16]));
  FDCE \tdata_delayed_reg[17] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[17]_i_1_n_0 ),
        .Q(tdata_delayed[17]));
  FDCE \tdata_delayed_reg[18] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[18]_i_1_n_0 ),
        .Q(tdata_delayed[18]));
  FDCE \tdata_delayed_reg[19] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[19]_i_1_n_0 ),
        .Q(tdata_delayed[19]));
  FDCE \tdata_delayed_reg[1] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[1]_i_1_n_0 ),
        .Q(tdata_delayed[1]));
  FDCE \tdata_delayed_reg[20] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[20]_i_1_n_0 ),
        .Q(tdata_delayed[20]));
  FDCE \tdata_delayed_reg[21] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[21]_i_1_n_0 ),
        .Q(tdata_delayed[21]));
  FDCE \tdata_delayed_reg[22] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[22]_i_1_n_0 ),
        .Q(tdata_delayed[22]));
  FDCE \tdata_delayed_reg[23] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[23]_i_1_n_0 ),
        .Q(tdata_delayed[23]));
  FDCE \tdata_delayed_reg[24] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[24]_i_1_n_0 ),
        .Q(tdata_delayed[24]));
  FDCE \tdata_delayed_reg[25] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[25]_i_1_n_0 ),
        .Q(tdata_delayed[25]));
  FDCE \tdata_delayed_reg[26] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[26]_i_1_n_0 ),
        .Q(tdata_delayed[26]));
  FDCE \tdata_delayed_reg[27] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[27]_i_1_n_0 ),
        .Q(tdata_delayed[27]));
  FDCE \tdata_delayed_reg[28] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[28]_i_1_n_0 ),
        .Q(tdata_delayed[28]));
  FDCE \tdata_delayed_reg[29] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[29]_i_1_n_0 ),
        .Q(tdata_delayed[29]));
  FDCE \tdata_delayed_reg[2] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[2]_i_1_n_0 ),
        .Q(tdata_delayed[2]));
  FDCE \tdata_delayed_reg[30] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[30]_i_1_n_0 ),
        .Q(tdata_delayed[30]));
  FDCE \tdata_delayed_reg[31] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[31]_i_1_n_0 ),
        .Q(tdata_delayed[31]));
  FDCE \tdata_delayed_reg[32] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[32]_i_1_n_0 ),
        .Q(tdata_delayed[32]));
  FDCE \tdata_delayed_reg[33] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[33]_i_1_n_0 ),
        .Q(tdata_delayed[33]));
  FDCE \tdata_delayed_reg[34] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[34]_i_1_n_0 ),
        .Q(tdata_delayed[34]));
  FDCE \tdata_delayed_reg[35] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[35]_i_1_n_0 ),
        .Q(tdata_delayed[35]));
  FDCE \tdata_delayed_reg[36] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[36]_i_1_n_0 ),
        .Q(tdata_delayed[36]));
  FDCE \tdata_delayed_reg[37] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[37]_i_1_n_0 ),
        .Q(tdata_delayed[37]));
  FDCE \tdata_delayed_reg[38] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[38]_i_1_n_0 ),
        .Q(tdata_delayed[38]));
  FDCE \tdata_delayed_reg[39] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[39]_i_1_n_0 ),
        .Q(tdata_delayed[39]));
  FDCE \tdata_delayed_reg[3] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[3]_i_1_n_0 ),
        .Q(tdata_delayed[3]));
  FDCE \tdata_delayed_reg[40] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[40]_i_1_n_0 ),
        .Q(tdata_delayed[40]));
  FDCE \tdata_delayed_reg[41] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[41]_i_1_n_0 ),
        .Q(tdata_delayed[41]));
  FDCE \tdata_delayed_reg[42] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[42]_i_1_n_0 ),
        .Q(tdata_delayed[42]));
  FDCE \tdata_delayed_reg[43] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[43]_i_1_n_0 ),
        .Q(tdata_delayed[43]));
  FDCE \tdata_delayed_reg[44] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[44]_i_1_n_0 ),
        .Q(tdata_delayed[44]));
  FDCE \tdata_delayed_reg[45] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[45]_i_1_n_0 ),
        .Q(tdata_delayed[45]));
  FDCE \tdata_delayed_reg[46] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[46]_i_1_n_0 ),
        .Q(tdata_delayed[46]));
  FDCE \tdata_delayed_reg[47] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[47]_i_1_n_0 ),
        .Q(tdata_delayed[47]));
  FDCE \tdata_delayed_reg[48] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[48]_i_1_n_0 ),
        .Q(tdata_delayed[48]));
  FDCE \tdata_delayed_reg[49] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[49]_i_1_n_0 ),
        .Q(tdata_delayed[49]));
  FDCE \tdata_delayed_reg[4] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[4]_i_1_n_0 ),
        .Q(tdata_delayed[4]));
  FDCE \tdata_delayed_reg[50] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[50]_i_1_n_0 ),
        .Q(tdata_delayed[50]));
  FDCE \tdata_delayed_reg[51] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[51]_i_1_n_0 ),
        .Q(tdata_delayed[51]));
  FDCE \tdata_delayed_reg[52] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[52]_i_1_n_0 ),
        .Q(tdata_delayed[52]));
  FDCE \tdata_delayed_reg[53] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[53]_i_1_n_0 ),
        .Q(tdata_delayed[53]));
  FDCE \tdata_delayed_reg[54] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[54]_i_1_n_0 ),
        .Q(tdata_delayed[54]));
  FDCE \tdata_delayed_reg[55] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[55]_i_1_n_0 ),
        .Q(tdata_delayed[55]));
  FDCE \tdata_delayed_reg[56] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[56]_i_1_n_0 ),
        .Q(tdata_delayed[56]));
  FDCE \tdata_delayed_reg[57] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[57]_i_1_n_0 ),
        .Q(tdata_delayed[57]));
  FDCE \tdata_delayed_reg[58] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[58]_i_1_n_0 ),
        .Q(tdata_delayed[58]));
  FDCE \tdata_delayed_reg[59] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[59]_i_1_n_0 ),
        .Q(tdata_delayed[59]));
  FDCE \tdata_delayed_reg[5] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[5]_i_1_n_0 ),
        .Q(tdata_delayed[5]));
  FDCE \tdata_delayed_reg[60] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[60]_i_1_n_0 ),
        .Q(tdata_delayed[60]));
  FDCE \tdata_delayed_reg[61] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[61]_i_1_n_0 ),
        .Q(tdata_delayed[61]));
  FDCE \tdata_delayed_reg[62] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[62]_i_1_n_0 ),
        .Q(tdata_delayed[62]));
  FDCE \tdata_delayed_reg[63] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[63]_i_1_n_0 ),
        .Q(tdata_delayed[63]));
  FDCE \tdata_delayed_reg[6] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[6]_i_1_n_0 ),
        .Q(tdata_delayed[6]));
  FDCE \tdata_delayed_reg[7] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[7]_i_1_n_0 ),
        .Q(tdata_delayed[7]));
  FDCE \tdata_delayed_reg[8] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[8]_i_1_n_0 ),
        .Q(tdata_delayed[8]));
  FDCE \tdata_delayed_reg[9] 
       (.C(C),
        .CE(tvalid),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata_delayed[9]_i_1_n_0 ),
        .Q(tdata_delayed[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \tdata_out[63]_i_1 
       (.I0(aresetn),
        .O(\tdata_out[63]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[0] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[0]),
        .Q(tdata_out[0]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[10] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[10]),
        .Q(tdata_out[10]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[11] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[11]),
        .Q(tdata_out[11]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[12] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[12]),
        .Q(tdata_out[12]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[13] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[13]),
        .Q(tdata_out[13]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[14] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[14]),
        .Q(tdata_out[14]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[15] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[15]),
        .Q(tdata_out[15]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[16] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[16]),
        .Q(tdata_out[16]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[17] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[17]),
        .Q(tdata_out[17]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[18] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[18]),
        .Q(tdata_out[18]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[19] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[19]),
        .Q(tdata_out[19]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[1] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[1]),
        .Q(tdata_out[1]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[20] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[20]),
        .Q(tdata_out[20]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[21] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[21]),
        .Q(tdata_out[21]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[22] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[22]),
        .Q(tdata_out[22]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[23] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[23]),
        .Q(tdata_out[23]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[24] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[24]),
        .Q(tdata_out[24]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[25] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[25]),
        .Q(tdata_out[25]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[26] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[26]),
        .Q(tdata_out[26]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[27] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[27]),
        .Q(tdata_out[27]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[28] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[28]),
        .Q(tdata_out[28]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[29] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[29]),
        .Q(tdata_out[29]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[2] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[2]),
        .Q(tdata_out[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[30] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[30]),
        .Q(tdata_out[30]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[31] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[31]),
        .Q(tdata_out[31]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[32] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[32]),
        .Q(tdata_out[32]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[33] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[33]),
        .Q(tdata_out[33]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[34] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[34]),
        .Q(tdata_out[34]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[35] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[35]),
        .Q(tdata_out[35]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[36] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[36]),
        .Q(tdata_out[36]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[37] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[37]),
        .Q(tdata_out[37]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[38] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[38]),
        .Q(tdata_out[38]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[39] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[39]),
        .Q(tdata_out[39]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[3] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[3]),
        .Q(tdata_out[3]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[40] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[40]),
        .Q(tdata_out[40]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[41] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[41]),
        .Q(tdata_out[41]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[42] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[42]),
        .Q(tdata_out[42]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[43] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[43]),
        .Q(tdata_out[43]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[44] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[44]),
        .Q(tdata_out[44]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[45] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[45]),
        .Q(tdata_out[45]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[46] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[46]),
        .Q(tdata_out[46]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[47] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[47]),
        .Q(tdata_out[47]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[48] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[48]),
        .Q(tdata_out[48]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[49] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[49]),
        .Q(tdata_out[49]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[4] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[4]),
        .Q(tdata_out[4]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[50] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[50]),
        .Q(tdata_out[50]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[51] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[51]),
        .Q(tdata_out[51]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[52] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[52]),
        .Q(tdata_out[52]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[53] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[53]),
        .Q(tdata_out[53]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[54] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[54]),
        .Q(tdata_out[54]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[55] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[55]),
        .Q(tdata_out[55]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[56] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[56]),
        .Q(tdata_out[56]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[57] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[57]),
        .Q(tdata_out[57]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[58] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[58]),
        .Q(tdata_out[58]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[59] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[59]),
        .Q(tdata_out[59]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[5] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[5]),
        .Q(tdata_out[5]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[60] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[60]),
        .Q(tdata_out[60]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[61] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[61]),
        .Q(tdata_out[61]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[62] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[62]),
        .Q(tdata_out[62]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[63] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[63]),
        .Q(tdata_out[63]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[6] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[6]),
        .Q(tdata_out[6]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[7] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[7]),
        .Q(tdata_out[7]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[8] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[8]),
        .Q(tdata_out[8]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) 
  FDCE \tdata_out_reg[9] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tdata_delayed[9]),
        .Q(tdata_out[9]));
  FDCE \tdata_reg[0] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[0]_i_1_n_0 ),
        .Q(tdata[0]));
  FDCE \tdata_reg[10] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[10]_i_1_n_0 ),
        .Q(tdata[10]));
  FDCE \tdata_reg[11] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[11]_i_1_n_0 ),
        .Q(tdata[11]));
  FDCE \tdata_reg[12] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[12]_i_1_n_0 ),
        .Q(tdata[12]));
  FDCE \tdata_reg[13] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[13]_i_1_n_0 ),
        .Q(tdata[13]));
  FDCE \tdata_reg[14] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[14]_i_1_n_0 ),
        .Q(tdata[14]));
  FDCE \tdata_reg[15] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[15]_i_1_n_0 ),
        .Q(tdata[15]));
  FDCE \tdata_reg[16] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[16]_i_1_n_0 ),
        .Q(tdata[16]));
  FDCE \tdata_reg[17] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[17]_i_1_n_0 ),
        .Q(tdata[17]));
  FDCE \tdata_reg[18] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[18]_i_1_n_0 ),
        .Q(tdata[18]));
  FDCE \tdata_reg[19] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[19]_i_1_n_0 ),
        .Q(tdata[19]));
  FDCE \tdata_reg[1] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[1]_i_1_n_0 ),
        .Q(tdata[1]));
  FDCE \tdata_reg[20] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[20]_i_1_n_0 ),
        .Q(tdata[20]));
  FDCE \tdata_reg[21] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[21]_i_1_n_0 ),
        .Q(tdata[21]));
  FDCE \tdata_reg[22] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[22]_i_1_n_0 ),
        .Q(tdata[22]));
  FDCE \tdata_reg[23] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[23]_i_1_n_0 ),
        .Q(tdata[23]));
  FDCE \tdata_reg[24] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[24]_i_1_n_0 ),
        .Q(tdata[24]));
  FDCE \tdata_reg[25] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[25]_i_1_n_0 ),
        .Q(tdata[25]));
  FDCE \tdata_reg[26] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[26]_i_1_n_0 ),
        .Q(tdata[26]));
  FDCE \tdata_reg[27] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[27]_i_1_n_0 ),
        .Q(tdata[27]));
  FDCE \tdata_reg[28] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[28]_i_1_n_0 ),
        .Q(tdata[28]));
  FDCE \tdata_reg[29] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[29]_i_1_n_0 ),
        .Q(tdata[29]));
  FDCE \tdata_reg[2] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[2]_i_1_n_0 ),
        .Q(tdata[2]));
  FDCE \tdata_reg[30] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[30]_i_1_n_0 ),
        .Q(tdata[30]));
  FDCE \tdata_reg[31] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[31]_i_1_n_0 ),
        .Q(tdata[31]));
  FDCE \tdata_reg[32] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[32]_i_1_n_0 ),
        .Q(tdata[32]));
  FDCE \tdata_reg[33] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[33]_i_1_n_0 ),
        .Q(tdata[33]));
  FDCE \tdata_reg[34] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[34]_i_1_n_0 ),
        .Q(tdata[34]));
  FDCE \tdata_reg[35] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[35]_i_1_n_0 ),
        .Q(tdata[35]));
  FDCE \tdata_reg[36] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[36]_i_1_n_0 ),
        .Q(tdata[36]));
  FDCE \tdata_reg[37] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[37]_i_1_n_0 ),
        .Q(tdata[37]));
  FDCE \tdata_reg[38] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[38]_i_1_n_0 ),
        .Q(tdata[38]));
  FDCE \tdata_reg[39] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[39]_i_1_n_0 ),
        .Q(tdata[39]));
  FDCE \tdata_reg[3] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[3]_i_1_n_0 ),
        .Q(tdata[3]));
  FDCE \tdata_reg[40] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[40]_i_1_n_0 ),
        .Q(tdata[40]));
  FDCE \tdata_reg[41] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[41]_i_1_n_0 ),
        .Q(tdata[41]));
  FDCE \tdata_reg[42] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[42]_i_1_n_0 ),
        .Q(tdata[42]));
  FDCE \tdata_reg[43] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[43]_i_1_n_0 ),
        .Q(tdata[43]));
  FDCE \tdata_reg[44] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[44]_i_1_n_0 ),
        .Q(tdata[44]));
  FDCE \tdata_reg[45] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[45]_i_1_n_0 ),
        .Q(tdata[45]));
  FDCE \tdata_reg[46] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[46]_i_1_n_0 ),
        .Q(tdata[46]));
  FDCE \tdata_reg[47] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[47]_i_1_n_0 ),
        .Q(tdata[47]));
  FDCE \tdata_reg[48] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[48]_i_1_n_0 ),
        .Q(tdata[48]));
  FDCE \tdata_reg[49] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[49]_i_1_n_0 ),
        .Q(tdata[49]));
  FDCE \tdata_reg[4] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[4]_i_1_n_0 ),
        .Q(tdata[4]));
  FDCE \tdata_reg[50] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[50]_i_1_n_0 ),
        .Q(tdata[50]));
  FDCE \tdata_reg[51] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[51]_i_1_n_0 ),
        .Q(tdata[51]));
  FDCE \tdata_reg[52] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[52]_i_1_n_0 ),
        .Q(tdata[52]));
  FDCE \tdata_reg[53] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[53]_i_1_n_0 ),
        .Q(tdata[53]));
  FDCE \tdata_reg[54] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[54]_i_1_n_0 ),
        .Q(tdata[54]));
  FDCE \tdata_reg[55] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[55]_i_1_n_0 ),
        .Q(tdata[55]));
  FDCE \tdata_reg[56] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[56]_i_1_n_0 ),
        .Q(tdata[56]));
  FDCE \tdata_reg[57] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[57]_i_1_n_0 ),
        .Q(tdata[57]));
  FDCE \tdata_reg[58] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[58]_i_1_n_0 ),
        .Q(tdata[58]));
  FDCE \tdata_reg[59] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[59]_i_1_n_0 ),
        .Q(tdata[59]));
  FDCE \tdata_reg[5] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[5]_i_1_n_0 ),
        .Q(tdata[5]));
  FDCE \tdata_reg[60] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[60]_i_1_n_0 ),
        .Q(tdata[60]));
  FDCE \tdata_reg[61] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[61]_i_1_n_0 ),
        .Q(tdata[61]));
  FDCE \tdata_reg[62] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[62]_i_1_n_0 ),
        .Q(tdata[62]));
  FDCE \tdata_reg[63] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[63]_i_1_n_0 ),
        .Q(tdata[63]));
  FDCE \tdata_reg[6] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[6]_i_1_n_0 ),
        .Q(tdata[6]));
  FDCE \tdata_reg[7] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[7]_i_1_n_0 ),
        .Q(tdata[7]));
  FDCE \tdata_reg[8] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[8]_i_1_n_0 ),
        .Q(tdata[8]));
  FDCE \tdata_reg[9] 
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(\tdata[9]_i_1_n_0 ),
        .Q(tdata[9]));
  FDCE tvalid_2_reg
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tvalid),
        .Q(tvalid_2));
  LUT2 #(
    .INIT(4'h2)) 
    tvalid_delayed_i_1
       (.I0(tvalid_2),
        .I1(tvalid_delayed_reg_n_0),
        .O(tvalid_delayed_i_1_n_0));
  FDCE tvalid_delayed_reg
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tvalid_delayed_i_1_n_0),
        .Q(tvalid_delayed_reg_n_0));
  LUT6 #(
    .INIT(64'hEFE0FFFFEFE00000)) 
    tvalid_i_1
       (.I0(tvalid_i_2_n_0),
        .I1(tvalid_reg_i_3_n_0),
        .I2(msglen[1]),
        .I3(tvalid_reg_i_4_n_0),
        .I4(p_0_in),
        .I5(tvalid),
        .O(tvalid_i_1_n_0));
  LUT5 #(
    .INIT(32'h44400040)) 
    tvalid_i_2
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(data0),
        .I3(msglen[5]),
        .I4(data14),
        .O(tvalid_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000FF7F80)) 
    tvalid_i_5
       (.I0(msglen[1]),
        .I1(msglen[3]),
        .I2(msglen[2]),
        .I3(msglen[5]),
        .I4(msglen[4]),
        .I5(msglen[0]),
        .O(p_0_in));
  LUT5 #(
    .INIT(32'hB833B800)) 
    tvalid_i_6
       (.I0(data6),
        .I1(msglen[3]),
        .I2(data2),
        .I3(msglen[4]),
        .I4(data10),
        .O(tvalid_i_6_n_0));
  LUT5 #(
    .INIT(32'hB833B800)) 
    tvalid_i_7
       (.I0(data8),
        .I1(msglen[3]),
        .I2(data4),
        .I3(msglen[4]),
        .I4(data12),
        .O(tvalid_i_7_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    tvalid_i_8
       (.I0(data13),
        .I1(data5),
        .I2(msglen[3]),
        .I3(data9),
        .I4(msglen[5]),
        .I5(data1),
        .O(tvalid_i_8_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    tvalid_i_9
       (.I0(data15),
        .I1(data7),
        .I2(msglen[3]),
        .I3(data11),
        .I4(msglen[5]),
        .I5(data3),
        .O(tvalid_i_9_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TVALID" *) 
  FDCE tvalid_out_reg
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tvalid_delayed_reg_n_0),
        .Q(tvalid_out));
  FDCE tvalid_reg
       (.C(C),
        .CE(1'b1),
        .CLR(\tdata_out[63]_i_1_n_0 ),
        .D(tvalid_i_1_n_0),
        .Q(tvalid));
  MUXF7 tvalid_reg_i_3
       (.I0(tvalid_i_6_n_0),
        .I1(tvalid_i_7_n_0),
        .O(tvalid_reg_i_3_n_0),
        .S(msglen[2]));
  MUXF7 tvalid_reg_i_4
       (.I0(tvalid_i_8_n_0),
        .I1(tvalid_i_9_n_0),
        .O(tvalid_reg_i_4_n_0),
        .S(msglen[2]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
