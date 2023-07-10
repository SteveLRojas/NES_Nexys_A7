
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name Atlys_NES -dir "Z:/Atlys_NES/planAhead_run_3" -part xc6slx45csg324-3
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "Z:/Atlys_NES/nes_top.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {Z:/Atlys_NES} {ipcore_dir} }
add_files [list {ipcore_dir/vram.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/chr_8_rom.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/prg_16_rom.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/multiplier.ncf}] -fileset [get_property constrset [current_run]]
set_property target_constrs_file "Z:/Atlys_NES/src/AtlysGeneral.ucf" [current_fileset -constrset]
add_files [list {Z:/Atlys_NES/src/AtlysGeneral.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "Z:/Atlys_NES/nes_top.xdl"
if {[catch {read_twx -name results_1 -file "Z:/Atlys_NES/nes_top.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"Z:/Atlys_NES/nes_top.twx\": $eInfo"
}
