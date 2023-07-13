// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Mon Jul 10 21:48:38 2023
// Host        : dragomir-System-Product-Name running 64-bit Linux Mint 21.1
// Command     : write_verilog -force -mode funcsim
//               /home/dragomir/repos/NES_Nexys_A7/Nexys_A7_NES/Nexys_A7_NES.gen/sources_1/ip/multiplier/multiplier_sim_netlist.v
// Design      : multiplier
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "multiplier,mult_gen_v12_0_18,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_18,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module multiplier
   (A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [7:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [15:0]P;

  wire [7:0]A;
  wire [7:0]B;
  wire [15:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "8" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "15" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  multiplier_mult_gen_v12_0_18 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(1'b1),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
t16GlZFP6wSHOfCuAKBB/aPhRt430na0RFcw9RLqLlFnTIXf0J5icL3Tu/TFzA59bhtk+ZNdlj7F
7orXq0M9haENsb+TBIeK/GuLcI1S2IEIkFVmtIvegJBlN3srdWrLqI/AyFdszg5PkZrzXG88Xc2b
2WO3QwoaFVIK/AojhI0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UtSqlFV62lL0vsa+Fh+XV0GodQOhNU+6dPw5SjSuv0OvMPVTZXVGpv55T6fELMTk959mSyk6Ry8g
0O9Y+nqYj7I0zkNLWT7cwBX+iLCmX2JSQo0kktzf26plrcNa51Bs4Rbc4NpXOM0qb4rXVuoKypyP
HSgLU/Y/LJXF61+xWUxlO/iS23d098gIYO7aX1Nz0Zpxw9ecqpaiqqmINjKd7+FoOYwpOnngiAXz
pOgYfhxk1ISU+bUSjZjeDoP7g1lNCWE31RTqWkWQGF10aXAKjpV/urSILMIltA6tEQlYe504jcmA
K6CG5Be/e48W9rZhr524SoZsyb09Xu0ljFmYyw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
s9gMEzowcFxkq1MbQ+ohDFKy7tBz/pLyjan2X3aZrppPTnWFYxUwzBEF/ro/EfUUM8uTCttMSXmu
O+6LCUK5jgPjkaMWPsMS55hYAR6EBnyybIWMRKkzEnFIHYmOxoJXN6aejqQdGAJpk/GM0k2kE/2C
QJ0emaNzqpUFy8zVyD8=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a0jBWiKNqZ7hnx/6B7nI5ufxVeaI4NzBKnxHHL8rwEz+qZ6mQupkBL3OTKmXAoK5zM5zDX0BoIdg
g+qNbp2F/8a5NuDvQMSkFxXdX7tOsauze3WM5EFttlHDYHZKU6UpAJzbezDElKw67YmPdL2ias/f
cSf3Fsh+XYTJ2zk/Aki0aFTehgi8L4XtguQEsT9XeeJ+tXYAZohSNP/ZXyhbkIW1mpV3SlcC1dRy
fSbB/vnosDy99WZN5QQbdfYRLfBvXzklzldu53DJpWg3jshPotjjSI5uzp9DlhnDpOfdwh9CxlWq
JE6qCDbRp5l1ZZOW0Ts19+g/aN9sVzjbQ4oDlA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qAarq/HXu81d0yuylcPPXIPWsCCc2TC6LAm/TCo4PR7216jMtwG+SOM1+zlbzk5Kpoch2SxtyiyE
5sK7WhCCZrOW1iGC/V20t18okkAYc4u3L4md0H66B/+eKmZgbzcFSwiDhMJoBwjF2zjk2TM4Bm93
BlxsT6IQkVfY9OKxz3GKD18ZjGSQJb5rVaf/7yNlHKzsG7Zc5elrKUlCAelqg//v1qERxc0ZG5Mj
w9CJUiyPyaJZc6G+R+HfcZEK0Fuzs6xXGFnB6brHur9bHoCc0zmUXG+id4uvtFlqHTuH9Q8Ki3tS
3rXAl0lciyqfBhhsnTnP0yNu1Nj58S3wQZETeQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
m+BUnInKIetlcLwW5iyofYSLsTDcXRlNB6pr6H27L0tCYqG/fBmMFNiAUrJVb1hcbAOcDFCc5rjd
xA3xq3XzBTBLb5c6E202/xQvY32FumZ7gT+LPjb38Dqx7+alozDd+UEUruhrn6Sf4y8lmFklMZwW
a+Mf69X3eouV8s/54pNM77bHRMFHIqgva8hdzjjPB4kd8LddABMlTi3n2xgGCzXS8TAAAInPnR91
J9/U+l7mZ2BaratH/KLMMYOyoh4VmQUGPqHz2qXcCqu5CgODCZd5pkhugY9ByDQjLYVnmlxFG9Kc
4zXrtf2d25q9Kn9btoNwzwELaiybU8i6WgtJxg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nSH0KxJSxKPrCObmIHBcS8P1BA8mMtMKqPe8mvzoRbgsm/8Hz3rOL+ObP57qGSnFfseFbJy9iUl4
6EJIYYkZ94Q6lS6wsmymnSoy+vX3DDIbRcxWwZa8R3Zi3CDJdN+2l8QTxVl+S9SKUWPl1QseYb7V
bEl29QVgno6+ByYpHrXetmxVyG9o+GqR7GXlr/EZDwiUB/mB2Vyy7uNdZ/Fr9y/FsEphy+7K2lIx
nszpEPcZoKK2zlEs9wAnacKPuzf2VujZw4paW7aIhaUZlfzpP97rwUq4nCcDhV+xfol9uV1ThT1+
ZpLPKV9L6J7YIr0IXR65jxMP75KM36Wmqsns4g==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
gpqCjOGJ637kBUJ19PgbSJOhTU2E6DfZTimxleISPs9RU7JykCGy9SPqx5xyVl3r6c6UYgi5hKNu
BVJDY+U9sVxwTjIgNs7zH/d8a5TQkliqDGq/Y/imWwPXYCADds3+N4PR+uXE+Ul2KsnNQP/gHXdU
ycgvwzTDcsyE+cntZUH35EtHyv2IvPhE9aJb1ZPvCY3uR1kG6KQwF10Ww7LEKRWTr5oMxz/R0s35
M833FVtkrZ9uTzKLa4Joo8ARMQx66IAKO6CKl30kcdr6kGrVWo8ArEB8h/7amQkkEKGVq/D0sTHK
2uHyOt6xvSrj6l9Hae1Sd1o6qu4mcFIsIacU+BJLJXt8FwLu6oobnGTewU+GNlAqvMxjdly3MScb
LDBHIzqAlqgCo2w4/I5QLKRCErydKjZ/8en4d1c22Zr89egLY08IctZj0FJ+GBh8Z04DzVom/E8V
CsPGJD1cFSZfb2/Uu9L3NPANh/eOGvxqlVycjSoPL4y/QjfdEZkR1djC

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Lzl+f5a5cWrBOpktelLybDJh26zODO1cHXsoEd4TW3dG5VAyRkeqtbBdb2PUWyKp7FY1uPuLyZog
BI9Pe1gS/m4LY6swFIngwuj94CQmLxPk9/yO7WrUCtlvlQrzSmQfxSpsqripZlybkc1jfloeNkb5
FoKJ9ORCPnEzASlhTb7+ZNMpY3FSm46yfpRyBw9OylwmX7enBBmMuxzGgVilSG1Zb2pCbJuWdplU
vc0acLwej8Ct03etO29l9Voikk1nGEBCUDPO/RrHuTvxnv0uruDhViyY/1Aq27n3r9qK1Ii5IGRY
t8uLW08VQmUHPHrU/dETI3BxChGHPvbitgbnkQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Pfm/ksmKzw6jnU+mK6S+lG060qX4tqCVlKAyirRj2Mnbubm7FeI901sjU1oHeK66TAr6A/N8Vfjp
H/Pd8DPN9wZvqJH18QoTd79UTntkrachT5v13CfoeGPlvghdTyJ/M2Elhu7DoN+vh5QQA1W+woiy
RxH8r+61O4irT/Om40awC9f1yuprQ7CDdA/5XSoCV+jMA2AIPifw2omAQW8u1N66m4ZO2SWMim2V
f0stui0HQrMgaeAgdWcT65H9hXRm9GPkacMM4oVMphMtVAFCMcrdcpJ6R7SAjwiVXT0IcLdnJ+b1
Q3NObO2xkSyxWl1HTPhite4+IMjwhCh2b3bpxQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lt/9ilcABvxanhzkZ2emo0SrxSVC+RmmcbR7d33FLzfbgf36G8jIZk7kOP6o4Chnw5nGKXU97FTy
BCng829CtvNXQgMi8lmkz67K6xbPQnvxziDRXPJVnTYT/4/6E2eK04k00AwL1+QEWZxEmXYYzMLu
k1zfH0HLf2+gsCDe4XRC2b4nmvrxwhazvq2nOuPT2XblRg9EAJaI+dtSwsa6NLKpUwxrlPdAL83t
KGBANTHykr/OOhRXbtqVg6byXZsGBT+qdNowxWH/oe7yzrNTM8qRXrZw3/X9PR2XTnNgkygtAWaF
M64eeMuh2/bqS5XQCFh1ujkwi/Iu9NMZsMQ/nw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10544)
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
