// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Mon Jul 10 22:17:46 2023
// Host        : dragomir-System-Product-Name running 64-bit Linux Mint 21.1
// Command     : write_verilog -force -mode funcsim
//               /home/dragomir/repos/NES_Nexys_A7/Nexys_A7_NES/Nexys_A7_NES.gen/sources_1/ip/vram/vram_sim_netlist.v
// Design      : vram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "vram,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module vram
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [10:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire ena;
  wire [0:0]wea;
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
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.3396 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "vram.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  vram_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RgPKnWr9n0dGgttm3akiFhAlfB96usOQYxnEmPhGyTGg1AbizYAjGPWLXBWl50n/d0IA71ci4aJB
wt6mtfyNADm3ZReK7D3mKu037BOgxryoEwwf1kiC6q/PllxsdAgEMfQrfHJ3E2AzSpdYjoxVYito
y0JW6CUDcWvWa4WV0EA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M0l6KpOGH3jL8eRt3NCD7e2USYnkg5H9GAnE1PKmnjiouFN3Y8kjWA2PZDAQLm9UW+TsC1HeVlzO
WjNCHkjR/6ubCsIcWfpPZWdIuAenlsyq8Y9l6b8vMj8JSbDEOiFF/GHSbKsn22MJdDJKEhHFK6GV
s8gR2vywRFwG69gIRE4qGhVB+WIg8GJrDpDMYH6lCjMkTrjXuKDUcNlJN3NPLuhJ7tsditwf1pr5
moJRmGpJnip/rGm0g4o4A6ev4CtePjoao8C1wFtzHkERX9oenhh7cGjDMejU5IrLv8NxFnLj1FpB
9MuF1beTU20NI5oAn6zLiLiOtXjf0ghU3AN4DA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
hAsrUfp6Qgjm8yBjNYTEtQmVQmMxzL8TE/3oiQSxSI3+yEkXAbQCXkT9mo+LCdv+fGECOB0istHd
eLtbsiYbxjxNxYkXiUrRE5O+aSxynIray+uF9DJigTEUZu8JJXUbzxK4DDUu1Lm9tpGps4+Prz1m
0gkj13RT/Y/418s2VTw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BP/54Wm/GJmb1jy0bxWJJX4aiKyiWPVh4X3VL30BQrmX4PlEsNKzBJH3Qu8IIYERfnFP0ifAgboa
vypMQ5Ed0BrMePGkWIgT6I8hxJCMFpHdkSK7m1giSKyZzFfTOrVqoNFXE+qdzLfY1J5hBWCvouYo
jllavK4N3gF9FLScH2AUWYVMcVth2QPaTAU2NLnAUNH8kgtBjBfc8/KbPPTznD1QNVqvFstzcbTA
hGQ1ETVPvINQ0KqxxAG5PRhtQD4+pC+hr/Tvk+RSvGyBOfy9zE86OXkJiYs9dSFhNiMFmCPL9DBO
se4OxNNC0/7aBtb1mkSEA9YFDYEb9jS7Jasy2A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SnzT9DVH3xlEN8nrr2YrlvTO5qj7L22d7WaBcuKyTaiHoIwwFHrC4HQbfs0TAwkdWcOgmJoATPSF
F6qm0KiddbrlERF3MfKUldeGBJtqLdX+zGw7+3JD7S+HB9dIMOFOHy+IiCZp1/Pz8epKpi238cel
rcVoJQKz406wmXDvOo8KsT+XhRLs9BVCrBErPGGXKYDk6NXAp0duOgQE9DbslzMU83M/kUC7uERV
tQW02240peKQFp2elEZC7Tetvgp0TaFTtJiKN45REi8GQUCKGa85JjNIk1qb/+k95TIIP1xrHirc
6iX7qbwnPetv8TVu2NjkZ0WDEK5RXdOXcxBwHA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
erkR82V0jX8ytva+9MzEs0c75Z7j7TsgxWRLNAUfbbU28i+U9YzuZlSfYU75M0f9jx1gvxtBrfKv
cNHVdkR+i5zfHDZsDwfMEEBhs8wzDCKqe+eex6BBEvlIOesCPXrr2RozQgaQ1PBh/os2Arfu+873
BjsVxFJkbhpzIqlddOo/XZV9Yi+eih7A7pXXEBR6IL7Poo4Ka49MiVQU0xJrDTm+ddOuMPDRRD7g
dsxS/uzdcBcO2myV6g/7YH/C2Ce9s6+UywJN/0JeXSqwA7bsBqqnfFicVAT0lckLopMLiuzK7dsN
EwhFeqoetciFrDIj9+o0xDMWBZhgNP1u68vURA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
R+BI65BKLT0I9hEtsxGnDyM5XY9gzULeTPOSDXvd3KWOzZJAx6C0xlbyZcFZhAEG/QIK2yd0wAi6
IUWxyF/sx3HsqKjhVi5KxnpuXDBOZVoj811O7JukedFVmDW7OHGtBkuiJ5X5irw7mfsEKRQmF/1i
V6lj9HYHZEjxtDeZjACsLY4y1QxWalSKT4HIMOHznBLL8dLbGMlS+ZmFuFn0gcwZavVl7gTkTtkf
W0gn01A9ru7NKsf+iLX0kj4dgItPu9N2g02M1vWQ9UUQEVvfV7lUc7GY1suibrD8aEkhH9S7lZ7n
bFsT4qxyvzg8ML6v4g4v7N6VuyhEtgFgNd725Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
jNUVKiwH68vHsU54idgvKwaVJcoxTUuxfgrQpbpmM/IpesWA3wHsGzYClwAxkKzw3KRnFyQqTWcZ
yj1EQ2CMBxlJ0kyNbZW8OK8pXzeigToZ0U6Aq3Gy+j7wBbhe83wE1Ygn82sK8dHTEulvaRLn/c5r
ispy1s7jMKIvYNzoUuZrgyBQyfaYmdqUia8XlQjFd+VwzhTXKwzvmaqHWyaHjfBKeCooO7+oUxMG
OJg83W54EVe9ronFQ8Wr9EOL8ia7qelCAgyQe/bC0HHCoMAm8apI7sX23iMR/wMiPP5V2bQzycy+
rBX/+SWkqSeIE1FLm+muFPvrE7iLwJaW8d1fzdFFjAZ5aIXArbWNfwbK8S0TczXc9lEzmpb69rwA
UJIrs4alo81qGQ32UFhjuMQjX75O9Od1HWHDj5PFaT/Ja5Ly+bK8Cc3gfO6dCE81m7d+B2JBZ/Hl
tBA19QuOAYwT2EIPOdpaVtCULb33cWODWu3qQFhZMmDzKTb3kwpcr0LL

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MnzcA2swaxH1LRacKDou0ZmiiMRETbWIdHgeBgyQz7ILronsXLoB/C20WuFNGEVSiL2/51EZ6MXZ
vMHI8fFcMQCJcuTBDBibUMKv6bXI9s8fTbtrBZppbF/R1icG5JYhqmX4aRnv4W/dxJRjI2L35nLN
Y48E9OfgfkD1sr+IRwx8WEKFmUhuk8dLe0VOK7ywe3XEcneYvrz+HhPj16bGmNfMwNnDgZ3gKKZD
hRnys+jzvAX3HyISrErWXhMKrhWMxXeTNFJCqNQ0LWAVHQYwyKnF5xVpyXSuGNSIrva+QXqOrZBG
3VNLirNVtMRiKLfwZeMaqvswkqBDAa53utlAAA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
d0xXkKtsKM8GvXhDZr16p1+oE3uBtD04BJ76eGGIEj/CFECfHVy9qsJ43oSKjas0+AJr4GFFnVb6
X7gJV6MmX/OboC9ier5joUCGz0mxVzkRZK9a+LPEDcg0K6+cLE36kr+FfxW9Uk2816EHBCMCf5mK
A4eAhSmAb5Nq74F/q0quiG416npbny7faiQ+xmPDfYYiM3UuMKaD4iE8ODlz1w5xThPllWESf3LZ
NTkw6fozyTqZ47vvE21O3dgIGAY1v+C6BwlCK24VwPJa1xs9csY+qTk31j5jjAc1ExlB6QF7t9UH
lk70qdNPWxT87OH7kFT8UvPO1D6BTC3/WkDZfA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LYhdzKTvo93uJrAaiP5OfCDuOnu2BSvPnxlv6I7h2n1+xHtj34LNNKzWEgOg9dUV9cYDaHYUjjEt
DKdWcz6mZ61d5qyxAhpv67fc90v7JVgtOAcT94/Yb+AuLxXFcGA6Gic7uoJtUgz6JmTnb22Dxdjc
KuIewDj4IOTfP8XGXKTaF+cNp0CFrQgTAcVSQFyLFxr0I/9h3S+GZLecA7ntEeHEOfCJzPvy0ddi
7MCdQWECLb+fXC0IAn8V95TumcpINiRAX1BHi9IGJ4QoMrb3jOCrPkFhDMTJj2aiImUWdi/l/0QE
d7wcXlgIEYVeoKYUOJ4mqy+zZPUbLNeOPADUDQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18544)
`pragma protect data_block
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
4LPHfE17E5YV7mP1bRRWgJsmQw==
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
