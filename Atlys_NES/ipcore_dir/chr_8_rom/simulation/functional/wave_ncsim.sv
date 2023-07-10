

 
 
 




window new WaveWindow  -name  "Waves for BMG Example Design"
waveform  using  "Waves for BMG Example Design"

      waveform add -signals /chr_8_rom_tb/status
      waveform add -signals /chr_8_rom_tb/chr_8_rom_synth_inst/bmg_port/CLKA
      waveform add -signals /chr_8_rom_tb/chr_8_rom_synth_inst/bmg_port/ADDRA
      waveform add -signals /chr_8_rom_tb/chr_8_rom_synth_inst/bmg_port/DOUTA

console submit -using simulator -wait no "run"
