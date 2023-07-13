// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Mon Jul 10 21:46:31 2023
// Host        : dragomir-System-Product-Name running 64-bit Linux Mint 21.1
// Command     : write_verilog -force -mode synth_stub -rename_top chr_8_rom -prefix
//               chr_8_rom_ chr_8_rom_stub.v
// Design      : chr_8_rom
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *)
module chr_8_rom(clka, addra, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,addra[12:0],douta[7:0]" */;
  input clka;
  input [12:0]addra;
  output [7:0]douta;
endmodule
