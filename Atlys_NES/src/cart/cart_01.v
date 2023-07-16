`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:46:06 07/15/2023 
// Design Name: 
// Module Name:    cart_01 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module cart_01(
		input wire clk_sys,			// system clock signal
		input wire rst,
		output wire rst_out,
		output wire[4:0] debug,
		
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
	wire[7:0] prgram_dout;
	wire chrram_we;
	wire prg_write;
	wire[3:0] prg_rom_sel;
	wire[4:0] chr_sel;
	wire prg_ram_en;
	
	reg prev_prg_write;
	reg [4:0] shift;
	
	// CPPMM
	// |||||
	// |||++- Mirroring (0: one-screen, lower bank; 1: one-screen, upper bank;
	// |||               2: vertical; 3: horizontal)
	// |++--- PRG ROM bank mode (0, 1: switch 32 KB at $8000, ignoring low bit of bank number;
	// |                         2: fix first bank at $8000 and switch 16 KB bank at $C000;
	// |                         3: fix last bank at $C000 and switch 16 KB bank at $8000)
	// +----- CHR ROM bank mode (0: switch 8 KB at a time; 1: switch two separate 4 KB banks)
	reg [4:0] control;

	// CCCCC
	// |||||
	// +++++- Select 4 KB or 8 KB CHR bank at PPU $0000 (low bit ignored in 8 KB mode)
	reg [4:0] chr_bank_0;

	// CCCCC
	// |||||
	// +++++- Select 4 KB CHR bank at PPU $1000 (ignored in 8 KB mode)
	reg [4:0] chr_bank_1;

	// RPPPP
	// |||||
	// |++++- Select 16 KB PRG ROM bank (low bit ignored in 32 KB mode)
	// +----- PRG RAM chip enable (0: enabled; 1: disabled; ignored on MMC1A)
	reg [4:0] prg_bank;
	
	assign prg_write = ~prg_r_nw_in & ~prg_nce_in;
	assign chrram_we = ~chr_a_in[13] & ~chr_r_nw_in;
	
	assign ciram_a10_out = ~control[1] ? control[0] : 
		control[0] ? chr_a_in[11] : chr_a_in[10];
	
	assign ciram_nce_out = ~chr_a_in[13];
	assign prg_d_out = (prgrom_dout & {8{~prg_nce_in}}) | (prgram_dout & {8{prg_ram_en}});
	assign chr_d_out = chrram_dout & {8{ciram_nce_out}};
	assign rst_out = rst;
	
	always @(posedge clk_sys or posedge rst)
	begin
		if(rst)
		begin
			prev_prg_write <= 1'b0;
			shift <= 5'b10000;
			control <= 5'b0_11_00;
			chr_bank_0 <= 0;
			chr_bank_1 <= 0;
			prg_bank <= 5'b00000;
		end
		else
		begin
			prev_prg_write <= prg_write;
			
			if (prg_write & ~prev_prg_write)
			begin
				if(prg_d_in[7])
				begin
					shift <= 5'b10000;
					control <= control | 5'b0_11_00;
				end
				else
				begin
					if(shift[0])
					begin
						case(prg_a_in[14:13])
						0: control    <= {prg_d_in[0], shift[4:1]};
						1: chr_bank_0 <= {prg_d_in[0], shift[4:1]};
						2: chr_bank_1 <= {prg_d_in[0], shift[4:1]};
						3: prg_bank   <= {prg_d_in[0], shift[4:1]};
						endcase
						
						shift <= 5'b10000;
					end
					else
					begin
						shift <= {prg_d_in[0], shift[4:1]};
					end
				end
			end
		end
	end
	
	// The PRG bank to load. Each increment here is 16kb. So valid values are 0..15.
	// prg_ain[14] selects bank0 ($8000) or bank1 ($C000)
	assign prg_rom_sel = ~control[3] ? {prg_bank[3:1], prg_a_in[14]} : // switch 32 KB at $8000, ignoring low bit of bank number
		control[2] ? prg_bank[3:0] | {4{prg_a_in[14]}} : // fix last bank at $C000 and switch 16 KB bank at $8000
		prg_bank[3:0] & {4{prg_a_in[14]}};	// fix first bank at $8000 and switch 16 KB bank at $C000;
	
	// The CHR bank to load. Each increment here is 4 kb. So valid values are 0..31.
	assign chr_sel = ~control[4] ? {chr_bank_0[4:1], chr_a_in[12]} : 
		chr_a_in[12] ? chr_bank_1 : chr_bank_0;

	assign prg_ram_en = prg_nce_in & prg_a_in[14] & prg_a_in[13] & ~prg_bank[4];
	
	rom_01 rom_01_i(.clka(clk_sys), .addra({prg_rom_sel[2:0], prg_a_in[13:0]}), .douta(prgrom_dout));
	chr_ram chr_ram_i(.clka(clk_sys), .addra({chr_sel[0], chr_a_in[11:0]}), .wea(chrram_we), .dina(chr_d_in), .douta(chrram_dout));
	chr_ram prg_ram(.clka(clk_sys), .addra(prg_a_in[12:0]), .wea(prg_ram_en & ~prg_r_nw_in), .dina(prg_d_in), .douta(prgram_dout));
	
	assign debug = prg_bank;
	
endmodule
