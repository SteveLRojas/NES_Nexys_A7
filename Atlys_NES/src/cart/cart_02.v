//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Esteban Looser-Rojas
// 
// Create Date:    20:30:26 06/22/2019 
// Design Name: cart
// Module Name:    cart_02 
// Project Name: FPGA_NES
// Target Devices: EP4CE6E22C8N
// Tool versions: ISE 14.7
// Description: Mapper 02 for NES
//
// Dependencies: rom_02, chr_ram
//
// Revision: 
// Revision 0.01 - File Created
// Revision 0.02 - Adapted file for Nexys3
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module cart_02(
		input  wire clk_sys,		// system clock signal
		input wire rst,
		output wire rst_out,

		// PRG-ROM interface.
		input wire prg_nce_in,		// prg-rom chip enable (active low)
		input wire[14:0] prg_a_in,	// prg-rom address
		input wire prg_r_nw_in,		// prg-rom read/write select
		input wire[7:0] prg_d_in,	// prg-rom data in
		output wire[7:0] prg_d_out,	// prg-rom data out

		// CHR-ROM interface.
		input wire[13:0] chr_a_in,	// chr-rom address
		input wire chr_r_nw_in,		// chr-rom read/write select
		input wire[7:0] chr_d_in,	// chr-rom data in
		output wire[7:0] chr_d_out,	// chr-rom data out
		output wire ciram_nce_out,	// vram chip enable (active low)
		output wire ciram_a10_out	// vram a10 value (controls mirroring)
	);
  
	wire[7:0] chrram_dout;
	wire[7:0] prgrom_dout;
	wire chrram_we;

	reg[2:0] page;

	assign ciram_a10_out = chr_a_in[10];	//A10 for vertical mirroring, A11 for horizontal
	assign ciram_nce_out = ~chr_a_in[13];
	assign prg_d_out = prgrom_dout & {8{~prg_nce_in}};
	assign chr_d_out = chrram_dout & {8{ciram_nce_out}};
	assign chrram_we = ~chr_a_in[13] & ~chr_r_nw_in;
	assign rst_out = rst;

	initial
	begin
		 page = 3'b111;
	end

	always @(posedge clk_sys or posedge rst)
	begin
		if(rst)
			page <= 3'b111;
		else if((~prg_r_nw_in) & (~prg_nce_in))   //register enabled by write to rom space
			page <= prg_d_in[2:0];
	end

	rom_02 ROM_inst(.clka(clk_sys), .addra({({3{prg_a_in[14]}} | page), prg_a_in[13:0]}), .douta(prgrom_dout));
	chr_ram CHR_inst(.clka(clk_sys), .addra(chr_a_in[12:0]), .wea(chrram_we), .dina(chr_d_in), .douta(chrram_dout));

endmodule
