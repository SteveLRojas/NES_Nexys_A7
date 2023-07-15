//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Esteban Looser-Rojas
// 
// Create Date:    20:30:26 06/22/2019 
// Design Name: cart
// Module Name:    cart_03
// Project Name: FPGA_NES
// Target Devices: XC6SLX9
// Tool versions: 
// Description: Mapper 03 for NES
//
// Dependencies: None
//
// Revision: 
// Revision 0.01 - File Created
// Revision 0.02 - Adapted file for Nexys3
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module cart_03(
		input wire clk_sys,			// system clock signal
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

	reg [1:0] page;
	
	wire[7:0] prgrom_dout;
	wire[7:0] chrrom_dout;

	assign ciram_a10_out = chr_a_in[11];	//A10 for vertical mirroring, A11 for horizontal
	assign ciram_nce_out = ~chr_a_in[13];
	assign prg_d_out = prgrom_dout & {8{~prg_nce_in}};
	assign chr_d_out = chrrom_dout & {8{ciram_nce_out}};
	assign rst_out = rst;
	
	always @(posedge clk_sys or posedge rst)
	begin
		if(rst)
			page <= 2'b00;
		else if((~prg_r_nw_in) & (~prg_nce_in))   //register enabled by write to rom space
			page <= prg_d_in[1:0];
	end

	rom_prg_03 PRG_03_inst(.clka(clk_sys), .addra(prg_a_in), .douta(prgrom_dout));
	rom_chr_03 CHR_03_inst(.clka(clk_sys), .addra({page, chr_a_in[12:0]}), .douta(chrrom_dout));
	
endmodule
