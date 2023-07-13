`timescale 1ns/100ps
module Testbench();
    
    //External signals
    reg CLK_100MHZ;      // 100MHz system clock signal
    reg rst_n;
    reg[3:0] button;
    
    wire[3:0] led;
    wire vga_hsync;        // vga hsync signal
    wire vga_vsync;         // vga vsync signal
    //wire[1:0] VGA_RED;      // vga red signal
    //wire[1:0] VGA_GREEN;    // vga green signal
    //wire[1:0] VGA_BLUE;     // vga blue signal
    wire jp_clk1;    // joypad output clk signal
    wire jp_clk2;  // joypad output latch signal
    wire jp_latch;
    
    //Internal NES signals
    wire clk_25;
    
    wire [ 7:0] to_cpu;
    wire        rp2a03_nnmi;
    wire [ 7:0] from_cpu;
    wire [15:0] rp2a03_a;
    wire        rp2a03_r_nw;
    
    wire [ 2:0] ppu_ri_sel;     // ppu register interface reg select
    wire        ppu_ri_ncs;     // ppu register interface enable
    wire        ppu_ri_r_nw;    // ppu register interface read/write select
    wire [ 7:0] ppu_ri_dout;    // ppu register interface data output
    
    wire [13:0] ppu_vram_a;     // ppu video ram address bus
    wire        ppu_vram_wr;    // ppu video ram read/write select
    wire [ 7:0] ppu_vram_din;   // ppu video ram data bus (input)
    wire [ 7:0] ppu_vram_dout;  // ppu video ram data bus (output)
    
    //RP2A03 Internal Signals
    wire sprdma_active;
    
    //PPU Internal Signals
    wire[7:0] NES_col;
    wire[7:0] NES_row;
    wire active_rows;
    wire active_render_area;
    wire active_draw_area;
    wire vert_scaler;
    wire horiz_advance;
    wire vblank;
    wire ri_bg_enable;
    wire ri_spr_enable;
    
    nes_top nes_inst(
        .clk(CLK_100MHZ ),
        .rst_n(rst_n),
        .button(button),
        .led(led),
        //Joypad
        .jp_data1(),
        .jp_data2(),
        .jp_clk1(jp_clk1),
        .jp_clk2(jp_clk2),
        .jp_latch1(jp_latch),
        .jp_latch2(),
        //VGA
        .vga_red(),
        .vga_green(),
        .vga_blue(),
        .vga_hsync(vga_hsync),
        .vga_vsync(vga_vsync),
    
        .audio_pwm(),		// pwm output audio channel
        .aud_sd()
    );
    
    
    assign clk_25 = nes_inst.clk_25;
    //assign clk_100 = nes_inst.clk_100;
    
    assign to_cpu = nes_inst.to_cpu;
    assign rp2a03_nnmi = nes_inst.rp2a03_nnmi;
    assign from_cpu = nes_inst.from_cpu;
    assign rp2a03_a = nes_inst.rp2a03_a;
    assign rp2a03_r_nw = nes_inst.rp2a03_r_nw;
    
    assign ppu_ri_sel = nes_inst.ppu_ri_sel;
    assign ppu_ri_ncs = nes_inst.ppu_ri_ncs;
    assign ppu_ri_r_nw = nes_inst.ppu_ri_r_nw;
    assign ppu_ri_dout = nes_inst.ppu_ri_dout;
    
    assign ppu_vram_a = nes_inst.ppu_vram_a;
    assign ppu_vram_wr = nes_inst.ppu_vram_wr;
    assign ppu_vram_din = nes_inst.ppu_vram_din;
    assign ppu_vram_dout = nes_inst.ppu_vram_dout;
    
    assign sprdma_active = nes_inst.rp2a03_blk.sprdma_active;
    
    assign NES_col = nes_inst.ppu_inst.NES_col;
    assign NES_row = nes_inst.ppu_inst.NES_row;
    assign active_rows = nes_inst.ppu_inst.active_rows;
    assign active_render_area = nes_inst.ppu_inst.active_render_area;
    assign active_draw_area = nes_inst.ppu_inst.active_draw_area;
    assign vert_scaler = nes_inst.ppu_inst.vert_scaler;
    assign horiz_advance = nes_inst.ppu_inst.horiz_advance;
    assign vblank = nes_inst.ppu_inst.vblank;
    assign ri_bg_enable = nes_inst.ppu_inst.ri_bg_enable;
    assign ri_spr_enable = nes_inst.ppu_inst.ri_spr_enable;
    
    always begin: CLOCK_GENERATION
        #5 CLK_100MHZ =  ~CLK_100MHZ;
    end
    
    initial begin: CLOCK_INITIALIZATION
        CLK_100MHZ = 0;
    end
    
    initial begin: TEST_VECTORS
    //initial conditions
    rst_n = 1'b0;
    button = 4'b0000;
    
    #1100 rst_n <= 1'b1;	//release reset
    
    end
endmodule
