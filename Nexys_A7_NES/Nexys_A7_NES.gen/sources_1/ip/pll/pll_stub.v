// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Mon Jul 10 21:35:23 2023
// Host        : dragomir-System-Product-Name running 64-bit Linux Mint 21.1
// Command     : write_verilog -force -mode synth_stub
//               /home/dragomir/repos/NES_Nexys_A7/Nexys_A7_NES/Nexys_A7_NES.gen/sources_1/ip/pll/pll_stub.v
// Design      : pll
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module pll(clk_25, clk_100)
/* synthesis syn_black_box black_box_pad_pin="clk_25,clk_100" */;
  output clk_25;
  input clk_100;
endmodule
