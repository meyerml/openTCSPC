// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon Jun  8 18:40:33 2026
// Host        : LAPTOP-UKM8GMC3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top zedboard_real_microscope_blk_mem_gen_0_0 -prefix
//               zedboard_real_microscope_blk_mem_gen_0_0_ emulated_microscope_blk_mem_gen_0_0_sim_netlist.v
// Design      : emulated_microscope_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "emulated_microscope_blk_mem_gen_0_0,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 31840)
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
