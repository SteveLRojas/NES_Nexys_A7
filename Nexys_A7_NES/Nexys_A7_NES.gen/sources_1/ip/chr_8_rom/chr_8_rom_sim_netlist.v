// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Mon Jul 10 21:46:31 2023
// Host        : dragomir-System-Product-Name running 64-bit Linux Mint 21.1
// Command     : write_verilog -force -mode funcsim -rename_top chr_8_rom -prefix
//               chr_8_rom_ chr_8_rom_sim_netlist.v
// Design      : chr_8_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "chr_8_rom,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module chr_8_rom
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [12:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [12:0]addra;
  wire clka;
  wire [7:0]douta;
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
  wire [12:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [12:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "13" *) 
  (* C_ADDRB_WIDTH = "13" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.326399 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
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
  (* C_INIT_FILE = "chr_8_rom.mem" *) 
  (* C_INIT_FILE_NAME = "chr_8_rom.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "8192" *) 
  (* C_READ_DEPTH_B = "8192" *) 
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
  (* C_WRITE_DEPTH_A = "8192" *) 
  (* C_WRITE_DEPTH_B = "8192" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  chr_8_rom_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[12:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[12:0]),
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
        .wea(1'b0),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 45184)
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
