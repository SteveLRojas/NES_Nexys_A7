module nes_top(
		input  wire clk,		// 50MHz system clock signal
		input  wire rst_n,			// reset push button (active low)
		input wire[3:0] button,
		output wire[7:0] led,
		//Joypad
		input wire jp_data1,
		input wire jp_data2,
		output wire jp_clk1,
		output wire jp_clk2,
		output wire jp_latch1,
		output wire jp_latch2,
		//HDMI
		output wire tmds_r_p,
		output wire tmds_r_n,
		output wire tmds_g_p,
		output wire tmds_g_n,
		output wire tmds_b_p,
		output wire tmds_b_n,
		output wire tmds_clk_p,
		output wire tmds_clk_n,

		output wire audio		// pwm output audio channel
	);

//#############################################################################
	wire clk_25;
	wire clk_250;
	wire rst;
	wire[3:0] button_d;
	wire jp_latch;
	wire jp_data_clean[1:0];

	reg jp_data_s[1:0];
	reg jp_disable[1:0];

	assign jp_latch1 = ~jp_latch;
	assign jp_latch2 = ~jp_latch;
	assign jp_data_clean[0] = jp_data_s[0] | jp_disable[0];
	assign jp_data_clean[1] = jp_data_s[1] | jp_disable[1];

	pll pll_i(.clk_100(clk), .clk_25(clk_25), .clk_250(clk_250));

	always @(posedge clk_25 or posedge rst)
	begin
		if(rst)
		begin
			jp_data_s[0] <= 1'b0;
			jp_data_s[1] <= 1'b0;
			jp_disable[0] <= 1'b1;
			jp_disable[1] <= 1'b1;
		end
		else
		begin
			jp_data_s[0] <= jp_data1;
			jp_data_s[1] <= jp_data2;
			jp_disable[0] <= jp_disable[0] & ~jp_data_s[0];
			jp_disable[1] <= jp_disable[1] & ~jp_data_s[1];
		end
	end
	
	button_debounce
	#(
		.INVERT_BUTTONS(1'b0),
		.NUM_BUTTONS(4),
		.CLK_DIV_BITS(15)
	)
	button_debounce_i
	(
		.clk(clk_25),
		.rst_in(~rst_n),
		.button_in(button),
		.rst_out(rst),
		.button_out(button_d)
	);
//#############################################################################

//#############################################################################
//
// RP2A03: Main processing chip including CPU, APU, joypad control, and sprite DMA control.
//
	wire[7:0] to_cpu;
	wire rp2a03_nnmi;
	wire[7:0] from_cpu;
	wire[15:0] rp2a03_a;
	wire rp2a03_r_nw;
	wire cpu_reset;
	
	//assign led[3] = ~cpu_reset;

	rp2a03 rp2a03_blk(
		 .clk_in(clk_25),
		 .rst_in(cpu_reset | button_d[0]),
		 .rdy_in(~button_d[1]),
		 .d_in(to_cpu),
		 .nnmi_in(rp2a03_nnmi),
		 .d_out(from_cpu),
		 .a_out(rp2a03_a),
		 .r_nw_out(rp2a03_r_nw),
		 .jp_data1_in(jp_data_clean[0]),
		 .jp_data2_in(jp_data_clean[1]),
		 .jp1_clk(jp_clk1),
		 .jp2_clk(jp_clk2),
		 .jp_latch(jp_latch),
		 .audio_out(audio),
		 .debug()
	);
//#############################################################################

//#############################################################################
//
// PPU: picture processing unit block.
//
	wire[2:0] ppu_ri_sel;	// ppu register interface reg select
	wire ppu_ri_ncs;			// ppu register interface enable
	wire ppu_ri_r_nw;			// ppu register interface read/write select
	wire[7:0] ppu_ri_dout;	// ppu register interface data output

	wire[13:0] ppu_vram_a;	// ppu video ram address bus
	wire ppu_vram_wr;			// ppu video ram read/write select
	wire[7:0] ppu_vram_din;	// ppu video ram data bus (input)
	wire[7:0] ppu_vram_dout;// ppu video ram data bus (output)
	
	wire vde;	//means we are in the active area (not blank)
	wire hsync;
	wire vsync;
	wire[1:0] vga_r;
	wire[1:0] vga_g;
	wire[1:0] vga_b;

	// PPU snoops the CPU address bus for register reads/writes.  Addresses 0x2000-0x2007
	// are mapped to the PPU register space, with every 8 bytes mirrored through 0x3FFF.
	assign ppu_ri_sel = rp2a03_a[2:0];
	assign ppu_ri_ncs = ~(rp2a03_a[15:13] == 3'b001);
	assign ppu_ri_r_nw = rp2a03_r_nw;

	PPU_gen2 ppu_inst(
		 .debug_in(~{button_d[3], button_d[2]}),
		 .debug_out(led[2:0]),
		 .clk_in(clk_25),
		 .rst_in(rst),
		 .ri_sel_in(ppu_ri_sel),
		 .ri_ncs_in(ppu_ri_ncs),
		 .ri_r_nw_in(ppu_ri_r_nw),
		 .ri_d_in(from_cpu),
		 .vram_d_in(ppu_vram_din),
		 .vde(vde),
		 .hsync_out(hsync),
		 .vsync_out(vsync),
		 .r_out(vga_r),
		 .g_out(vga_g),
		 .b_out(vga_b),
		 .ri_d_out(ppu_ri_dout),
		 .nvbl_out(rp2a03_nnmi),
		 .vram_a_out(ppu_vram_a),
		 .vram_d_out(ppu_vram_dout),
		 .vram_wr_out(ppu_vram_wr)
	);
	
	vga_to_hdmi vga_to_hdmi_inst(
		.clk_25(clk_25),		// VGA clock
		.clk_250(clk_250),		// HDMI clock
		.vde(vde), 		// Active draw area
		.draw_vsync(vsync),
		.draw_hsync(hsync),
		.vga_r({vga_r, 6'h00}),
		.vga_g({vga_g, 6'h00}),
		.vga_b({vga_b, 6'h00}),
		.tmds_r_p(tmds_r_p),
		.tmds_r_n(tmds_r_n),
		.tmds_g_p(tmds_g_p),
		.tmds_g_n(tmds_g_n),
		.tmds_b_p(tmds_b_p),
		.tmds_b_n(tmds_b_n),
		.tmds_clk_p(tmds_clk_p),
		.tmds_clk_n(tmds_clk_n)
	);
//#############################################################################

//#############################################################################
//
// CART: cartridge emulator
//
	wire cart_prg_nce;
	wire[7:0] cart_prg_dout;
	wire[7:0] cart_chr_dout;
	wire cart_ciram_nce;
	wire cart_ciram_a10;
	
	assign cart_prg_nce = ~rp2a03_a[15];

	cart_01 cart_blk(
		.clk_sys(clk_25),
		.rst(rst),
		.rst_out(cpu_reset),
		.debug(led[7:3]),
		// PRG ROM interface:
		.prg_nce_in(cart_prg_nce),
		.prg_a_in(rp2a03_a[14:0]),
		.prg_r_nw_in(rp2a03_r_nw),
		.prg_d_in(from_cpu),
		.prg_d_out(cart_prg_dout),
		// CHR RAM interface:
		.chr_a_in(ppu_vram_a),
		.chr_r_nw_in(~ppu_vram_wr),
		.chr_d_in(ppu_vram_dout),
		.chr_d_out(cart_chr_dout),
		.ciram_nce_out(cart_ciram_nce),
		.ciram_a10_out(cart_ciram_a10)
	);
//#############################################################################

//#############################################################################
//
// VRAM: internal video ram
//
	wire[10:0] vram_a;
	wire[7:0] vram_dout;
	assign vram_a = {cart_ciram_a10, ppu_vram_a[9:0]};

	vram vram_inst(
		.clka(clk_25),
		.ena(~cart_ciram_nce),
		.wea(ppu_vram_wr),
		.addra(vram_a),
		.dina(ppu_vram_dout),
		.douta(vram_dout));
//#############################################################################

//#############################################################################
//
// WRAM: internal work ram
//
	wire wram_en;
	wire[7:0] wram_dout;
	assign wram_en = (rp2a03_a[15:13] == 3'b000);

	vram wram_inst(
		.clka(clk_25),
		.ena(wram_en),
		.wea(~rp2a03_r_nw),
		.addra(rp2a03_a[10:0]),
		.dina(from_cpu),
		.douta(wram_dout));
//#############################################################################

//#############################################################################
	assign to_cpu = cart_prg_dout | (wram_dout & {8{wram_en}}) | ppu_ri_dout;
	assign ppu_vram_din = cart_chr_dout | (vram_dout & {8{~cart_ciram_nce}});
//#############################################################################

endmodule
