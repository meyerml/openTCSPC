// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Thu Jun 18 22:02:35 2026
// Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/openTCSPC3/SRC/zedboard_real_microscope/zedboard_real_microscope/ip/zedboard_real_microscope_blk_mem_gen_0_0/zedboard_real_microscope_blk_mem_gen_0_0_sim_netlist.v
// Design      : zedboard_real_microscope_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zedboard_real_microscope_blk_mem_gen_0_0,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module zedboard_real_microscope_blk_mem_gen_0_0
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 4096, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 4096, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rstb;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.9299 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  zedboard_real_microscope_blk_mem_gen_0_0_blk_mem_gen_v8_4_9 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[11:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb[11:2],1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(rsta),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(rstb),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
FPXllyX2NFs/RMngGqZy2bLYbZr92CdofeZrJOHklWXExpaPgHNYp2Lzm4MnflbnrfSkCmLwwKT5
zfRgEip7FKQ5Zhb73p0MAIADixBZ/ZRt4hQkJL0T9brm0waLHfanjnov2aCX6jN3LbQc3ujmDga6
Dd73k78u4xjRTDv1/P4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kr7VKKvChFoiyRCReag+OvU3jnmG9pN0cv+BxhNmMKLthg/ksgNZyU3L+fQ7cmIQELtlUjwjkBAP
Jjq5RsCnHbJxj+Ys1GNhriiBsxLqxWCP8onhAVvgZN2xZFOih0UWpqlU8NVP8Eww1ohvkDgxTstC
3kDmYehxIUJjqCC/mgRZmuezqugrFdubYmBoz16tUvD17iA5qqCIMS9xSIXYp2LBNekmWEwrVqzu
R4koEo4UlXl/CEw0XY3QvMoHnlXgu6N/6sc+nxZtKSwjiMVvGnZE9UVvJPAC3Hn3zKFGlK53mmGO
Tj0dWzhwX0ahSYzkyJC/HLdbGZmriL2UNvDyFw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
CaLc9FGt3AdRHfNtGAsGFY/QEvHY1Vv4TvvgCDsdDMqiuDeLizFJDJeskBWjeKDoE2cufK8TxiBq
mySRQNJoeOKnxTiDdf+Rx6m0iR6h/YeswegYwgghpM5KVrl6mSwF3+4yEovPM7a+9ArDQ5vl+WT8
SilNGzyW0KnTwe7+szs=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cEnudSW1X71p0Xuq6jrXOxHnBku87IA0RA3zKqmeZHZM0r+9rEm5MSzX8RecnQ994yiqeyxbIH2l
fGEzUzr0ZzryS3fkf2LnJuB39f2YARW9eVCSiaeWaraZuY1l89T+h3vgdlurS/1LIraYLS1MyOXa
6F1LAcQp3W4OO4ctc3q1FRMZGldRS1biMsKwJ8Lxj8NEOm67UfgFrJNQAxbVXEfbWRWhKtwNxcTB
JbgC8j4EHkIA46mzoHloeBAL6KieplQUBjKXSSTb66rxglbFhWLy+mirROHcocu9J4ZbvTRYZEww
4lso1lqAllVLAoKYqa3WImZuSRoTbGDngBt9Lg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rOyI+x4PlmKcVSFoN3oKgSYpVlmYxc194Ej04il/YmBg10xopy4zmtu5sdCP/uGSNYcNGWeAiw01
mNf98KyNgTUFXruHCA38qjhhEIvl4vfWWn3W3mFRxrIuwmnreT6qTvgMaxIkCdVBDP7Iy7O6WmCf
3Va5X5hnCHhtXgX5UYniBHiLjmupv63B8XMAYDH2n6mQ3H0DF7mtb7psBafd0Z6+IWUbmzwMtKrf
ZrRJBGAhNT0i1KrEjEh/rWjN7Z7N32zQ+Pl1kc5gYCQIX5McfdTdqSaRVXZ/HF90ymS7/8d5LDyj
Er+ORdcjnOn6oAyY4PuUUl4OYUHv5k+RglTe5Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bJa7kPSpDipzoJoQu1APEjc8vFLqBfQZK/grZvWijD7/FgMTerFCWLUY6n8DWeGdvjXvTeyrqCHE
2rP/H57wUqPC8tIJlGm6ZYQGjZ3TgYqLrJshDE5zYMTO//q0vuSraWvZP7A7SLuW6y7tFE/nplpx
L8gbYORx6j70okGUwnamCMS9yhFr7Z2QTJne1k4GNFGvy66URk3k5cBPl5j4/1yc4xGV+aWYl6L8
q8RorRU/CltObHKrji/jdiY1WtdGrkpRyCEFc+XNPazL9xSLLu5bz6XlvKwoks+8a5KYT/VFUovM
JbM0bpAXM8Z7rGaPuXjqXtZBg5praTZLu/WNcA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PYKBDinOGc/kIVdFzXrz2wA4/QNFxLDrQfTWfR5TjYE6bm49vrZi0bawcr9HXp4OP1+XxPLB3oCP
oV5e/rYeDln531ebt8yEg27XCoSHEX4FU8oG8aBJ8fqgWayOnAMJt025WodOxuZXbhT1zPo7J3uh
6iO9Mv7RtYE2fZ1W+G8oN//FTOEJYPWlKYnt0cDeZrN3I4rHHptZHuu7l8T+df0PYea3x6U3Mvkl
ojZ+TwQtdu0NuYY5j3QNgx3+W2XYq1M773FAnEz/deW54EjE+jf1jjrBk2pl8SYxeKuutS15oPVF
eHdqXYVcJxoUY5JH8z04lITKEnZ4oq6sYS6dog==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
tl+2vFCWZ583gQGsVC7oopz2NCKBiJ9uOHYBGzJZheOHJMqI/ehNvo25l710eBx00tztXzM30AH6
ZhAJg+kJwE2jO0MV5fmG5dnwXmLqoGEJMBs7xwWxvYK7w/0z9M0AJKD7HnuC+IiLhNU/fIxyuE+I
+vWqp//RcfY0tMMp2I2J1yEW6GUahS1ve/4JchssZ7Xu7VthoSDWXMQWATbvsUsDzeSo2+Ruz8Kq
Dc05HqEU8NgBxDPPEKLCcdKLp4byglwj7iCAtCjsPy8P18qjgb2sycFjNgmaiNMMB51WqeD+hneG
hLOue9bqVdEojkrb3q4WbsGZKz0bAGsryxslOlYHP1b8vey3yI2ixA80wyERe8d3GRIeZiSxGykH
qWxsE6x/iyi8QRb5mXZPMApA+Fln8tYmn7+1rFCm8gF4gJWhr1PsSJqTi658symGrzT0Ghjvf2QL
SvvoaeNdy0pOsWs7jLBFndd4GiFA+9K6Y33sziLToU9EvvFokENIslod

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oYiCujFRj1F3wKsGZlHR9niEtR9MLXEVAVfy+f/3xrmpW6Ye5a+fBCvm4TH+iRQefGHNdMPnzTNW
K/pEPAS9uMJjOdFiu+APT+LYrSRnEg4W0dX5buSDGM6LBWAuMseoTMjbJJoYDGLRckJgW43E30mX
ej4823nkbfwc+Ecbrup825qLyv8RTQLNHafvJA5lSapdqXwnlOIYRmcHn+sfAh5pGv9kW9aokcdh
ObR2XYxX99rYloyvz3x0pmjxD5ILW4SQMB1IUEuuyqX6eb5IQ+kZ41hjvsHIuQH29vzpCfV9Jqha
WC5yxxK1R+cleZSKD1H1gVzbTei8uFs/91Bgeg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
urNc+S8AFPj+GVFdqJE5V7P8O6QI6MA3nkwYb8NKbYbVufnXKg6voJIRYYeYr7EOa8mrqirozWbY
Lln9SLWnkaAy2LvL/N6WahoQdCt++4RH+xe768XvSrVUFPrIwZRixqMLurc/tPov4i5P/ukZKl18
ZPZvXRzUNlvCZnMPcF+5QCQihqPbjcZ0YyGgWgX/ipTGG3sNqmylGN7qLa4Rgqu/mB5a2xVyu5Wc
911+/X3VVFx697WVaP5V0SbOzYN8R8+8B8kdznwixMA+f4lSbBXyRysVOSzYjo8bKEMqyKMVBQn9
xDmEuV0DvVWXdO7VPvWA1LuJFwS07OxeI2GCcQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QcP7fsLZxaDrG29e9HQeXfu2TsKsdyW7Yc1vWct6lbmDEfXkWMU1fFWSPIjPzRc9UOnfEu0bRn+B
D+8MWokqes3WF7txljBmgUPiNGZ8arUU6ENa/IY/Wv7iaB/ZKM5PtdnFAkjDIrYyKFCTz/U6Yzwi
hBGGarK/wYQOLzeeKRewiPTiNUL7tztWuMZ1t1msxD951EeKrwjrjcXIIuf/TzrOGUOlWgjHlnrl
4Q/lfMAnRLBNTSWG+5wWewCE8jK2X/gJ5AV4p3x1WP3+JglbxpP39l3pzedXqciZPbuz2XlFnRPV
KByaUaAShzJ56p8+0HjWebibqQdieGNPiPWW0Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 32112)
`pragma protect data_block
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
fjIpYczmkqK2diyV4hdkZp7gyuu8
`pragma protect end_protected
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
