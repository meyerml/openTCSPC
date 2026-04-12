// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sat Apr  4 14:09:08 2026
// Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/openTCSPC3/SRC/emulated_microscope/emulated_microscope.srcs/sources_1/bd/emulated_microscope/ip/emulated_microscope_blk_mem_gen_0_0/emulated_microscope_blk_mem_gen_0_0_sim_netlist.v
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
  emulated_microscope_blk_mem_gen_0_0_blk_mem_gen_v8_4_9 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 32064)
`pragma protect data_block
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
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
