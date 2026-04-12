// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Fri Apr  3 23:42:19 2026
// Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/openTCSPC3/SRC/DDR_LVDS_FABRIC.gen/sources_1/bd/LVDS_to_AXIS/ip/LVDS_to_AXIS_DDR_Stream_to_AXI_St_0_0/LVDS_to_AXIS_DDR_Stream_to_AXI_St_0_0_sim_netlist.v
// Design      : LVDS_to_AXIS_DDR_Stream_to_AXI_St_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "LVDS_to_AXIS_DDR_Stream_to_AXI_St_0_0,DDR_Stream_to_AXI_Stream,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "DDR_Stream_to_AXI_Stream,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module LVDS_to_AXIS_DDR_Stream_to_AXI_St_0_0
   (msglen,
    aresetn,
    C,
    D,
    F,
    tready,
    tdata_delayed,
    tvalid_delayed,
    tlast_delayed);
  input [5:0]msglen;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input C;
  input D;
  input F;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TREADY" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXIS, FREQ_HZ 100000000, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TDATA" *) output [63:0]tdata_delayed;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TVALID" *) output tvalid_delayed;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS TLAST" *) output tlast_delayed;

  wire C;
  wire D;
  wire F;
  wire aresetn;
  wire [5:0]msglen;
  wire [63:0]tdata_delayed;
  wire tlast_delayed;
  wire tvalid_delayed;

  LVDS_to_AXIS_DDR_Stream_to_AXI_St_0_0_DDR_Stream_to_AXI_Stream inst
       (.C(C),
        .D(D),
        .F(F),
        .aresetn(aresetn),
        .msglen(msglen),
        .tdata_delayed(tdata_delayed),
        .tlast_delayed(tlast_delayed),
        .tvalid_delayed(tvalid_delayed));
endmodule

(* ORIG_REF_NAME = "DDR_Stream_to_AXI_Stream" *) 
module LVDS_to_AXIS_DDR_Stream_to_AXI_St_0_0_DDR_Stream_to_AXI_Stream
   (tvalid_delayed,
    tlast_delayed,
    tdata_delayed,
    C,
    F,
    D,
    msglen,
    aresetn);
  output tvalid_delayed;
  output tlast_delayed;
  output [63:0]tdata_delayed;
  input C;
  input F;
  input D;
  input [5:0]msglen;
  input aresetn;

  wire C;
  wire D;
  wire D_synchronised_negedge;
  wire D_synchronised_posedge;
  wire F;
  wire F_synchronised_negedge;
  wire F_synchronised_negedge_synchronised;
  wire F_synchronised_posedge;
  wire F_synchronised_posedge_delayed;
  wire F_synchronised_posedge_delayed_i_1_n_0;
  wire aresetn;
  wire [5:0]bit_counter;
  wire \bit_counter[0]_i_1_n_0 ;
  wire \bit_counter[1]_i_1_n_0 ;
  wire \bit_counter[2]_i_1_n_0 ;
  wire \bit_counter[3]_i_1_n_0 ;
  wire \bit_counter[3]_i_2_n_0 ;
  wire \bit_counter[3]_i_3_n_0 ;
  wire \bit_counter[4]_i_1_n_0 ;
  wire \bit_counter[4]_i_2_n_0 ;
  wire \bit_counter[5]_i_1_n_0 ;
  wire \bit_counter[5]_i_2_n_0 ;
  wire \bit_counter[5]_i_3_n_0 ;
  wire \bit_counter[5]_i_4_n_0 ;
  wire \bit_counter[5]_i_5_n_0 ;
  wire counter_enabled;
  wire counter_enabled_i_1_n_0;
  wire counter_enabled_i_3_n_0;
  wire delay_tdata_n_64;
  wire delay_tvalid_n_0;
  wire [63:1]gen_mask_return;
  wire [62:0]gen_mask_return0;
  wire gen_mask_return_carry__0_i_5_n_0;
  wire gen_mask_return_carry__0_i_6_n_0;
  wire gen_mask_return_carry__0_i_7_n_0;
  wire gen_mask_return_carry__0_i_8_n_0;
  wire gen_mask_return_carry__0_n_0;
  wire gen_mask_return_carry__0_n_1;
  wire gen_mask_return_carry__0_n_2;
  wire gen_mask_return_carry__0_n_3;
  wire gen_mask_return_carry__10_i_5_n_0;
  wire gen_mask_return_carry__10_i_6_n_0;
  wire gen_mask_return_carry__10_i_7_n_0;
  wire gen_mask_return_carry__10_i_8_n_0;
  wire gen_mask_return_carry__10_n_0;
  wire gen_mask_return_carry__10_n_1;
  wire gen_mask_return_carry__10_n_2;
  wire gen_mask_return_carry__10_n_3;
  wire gen_mask_return_carry__11_i_5_n_0;
  wire gen_mask_return_carry__11_i_6_n_0;
  wire gen_mask_return_carry__11_i_7_n_0;
  wire gen_mask_return_carry__11_i_8_n_0;
  wire gen_mask_return_carry__11_n_0;
  wire gen_mask_return_carry__11_n_1;
  wire gen_mask_return_carry__11_n_2;
  wire gen_mask_return_carry__11_n_3;
  wire gen_mask_return_carry__12_i_5_n_0;
  wire gen_mask_return_carry__12_i_6_n_0;
  wire gen_mask_return_carry__12_i_7_n_0;
  wire gen_mask_return_carry__12_i_8_n_0;
  wire gen_mask_return_carry__12_n_0;
  wire gen_mask_return_carry__12_n_1;
  wire gen_mask_return_carry__12_n_2;
  wire gen_mask_return_carry__12_n_3;
  wire gen_mask_return_carry__13_i_5_n_0;
  wire gen_mask_return_carry__13_i_6_n_0;
  wire gen_mask_return_carry__13_i_7_n_0;
  wire gen_mask_return_carry__13_i_8_n_0;
  wire gen_mask_return_carry__13_n_0;
  wire gen_mask_return_carry__13_n_1;
  wire gen_mask_return_carry__13_n_2;
  wire gen_mask_return_carry__13_n_3;
  wire gen_mask_return_carry__14_i_3_n_0;
  wire gen_mask_return_carry__14_i_4_n_0;
  wire gen_mask_return_carry__14_i_5_n_0;
  wire gen_mask_return_carry__14_n_2;
  wire gen_mask_return_carry__14_n_3;
  wire gen_mask_return_carry__1_i_5_n_0;
  wire gen_mask_return_carry__1_i_6_n_0;
  wire gen_mask_return_carry__1_i_7_n_0;
  wire gen_mask_return_carry__1_i_8_n_0;
  wire gen_mask_return_carry__1_n_0;
  wire gen_mask_return_carry__1_n_1;
  wire gen_mask_return_carry__1_n_2;
  wire gen_mask_return_carry__1_n_3;
  wire gen_mask_return_carry__2_i_5_n_0;
  wire gen_mask_return_carry__2_i_6_n_0;
  wire gen_mask_return_carry__2_i_7_n_0;
  wire gen_mask_return_carry__2_i_8_n_0;
  wire gen_mask_return_carry__2_n_0;
  wire gen_mask_return_carry__2_n_1;
  wire gen_mask_return_carry__2_n_2;
  wire gen_mask_return_carry__2_n_3;
  wire gen_mask_return_carry__3_i_5_n_0;
  wire gen_mask_return_carry__3_i_6_n_0;
  wire gen_mask_return_carry__3_i_7_n_0;
  wire gen_mask_return_carry__3_i_8_n_0;
  wire gen_mask_return_carry__3_n_0;
  wire gen_mask_return_carry__3_n_1;
  wire gen_mask_return_carry__3_n_2;
  wire gen_mask_return_carry__3_n_3;
  wire gen_mask_return_carry__4_i_5_n_0;
  wire gen_mask_return_carry__4_i_6_n_0;
  wire gen_mask_return_carry__4_i_7_n_0;
  wire gen_mask_return_carry__4_i_8_n_0;
  wire gen_mask_return_carry__4_n_0;
  wire gen_mask_return_carry__4_n_1;
  wire gen_mask_return_carry__4_n_2;
  wire gen_mask_return_carry__4_n_3;
  wire gen_mask_return_carry__5_i_5_n_0;
  wire gen_mask_return_carry__5_i_6_n_0;
  wire gen_mask_return_carry__5_i_7_n_0;
  wire gen_mask_return_carry__5_i_8_n_0;
  wire gen_mask_return_carry__5_n_0;
  wire gen_mask_return_carry__5_n_1;
  wire gen_mask_return_carry__5_n_2;
  wire gen_mask_return_carry__5_n_3;
  wire gen_mask_return_carry__6_i_5_n_0;
  wire gen_mask_return_carry__6_i_6_n_0;
  wire gen_mask_return_carry__6_i_7_n_0;
  wire gen_mask_return_carry__6_i_8_n_0;
  wire gen_mask_return_carry__6_n_0;
  wire gen_mask_return_carry__6_n_1;
  wire gen_mask_return_carry__6_n_2;
  wire gen_mask_return_carry__6_n_3;
  wire gen_mask_return_carry__7_i_5_n_0;
  wire gen_mask_return_carry__7_i_6_n_0;
  wire gen_mask_return_carry__7_i_7_n_0;
  wire gen_mask_return_carry__7_i_8_n_0;
  wire gen_mask_return_carry__7_n_0;
  wire gen_mask_return_carry__7_n_1;
  wire gen_mask_return_carry__7_n_2;
  wire gen_mask_return_carry__7_n_3;
  wire gen_mask_return_carry__8_i_5_n_0;
  wire gen_mask_return_carry__8_i_6_n_0;
  wire gen_mask_return_carry__8_i_7_n_0;
  wire gen_mask_return_carry__8_i_8_n_0;
  wire gen_mask_return_carry__8_n_0;
  wire gen_mask_return_carry__8_n_1;
  wire gen_mask_return_carry__8_n_2;
  wire gen_mask_return_carry__8_n_3;
  wire gen_mask_return_carry__9_i_5_n_0;
  wire gen_mask_return_carry__9_i_6_n_0;
  wire gen_mask_return_carry__9_i_7_n_0;
  wire gen_mask_return_carry__9_i_8_n_0;
  wire gen_mask_return_carry__9_n_0;
  wire gen_mask_return_carry__9_n_1;
  wire gen_mask_return_carry__9_n_2;
  wire gen_mask_return_carry__9_n_3;
  wire gen_mask_return_carry_i_6_n_0;
  wire gen_mask_return_carry_i_7_n_0;
  wire gen_mask_return_carry_i_8_n_0;
  wire gen_mask_return_carry_i_9_n_0;
  wire gen_mask_return_carry_n_0;
  wire gen_mask_return_carry_n_1;
  wire gen_mask_return_carry_n_2;
  wire gen_mask_return_carry_n_3;
  wire [5:0]msglen;
  wire \negedge_Qs_reg_n_0_[0] ;
  wire \negedge_Qs_reg_n_0_[2] ;
  wire negedge_first;
  wire negedge_first_i_1_n_0;
  wire [63:0]p_0_in;
  wire p_1_in;
  wire [31:0]posedge_Qs;
  wire posedge_first_i_1_n_0;
  wire posedge_first_reg_n_0;
  wire prepare_tvalid_negedge_first_i_1_n_0;
  wire prepare_tvalid_negedge_first_reg_n_0;
  wire prepare_tvalid_posedge_first;
  wire prepare_tvalid_posedge_first_i_1_n_0;
  wire prepare_tvalid_posedge_first_i_2_n_0;
  wire sel;
  wire [63:0]tdata;
  wire [63:0]tdata_delayed;
  wire [63:0]tdata_negedge_first_synchronised;
  wire [63:0]tdata_negedge_first_synchronised_synchronised;
  wire [63:0]tdata_posedge_first_synchronised;
  wire tlast;
  wire tlast_delayed;
  wire tlast_i_1_n_0;
  wire tlast_i_2_n_0;
  wire [7:0]transaction_counter;
  wire \transaction_counter[7]_i_2_n_0 ;
  wire [7:0]transaction_counter_reg;
  wire tvalid_delayed;
  wire tvalid_i_1_n_0;
  wire tvalid_reg_n_0;
  wire [3:2]NLW_gen_mask_return_carry__14_CO_UNCONNECTED;
  wire [3:3]NLW_gen_mask_return_carry__14_O_UNCONNECTED;

  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    D_synchronised_negedge_reg
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(D),
        .Q(D_synchronised_negedge));
  FDCE D_synchronised_posedge_reg
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(D),
        .Q(D_synchronised_posedge));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    F_synchronised_negedge_reg
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(F),
        .Q(F_synchronised_negedge));
  FDCE F_synchronised_negedge_synchronised_reg
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(F_synchronised_negedge),
        .Q(F_synchronised_negedge_synchronised));
  LUT3 #(
    .INIT(8'hB8)) 
    F_synchronised_posedge_delayed_i_1
       (.I0(F_synchronised_posedge),
        .I1(aresetn),
        .I2(F_synchronised_posedge_delayed),
        .O(F_synchronised_posedge_delayed_i_1_n_0));
  FDRE F_synchronised_posedge_delayed_reg
       (.C(C),
        .CE(1'b1),
        .D(F_synchronised_posedge_delayed_i_1_n_0),
        .Q(F_synchronised_posedge_delayed),
        .R(1'b0));
  FDCE F_synchronised_posedge_reg
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(F),
        .Q(F_synchronised_posedge));
  LUT6 #(
    .INIT(64'h510155555DFD5555)) 
    \bit_counter[0]_i_1 
       (.I0(bit_counter[0]),
        .I1(F_synchronised_posedge),
        .I2(F_synchronised_negedge_synchronised),
        .I3(F_synchronised_posedge_delayed),
        .I4(F),
        .I5(msglen[1]),
        .O(\bit_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h9999F00F)) 
    \bit_counter[1]_i_1 
       (.I0(bit_counter[1]),
        .I1(bit_counter[0]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(\bit_counter[5]_i_4_n_0 ),
        .O(\bit_counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA9A9A9A9FF0000FF)) 
    \bit_counter[2]_i_1 
       (.I0(bit_counter[2]),
        .I1(bit_counter[0]),
        .I2(bit_counter[1]),
        .I3(msglen[3]),
        .I4(\bit_counter[3]_i_2_n_0 ),
        .I5(\bit_counter[5]_i_4_n_0 ),
        .O(\bit_counter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF0000FFA9A9A9A9)) 
    \bit_counter[3]_i_1 
       (.I0(msglen[4]),
        .I1(\bit_counter[3]_i_2_n_0 ),
        .I2(msglen[3]),
        .I3(\bit_counter[3]_i_3_n_0 ),
        .I4(bit_counter[3]),
        .I5(\bit_counter[5]_i_4_n_0 ),
        .O(\bit_counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bit_counter[3]_i_2 
       (.I0(msglen[1]),
        .I1(msglen[2]),
        .O(\bit_counter[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \bit_counter[3]_i_3 
       (.I0(bit_counter[1]),
        .I1(bit_counter[0]),
        .I2(bit_counter[2]),
        .O(\bit_counter[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h9999F00F)) 
    \bit_counter[4]_i_1 
       (.I0(bit_counter[4]),
        .I1(\bit_counter[4]_i_2_n_0 ),
        .I2(msglen[5]),
        .I3(\bit_counter[5]_i_3_n_0 ),
        .I4(\bit_counter[5]_i_4_n_0 ),
        .O(\bit_counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bit_counter[4]_i_2 
       (.I0(bit_counter[2]),
        .I1(bit_counter[0]),
        .I2(bit_counter[1]),
        .I3(bit_counter[3]),
        .O(\bit_counter[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAEEEAEAA)) 
    \bit_counter[5]_i_1 
       (.I0(counter_enabled),
        .I1(F),
        .I2(F_synchronised_posedge_delayed),
        .I3(F_synchronised_negedge_synchronised),
        .I4(F_synchronised_posedge),
        .O(\bit_counter[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF10101F1)) 
    \bit_counter[5]_i_2 
       (.I0(msglen[5]),
        .I1(\bit_counter[5]_i_3_n_0 ),
        .I2(\bit_counter[5]_i_4_n_0 ),
        .I3(\bit_counter[5]_i_5_n_0 ),
        .I4(bit_counter[5]),
        .O(\bit_counter[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bit_counter[5]_i_3 
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .O(\bit_counter[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hD1FF)) 
    \bit_counter[5]_i_4 
       (.I0(F_synchronised_posedge),
        .I1(F_synchronised_negedge_synchronised),
        .I2(F_synchronised_posedge_delayed),
        .I3(F),
        .O(\bit_counter[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \bit_counter[5]_i_5 
       (.I0(bit_counter[3]),
        .I1(bit_counter[1]),
        .I2(bit_counter[0]),
        .I3(bit_counter[2]),
        .I4(bit_counter[4]),
        .O(\bit_counter[5]_i_5_n_0 ));
  FDCE \bit_counter_reg[0] 
       (.C(C),
        .CE(\bit_counter[5]_i_1_n_0 ),
        .CLR(delay_tdata_n_64),
        .D(\bit_counter[0]_i_1_n_0 ),
        .Q(bit_counter[0]));
  FDCE \bit_counter_reg[1] 
       (.C(C),
        .CE(\bit_counter[5]_i_1_n_0 ),
        .CLR(delay_tdata_n_64),
        .D(\bit_counter[1]_i_1_n_0 ),
        .Q(bit_counter[1]));
  FDCE \bit_counter_reg[2] 
       (.C(C),
        .CE(\bit_counter[5]_i_1_n_0 ),
        .CLR(delay_tdata_n_64),
        .D(\bit_counter[2]_i_1_n_0 ),
        .Q(bit_counter[2]));
  FDCE \bit_counter_reg[3] 
       (.C(C),
        .CE(\bit_counter[5]_i_1_n_0 ),
        .CLR(delay_tdata_n_64),
        .D(\bit_counter[3]_i_1_n_0 ),
        .Q(bit_counter[3]));
  FDCE \bit_counter_reg[4] 
       (.C(C),
        .CE(\bit_counter[5]_i_1_n_0 ),
        .CLR(delay_tdata_n_64),
        .D(\bit_counter[4]_i_1_n_0 ),
        .Q(bit_counter[4]));
  FDCE \bit_counter_reg[5] 
       (.C(C),
        .CE(\bit_counter[5]_i_1_n_0 ),
        .CLR(delay_tdata_n_64),
        .D(\bit_counter[5]_i_2_n_0 ),
        .Q(bit_counter[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    counter_enabled_i_1
       (.I0(p_1_in),
        .I1(counter_enabled_i_3_n_0),
        .I2(counter_enabled),
        .O(counter_enabled_i_1_n_0));
  LUT6 #(
    .INIT(64'h000800000008C0C8)) 
    counter_enabled_i_2
       (.I0(F_synchronised_posedge),
        .I1(F),
        .I2(F_synchronised_negedge_synchronised),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .I4(F_synchronised_posedge_delayed),
        .I5(prepare_tvalid_posedge_first),
        .O(p_1_in));
  LUT6 #(
    .INIT(64'h3330FFFF3330B3A0)) 
    counter_enabled_i_3
       (.I0(F_synchronised_posedge),
        .I1(F_synchronised_posedge_delayed),
        .I2(F),
        .I3(prepare_tvalid_posedge_first),
        .I4(F_synchronised_negedge_synchronised),
        .I5(prepare_tvalid_negedge_first_reg_n_0),
        .O(counter_enabled_i_3_n_0));
  FDCE counter_enabled_reg
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(counter_enabled_i_1_n_0),
        .Q(counter_enabled));
  LVDS_to_AXIS_DDR_Stream_to_AXI_St_0_0_delay_64bit_by_X_clocks delay_tdata
       (.C(C),
        .Q(tdata),
        .aresetn(aresetn),
        .aresetn_0(delay_tdata_n_64),
        .\data_out_reg[63]_0 (delay_tvalid_n_0),
        .tdata_delayed(tdata_delayed));
  LVDS_to_AXIS_DDR_Stream_to_AXI_St_0_0_delay_by_X_clocks delay_tlast
       (.C(C),
        .data_out_reg_0(delay_tvalid_n_0),
        .data_out_reg_1(delay_tdata_n_64),
        .tlast(tlast),
        .tlast_delayed(tlast_delayed));
  LVDS_to_AXIS_DDR_Stream_to_AXI_St_0_0_delay_by_X_clocks_0 delay_tvalid
       (.C(C),
        .\shift_reg_reg[0]_inst_delay_tvalid_shift_reg_reg_c_58_0 (tvalid_reg_n_0),
        .shift_reg_reg_c_58_0(delay_tvalid_n_0),
        .shift_reg_reg_c_59(delay_tdata_n_64),
        .tvalid_delayed(tvalid_delayed));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_mask_return_carry
       (.CI(1'b0),
        .CO({gen_mask_return_carry_n_0,gen_mask_return_carry_n_1,gen_mask_return_carry_n_2,gen_mask_return_carry_n_3}),
        .CYINIT(gen_mask_return0[0]),
        .DI(gen_mask_return0[4:1]),
        .O(gen_mask_return[4:1]),
        .S({gen_mask_return_carry_i_6_n_0,gen_mask_return_carry_i_7_n_0,gen_mask_return_carry_i_8_n_0,gen_mask_return_carry_i_9_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_mask_return_carry__0
       (.CI(gen_mask_return_carry_n_0),
        .CO({gen_mask_return_carry__0_n_0,gen_mask_return_carry__0_n_1,gen_mask_return_carry__0_n_2,gen_mask_return_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(gen_mask_return0[8:5]),
        .O(gen_mask_return[8:5]),
        .S({gen_mask_return_carry__0_i_5_n_0,gen_mask_return_carry__0_i_6_n_0,gen_mask_return_carry__0_i_7_n_0,gen_mask_return_carry__0_i_8_n_0}));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    gen_mask_return_carry__0_i_1
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[3]),
        .I3(msglen[4]),
        .I4(msglen[2]),
        .I5(msglen[1]),
        .O(gen_mask_return0[8]));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    gen_mask_return_carry__0_i_2
       (.I0(msglen[5]),
        .I1(msglen[0]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[4]),
        .I5(msglen[3]),
        .O(gen_mask_return0[7]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    gen_mask_return_carry__0_i_3
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[4]),
        .I5(msglen[3]),
        .O(gen_mask_return0[6]));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    gen_mask_return_carry__0_i_4
       (.I0(msglen[5]),
        .I1(msglen[0]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[4]),
        .I5(msglen[3]),
        .O(gen_mask_return0[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    gen_mask_return_carry__0_i_5
       (.I0(msglen[1]),
        .I1(msglen[2]),
        .I2(msglen[4]),
        .I3(msglen[3]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFFFFF)) 
    gen_mask_return_carry__0_i_6
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[0]),
        .I5(msglen[5]),
        .O(gen_mask_return_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    gen_mask_return_carry__0_i_7
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    gen_mask_return_carry__0_i_8
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[0]),
        .I5(msglen[5]),
        .O(gen_mask_return_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_mask_return_carry__1
       (.CI(gen_mask_return_carry__0_n_0),
        .CO({gen_mask_return_carry__1_n_0,gen_mask_return_carry__1_n_1,gen_mask_return_carry__1_n_2,gen_mask_return_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(gen_mask_return0[12:9]),
        .O(gen_mask_return[12:9]),
        .S({gen_mask_return_carry__1_i_5_n_0,gen_mask_return_carry__1_i_6_n_0,gen_mask_return_carry__1_i_7_n_0,gen_mask_return_carry__1_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_mask_return_carry__10
       (.CI(gen_mask_return_carry__9_n_0),
        .CO({gen_mask_return_carry__10_n_0,gen_mask_return_carry__10_n_1,gen_mask_return_carry__10_n_2,gen_mask_return_carry__10_n_3}),
        .CYINIT(1'b0),
        .DI(gen_mask_return0[48:45]),
        .O(gen_mask_return[48:45]),
        .S({gen_mask_return_carry__10_i_5_n_0,gen_mask_return_carry__10_i_6_n_0,gen_mask_return_carry__10_i_7_n_0,gen_mask_return_carry__10_i_8_n_0}));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    gen_mask_return_carry__10_i_1
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[4]),
        .I3(msglen[3]),
        .I4(msglen[2]),
        .I5(msglen[1]),
        .O(gen_mask_return0[48]));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    gen_mask_return_carry__10_i_2
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[3]),
        .I5(msglen[4]),
        .O(gen_mask_return0[47]));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    gen_mask_return_carry__10_i_3
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[3]),
        .I5(msglen[4]),
        .O(gen_mask_return0[46]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    gen_mask_return_carry__10_i_4
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[3]),
        .I5(msglen[4]),
        .O(gen_mask_return0[45]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    gen_mask_return_carry__10_i_5
       (.I0(msglen[1]),
        .I1(msglen[2]),
        .I2(msglen[3]),
        .I3(msglen[4]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__10_i_5_n_0));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    gen_mask_return_carry__10_i_6
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__10_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    gen_mask_return_carry__10_i_7
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__10_i_7_n_0));
  LUT6 #(
    .INIT(64'hFBFFFFFFFFFFFFFF)) 
    gen_mask_return_carry__10_i_8
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__10_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_mask_return_carry__11
       (.CI(gen_mask_return_carry__10_n_0),
        .CO({gen_mask_return_carry__11_n_0,gen_mask_return_carry__11_n_1,gen_mask_return_carry__11_n_2,gen_mask_return_carry__11_n_3}),
        .CYINIT(1'b0),
        .DI(gen_mask_return0[52:49]),
        .O(gen_mask_return[52:49]),
        .S({gen_mask_return_carry__11_i_5_n_0,gen_mask_return_carry__11_i_6_n_0,gen_mask_return_carry__11_i_7_n_0,gen_mask_return_carry__11_i_8_n_0}));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    gen_mask_return_carry__11_i_1
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[4]),
        .I5(msglen[3]),
        .O(gen_mask_return0[52]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    gen_mask_return_carry__11_i_2
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[4]),
        .I5(msglen[3]),
        .O(gen_mask_return0[51]));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    gen_mask_return_carry__11_i_3
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[4]),
        .I5(msglen[3]),
        .O(gen_mask_return0[50]));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    gen_mask_return_carry__11_i_4
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[4]),
        .I3(msglen[3]),
        .I4(msglen[2]),
        .I5(msglen[1]),
        .O(gen_mask_return0[49]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFFFFF)) 
    gen_mask_return_carry__11_i_5
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__11_i_5_n_0));
  LUT6 #(
    .INIT(64'hFBFFFFFFFFFFFFFF)) 
    gen_mask_return_carry__11_i_6
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__11_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFFFFF)) 
    gen_mask_return_carry__11_i_7
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__11_i_7_n_0));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFFFF)) 
    gen_mask_return_carry__11_i_8
       (.I0(msglen[1]),
        .I1(msglen[2]),
        .I2(msglen[3]),
        .I3(msglen[4]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__11_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_mask_return_carry__12
       (.CI(gen_mask_return_carry__11_n_0),
        .CO({gen_mask_return_carry__12_n_0,gen_mask_return_carry__12_n_1,gen_mask_return_carry__12_n_2,gen_mask_return_carry__12_n_3}),
        .CYINIT(1'b0),
        .DI(gen_mask_return0[56:53]),
        .O(gen_mask_return[56:53]),
        .S({gen_mask_return_carry__12_i_5_n_0,gen_mask_return_carry__12_i_6_n_0,gen_mask_return_carry__12_i_7_n_0,gen_mask_return_carry__12_i_8_n_0}));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    gen_mask_return_carry__12_i_1
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[4]),
        .I3(msglen[3]),
        .I4(msglen[2]),
        .I5(msglen[1]),
        .O(gen_mask_return0[56]));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    gen_mask_return_carry__12_i_2
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[4]),
        .I5(msglen[3]),
        .O(gen_mask_return0[55]));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    gen_mask_return_carry__12_i_3
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[4]),
        .I5(msglen[3]),
        .O(gen_mask_return0[54]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    gen_mask_return_carry__12_i_4
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[4]),
        .I5(msglen[3]),
        .O(gen_mask_return0[53]));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFFFFF)) 
    gen_mask_return_carry__12_i_5
       (.I0(msglen[1]),
        .I1(msglen[2]),
        .I2(msglen[3]),
        .I3(msglen[4]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__12_i_5_n_0));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    gen_mask_return_carry__12_i_6
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__12_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    gen_mask_return_carry__12_i_7
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__12_i_7_n_0));
  LUT6 #(
    .INIT(64'hFBFFFFFFFFFFFFFF)) 
    gen_mask_return_carry__12_i_8
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__12_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_mask_return_carry__13
       (.CI(gen_mask_return_carry__12_n_0),
        .CO({gen_mask_return_carry__13_n_0,gen_mask_return_carry__13_n_1,gen_mask_return_carry__13_n_2,gen_mask_return_carry__13_n_3}),
        .CYINIT(1'b0),
        .DI(gen_mask_return0[60:57]),
        .O(gen_mask_return[60:57]),
        .S({gen_mask_return_carry__13_i_5_n_0,gen_mask_return_carry__13_i_6_n_0,gen_mask_return_carry__13_i_7_n_0,gen_mask_return_carry__13_i_8_n_0}));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    gen_mask_return_carry__13_i_1
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[4]),
        .I5(msglen[3]),
        .O(gen_mask_return0[60]));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    gen_mask_return_carry__13_i_2
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[4]),
        .I5(msglen[3]),
        .O(gen_mask_return0[59]));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    gen_mask_return_carry__13_i_3
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[4]),
        .I5(msglen[3]),
        .O(gen_mask_return0[58]));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    gen_mask_return_carry__13_i_4
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[4]),
        .I3(msglen[3]),
        .I4(msglen[2]),
        .I5(msglen[1]),
        .O(gen_mask_return0[57]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF7FFFFFF)) 
    gen_mask_return_carry__13_i_5
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__13_i_5_n_0));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    gen_mask_return_carry__13_i_6
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__13_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFF7FFFFFF)) 
    gen_mask_return_carry__13_i_7
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__13_i_7_n_0));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    gen_mask_return_carry__13_i_8
       (.I0(msglen[1]),
        .I1(msglen[2]),
        .I2(msglen[3]),
        .I3(msglen[4]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__13_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_mask_return_carry__14
       (.CI(gen_mask_return_carry__13_n_0),
        .CO({NLW_gen_mask_return_carry__14_CO_UNCONNECTED[3:2],gen_mask_return_carry__14_n_2,gen_mask_return_carry__14_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,gen_mask_return0[62:61]}),
        .O({NLW_gen_mask_return_carry__14_O_UNCONNECTED[3],gen_mask_return[63:61]}),
        .S({1'b0,gen_mask_return_carry__14_i_3_n_0,gen_mask_return_carry__14_i_4_n_0,gen_mask_return_carry__14_i_5_n_0}));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    gen_mask_return_carry__14_i_1
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[4]),
        .I5(msglen[3]),
        .O(gen_mask_return0[62]));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    gen_mask_return_carry__14_i_2
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[4]),
        .I5(msglen[3]),
        .O(gen_mask_return0[61]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    gen_mask_return_carry__14_i_3
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__14_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFF)) 
    gen_mask_return_carry__14_i_4
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__14_i_4_n_0));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    gen_mask_return_carry__14_i_5
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__14_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    gen_mask_return_carry__1_i_1
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[3]),
        .I5(msglen[4]),
        .O(gen_mask_return0[12]));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    gen_mask_return_carry__1_i_2
       (.I0(msglen[5]),
        .I1(msglen[0]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[3]),
        .I5(msglen[4]),
        .O(gen_mask_return0[11]));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    gen_mask_return_carry__1_i_3
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[3]),
        .I5(msglen[4]),
        .O(gen_mask_return0[10]));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    gen_mask_return_carry__1_i_4
       (.I0(msglen[5]),
        .I1(msglen[0]),
        .I2(msglen[3]),
        .I3(msglen[4]),
        .I4(msglen[2]),
        .I5(msglen[1]),
        .O(gen_mask_return0[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFBFF)) 
    gen_mask_return_carry__1_i_5
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFFFFF)) 
    gen_mask_return_carry__1_i_6
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[5]),
        .O(gen_mask_return_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFBFF)) 
    gen_mask_return_carry__1_i_7
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    gen_mask_return_carry__1_i_8
       (.I0(msglen[1]),
        .I1(msglen[2]),
        .I2(msglen[4]),
        .I3(msglen[3]),
        .I4(msglen[0]),
        .I5(msglen[5]),
        .O(gen_mask_return_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_mask_return_carry__2
       (.CI(gen_mask_return_carry__1_n_0),
        .CO({gen_mask_return_carry__2_n_0,gen_mask_return_carry__2_n_1,gen_mask_return_carry__2_n_2,gen_mask_return_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(gen_mask_return0[16:13]),
        .O(gen_mask_return[16:13]),
        .S({gen_mask_return_carry__2_i_5_n_0,gen_mask_return_carry__2_i_6_n_0,gen_mask_return_carry__2_i_7_n_0,gen_mask_return_carry__2_i_8_n_0}));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    gen_mask_return_carry__2_i_1
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[4]),
        .I3(msglen[3]),
        .I4(msglen[2]),
        .I5(msglen[1]),
        .O(gen_mask_return0[16]));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    gen_mask_return_carry__2_i_2
       (.I0(msglen[5]),
        .I1(msglen[0]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[3]),
        .I5(msglen[4]),
        .O(gen_mask_return0[15]));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    gen_mask_return_carry__2_i_3
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[3]),
        .I5(msglen[4]),
        .O(gen_mask_return0[14]));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    gen_mask_return_carry__2_i_4
       (.I0(msglen[5]),
        .I1(msglen[0]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[3]),
        .I5(msglen[4]),
        .O(gen_mask_return0[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    gen_mask_return_carry__2_i_5
       (.I0(msglen[1]),
        .I1(msglen[2]),
        .I2(msglen[3]),
        .I3(msglen[4]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__2_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    gen_mask_return_carry__2_i_6
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[0]),
        .I5(msglen[5]),
        .O(gen_mask_return_carry__2_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBFFF)) 
    gen_mask_return_carry__2_i_7
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__2_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFFFFF)) 
    gen_mask_return_carry__2_i_8
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[0]),
        .I5(msglen[5]),
        .O(gen_mask_return_carry__2_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_mask_return_carry__3
       (.CI(gen_mask_return_carry__2_n_0),
        .CO({gen_mask_return_carry__3_n_0,gen_mask_return_carry__3_n_1,gen_mask_return_carry__3_n_2,gen_mask_return_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(gen_mask_return0[20:17]),
        .O(gen_mask_return[20:17]),
        .S({gen_mask_return_carry__3_i_5_n_0,gen_mask_return_carry__3_i_6_n_0,gen_mask_return_carry__3_i_7_n_0,gen_mask_return_carry__3_i_8_n_0}));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    gen_mask_return_carry__3_i_1
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[4]),
        .I5(msglen[3]),
        .O(gen_mask_return0[20]));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    gen_mask_return_carry__3_i_2
       (.I0(msglen[5]),
        .I1(msglen[0]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[4]),
        .I5(msglen[3]),
        .O(gen_mask_return0[19]));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    gen_mask_return_carry__3_i_3
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[4]),
        .I5(msglen[3]),
        .O(gen_mask_return0[18]));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    gen_mask_return_carry__3_i_4
       (.I0(msglen[5]),
        .I1(msglen[0]),
        .I2(msglen[4]),
        .I3(msglen[3]),
        .I4(msglen[2]),
        .I5(msglen[1]),
        .O(gen_mask_return0[17]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFBFF)) 
    gen_mask_return_carry__3_i_5
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__3_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFFFFF)) 
    gen_mask_return_carry__3_i_6
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[5]),
        .O(gen_mask_return_carry__3_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFBFF)) 
    gen_mask_return_carry__3_i_7
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__3_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    gen_mask_return_carry__3_i_8
       (.I0(msglen[1]),
        .I1(msglen[2]),
        .I2(msglen[3]),
        .I3(msglen[4]),
        .I4(msglen[0]),
        .I5(msglen[5]),
        .O(gen_mask_return_carry__3_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_mask_return_carry__4
       (.CI(gen_mask_return_carry__3_n_0),
        .CO({gen_mask_return_carry__4_n_0,gen_mask_return_carry__4_n_1,gen_mask_return_carry__4_n_2,gen_mask_return_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(gen_mask_return0[24:21]),
        .O(gen_mask_return[24:21]),
        .S({gen_mask_return_carry__4_i_5_n_0,gen_mask_return_carry__4_i_6_n_0,gen_mask_return_carry__4_i_7_n_0,gen_mask_return_carry__4_i_8_n_0}));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    gen_mask_return_carry__4_i_1
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[4]),
        .I3(msglen[3]),
        .I4(msglen[2]),
        .I5(msglen[1]),
        .O(gen_mask_return0[24]));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    gen_mask_return_carry__4_i_2
       (.I0(msglen[5]),
        .I1(msglen[0]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[4]),
        .I5(msglen[3]),
        .O(gen_mask_return0[23]));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    gen_mask_return_carry__4_i_3
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[4]),
        .I5(msglen[3]),
        .O(gen_mask_return0[22]));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    gen_mask_return_carry__4_i_4
       (.I0(msglen[5]),
        .I1(msglen[0]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[4]),
        .I5(msglen[3]),
        .O(gen_mask_return0[21]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    gen_mask_return_carry__4_i_5
       (.I0(msglen[1]),
        .I1(msglen[2]),
        .I2(msglen[3]),
        .I3(msglen[4]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__4_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    gen_mask_return_carry__4_i_6
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[0]),
        .I5(msglen[5]),
        .O(gen_mask_return_carry__4_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBFFF)) 
    gen_mask_return_carry__4_i_7
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__4_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFFFFF)) 
    gen_mask_return_carry__4_i_8
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[0]),
        .I5(msglen[5]),
        .O(gen_mask_return_carry__4_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_mask_return_carry__5
       (.CI(gen_mask_return_carry__4_n_0),
        .CO({gen_mask_return_carry__5_n_0,gen_mask_return_carry__5_n_1,gen_mask_return_carry__5_n_2,gen_mask_return_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(gen_mask_return0[28:25]),
        .O(gen_mask_return[28:25]),
        .S({gen_mask_return_carry__5_i_5_n_0,gen_mask_return_carry__5_i_6_n_0,gen_mask_return_carry__5_i_7_n_0,gen_mask_return_carry__5_i_8_n_0}));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    gen_mask_return_carry__5_i_1
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[4]),
        .I5(msglen[3]),
        .O(gen_mask_return0[28]));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    gen_mask_return_carry__5_i_2
       (.I0(msglen[5]),
        .I1(msglen[0]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[4]),
        .I5(msglen[3]),
        .O(gen_mask_return0[27]));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    gen_mask_return_carry__5_i_3
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[4]),
        .I5(msglen[3]),
        .O(gen_mask_return0[26]));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    gen_mask_return_carry__5_i_4
       (.I0(msglen[5]),
        .I1(msglen[0]),
        .I2(msglen[4]),
        .I3(msglen[3]),
        .I4(msglen[2]),
        .I5(msglen[1]),
        .O(gen_mask_return0[25]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
    gen_mask_return_carry__5_i_5
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__5_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFF7FFFFFF)) 
    gen_mask_return_carry__5_i_6
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[5]),
        .O(gen_mask_return_carry__5_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
    gen_mask_return_carry__5_i_7
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__5_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFFFFF)) 
    gen_mask_return_carry__5_i_8
       (.I0(msglen[1]),
        .I1(msglen[2]),
        .I2(msglen[3]),
        .I3(msglen[4]),
        .I4(msglen[0]),
        .I5(msglen[5]),
        .O(gen_mask_return_carry__5_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_mask_return_carry__6
       (.CI(gen_mask_return_carry__5_n_0),
        .CO({gen_mask_return_carry__6_n_0,gen_mask_return_carry__6_n_1,gen_mask_return_carry__6_n_2,gen_mask_return_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI(gen_mask_return0[32:29]),
        .O(gen_mask_return[32:29]),
        .S({gen_mask_return_carry__6_i_5_n_0,gen_mask_return_carry__6_i_6_n_0,gen_mask_return_carry__6_i_7_n_0,gen_mask_return_carry__6_i_8_n_0}));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    gen_mask_return_carry__6_i_1
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[4]),
        .I3(msglen[3]),
        .I4(msglen[2]),
        .I5(msglen[1]),
        .O(gen_mask_return0[32]));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    gen_mask_return_carry__6_i_2
       (.I0(msglen[5]),
        .I1(msglen[0]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[4]),
        .I5(msglen[3]),
        .O(gen_mask_return0[31]));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    gen_mask_return_carry__6_i_3
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[4]),
        .I5(msglen[3]),
        .O(gen_mask_return0[30]));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    gen_mask_return_carry__6_i_4
       (.I0(msglen[5]),
        .I1(msglen[0]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[4]),
        .I5(msglen[3]),
        .O(gen_mask_return0[29]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    gen_mask_return_carry__6_i_5
       (.I0(msglen[1]),
        .I1(msglen[2]),
        .I2(msglen[3]),
        .I3(msglen[4]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__6_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFF)) 
    gen_mask_return_carry__6_i_6
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[0]),
        .I5(msglen[5]),
        .O(gen_mask_return_carry__6_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    gen_mask_return_carry__6_i_7
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__6_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFF7FFFFFF)) 
    gen_mask_return_carry__6_i_8
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[0]),
        .I5(msglen[5]),
        .O(gen_mask_return_carry__6_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_mask_return_carry__7
       (.CI(gen_mask_return_carry__6_n_0),
        .CO({gen_mask_return_carry__7_n_0,gen_mask_return_carry__7_n_1,gen_mask_return_carry__7_n_2,gen_mask_return_carry__7_n_3}),
        .CYINIT(1'b0),
        .DI(gen_mask_return0[36:33]),
        .O(gen_mask_return[36:33]),
        .S({gen_mask_return_carry__7_i_5_n_0,gen_mask_return_carry__7_i_6_n_0,gen_mask_return_carry__7_i_7_n_0,gen_mask_return_carry__7_i_8_n_0}));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    gen_mask_return_carry__7_i_1
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[4]),
        .I5(msglen[3]),
        .O(gen_mask_return0[36]));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    gen_mask_return_carry__7_i_2
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[4]),
        .I5(msglen[3]),
        .O(gen_mask_return0[35]));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    gen_mask_return_carry__7_i_3
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[4]),
        .I5(msglen[3]),
        .O(gen_mask_return0[34]));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    gen_mask_return_carry__7_i_4
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[4]),
        .I3(msglen[3]),
        .I4(msglen[2]),
        .I5(msglen[1]),
        .O(gen_mask_return0[33]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    gen_mask_return_carry__7_i_5
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__7_i_5_n_0));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFFFF)) 
    gen_mask_return_carry__7_i_6
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__7_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    gen_mask_return_carry__7_i_7
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__7_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    gen_mask_return_carry__7_i_8
       (.I0(msglen[1]),
        .I1(msglen[2]),
        .I2(msglen[3]),
        .I3(msglen[4]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__7_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_mask_return_carry__8
       (.CI(gen_mask_return_carry__7_n_0),
        .CO({gen_mask_return_carry__8_n_0,gen_mask_return_carry__8_n_1,gen_mask_return_carry__8_n_2,gen_mask_return_carry__8_n_3}),
        .CYINIT(1'b0),
        .DI(gen_mask_return0[40:37]),
        .O(gen_mask_return[40:37]),
        .S({gen_mask_return_carry__8_i_5_n_0,gen_mask_return_carry__8_i_6_n_0,gen_mask_return_carry__8_i_7_n_0,gen_mask_return_carry__8_i_8_n_0}));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    gen_mask_return_carry__8_i_1
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[3]),
        .I3(msglen[4]),
        .I4(msglen[2]),
        .I5(msglen[1]),
        .O(gen_mask_return0[40]));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    gen_mask_return_carry__8_i_2
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[4]),
        .I5(msglen[3]),
        .O(gen_mask_return0[39]));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    gen_mask_return_carry__8_i_3
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[4]),
        .I5(msglen[3]),
        .O(gen_mask_return0[38]));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    gen_mask_return_carry__8_i_4
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[4]),
        .I5(msglen[3]),
        .O(gen_mask_return0[37]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    gen_mask_return_carry__8_i_5
       (.I0(msglen[1]),
        .I1(msglen[2]),
        .I2(msglen[4]),
        .I3(msglen[3]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__8_i_5_n_0));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    gen_mask_return_carry__8_i_6
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__8_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFFFFF)) 
    gen_mask_return_carry__8_i_7
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__8_i_7_n_0));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFFFF)) 
    gen_mask_return_carry__8_i_8
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__8_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_mask_return_carry__9
       (.CI(gen_mask_return_carry__8_n_0),
        .CO({gen_mask_return_carry__9_n_0,gen_mask_return_carry__9_n_1,gen_mask_return_carry__9_n_2,gen_mask_return_carry__9_n_3}),
        .CYINIT(1'b0),
        .DI(gen_mask_return0[44:41]),
        .O(gen_mask_return[44:41]),
        .S({gen_mask_return_carry__9_i_5_n_0,gen_mask_return_carry__9_i_6_n_0,gen_mask_return_carry__9_i_7_n_0,gen_mask_return_carry__9_i_8_n_0}));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    gen_mask_return_carry__9_i_1
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[3]),
        .I5(msglen[4]),
        .O(gen_mask_return0[44]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    gen_mask_return_carry__9_i_2
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[3]),
        .I5(msglen[4]),
        .O(gen_mask_return0[43]));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    gen_mask_return_carry__9_i_3
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[3]),
        .I5(msglen[4]),
        .O(gen_mask_return0[42]));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    gen_mask_return_carry__9_i_4
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[3]),
        .I3(msglen[4]),
        .I4(msglen[2]),
        .I5(msglen[1]),
        .O(gen_mask_return0[41]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFFFFF)) 
    gen_mask_return_carry__9_i_5
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__9_i_5_n_0));
  LUT6 #(
    .INIT(64'hFBFFFFFFFFFFFFFF)) 
    gen_mask_return_carry__9_i_6
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__9_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFFFFF)) 
    gen_mask_return_carry__9_i_7
       (.I0(msglen[4]),
        .I1(msglen[3]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__9_i_7_n_0));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFFFF)) 
    gen_mask_return_carry__9_i_8
       (.I0(msglen[1]),
        .I1(msglen[2]),
        .I2(msglen[4]),
        .I3(msglen[3]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry__9_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    gen_mask_return_carry_i_1
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[4]),
        .I3(msglen[3]),
        .I4(msglen[2]),
        .I5(msglen[1]),
        .O(gen_mask_return0[0]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    gen_mask_return_carry_i_2
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[4]),
        .I5(msglen[3]),
        .O(gen_mask_return0[4]));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    gen_mask_return_carry_i_3
       (.I0(msglen[5]),
        .I1(msglen[0]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[4]),
        .I5(msglen[3]),
        .O(gen_mask_return0[3]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    gen_mask_return_carry_i_4
       (.I0(msglen[0]),
        .I1(msglen[5]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[4]),
        .I5(msglen[3]),
        .O(gen_mask_return0[2]));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    gen_mask_return_carry_i_5
       (.I0(msglen[5]),
        .I1(msglen[0]),
        .I2(msglen[4]),
        .I3(msglen[3]),
        .I4(msglen[2]),
        .I5(msglen[1]),
        .O(gen_mask_return0[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    gen_mask_return_carry_i_6
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[1]),
        .I3(msglen[2]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    gen_mask_return_carry_i_7
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[0]),
        .I5(msglen[5]),
        .O(gen_mask_return_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    gen_mask_return_carry_i_8
       (.I0(msglen[3]),
        .I1(msglen[4]),
        .I2(msglen[2]),
        .I3(msglen[1]),
        .I4(msglen[5]),
        .I5(msglen[0]),
        .O(gen_mask_return_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    gen_mask_return_carry_i_9
       (.I0(msglen[1]),
        .I1(msglen[2]),
        .I2(msglen[3]),
        .I3(msglen[4]),
        .I4(msglen[0]),
        .I5(msglen[5]),
        .O(gen_mask_return_carry_i_9_n_0));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \negedge_Qs_reg[0] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(D_synchronised_negedge),
        .Q(\negedge_Qs_reg_n_0_[0] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \negedge_Qs_reg[2] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[1]),
        .Q(\negedge_Qs_reg_n_0_[2] ));
  LUT5 #(
    .INIT(32'hF5FF2020)) 
    negedge_first_i_1
       (.I0(F),
        .I1(F_synchronised_posedge_delayed),
        .I2(F_synchronised_negedge_synchronised),
        .I3(F_synchronised_posedge),
        .I4(negedge_first),
        .O(negedge_first_i_1_n_0));
  FDCE negedge_first_reg
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(negedge_first_i_1_n_0),
        .Q(negedge_first));
  FDCE \posedge_Qs_reg[0] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(D_synchronised_posedge),
        .Q(posedge_Qs[0]));
  FDCE \posedge_Qs_reg[10] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[9]),
        .Q(posedge_Qs[10]));
  FDCE \posedge_Qs_reg[11] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[10]),
        .Q(posedge_Qs[11]));
  FDCE \posedge_Qs_reg[12] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[11]),
        .Q(posedge_Qs[12]));
  FDCE \posedge_Qs_reg[13] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[12]),
        .Q(posedge_Qs[13]));
  FDCE \posedge_Qs_reg[14] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[13]),
        .Q(posedge_Qs[14]));
  FDCE \posedge_Qs_reg[15] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[14]),
        .Q(posedge_Qs[15]));
  FDCE \posedge_Qs_reg[16] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[15]),
        .Q(posedge_Qs[16]));
  FDCE \posedge_Qs_reg[17] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[16]),
        .Q(posedge_Qs[17]));
  FDCE \posedge_Qs_reg[18] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[17]),
        .Q(posedge_Qs[18]));
  FDCE \posedge_Qs_reg[19] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[18]),
        .Q(posedge_Qs[19]));
  FDCE \posedge_Qs_reg[1] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[0]),
        .Q(posedge_Qs[1]));
  FDCE \posedge_Qs_reg[20] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[19]),
        .Q(posedge_Qs[20]));
  FDCE \posedge_Qs_reg[21] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[20]),
        .Q(posedge_Qs[21]));
  FDCE \posedge_Qs_reg[22] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[21]),
        .Q(posedge_Qs[22]));
  FDCE \posedge_Qs_reg[23] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[22]),
        .Q(posedge_Qs[23]));
  FDCE \posedge_Qs_reg[24] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[23]),
        .Q(posedge_Qs[24]));
  FDCE \posedge_Qs_reg[25] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[24]),
        .Q(posedge_Qs[25]));
  FDCE \posedge_Qs_reg[26] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[25]),
        .Q(posedge_Qs[26]));
  FDCE \posedge_Qs_reg[27] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[26]),
        .Q(posedge_Qs[27]));
  FDCE \posedge_Qs_reg[28] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[27]),
        .Q(posedge_Qs[28]));
  FDCE \posedge_Qs_reg[29] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[28]),
        .Q(posedge_Qs[29]));
  FDCE \posedge_Qs_reg[2] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[1]),
        .Q(posedge_Qs[2]));
  FDCE \posedge_Qs_reg[30] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[29]),
        .Q(posedge_Qs[30]));
  FDCE \posedge_Qs_reg[31] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[30]),
        .Q(posedge_Qs[31]));
  FDCE \posedge_Qs_reg[3] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[2]),
        .Q(posedge_Qs[3]));
  FDCE \posedge_Qs_reg[4] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[3]),
        .Q(posedge_Qs[4]));
  FDCE \posedge_Qs_reg[5] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[4]),
        .Q(posedge_Qs[5]));
  FDCE \posedge_Qs_reg[6] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[5]),
        .Q(posedge_Qs[6]));
  FDCE \posedge_Qs_reg[7] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[6]),
        .Q(posedge_Qs[7]));
  FDCE \posedge_Qs_reg[8] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[7]),
        .Q(posedge_Qs[8]));
  FDCE \posedge_Qs_reg[9] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[8]),
        .Q(posedge_Qs[9]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hDFDF0A00)) 
    posedge_first_i_1
       (.I0(F),
        .I1(F_synchronised_posedge_delayed),
        .I2(F_synchronised_negedge_synchronised),
        .I3(F_synchronised_posedge),
        .I4(posedge_first_reg_n_0),
        .O(posedge_first_i_1_n_0));
  FDCE posedge_first_reg
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_first_i_1_n_0),
        .Q(posedge_first_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h08)) 
    prepare_tvalid_negedge_first_i_1
       (.I0(negedge_first),
        .I1(prepare_tvalid_posedge_first_i_2_n_0),
        .I2(prepare_tvalid_negedge_first_reg_n_0),
        .O(prepare_tvalid_negedge_first_i_1_n_0));
  FDCE prepare_tvalid_negedge_first_reg
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(prepare_tvalid_negedge_first_i_1_n_0),
        .Q(prepare_tvalid_negedge_first_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h08)) 
    prepare_tvalid_posedge_first_i_1
       (.I0(posedge_first_reg_n_0),
        .I1(prepare_tvalid_posedge_first_i_2_n_0),
        .I2(prepare_tvalid_posedge_first),
        .O(prepare_tvalid_posedge_first_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    prepare_tvalid_posedge_first_i_2
       (.I0(bit_counter[4]),
        .I1(bit_counter[2]),
        .I2(bit_counter[0]),
        .I3(bit_counter[1]),
        .I4(bit_counter[3]),
        .I5(bit_counter[5]),
        .O(prepare_tvalid_posedge_first_i_2_n_0));
  FDCE prepare_tvalid_posedge_first_reg
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(prepare_tvalid_posedge_first_i_1_n_0),
        .Q(prepare_tvalid_posedge_first));
  LUT6 #(
    .INIT(64'hAAA8AAA8FFFC0000)) 
    \tdata[0]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[0]),
        .I1(\bit_counter[5]_i_3_n_0 ),
        .I2(msglen[5]),
        .I3(msglen[0]),
        .I4(tdata_posedge_first_synchronised[0]),
        .I5(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[0]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[10]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[10]),
        .I1(gen_mask_return[10]),
        .I2(tdata_negedge_first_synchronised_synchronised[9]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[10]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[11]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[11]),
        .I1(gen_mask_return[11]),
        .I2(posedge_Qs[6]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[11]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[12]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[12]),
        .I1(gen_mask_return[12]),
        .I2(tdata_negedge_first_synchronised_synchronised[11]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[12]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[13]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[13]),
        .I1(gen_mask_return[13]),
        .I2(posedge_Qs[7]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[13]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[14]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[14]),
        .I1(gen_mask_return[14]),
        .I2(tdata_negedge_first_synchronised_synchronised[13]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[14]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[15]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[15]),
        .I1(gen_mask_return[15]),
        .I2(posedge_Qs[8]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[15]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[16]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[16]),
        .I1(gen_mask_return[16]),
        .I2(tdata_negedge_first_synchronised_synchronised[15]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[16]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[17]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[17]),
        .I1(gen_mask_return[17]),
        .I2(posedge_Qs[9]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[17]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[18]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[18]),
        .I1(gen_mask_return[18]),
        .I2(tdata_negedge_first_synchronised_synchronised[17]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[18]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[19]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[19]),
        .I1(gen_mask_return[19]),
        .I2(posedge_Qs[10]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[19]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[1]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[1]),
        .I1(gen_mask_return[1]),
        .I2(posedge_Qs[1]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[1]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[20]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[20]),
        .I1(gen_mask_return[20]),
        .I2(tdata_negedge_first_synchronised_synchronised[19]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[20]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[21]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[21]),
        .I1(gen_mask_return[21]),
        .I2(posedge_Qs[11]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[21]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[22]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[22]),
        .I1(gen_mask_return[22]),
        .I2(tdata_negedge_first_synchronised_synchronised[21]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[22]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[23]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[23]),
        .I1(gen_mask_return[23]),
        .I2(posedge_Qs[12]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[23]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[24]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[24]),
        .I1(gen_mask_return[24]),
        .I2(tdata_negedge_first_synchronised_synchronised[23]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[24]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[25]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[25]),
        .I1(gen_mask_return[25]),
        .I2(posedge_Qs[13]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[25]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[26]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[26]),
        .I1(gen_mask_return[26]),
        .I2(tdata_negedge_first_synchronised_synchronised[25]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[26]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[27]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[27]),
        .I1(gen_mask_return[27]),
        .I2(posedge_Qs[14]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[27]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[28]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[28]),
        .I1(gen_mask_return[28]),
        .I2(tdata_negedge_first_synchronised_synchronised[27]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[28]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[29]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[29]),
        .I1(gen_mask_return[29]),
        .I2(posedge_Qs[15]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[29]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[2]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[2]),
        .I1(gen_mask_return[2]),
        .I2(tdata_negedge_first_synchronised_synchronised[1]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[2]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[30]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[30]),
        .I1(gen_mask_return[30]),
        .I2(tdata_negedge_first_synchronised_synchronised[29]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[30]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[31]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[31]),
        .I1(gen_mask_return[31]),
        .I2(posedge_Qs[16]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[31]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[32]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[32]),
        .I1(gen_mask_return[32]),
        .I2(tdata_negedge_first_synchronised_synchronised[31]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[32]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[33]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[33]),
        .I1(gen_mask_return[33]),
        .I2(posedge_Qs[17]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[33]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[34]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[34]),
        .I1(gen_mask_return[34]),
        .I2(tdata_negedge_first_synchronised_synchronised[33]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[34]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[35]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[35]),
        .I1(gen_mask_return[35]),
        .I2(posedge_Qs[18]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[35]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[36]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[36]),
        .I1(gen_mask_return[36]),
        .I2(tdata_negedge_first_synchronised_synchronised[35]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[36]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[37]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[37]),
        .I1(gen_mask_return[37]),
        .I2(posedge_Qs[19]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[37]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[38]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[38]),
        .I1(gen_mask_return[38]),
        .I2(tdata_negedge_first_synchronised_synchronised[37]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[38]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[39]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[39]),
        .I1(gen_mask_return[39]),
        .I2(posedge_Qs[20]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[39]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[3]_i_1 
       (.I0(tdata_posedge_first_synchronised[4]),
        .I1(gen_mask_return[3]),
        .I2(posedge_Qs[2]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[3]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[40]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[40]),
        .I1(gen_mask_return[40]),
        .I2(tdata_negedge_first_synchronised_synchronised[39]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[40]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[41]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[41]),
        .I1(gen_mask_return[41]),
        .I2(posedge_Qs[21]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[41]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[42]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[42]),
        .I1(gen_mask_return[42]),
        .I2(tdata_negedge_first_synchronised_synchronised[41]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[42]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[43]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[43]),
        .I1(gen_mask_return[43]),
        .I2(posedge_Qs[22]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[43]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[44]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[44]),
        .I1(gen_mask_return[44]),
        .I2(tdata_negedge_first_synchronised_synchronised[43]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[44]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[45]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[45]),
        .I1(gen_mask_return[45]),
        .I2(posedge_Qs[23]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[45]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[46]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[46]),
        .I1(gen_mask_return[46]),
        .I2(tdata_negedge_first_synchronised_synchronised[45]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[46]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[47]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[47]),
        .I1(gen_mask_return[47]),
        .I2(posedge_Qs[24]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[47]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[48]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[48]),
        .I1(gen_mask_return[48]),
        .I2(tdata_negedge_first_synchronised_synchronised[47]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[48]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[49]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[49]),
        .I1(gen_mask_return[49]),
        .I2(posedge_Qs[25]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[49]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[4]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[4]),
        .I1(gen_mask_return[4]),
        .I2(tdata_posedge_first_synchronised[4]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[4]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[50]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[50]),
        .I1(gen_mask_return[50]),
        .I2(tdata_negedge_first_synchronised_synchronised[49]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[50]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[51]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[51]),
        .I1(gen_mask_return[51]),
        .I2(posedge_Qs[26]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[51]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[52]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[52]),
        .I1(gen_mask_return[52]),
        .I2(tdata_negedge_first_synchronised_synchronised[51]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[52]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[53]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[53]),
        .I1(gen_mask_return[53]),
        .I2(posedge_Qs[27]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[53]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[54]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[54]),
        .I1(gen_mask_return[54]),
        .I2(tdata_negedge_first_synchronised_synchronised[53]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[54]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[55]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[55]),
        .I1(gen_mask_return[55]),
        .I2(posedge_Qs[28]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[55]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[56]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[56]),
        .I1(gen_mask_return[56]),
        .I2(tdata_negedge_first_synchronised_synchronised[55]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[56]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[57]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[57]),
        .I1(gen_mask_return[57]),
        .I2(posedge_Qs[29]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[57]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[58]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[58]),
        .I1(gen_mask_return[58]),
        .I2(tdata_negedge_first_synchronised_synchronised[57]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[58]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[59]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[59]),
        .I1(gen_mask_return[59]),
        .I2(posedge_Qs[30]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[59]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[5]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[5]),
        .I1(gen_mask_return[5]),
        .I2(posedge_Qs[3]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[5]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[60]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[60]),
        .I1(gen_mask_return[60]),
        .I2(tdata_negedge_first_synchronised_synchronised[59]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[60]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[61]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[61]),
        .I1(gen_mask_return[61]),
        .I2(posedge_Qs[31]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[61]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[62]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[62]),
        .I1(gen_mask_return[62]),
        .I2(tdata_negedge_first_synchronised_synchronised[61]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[62]));
  LUT2 #(
    .INIT(4'hE)) 
    \tdata[63]_i_1 
       (.I0(prepare_tvalid_negedge_first_reg_n_0),
        .I1(prepare_tvalid_posedge_first),
        .O(sel));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[63]_i_2 
       (.I0(tdata_negedge_first_synchronised_synchronised[63]),
        .I1(gen_mask_return[63]),
        .I2(tdata_posedge_first_synchronised[63]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[63]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[6]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[6]),
        .I1(gen_mask_return[6]),
        .I2(tdata_negedge_first_synchronised_synchronised[5]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[6]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[7]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[7]),
        .I1(gen_mask_return[7]),
        .I2(posedge_Qs[4]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[7]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[8]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[8]),
        .I1(gen_mask_return[8]),
        .I2(tdata_negedge_first_synchronised_synchronised[7]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[8]));
  LUT4 #(
    .INIT(16'h88C0)) 
    \tdata[9]_i_1 
       (.I0(tdata_negedge_first_synchronised_synchronised[9]),
        .I1(gen_mask_return[9]),
        .I2(posedge_Qs[5]),
        .I3(prepare_tvalid_negedge_first_reg_n_0),
        .O(p_0_in[9]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[0] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[0]),
        .Q(tdata_negedge_first_synchronised[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[10] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[5]),
        .Q(tdata_negedge_first_synchronised[10]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[11] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[9]),
        .Q(tdata_negedge_first_synchronised[11]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[12] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[6]),
        .Q(tdata_negedge_first_synchronised[12]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[13] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[11]),
        .Q(tdata_negedge_first_synchronised[13]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[14] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[7]),
        .Q(tdata_negedge_first_synchronised[14]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[15] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[13]),
        .Q(tdata_negedge_first_synchronised[15]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[16] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[8]),
        .Q(tdata_negedge_first_synchronised[16]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[17] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[15]),
        .Q(tdata_negedge_first_synchronised[17]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[18] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[9]),
        .Q(tdata_negedge_first_synchronised[18]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[19] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[17]),
        .Q(tdata_negedge_first_synchronised[19]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[1] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(\negedge_Qs_reg_n_0_[0] ),
        .Q(tdata_negedge_first_synchronised[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[20] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[10]),
        .Q(tdata_negedge_first_synchronised[20]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[21] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[19]),
        .Q(tdata_negedge_first_synchronised[21]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[22] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[11]),
        .Q(tdata_negedge_first_synchronised[22]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[23] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[21]),
        .Q(tdata_negedge_first_synchronised[23]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[24] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[12]),
        .Q(tdata_negedge_first_synchronised[24]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[25] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[23]),
        .Q(tdata_negedge_first_synchronised[25]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[26] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[13]),
        .Q(tdata_negedge_first_synchronised[26]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[27] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[25]),
        .Q(tdata_negedge_first_synchronised[27]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[28] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[14]),
        .Q(tdata_negedge_first_synchronised[28]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[29] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[27]),
        .Q(tdata_negedge_first_synchronised[29]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[2] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[1]),
        .Q(tdata_negedge_first_synchronised[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[30] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[15]),
        .Q(tdata_negedge_first_synchronised[30]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[31] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[29]),
        .Q(tdata_negedge_first_synchronised[31]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[32] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[16]),
        .Q(tdata_negedge_first_synchronised[32]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[33] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[31]),
        .Q(tdata_negedge_first_synchronised[33]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[34] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[17]),
        .Q(tdata_negedge_first_synchronised[34]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[35] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[33]),
        .Q(tdata_negedge_first_synchronised[35]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[36] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[18]),
        .Q(tdata_negedge_first_synchronised[36]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[37] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[35]),
        .Q(tdata_negedge_first_synchronised[37]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[38] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[19]),
        .Q(tdata_negedge_first_synchronised[38]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[39] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[37]),
        .Q(tdata_negedge_first_synchronised[39]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[40] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[20]),
        .Q(tdata_negedge_first_synchronised[40]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[41] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[39]),
        .Q(tdata_negedge_first_synchronised[41]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[42] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[21]),
        .Q(tdata_negedge_first_synchronised[42]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[43] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[41]),
        .Q(tdata_negedge_first_synchronised[43]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[44] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[22]),
        .Q(tdata_negedge_first_synchronised[44]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[45] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[43]),
        .Q(tdata_negedge_first_synchronised[45]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[46] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[23]),
        .Q(tdata_negedge_first_synchronised[46]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[47] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[45]),
        .Q(tdata_negedge_first_synchronised[47]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[48] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[24]),
        .Q(tdata_negedge_first_synchronised[48]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[49] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[47]),
        .Q(tdata_negedge_first_synchronised[49]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[4] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[2]),
        .Q(tdata_negedge_first_synchronised[4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[50] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[25]),
        .Q(tdata_negedge_first_synchronised[50]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[51] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[49]),
        .Q(tdata_negedge_first_synchronised[51]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[52] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[26]),
        .Q(tdata_negedge_first_synchronised[52]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[53] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[51]),
        .Q(tdata_negedge_first_synchronised[53]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[54] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[27]),
        .Q(tdata_negedge_first_synchronised[54]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[55] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[53]),
        .Q(tdata_negedge_first_synchronised[55]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[56] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[28]),
        .Q(tdata_negedge_first_synchronised[56]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[57] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[55]),
        .Q(tdata_negedge_first_synchronised[57]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[58] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[29]),
        .Q(tdata_negedge_first_synchronised[58]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[59] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[57]),
        .Q(tdata_negedge_first_synchronised[59]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[5] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(\negedge_Qs_reg_n_0_[2] ),
        .Q(tdata_negedge_first_synchronised[5]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[60] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[30]),
        .Q(tdata_negedge_first_synchronised[60]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[61] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[59]),
        .Q(tdata_negedge_first_synchronised[61]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[62] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[31]),
        .Q(tdata_negedge_first_synchronised[62]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[63] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[61]),
        .Q(tdata_negedge_first_synchronised[63]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[6] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[3]),
        .Q(tdata_negedge_first_synchronised[6]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[7] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[5]),
        .Q(tdata_negedge_first_synchronised[7]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[8] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[4]),
        .Q(tdata_negedge_first_synchronised[8]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \tdata_negedge_first_synchronised_reg[9] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[7]),
        .Q(tdata_negedge_first_synchronised[9]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[0] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[0]),
        .Q(tdata_negedge_first_synchronised_synchronised[0]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[10] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[10]),
        .Q(tdata_negedge_first_synchronised_synchronised[10]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[11] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[11]),
        .Q(tdata_negedge_first_synchronised_synchronised[11]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[12] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[12]),
        .Q(tdata_negedge_first_synchronised_synchronised[12]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[13] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[13]),
        .Q(tdata_negedge_first_synchronised_synchronised[13]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[14] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[14]),
        .Q(tdata_negedge_first_synchronised_synchronised[14]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[15] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[15]),
        .Q(tdata_negedge_first_synchronised_synchronised[15]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[16] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[16]),
        .Q(tdata_negedge_first_synchronised_synchronised[16]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[17] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[17]),
        .Q(tdata_negedge_first_synchronised_synchronised[17]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[18] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[18]),
        .Q(tdata_negedge_first_synchronised_synchronised[18]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[19] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[19]),
        .Q(tdata_negedge_first_synchronised_synchronised[19]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[1] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[1]),
        .Q(tdata_negedge_first_synchronised_synchronised[1]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[20] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[20]),
        .Q(tdata_negedge_first_synchronised_synchronised[20]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[21] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[21]),
        .Q(tdata_negedge_first_synchronised_synchronised[21]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[22] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[22]),
        .Q(tdata_negedge_first_synchronised_synchronised[22]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[23] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[23]),
        .Q(tdata_negedge_first_synchronised_synchronised[23]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[24] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[24]),
        .Q(tdata_negedge_first_synchronised_synchronised[24]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[25] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[25]),
        .Q(tdata_negedge_first_synchronised_synchronised[25]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[26] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[26]),
        .Q(tdata_negedge_first_synchronised_synchronised[26]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[27] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[27]),
        .Q(tdata_negedge_first_synchronised_synchronised[27]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[28] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[28]),
        .Q(tdata_negedge_first_synchronised_synchronised[28]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[29] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[29]),
        .Q(tdata_negedge_first_synchronised_synchronised[29]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[2] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[2]),
        .Q(tdata_negedge_first_synchronised_synchronised[2]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[30] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[30]),
        .Q(tdata_negedge_first_synchronised_synchronised[30]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[31] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[31]),
        .Q(tdata_negedge_first_synchronised_synchronised[31]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[32] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[32]),
        .Q(tdata_negedge_first_synchronised_synchronised[32]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[33] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[33]),
        .Q(tdata_negedge_first_synchronised_synchronised[33]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[34] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[34]),
        .Q(tdata_negedge_first_synchronised_synchronised[34]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[35] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[35]),
        .Q(tdata_negedge_first_synchronised_synchronised[35]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[36] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[36]),
        .Q(tdata_negedge_first_synchronised_synchronised[36]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[37] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[37]),
        .Q(tdata_negedge_first_synchronised_synchronised[37]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[38] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[38]),
        .Q(tdata_negedge_first_synchronised_synchronised[38]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[39] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[39]),
        .Q(tdata_negedge_first_synchronised_synchronised[39]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[40] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[40]),
        .Q(tdata_negedge_first_synchronised_synchronised[40]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[41] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[41]),
        .Q(tdata_negedge_first_synchronised_synchronised[41]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[42] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[42]),
        .Q(tdata_negedge_first_synchronised_synchronised[42]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[43] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[43]),
        .Q(tdata_negedge_first_synchronised_synchronised[43]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[44] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[44]),
        .Q(tdata_negedge_first_synchronised_synchronised[44]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[45] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[45]),
        .Q(tdata_negedge_first_synchronised_synchronised[45]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[46] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[46]),
        .Q(tdata_negedge_first_synchronised_synchronised[46]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[47] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[47]),
        .Q(tdata_negedge_first_synchronised_synchronised[47]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[48] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[48]),
        .Q(tdata_negedge_first_synchronised_synchronised[48]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[49] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[49]),
        .Q(tdata_negedge_first_synchronised_synchronised[49]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[4] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[4]),
        .Q(tdata_negedge_first_synchronised_synchronised[4]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[50] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[50]),
        .Q(tdata_negedge_first_synchronised_synchronised[50]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[51] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[51]),
        .Q(tdata_negedge_first_synchronised_synchronised[51]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[52] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[52]),
        .Q(tdata_negedge_first_synchronised_synchronised[52]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[53] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[53]),
        .Q(tdata_negedge_first_synchronised_synchronised[53]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[54] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[54]),
        .Q(tdata_negedge_first_synchronised_synchronised[54]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[55] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[55]),
        .Q(tdata_negedge_first_synchronised_synchronised[55]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[56] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[56]),
        .Q(tdata_negedge_first_synchronised_synchronised[56]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[57] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[57]),
        .Q(tdata_negedge_first_synchronised_synchronised[57]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[58] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[58]),
        .Q(tdata_negedge_first_synchronised_synchronised[58]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[59] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[59]),
        .Q(tdata_negedge_first_synchronised_synchronised[59]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[5] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[5]),
        .Q(tdata_negedge_first_synchronised_synchronised[5]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[60] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[60]),
        .Q(tdata_negedge_first_synchronised_synchronised[60]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[61] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[61]),
        .Q(tdata_negedge_first_synchronised_synchronised[61]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[62] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[62]),
        .Q(tdata_negedge_first_synchronised_synchronised[62]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[63] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[63]),
        .Q(tdata_negedge_first_synchronised_synchronised[63]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[6] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[6]),
        .Q(tdata_negedge_first_synchronised_synchronised[6]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[7] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[7]),
        .Q(tdata_negedge_first_synchronised_synchronised[7]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[8] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[8]),
        .Q(tdata_negedge_first_synchronised_synchronised[8]));
  FDCE \tdata_negedge_first_synchronised_synchronised_reg[9] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tdata_negedge_first_synchronised[9]),
        .Q(tdata_negedge_first_synchronised_synchronised[9]));
  FDCE \tdata_posedge_first_synchronised_reg[0] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(\negedge_Qs_reg_n_0_[0] ),
        .Q(tdata_posedge_first_synchronised[0]));
  FDCE \tdata_posedge_first_synchronised_reg[4] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(\negedge_Qs_reg_n_0_[2] ),
        .Q(tdata_posedge_first_synchronised[4]));
  FDCE \tdata_posedge_first_synchronised_reg[63] 
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(posedge_Qs[31]),
        .Q(tdata_posedge_first_synchronised[63]));
  FDCE \tdata_reg[0] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[0]),
        .Q(tdata[0]));
  FDCE \tdata_reg[10] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[10]),
        .Q(tdata[10]));
  FDCE \tdata_reg[11] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[11]),
        .Q(tdata[11]));
  FDCE \tdata_reg[12] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[12]),
        .Q(tdata[12]));
  FDCE \tdata_reg[13] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[13]),
        .Q(tdata[13]));
  FDCE \tdata_reg[14] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[14]),
        .Q(tdata[14]));
  FDCE \tdata_reg[15] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[15]),
        .Q(tdata[15]));
  FDCE \tdata_reg[16] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[16]),
        .Q(tdata[16]));
  FDCE \tdata_reg[17] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[17]),
        .Q(tdata[17]));
  FDCE \tdata_reg[18] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[18]),
        .Q(tdata[18]));
  FDCE \tdata_reg[19] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[19]),
        .Q(tdata[19]));
  FDCE \tdata_reg[1] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[1]),
        .Q(tdata[1]));
  FDCE \tdata_reg[20] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[20]),
        .Q(tdata[20]));
  FDCE \tdata_reg[21] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[21]),
        .Q(tdata[21]));
  FDCE \tdata_reg[22] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[22]),
        .Q(tdata[22]));
  FDCE \tdata_reg[23] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[23]),
        .Q(tdata[23]));
  FDCE \tdata_reg[24] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[24]),
        .Q(tdata[24]));
  FDCE \tdata_reg[25] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[25]),
        .Q(tdata[25]));
  FDCE \tdata_reg[26] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[26]),
        .Q(tdata[26]));
  FDCE \tdata_reg[27] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[27]),
        .Q(tdata[27]));
  FDCE \tdata_reg[28] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[28]),
        .Q(tdata[28]));
  FDCE \tdata_reg[29] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[29]),
        .Q(tdata[29]));
  FDCE \tdata_reg[2] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[2]),
        .Q(tdata[2]));
  FDCE \tdata_reg[30] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[30]),
        .Q(tdata[30]));
  FDCE \tdata_reg[31] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[31]),
        .Q(tdata[31]));
  FDCE \tdata_reg[32] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[32]),
        .Q(tdata[32]));
  FDCE \tdata_reg[33] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[33]),
        .Q(tdata[33]));
  FDCE \tdata_reg[34] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[34]),
        .Q(tdata[34]));
  FDCE \tdata_reg[35] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[35]),
        .Q(tdata[35]));
  FDCE \tdata_reg[36] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[36]),
        .Q(tdata[36]));
  FDCE \tdata_reg[37] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[37]),
        .Q(tdata[37]));
  FDCE \tdata_reg[38] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[38]),
        .Q(tdata[38]));
  FDCE \tdata_reg[39] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[39]),
        .Q(tdata[39]));
  FDCE \tdata_reg[3] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[3]),
        .Q(tdata[3]));
  FDCE \tdata_reg[40] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[40]),
        .Q(tdata[40]));
  FDCE \tdata_reg[41] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[41]),
        .Q(tdata[41]));
  FDCE \tdata_reg[42] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[42]),
        .Q(tdata[42]));
  FDCE \tdata_reg[43] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[43]),
        .Q(tdata[43]));
  FDCE \tdata_reg[44] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[44]),
        .Q(tdata[44]));
  FDCE \tdata_reg[45] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[45]),
        .Q(tdata[45]));
  FDCE \tdata_reg[46] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[46]),
        .Q(tdata[46]));
  FDCE \tdata_reg[47] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[47]),
        .Q(tdata[47]));
  FDCE \tdata_reg[48] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[48]),
        .Q(tdata[48]));
  FDCE \tdata_reg[49] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[49]),
        .Q(tdata[49]));
  FDCE \tdata_reg[4] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[4]),
        .Q(tdata[4]));
  FDCE \tdata_reg[50] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[50]),
        .Q(tdata[50]));
  FDCE \tdata_reg[51] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[51]),
        .Q(tdata[51]));
  FDCE \tdata_reg[52] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[52]),
        .Q(tdata[52]));
  FDCE \tdata_reg[53] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[53]),
        .Q(tdata[53]));
  FDCE \tdata_reg[54] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[54]),
        .Q(tdata[54]));
  FDCE \tdata_reg[55] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[55]),
        .Q(tdata[55]));
  FDCE \tdata_reg[56] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[56]),
        .Q(tdata[56]));
  FDCE \tdata_reg[57] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[57]),
        .Q(tdata[57]));
  FDCE \tdata_reg[58] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[58]),
        .Q(tdata[58]));
  FDCE \tdata_reg[59] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[59]),
        .Q(tdata[59]));
  FDCE \tdata_reg[5] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[5]),
        .Q(tdata[5]));
  FDCE \tdata_reg[60] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[60]),
        .Q(tdata[60]));
  FDCE \tdata_reg[61] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[61]),
        .Q(tdata[61]));
  FDCE \tdata_reg[62] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[62]),
        .Q(tdata[62]));
  FDCE \tdata_reg[63] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[63]),
        .Q(tdata[63]));
  FDCE \tdata_reg[6] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[6]),
        .Q(tdata[6]));
  FDCE \tdata_reg[7] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[7]),
        .Q(tdata[7]));
  FDCE \tdata_reg[8] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[8]),
        .Q(tdata[8]));
  FDCE \tdata_reg[9] 
       (.C(C),
        .CE(sel),
        .CLR(delay_tdata_n_64),
        .D(p_0_in[9]),
        .Q(tdata[9]));
  LUT6 #(
    .INIT(64'h0000FFFF00000054)) 
    tlast_i_1
       (.I0(tlast_i_2_n_0),
        .I1(prepare_tvalid_posedge_first),
        .I2(prepare_tvalid_negedge_first_reg_n_0),
        .I3(transaction_counter_reg[7]),
        .I4(tvalid_reg_n_0),
        .I5(tlast),
        .O(tlast_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    tlast_i_2
       (.I0(\transaction_counter[7]_i_2_n_0 ),
        .I1(transaction_counter_reg[6]),
        .O(tlast_i_2_n_0));
  FDCE tlast_reg
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tlast_i_1_n_0),
        .Q(tlast));
  LUT1 #(
    .INIT(2'h1)) 
    \transaction_counter[0]_i_1 
       (.I0(transaction_counter_reg[0]),
        .O(transaction_counter[0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \transaction_counter[1]_i_1 
       (.I0(transaction_counter_reg[1]),
        .I1(transaction_counter_reg[0]),
        .O(transaction_counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \transaction_counter[2]_i_1 
       (.I0(transaction_counter_reg[2]),
        .I1(transaction_counter_reg[0]),
        .I2(transaction_counter_reg[1]),
        .O(transaction_counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \transaction_counter[3]_i_1 
       (.I0(transaction_counter_reg[3]),
        .I1(transaction_counter_reg[1]),
        .I2(transaction_counter_reg[0]),
        .I3(transaction_counter_reg[2]),
        .O(transaction_counter[3]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \transaction_counter[4]_i_1 
       (.I0(transaction_counter_reg[4]),
        .I1(transaction_counter_reg[2]),
        .I2(transaction_counter_reg[0]),
        .I3(transaction_counter_reg[1]),
        .I4(transaction_counter_reg[3]),
        .O(transaction_counter[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \transaction_counter[5]_i_1 
       (.I0(transaction_counter_reg[5]),
        .I1(transaction_counter_reg[3]),
        .I2(transaction_counter_reg[1]),
        .I3(transaction_counter_reg[0]),
        .I4(transaction_counter_reg[2]),
        .I5(transaction_counter_reg[4]),
        .O(transaction_counter[5]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \transaction_counter[6]_i_1 
       (.I0(transaction_counter_reg[6]),
        .I1(\transaction_counter[7]_i_2_n_0 ),
        .O(transaction_counter[6]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \transaction_counter[7]_i_1 
       (.I0(transaction_counter_reg[6]),
        .I1(\transaction_counter[7]_i_2_n_0 ),
        .I2(transaction_counter_reg[7]),
        .O(transaction_counter[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \transaction_counter[7]_i_2 
       (.I0(transaction_counter_reg[4]),
        .I1(transaction_counter_reg[2]),
        .I2(transaction_counter_reg[0]),
        .I3(transaction_counter_reg[1]),
        .I4(transaction_counter_reg[3]),
        .I5(transaction_counter_reg[5]),
        .O(\transaction_counter[7]_i_2_n_0 ));
  FDPE \transaction_counter_reg[0] 
       (.C(C),
        .CE(sel),
        .D(transaction_counter[0]),
        .PRE(delay_tdata_n_64),
        .Q(transaction_counter_reg[0]));
  FDPE \transaction_counter_reg[1] 
       (.C(C),
        .CE(sel),
        .D(transaction_counter[1]),
        .PRE(delay_tdata_n_64),
        .Q(transaction_counter_reg[1]));
  FDPE \transaction_counter_reg[2] 
       (.C(C),
        .CE(sel),
        .D(transaction_counter[2]),
        .PRE(delay_tdata_n_64),
        .Q(transaction_counter_reg[2]));
  FDPE \transaction_counter_reg[3] 
       (.C(C),
        .CE(sel),
        .D(transaction_counter[3]),
        .PRE(delay_tdata_n_64),
        .Q(transaction_counter_reg[3]));
  FDPE \transaction_counter_reg[4] 
       (.C(C),
        .CE(sel),
        .D(transaction_counter[4]),
        .PRE(delay_tdata_n_64),
        .Q(transaction_counter_reg[4]));
  FDPE \transaction_counter_reg[5] 
       (.C(C),
        .CE(sel),
        .D(transaction_counter[5]),
        .PRE(delay_tdata_n_64),
        .Q(transaction_counter_reg[5]));
  FDPE \transaction_counter_reg[6] 
       (.C(C),
        .CE(sel),
        .D(transaction_counter[6]),
        .PRE(delay_tdata_n_64),
        .Q(transaction_counter_reg[6]));
  FDPE \transaction_counter_reg[7] 
       (.C(C),
        .CE(sel),
        .D(transaction_counter[7]),
        .PRE(delay_tdata_n_64),
        .Q(transaction_counter_reg[7]));
  LUT3 #(
    .INIT(8'h0E)) 
    tvalid_i_1
       (.I0(prepare_tvalid_posedge_first),
        .I1(prepare_tvalid_negedge_first_reg_n_0),
        .I2(tvalid_reg_n_0),
        .O(tvalid_i_1_n_0));
  FDCE tvalid_reg
       (.C(C),
        .CE(1'b1),
        .CLR(delay_tdata_n_64),
        .D(tvalid_i_1_n_0),
        .Q(tvalid_reg_n_0));
endmodule

(* ORIG_REF_NAME = "delay_64bit_by_X_clocks" *) 
module LVDS_to_AXIS_DDR_Stream_to_AXI_St_0_0_delay_64bit_by_X_clocks
   (tdata_delayed,
    aresetn_0,
    Q,
    C,
    \data_out_reg[63]_0 ,
    aresetn);
  output [63:0]tdata_delayed;
  output aresetn_0;
  input [63:0]Q;
  input C;
  input \data_out_reg[63]_0 ;
  input aresetn;

  wire C;
  wire [63:0]Q;
  wire aresetn;
  wire aresetn_0;
  wire \data_out_reg[63]_0 ;
  wire \shift_reg_reg[0][0]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][10]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][11]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][12]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][13]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][14]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][15]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][16]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][17]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][18]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][19]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][1]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][20]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][21]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][22]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][23]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][24]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][25]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][26]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][27]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][28]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][29]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][2]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][30]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][31]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][32]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][33]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][34]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][35]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][36]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][37]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][38]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][39]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][3]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][40]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][41]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][42]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][43]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][44]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][45]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][46]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][47]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][48]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][49]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][4]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][50]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][51]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][52]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][53]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][54]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][55]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][56]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][57]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][58]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][59]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][5]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][60]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][61]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][62]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][63]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][6]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][7]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][8]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[0][9]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[1][0]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][10]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][11]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][12]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][13]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][14]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][15]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][16]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][17]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][18]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][19]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][1]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][20]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][21]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][22]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][23]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][24]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][25]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][26]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][27]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][28]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][29]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][2]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][30]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][31]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][32]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][33]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][34]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][35]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][36]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][37]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][38]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][39]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][3]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][40]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][41]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][42]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][43]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][44]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][45]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][46]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][47]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][48]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][49]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][4]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][50]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][51]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][52]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][53]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][54]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][55]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][56]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][57]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][58]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][59]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][5]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][60]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][61]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][62]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][63]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][6]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][7]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][8]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[1][9]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[28][0]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][10]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][11]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][12]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][13]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][14]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][15]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][16]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][17]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][18]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][19]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][1]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][20]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][21]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][22]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][23]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][24]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][25]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][26]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][27]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][28]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][29]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][2]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][30]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][31]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][32]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][33]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][34]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][35]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][36]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][37]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][38]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][39]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][3]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][40]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][41]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][42]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][43]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][44]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][45]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][46]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][47]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][48]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][49]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][4]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][50]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][51]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][52]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][53]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][54]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][55]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][56]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][57]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][58]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][59]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][5]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][60]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][61]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][62]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][63]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][6]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][7]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][8]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire \shift_reg_reg[28][9]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire shift_reg_reg_gate__0_n_0;
  wire shift_reg_reg_gate__10_n_0;
  wire shift_reg_reg_gate__11_n_0;
  wire shift_reg_reg_gate__12_n_0;
  wire shift_reg_reg_gate__13_n_0;
  wire shift_reg_reg_gate__14_n_0;
  wire shift_reg_reg_gate__15_n_0;
  wire shift_reg_reg_gate__16_n_0;
  wire shift_reg_reg_gate__17_n_0;
  wire shift_reg_reg_gate__18_n_0;
  wire shift_reg_reg_gate__19_n_0;
  wire shift_reg_reg_gate__1_n_0;
  wire shift_reg_reg_gate__20_n_0;
  wire shift_reg_reg_gate__21_n_0;
  wire shift_reg_reg_gate__22_n_0;
  wire shift_reg_reg_gate__23_n_0;
  wire shift_reg_reg_gate__24_n_0;
  wire shift_reg_reg_gate__25_n_0;
  wire shift_reg_reg_gate__26_n_0;
  wire shift_reg_reg_gate__27_n_0;
  wire shift_reg_reg_gate__28_n_0;
  wire shift_reg_reg_gate__29_n_0;
  wire shift_reg_reg_gate__2_n_0;
  wire shift_reg_reg_gate__30_n_0;
  wire shift_reg_reg_gate__31_n_0;
  wire shift_reg_reg_gate__32_n_0;
  wire shift_reg_reg_gate__33_n_0;
  wire shift_reg_reg_gate__34_n_0;
  wire shift_reg_reg_gate__35_n_0;
  wire shift_reg_reg_gate__36_n_0;
  wire shift_reg_reg_gate__37_n_0;
  wire shift_reg_reg_gate__38_n_0;
  wire shift_reg_reg_gate__39_n_0;
  wire shift_reg_reg_gate__3_n_0;
  wire shift_reg_reg_gate__40_n_0;
  wire shift_reg_reg_gate__41_n_0;
  wire shift_reg_reg_gate__42_n_0;
  wire shift_reg_reg_gate__43_n_0;
  wire shift_reg_reg_gate__44_n_0;
  wire shift_reg_reg_gate__45_n_0;
  wire shift_reg_reg_gate__46_n_0;
  wire shift_reg_reg_gate__47_n_0;
  wire shift_reg_reg_gate__48_n_0;
  wire shift_reg_reg_gate__49_n_0;
  wire shift_reg_reg_gate__4_n_0;
  wire shift_reg_reg_gate__50_n_0;
  wire shift_reg_reg_gate__51_n_0;
  wire shift_reg_reg_gate__52_n_0;
  wire shift_reg_reg_gate__53_n_0;
  wire shift_reg_reg_gate__54_n_0;
  wire shift_reg_reg_gate__55_n_0;
  wire shift_reg_reg_gate__56_n_0;
  wire shift_reg_reg_gate__57_n_0;
  wire shift_reg_reg_gate__58_n_0;
  wire shift_reg_reg_gate__59_n_0;
  wire shift_reg_reg_gate__5_n_0;
  wire shift_reg_reg_gate__60_n_0;
  wire shift_reg_reg_gate__61_n_0;
  wire shift_reg_reg_gate__62_n_0;
  wire shift_reg_reg_gate__6_n_0;
  wire shift_reg_reg_gate__7_n_0;
  wire shift_reg_reg_gate__8_n_0;
  wire shift_reg_reg_gate__9_n_0;
  wire shift_reg_reg_gate_n_0;
  wire [63:0]tdata_delayed;
  wire \NLW_shift_reg_reg[1][0]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][10]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][11]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][12]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][13]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][14]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][15]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][16]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][17]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][18]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][19]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][1]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][20]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][21]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][22]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][23]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][24]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][25]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][26]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][27]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][28]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][29]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][2]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][30]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][31]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][32]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][33]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][34]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][35]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][36]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][37]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][38]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][39]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][3]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][40]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][41]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][42]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][43]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][44]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][45]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][46]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][47]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][48]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][49]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][4]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][50]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][51]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][52]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][53]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][54]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][55]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][56]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][57]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][58]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][59]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][5]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][60]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][61]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][62]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][63]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][6]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][7]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][8]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[1][9]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][0]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][10]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][11]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][12]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][13]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][14]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][15]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][16]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][17]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][18]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][19]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][1]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][20]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][21]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][22]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][23]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][24]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][25]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][26]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][27]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][28]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][29]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][2]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][30]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][31]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][32]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][33]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][34]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][35]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][36]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][37]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][38]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][39]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][3]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][40]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][41]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][42]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][43]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][44]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][45]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][46]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][47]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][48]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][49]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][4]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][50]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][51]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][52]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][53]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][54]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][55]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][56]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][57]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][58]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][59]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][5]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][60]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][61]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][62]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][63]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][6]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][7]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][8]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28][9]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \data_out[63]_i_1 
       (.I0(aresetn),
        .O(aresetn_0));
  FDCE \data_out_reg[0] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__62_n_0),
        .Q(tdata_delayed[0]));
  FDCE \data_out_reg[10] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__52_n_0),
        .Q(tdata_delayed[10]));
  FDCE \data_out_reg[11] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__51_n_0),
        .Q(tdata_delayed[11]));
  FDCE \data_out_reg[12] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__50_n_0),
        .Q(tdata_delayed[12]));
  FDCE \data_out_reg[13] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__49_n_0),
        .Q(tdata_delayed[13]));
  FDCE \data_out_reg[14] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__48_n_0),
        .Q(tdata_delayed[14]));
  FDCE \data_out_reg[15] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__47_n_0),
        .Q(tdata_delayed[15]));
  FDCE \data_out_reg[16] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__46_n_0),
        .Q(tdata_delayed[16]));
  FDCE \data_out_reg[17] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__45_n_0),
        .Q(tdata_delayed[17]));
  FDCE \data_out_reg[18] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__44_n_0),
        .Q(tdata_delayed[18]));
  FDCE \data_out_reg[19] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__43_n_0),
        .Q(tdata_delayed[19]));
  FDCE \data_out_reg[1] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__61_n_0),
        .Q(tdata_delayed[1]));
  FDCE \data_out_reg[20] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__42_n_0),
        .Q(tdata_delayed[20]));
  FDCE \data_out_reg[21] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__41_n_0),
        .Q(tdata_delayed[21]));
  FDCE \data_out_reg[22] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__40_n_0),
        .Q(tdata_delayed[22]));
  FDCE \data_out_reg[23] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__39_n_0),
        .Q(tdata_delayed[23]));
  FDCE \data_out_reg[24] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__38_n_0),
        .Q(tdata_delayed[24]));
  FDCE \data_out_reg[25] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__37_n_0),
        .Q(tdata_delayed[25]));
  FDCE \data_out_reg[26] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__36_n_0),
        .Q(tdata_delayed[26]));
  FDCE \data_out_reg[27] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__35_n_0),
        .Q(tdata_delayed[27]));
  FDCE \data_out_reg[28] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__34_n_0),
        .Q(tdata_delayed[28]));
  FDCE \data_out_reg[29] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__33_n_0),
        .Q(tdata_delayed[29]));
  FDCE \data_out_reg[2] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__60_n_0),
        .Q(tdata_delayed[2]));
  FDCE \data_out_reg[30] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__32_n_0),
        .Q(tdata_delayed[30]));
  FDCE \data_out_reg[31] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__31_n_0),
        .Q(tdata_delayed[31]));
  FDCE \data_out_reg[32] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__30_n_0),
        .Q(tdata_delayed[32]));
  FDCE \data_out_reg[33] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__29_n_0),
        .Q(tdata_delayed[33]));
  FDCE \data_out_reg[34] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__28_n_0),
        .Q(tdata_delayed[34]));
  FDCE \data_out_reg[35] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__27_n_0),
        .Q(tdata_delayed[35]));
  FDCE \data_out_reg[36] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__26_n_0),
        .Q(tdata_delayed[36]));
  FDCE \data_out_reg[37] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__25_n_0),
        .Q(tdata_delayed[37]));
  FDCE \data_out_reg[38] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__24_n_0),
        .Q(tdata_delayed[38]));
  FDCE \data_out_reg[39] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__23_n_0),
        .Q(tdata_delayed[39]));
  FDCE \data_out_reg[3] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__59_n_0),
        .Q(tdata_delayed[3]));
  FDCE \data_out_reg[40] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__22_n_0),
        .Q(tdata_delayed[40]));
  FDCE \data_out_reg[41] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__21_n_0),
        .Q(tdata_delayed[41]));
  FDCE \data_out_reg[42] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__20_n_0),
        .Q(tdata_delayed[42]));
  FDCE \data_out_reg[43] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__19_n_0),
        .Q(tdata_delayed[43]));
  FDCE \data_out_reg[44] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__18_n_0),
        .Q(tdata_delayed[44]));
  FDCE \data_out_reg[45] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__17_n_0),
        .Q(tdata_delayed[45]));
  FDCE \data_out_reg[46] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__16_n_0),
        .Q(tdata_delayed[46]));
  FDCE \data_out_reg[47] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__15_n_0),
        .Q(tdata_delayed[47]));
  FDCE \data_out_reg[48] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__14_n_0),
        .Q(tdata_delayed[48]));
  FDCE \data_out_reg[49] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__13_n_0),
        .Q(tdata_delayed[49]));
  FDCE \data_out_reg[4] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__58_n_0),
        .Q(tdata_delayed[4]));
  FDCE \data_out_reg[50] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__12_n_0),
        .Q(tdata_delayed[50]));
  FDCE \data_out_reg[51] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__11_n_0),
        .Q(tdata_delayed[51]));
  FDCE \data_out_reg[52] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__10_n_0),
        .Q(tdata_delayed[52]));
  FDCE \data_out_reg[53] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__9_n_0),
        .Q(tdata_delayed[53]));
  FDCE \data_out_reg[54] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__8_n_0),
        .Q(tdata_delayed[54]));
  FDCE \data_out_reg[55] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__7_n_0),
        .Q(tdata_delayed[55]));
  FDCE \data_out_reg[56] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__6_n_0),
        .Q(tdata_delayed[56]));
  FDCE \data_out_reg[57] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__5_n_0),
        .Q(tdata_delayed[57]));
  FDCE \data_out_reg[58] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__4_n_0),
        .Q(tdata_delayed[58]));
  FDCE \data_out_reg[59] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__3_n_0),
        .Q(tdata_delayed[59]));
  FDCE \data_out_reg[5] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__57_n_0),
        .Q(tdata_delayed[5]));
  FDCE \data_out_reg[60] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__2_n_0),
        .Q(tdata_delayed[60]));
  FDCE \data_out_reg[61] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__1_n_0),
        .Q(tdata_delayed[61]));
  FDCE \data_out_reg[62] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__0_n_0),
        .Q(tdata_delayed[62]));
  FDCE \data_out_reg[63] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate_n_0),
        .Q(tdata_delayed[63]));
  FDCE \data_out_reg[6] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__56_n_0),
        .Q(tdata_delayed[6]));
  FDCE \data_out_reg[7] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__55_n_0),
        .Q(tdata_delayed[7]));
  FDCE \data_out_reg[8] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__54_n_0),
        .Q(tdata_delayed[8]));
  FDCE \data_out_reg[9] 
       (.C(C),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(shift_reg_reg_gate__53_n_0),
        .Q(tdata_delayed[9]));
  FDRE \shift_reg_reg[0][0]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][0]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][0]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][10]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][10]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][10]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][11]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][11]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][11]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][12]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][12]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][12]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][13]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][13]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][13]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][14]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][14]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][14]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][15]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][15]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][15]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][16]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][16]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][16]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][17]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][17]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][17]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][18]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][18]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][18]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][19]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][19]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][19]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][1]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][1]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][1]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][20]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][20]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][20]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][21]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][21]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][21]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][22]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][22]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][22]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][23]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][23]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][23]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][24]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][24]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][24]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][25]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][25]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][25]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][26]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][26]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][26]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][27]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][27]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][27]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][28]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][28]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][28]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][29]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][29]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][29]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][2]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][2]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][2]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][30]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][30]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][30]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][31]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][31]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][31]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][32]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][32]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][32]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][33]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][33]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][33]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][34]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][34]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][34]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][35]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][35]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][35]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][36]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][36]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][36]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][37]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][37]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][37]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][38]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][38]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][38]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][39]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][39]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][39]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][3]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][3]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][3]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][40]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][40]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][40]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][41]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][41]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][41]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][42]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][42]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][42]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][43]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][43]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][43]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][44]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][44]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][44]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][45]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][45]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][45]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][46]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][46]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][46]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][47]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][47]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][47]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][48]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][48]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][48]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][49]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][49]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][49]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][4]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][4]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][4]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][50]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][50]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][50]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][51]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][51]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][51]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][52]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][52]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][52]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][53]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][53]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][53]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][54]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][54]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][54]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][55]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][55]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][55]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][56]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][56]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][56]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][57]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][57]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][57]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][58]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][58]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][58]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][59]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][59]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][59]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][5]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][5]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][5]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][60]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][60]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][60]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][61]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][61]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][61]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][62]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][62]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][62]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][63]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][63]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][63]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][6]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][6]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][6]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][7]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][7]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][7]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][8]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][8]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][8]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  FDRE \shift_reg_reg[0][9]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1][9]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0][9]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][0]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][0]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][0]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][0]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][0]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][10]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][10]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][10]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][10]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][10]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][11]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][11]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][11]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][11]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][11]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][12]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][12]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][12]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][12]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][12]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][13]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][13]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][13]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][13]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][13]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][14]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][14]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][14]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][14]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][14]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][15]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][15]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][15]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][15]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][15]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][16]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][16]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][16]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][16]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][16]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][17]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][17]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][17]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][17]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][17]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][18]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][18]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][18]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][18]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][18]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][19]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][19]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][19]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][19]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][19]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][1]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][1]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][1]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][1]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][1]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][20]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][20]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][20]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][20]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][20]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][21]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][21]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][21]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][21]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][21]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][22]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][22]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][22]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][22]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][22]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][23]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][23]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][23]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][23]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][23]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][24]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][24]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][24]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][24]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][24]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][25]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][25]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][25]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][25]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][25]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][26]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][26]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][26]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][26]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][26]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][27]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][27]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][27]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][27]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][27]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][28]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][28]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][28]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][28]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][28]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][29]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][29]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][29]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][29]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][29]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][2]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][2]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][2]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][2]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][2]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][30]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][30]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][30]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][30]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][30]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][31]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][31]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][31]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][31]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][31]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][32]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][32]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][32]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][32]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][32]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][33]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][33]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][33]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][33]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][33]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][34]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][34]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][34]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][34]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][34]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][35]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][35]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][35]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][35]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][35]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][36]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][36]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][36]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][36]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][36]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][37]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][37]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][37]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][37]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][37]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][38]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][38]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][38]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][38]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][38]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][39]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][39]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][39]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][39]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][39]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][3]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][3]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][3]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][3]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][3]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][40]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][40]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][40]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][40]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][40]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][41]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][41]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][41]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][41]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][41]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][42]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][42]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][42]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][42]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][42]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][43]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][43]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][43]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][43]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][43]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][44]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][44]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][44]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][44]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][44]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][45]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][45]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][45]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][45]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][45]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][46]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][46]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][46]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][46]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][46]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][47]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][47]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][47]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][47]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][47]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][48]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][48]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][48]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][48]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][48]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][49]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][49]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][49]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][49]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][49]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][4]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][4]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][4]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][4]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][4]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][50]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][50]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][50]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][50]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][50]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][51]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][51]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][51]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][51]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][51]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][52]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][52]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][52]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][52]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][52]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][53]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][53]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][53]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][53]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][53]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][54]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][54]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][54]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][54]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][54]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][55]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][55]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][55]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][55]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][55]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][56]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][56]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][56]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][56]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][56]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][57]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][57]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][57]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][57]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][57]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][58]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][58]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][58]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][58]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][58]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][59]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][59]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][59]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][59]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][59]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][5]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][5]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][5]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][5]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][5]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][60]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][60]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][60]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][60]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][60]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][61]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][61]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][61]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][61]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][61]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][62]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][62]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][62]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][62]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][62]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][63]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][63]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][63]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][63]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][63]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][6]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][6]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][6]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][6]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][6]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][7]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][7]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][7]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][7]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][7]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][8]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][8]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][8]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][8]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][8]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[1] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[1][9]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1][9]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28][9]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1][9]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1][9]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][0]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][0]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[0]),
        .Q(\NLW_shift_reg_reg[28][0]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][0]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][10]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][10]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[10]),
        .Q(\NLW_shift_reg_reg[28][10]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][10]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][11]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][11]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[11]),
        .Q(\NLW_shift_reg_reg[28][11]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][11]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][12]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][12]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[12]),
        .Q(\NLW_shift_reg_reg[28][12]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][12]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][13]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][13]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[13]),
        .Q(\NLW_shift_reg_reg[28][13]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][13]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][14]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][14]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[14]),
        .Q(\NLW_shift_reg_reg[28][14]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][14]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][15]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][15]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[15]),
        .Q(\NLW_shift_reg_reg[28][15]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][15]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][16]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][16]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[16]),
        .Q(\NLW_shift_reg_reg[28][16]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][16]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][17]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][17]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[17]),
        .Q(\NLW_shift_reg_reg[28][17]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][17]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][18]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][18]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[18]),
        .Q(\NLW_shift_reg_reg[28][18]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][18]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][19]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][19]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[19]),
        .Q(\NLW_shift_reg_reg[28][19]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][19]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][1]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][1]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[1]),
        .Q(\NLW_shift_reg_reg[28][1]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][1]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][20]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][20]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[20]),
        .Q(\NLW_shift_reg_reg[28][20]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][20]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][21]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][21]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[21]),
        .Q(\NLW_shift_reg_reg[28][21]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][21]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][22]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][22]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[22]),
        .Q(\NLW_shift_reg_reg[28][22]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][22]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][23]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][23]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[23]),
        .Q(\NLW_shift_reg_reg[28][23]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][23]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][24]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][24]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[24]),
        .Q(\NLW_shift_reg_reg[28][24]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][24]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][25]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][25]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[25]),
        .Q(\NLW_shift_reg_reg[28][25]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][25]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][26]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][26]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[26]),
        .Q(\NLW_shift_reg_reg[28][26]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][26]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][27]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][27]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[27]),
        .Q(\NLW_shift_reg_reg[28][27]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][27]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][28]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][28]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[28]),
        .Q(\NLW_shift_reg_reg[28][28]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][28]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][29]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][29]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[29]),
        .Q(\NLW_shift_reg_reg[28][29]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][29]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][2]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][2]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[2]),
        .Q(\NLW_shift_reg_reg[28][2]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][2]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][30]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][30]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[30]),
        .Q(\NLW_shift_reg_reg[28][30]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][30]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][31]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][31]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[31]),
        .Q(\NLW_shift_reg_reg[28][31]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][31]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][32]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][32]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[32]),
        .Q(\NLW_shift_reg_reg[28][32]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][32]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][33]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][33]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[33]),
        .Q(\NLW_shift_reg_reg[28][33]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][33]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][34]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][34]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[34]),
        .Q(\NLW_shift_reg_reg[28][34]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][34]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][35]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][35]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[35]),
        .Q(\NLW_shift_reg_reg[28][35]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][35]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][36]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][36]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[36]),
        .Q(\NLW_shift_reg_reg[28][36]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][36]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][37]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][37]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[37]),
        .Q(\NLW_shift_reg_reg[28][37]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][37]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][38]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][38]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[38]),
        .Q(\NLW_shift_reg_reg[28][38]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][38]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][39]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][39]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[39]),
        .Q(\NLW_shift_reg_reg[28][39]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][39]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][3]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][3]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[3]),
        .Q(\NLW_shift_reg_reg[28][3]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][3]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][40]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][40]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[40]),
        .Q(\NLW_shift_reg_reg[28][40]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][40]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][41]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][41]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[41]),
        .Q(\NLW_shift_reg_reg[28][41]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][41]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][42]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][42]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[42]),
        .Q(\NLW_shift_reg_reg[28][42]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][42]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][43]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][43]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[43]),
        .Q(\NLW_shift_reg_reg[28][43]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][43]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][44]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][44]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[44]),
        .Q(\NLW_shift_reg_reg[28][44]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][44]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][45]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][45]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[45]),
        .Q(\NLW_shift_reg_reg[28][45]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][45]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][46]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][46]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[46]),
        .Q(\NLW_shift_reg_reg[28][46]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][46]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][47]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][47]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[47]),
        .Q(\NLW_shift_reg_reg[28][47]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][47]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][48]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][48]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[48]),
        .Q(\NLW_shift_reg_reg[28][48]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][48]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][49]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][49]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[49]),
        .Q(\NLW_shift_reg_reg[28][49]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][49]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][4]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][4]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[4]),
        .Q(\NLW_shift_reg_reg[28][4]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][4]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][50]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][50]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[50]),
        .Q(\NLW_shift_reg_reg[28][50]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][50]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][51]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][51]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[51]),
        .Q(\NLW_shift_reg_reg[28][51]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][51]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][52]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][52]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[52]),
        .Q(\NLW_shift_reg_reg[28][52]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][52]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][53]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][53]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[53]),
        .Q(\NLW_shift_reg_reg[28][53]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][53]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][54]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][54]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[54]),
        .Q(\NLW_shift_reg_reg[28][54]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][54]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][55]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][55]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[55]),
        .Q(\NLW_shift_reg_reg[28][55]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][55]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][56]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][56]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[56]),
        .Q(\NLW_shift_reg_reg[28][56]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][56]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][57]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][57]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[57]),
        .Q(\NLW_shift_reg_reg[28][57]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][57]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][58]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][58]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[58]),
        .Q(\NLW_shift_reg_reg[28][58]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][58]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][59]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][59]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[59]),
        .Q(\NLW_shift_reg_reg[28][59]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][59]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][5]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][5]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[5]),
        .Q(\NLW_shift_reg_reg[28][5]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][5]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][60]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][60]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[60]),
        .Q(\NLW_shift_reg_reg[28][60]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][60]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][61]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][61]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[61]),
        .Q(\NLW_shift_reg_reg[28][61]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][61]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][62]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][62]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[62]),
        .Q(\NLW_shift_reg_reg[28][62]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][62]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][63]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][63]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[63]),
        .Q(\NLW_shift_reg_reg[28][63]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][63]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][6]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][6]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[6]),
        .Q(\NLW_shift_reg_reg[28][6]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][6]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][7]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][7]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[7]),
        .Q(\NLW_shift_reg_reg[28][7]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][7]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][8]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][8]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[8]),
        .Q(\NLW_shift_reg_reg[28][8]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][8]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* srl_bus_name = "\\inst/delay_tdata/shift_reg_reg[28] " *) 
  (* srl_name = "\\inst/delay_tdata/shift_reg_reg[28][9]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28][9]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(Q[9]),
        .Q(\NLW_shift_reg_reg[28][9]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28][9]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate
       (.I0(\shift_reg_reg[0][63]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__0
       (.I0(\shift_reg_reg[0][62]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__1
       (.I0(\shift_reg_reg[0][61]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__10
       (.I0(\shift_reg_reg[0][52]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__11
       (.I0(\shift_reg_reg[0][51]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__12
       (.I0(\shift_reg_reg[0][50]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__13
       (.I0(\shift_reg_reg[0][49]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__14
       (.I0(\shift_reg_reg[0][48]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__15
       (.I0(\shift_reg_reg[0][47]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__16
       (.I0(\shift_reg_reg[0][46]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__17
       (.I0(\shift_reg_reg[0][45]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__18
       (.I0(\shift_reg_reg[0][44]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__19
       (.I0(\shift_reg_reg[0][43]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__19_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__2
       (.I0(\shift_reg_reg[0][60]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__20
       (.I0(\shift_reg_reg[0][42]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__21
       (.I0(\shift_reg_reg[0][41]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__22
       (.I0(\shift_reg_reg[0][40]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__23
       (.I0(\shift_reg_reg[0][39]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__24
       (.I0(\shift_reg_reg[0][38]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__24_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__25
       (.I0(\shift_reg_reg[0][37]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__25_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__26
       (.I0(\shift_reg_reg[0][36]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__26_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__27
       (.I0(\shift_reg_reg[0][35]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__27_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__28
       (.I0(\shift_reg_reg[0][34]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__28_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__29
       (.I0(\shift_reg_reg[0][33]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__29_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__3
       (.I0(\shift_reg_reg[0][59]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__30
       (.I0(\shift_reg_reg[0][32]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__30_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__31
       (.I0(\shift_reg_reg[0][31]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__31_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__32
       (.I0(\shift_reg_reg[0][30]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__32_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__33
       (.I0(\shift_reg_reg[0][29]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__33_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__34
       (.I0(\shift_reg_reg[0][28]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__34_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__35
       (.I0(\shift_reg_reg[0][27]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__35_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__36
       (.I0(\shift_reg_reg[0][26]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__36_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__37
       (.I0(\shift_reg_reg[0][25]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__37_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__38
       (.I0(\shift_reg_reg[0][24]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__38_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__39
       (.I0(\shift_reg_reg[0][23]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__39_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__4
       (.I0(\shift_reg_reg[0][58]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__40
       (.I0(\shift_reg_reg[0][22]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__40_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__41
       (.I0(\shift_reg_reg[0][21]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__41_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__42
       (.I0(\shift_reg_reg[0][20]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__42_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__43
       (.I0(\shift_reg_reg[0][19]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__43_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__44
       (.I0(\shift_reg_reg[0][18]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__44_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__45
       (.I0(\shift_reg_reg[0][17]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__45_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__46
       (.I0(\shift_reg_reg[0][16]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__46_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__47
       (.I0(\shift_reg_reg[0][15]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__47_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__48
       (.I0(\shift_reg_reg[0][14]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__48_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__49
       (.I0(\shift_reg_reg[0][13]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__49_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__5
       (.I0(\shift_reg_reg[0][57]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__50
       (.I0(\shift_reg_reg[0][12]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__50_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__51
       (.I0(\shift_reg_reg[0][11]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__51_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__52
       (.I0(\shift_reg_reg[0][10]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__52_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__53
       (.I0(\shift_reg_reg[0][9]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__53_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__54
       (.I0(\shift_reg_reg[0][8]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__54_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__55
       (.I0(\shift_reg_reg[0][7]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__55_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__56
       (.I0(\shift_reg_reg[0][6]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__56_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__57
       (.I0(\shift_reg_reg[0][5]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__57_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__58
       (.I0(\shift_reg_reg[0][4]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__58_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__59
       (.I0(\shift_reg_reg[0][3]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__59_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__6
       (.I0(\shift_reg_reg[0][56]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__60
       (.I0(\shift_reg_reg[0][2]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__60_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__61
       (.I0(\shift_reg_reg[0][1]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__61_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__62
       (.I0(\shift_reg_reg[0][0]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__62_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__7
       (.I0(\shift_reg_reg[0][55]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__8
       (.I0(\shift_reg_reg[0][54]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate__9
       (.I0(\shift_reg_reg[0][53]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(\data_out_reg[63]_0 ),
        .O(shift_reg_reg_gate__9_n_0));
endmodule

(* ORIG_REF_NAME = "delay_by_X_clocks" *) 
module LVDS_to_AXIS_DDR_Stream_to_AXI_St_0_0_delay_by_X_clocks
   (tlast_delayed,
    tlast,
    C,
    data_out_reg_0,
    data_out_reg_1);
  output tlast_delayed;
  input tlast;
  input C;
  input data_out_reg_0;
  input data_out_reg_1;

  wire C;
  wire data_out_reg_0;
  wire data_out_reg_1;
  wire \shift_reg_reg[0]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[1]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[28]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire shift_reg_reg_gate_n_0;
  wire tlast;
  wire tlast_delayed;
  wire \NLW_shift_reg_reg[1]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;

  FDCE data_out_reg
       (.C(C),
        .CE(1'b1),
        .CLR(data_out_reg_1),
        .D(shift_reg_reg_gate_n_0),
        .Q(tlast_delayed));
  FDRE \shift_reg_reg[0]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  (* srl_bus_name = "\\inst/delay_tlast/shift_reg_reg " *) 
  (* srl_name = "\\inst/delay_tlast/shift_reg_reg[1]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tlast/shift_reg_reg " *) 
  (* srl_name = "\\inst/delay_tlast/shift_reg_reg[28]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(tlast),
        .Q(\NLW_shift_reg_reg[28]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate
       (.I0(\shift_reg_reg[0]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(data_out_reg_0),
        .O(shift_reg_reg_gate_n_0));
endmodule

(* ORIG_REF_NAME = "delay_by_X_clocks" *) 
module LVDS_to_AXIS_DDR_Stream_to_AXI_St_0_0_delay_by_X_clocks_0
   (shift_reg_reg_c_58_0,
    tvalid_delayed,
    C,
    shift_reg_reg_c_59,
    \shift_reg_reg[0]_inst_delay_tvalid_shift_reg_reg_c_58_0 );
  output shift_reg_reg_c_58_0;
  output tvalid_delayed;
  input C;
  input shift_reg_reg_c_59;
  input \shift_reg_reg[0]_inst_delay_tvalid_shift_reg_reg_c_58_0 ;

  wire C;
  wire \shift_reg_reg[0]_inst_delay_tvalid_shift_reg_reg_c_58_0 ;
  wire \shift_reg_reg[0]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ;
  wire \shift_reg_reg[1]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ;
  wire \shift_reg_reg[28]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ;
  wire shift_reg_reg_c_0_n_0;
  wire shift_reg_reg_c_10_n_0;
  wire shift_reg_reg_c_11_n_0;
  wire shift_reg_reg_c_12_n_0;
  wire shift_reg_reg_c_13_n_0;
  wire shift_reg_reg_c_14_n_0;
  wire shift_reg_reg_c_15_n_0;
  wire shift_reg_reg_c_16_n_0;
  wire shift_reg_reg_c_17_n_0;
  wire shift_reg_reg_c_18_n_0;
  wire shift_reg_reg_c_19_n_0;
  wire shift_reg_reg_c_1_n_0;
  wire shift_reg_reg_c_20_n_0;
  wire shift_reg_reg_c_21_n_0;
  wire shift_reg_reg_c_22_n_0;
  wire shift_reg_reg_c_23_n_0;
  wire shift_reg_reg_c_24_n_0;
  wire shift_reg_reg_c_25_n_0;
  wire shift_reg_reg_c_26_n_0;
  wire shift_reg_reg_c_27_n_0;
  wire shift_reg_reg_c_28_n_0;
  wire shift_reg_reg_c_29_n_0;
  wire shift_reg_reg_c_2_n_0;
  wire shift_reg_reg_c_30_n_0;
  wire shift_reg_reg_c_31_n_0;
  wire shift_reg_reg_c_32_n_0;
  wire shift_reg_reg_c_33_n_0;
  wire shift_reg_reg_c_34_n_0;
  wire shift_reg_reg_c_35_n_0;
  wire shift_reg_reg_c_36_n_0;
  wire shift_reg_reg_c_37_n_0;
  wire shift_reg_reg_c_38_n_0;
  wire shift_reg_reg_c_39_n_0;
  wire shift_reg_reg_c_3_n_0;
  wire shift_reg_reg_c_40_n_0;
  wire shift_reg_reg_c_41_n_0;
  wire shift_reg_reg_c_42_n_0;
  wire shift_reg_reg_c_43_n_0;
  wire shift_reg_reg_c_44_n_0;
  wire shift_reg_reg_c_45_n_0;
  wire shift_reg_reg_c_46_n_0;
  wire shift_reg_reg_c_47_n_0;
  wire shift_reg_reg_c_48_n_0;
  wire shift_reg_reg_c_49_n_0;
  wire shift_reg_reg_c_4_n_0;
  wire shift_reg_reg_c_50_n_0;
  wire shift_reg_reg_c_51_n_0;
  wire shift_reg_reg_c_52_n_0;
  wire shift_reg_reg_c_53_n_0;
  wire shift_reg_reg_c_54_n_0;
  wire shift_reg_reg_c_55_n_0;
  wire shift_reg_reg_c_56_n_0;
  wire shift_reg_reg_c_57_n_0;
  wire shift_reg_reg_c_58_0;
  wire shift_reg_reg_c_59;
  wire shift_reg_reg_c_5_n_0;
  wire shift_reg_reg_c_6_n_0;
  wire shift_reg_reg_c_7_n_0;
  wire shift_reg_reg_c_8_n_0;
  wire shift_reg_reg_c_9_n_0;
  wire shift_reg_reg_c_n_0;
  wire shift_reg_reg_gate_n_0;
  wire tvalid_delayed;
  wire \NLW_shift_reg_reg[1]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ;
  wire \NLW_shift_reg_reg[28]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ;

  FDCE data_out_reg
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_gate_n_0),
        .Q(tvalid_delayed));
  FDRE \shift_reg_reg[0]_inst_delay_tvalid_shift_reg_reg_c_58 
       (.C(C),
        .CE(1'b1),
        .D(\shift_reg_reg[1]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q(\shift_reg_reg[0]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .R(1'b0));
  (* srl_bus_name = "\\inst/delay_tvalid/shift_reg_reg " *) 
  (* srl_name = "\\inst/delay_tvalid/shift_reg_reg[1]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 " *) 
  SRLC32E \shift_reg_reg[1]_srl27_inst_delay_tvalid_shift_reg_reg_c_57 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[28]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ),
        .Q(\shift_reg_reg[1]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_n_0 ),
        .Q31(\NLW_shift_reg_reg[1]_srl27_inst_delay_tvalid_shift_reg_reg_c_57_Q31_UNCONNECTED ));
  (* srl_bus_name = "\\inst/delay_tvalid/shift_reg_reg " *) 
  (* srl_name = "\\inst/delay_tvalid/shift_reg_reg[28]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 " *) 
  SRLC32E \shift_reg_reg[28]_srl32_inst_delay_tvalid_shift_reg_reg_c_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(\shift_reg_reg[0]_inst_delay_tvalid_shift_reg_reg_c_58_0 ),
        .Q(\NLW_shift_reg_reg[28]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_Q_UNCONNECTED ),
        .Q31(\shift_reg_reg[28]_srl32_inst_delay_tvalid_shift_reg_reg_c_30_n_1 ));
  FDCE shift_reg_reg_c
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(1'b1),
        .Q(shift_reg_reg_c_n_0));
  FDCE shift_reg_reg_c_0
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_n_0),
        .Q(shift_reg_reg_c_0_n_0));
  FDCE shift_reg_reg_c_1
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_0_n_0),
        .Q(shift_reg_reg_c_1_n_0));
  FDCE shift_reg_reg_c_10
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_9_n_0),
        .Q(shift_reg_reg_c_10_n_0));
  FDCE shift_reg_reg_c_11
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_10_n_0),
        .Q(shift_reg_reg_c_11_n_0));
  FDCE shift_reg_reg_c_12
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_11_n_0),
        .Q(shift_reg_reg_c_12_n_0));
  FDCE shift_reg_reg_c_13
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_12_n_0),
        .Q(shift_reg_reg_c_13_n_0));
  FDCE shift_reg_reg_c_14
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_13_n_0),
        .Q(shift_reg_reg_c_14_n_0));
  FDCE shift_reg_reg_c_15
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_14_n_0),
        .Q(shift_reg_reg_c_15_n_0));
  FDCE shift_reg_reg_c_16
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_15_n_0),
        .Q(shift_reg_reg_c_16_n_0));
  FDCE shift_reg_reg_c_17
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_16_n_0),
        .Q(shift_reg_reg_c_17_n_0));
  FDCE shift_reg_reg_c_18
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_17_n_0),
        .Q(shift_reg_reg_c_18_n_0));
  FDCE shift_reg_reg_c_19
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_18_n_0),
        .Q(shift_reg_reg_c_19_n_0));
  FDCE shift_reg_reg_c_2
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_1_n_0),
        .Q(shift_reg_reg_c_2_n_0));
  FDCE shift_reg_reg_c_20
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_19_n_0),
        .Q(shift_reg_reg_c_20_n_0));
  FDCE shift_reg_reg_c_21
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_20_n_0),
        .Q(shift_reg_reg_c_21_n_0));
  FDCE shift_reg_reg_c_22
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_21_n_0),
        .Q(shift_reg_reg_c_22_n_0));
  FDCE shift_reg_reg_c_23
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_22_n_0),
        .Q(shift_reg_reg_c_23_n_0));
  FDCE shift_reg_reg_c_24
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_23_n_0),
        .Q(shift_reg_reg_c_24_n_0));
  FDCE shift_reg_reg_c_25
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_24_n_0),
        .Q(shift_reg_reg_c_25_n_0));
  FDCE shift_reg_reg_c_26
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_25_n_0),
        .Q(shift_reg_reg_c_26_n_0));
  FDCE shift_reg_reg_c_27
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_26_n_0),
        .Q(shift_reg_reg_c_27_n_0));
  FDCE shift_reg_reg_c_28
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_27_n_0),
        .Q(shift_reg_reg_c_28_n_0));
  FDCE shift_reg_reg_c_29
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_28_n_0),
        .Q(shift_reg_reg_c_29_n_0));
  FDCE shift_reg_reg_c_3
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_2_n_0),
        .Q(shift_reg_reg_c_3_n_0));
  FDCE shift_reg_reg_c_30
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_29_n_0),
        .Q(shift_reg_reg_c_30_n_0));
  FDCE shift_reg_reg_c_31
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_30_n_0),
        .Q(shift_reg_reg_c_31_n_0));
  FDCE shift_reg_reg_c_32
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_31_n_0),
        .Q(shift_reg_reg_c_32_n_0));
  FDCE shift_reg_reg_c_33
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_32_n_0),
        .Q(shift_reg_reg_c_33_n_0));
  FDCE shift_reg_reg_c_34
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_33_n_0),
        .Q(shift_reg_reg_c_34_n_0));
  FDCE shift_reg_reg_c_35
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_34_n_0),
        .Q(shift_reg_reg_c_35_n_0));
  FDCE shift_reg_reg_c_36
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_35_n_0),
        .Q(shift_reg_reg_c_36_n_0));
  FDCE shift_reg_reg_c_37
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_36_n_0),
        .Q(shift_reg_reg_c_37_n_0));
  FDCE shift_reg_reg_c_38
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_37_n_0),
        .Q(shift_reg_reg_c_38_n_0));
  FDCE shift_reg_reg_c_39
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_38_n_0),
        .Q(shift_reg_reg_c_39_n_0));
  FDCE shift_reg_reg_c_4
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_3_n_0),
        .Q(shift_reg_reg_c_4_n_0));
  FDCE shift_reg_reg_c_40
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_39_n_0),
        .Q(shift_reg_reg_c_40_n_0));
  FDCE shift_reg_reg_c_41
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_40_n_0),
        .Q(shift_reg_reg_c_41_n_0));
  FDCE shift_reg_reg_c_42
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_41_n_0),
        .Q(shift_reg_reg_c_42_n_0));
  FDCE shift_reg_reg_c_43
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_42_n_0),
        .Q(shift_reg_reg_c_43_n_0));
  FDCE shift_reg_reg_c_44
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_43_n_0),
        .Q(shift_reg_reg_c_44_n_0));
  FDCE shift_reg_reg_c_45
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_44_n_0),
        .Q(shift_reg_reg_c_45_n_0));
  FDCE shift_reg_reg_c_46
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_45_n_0),
        .Q(shift_reg_reg_c_46_n_0));
  FDCE shift_reg_reg_c_47
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_46_n_0),
        .Q(shift_reg_reg_c_47_n_0));
  FDCE shift_reg_reg_c_48
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_47_n_0),
        .Q(shift_reg_reg_c_48_n_0));
  FDCE shift_reg_reg_c_49
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_48_n_0),
        .Q(shift_reg_reg_c_49_n_0));
  FDCE shift_reg_reg_c_5
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_4_n_0),
        .Q(shift_reg_reg_c_5_n_0));
  FDCE shift_reg_reg_c_50
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_49_n_0),
        .Q(shift_reg_reg_c_50_n_0));
  FDCE shift_reg_reg_c_51
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_50_n_0),
        .Q(shift_reg_reg_c_51_n_0));
  FDCE shift_reg_reg_c_52
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_51_n_0),
        .Q(shift_reg_reg_c_52_n_0));
  FDCE shift_reg_reg_c_53
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_52_n_0),
        .Q(shift_reg_reg_c_53_n_0));
  FDCE shift_reg_reg_c_54
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_53_n_0),
        .Q(shift_reg_reg_c_54_n_0));
  FDCE shift_reg_reg_c_55
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_54_n_0),
        .Q(shift_reg_reg_c_55_n_0));
  FDCE shift_reg_reg_c_56
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_55_n_0),
        .Q(shift_reg_reg_c_56_n_0));
  FDCE shift_reg_reg_c_57
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_56_n_0),
        .Q(shift_reg_reg_c_57_n_0));
  FDCE shift_reg_reg_c_58
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_57_n_0),
        .Q(shift_reg_reg_c_58_0));
  FDCE shift_reg_reg_c_6
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_5_n_0),
        .Q(shift_reg_reg_c_6_n_0));
  FDCE shift_reg_reg_c_7
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_6_n_0),
        .Q(shift_reg_reg_c_7_n_0));
  FDCE shift_reg_reg_c_8
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_7_n_0),
        .Q(shift_reg_reg_c_8_n_0));
  FDCE shift_reg_reg_c_9
       (.C(C),
        .CE(1'b1),
        .CLR(shift_reg_reg_c_59),
        .D(shift_reg_reg_c_8_n_0),
        .Q(shift_reg_reg_c_9_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    shift_reg_reg_gate
       (.I0(\shift_reg_reg[0]_inst_delay_tvalid_shift_reg_reg_c_58_n_0 ),
        .I1(shift_reg_reg_c_58_0),
        .O(shift_reg_reg_gate_n_0));
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
