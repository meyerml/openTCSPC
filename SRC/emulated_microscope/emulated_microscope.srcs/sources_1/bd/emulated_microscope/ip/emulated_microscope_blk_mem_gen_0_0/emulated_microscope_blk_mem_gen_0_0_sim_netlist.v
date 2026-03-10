// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sun Mar  8 01:02:56 2026
// Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/marce/OneDrive/Desktop/openTCSPC2/emulated_microscope/emulated_microscope.srcs/sources_1/bd/emulated_microscope/ip/emulated_microscope_blk_mem_gen_0_0/emulated_microscope_blk_mem_gen_0_0_sim_netlist.v
// Design      : emulated_microscope_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "emulated_microscope_blk_mem_gen_0_0,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module emulated_microscope_blk_mem_gen_0_0
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
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
  (* C_COUNT_36K_BRAM = "2" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.7492 mW" *) 
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
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
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
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  emulated_microscope_blk_mem_gen_0_0_blk_mem_gen_v8_4_9 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb[12:2],1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 52064)
`pragma protect data_block
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
J6CNnCi3Q0CCHbImCQD0zXEkLosHRLk=
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
