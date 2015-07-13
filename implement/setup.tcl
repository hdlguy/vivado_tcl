# This script sets up a Vivado project with all ip references resolved.
file delete -force proj.xpr *.os *.jou *.log proj.srcs proj.cache proj.runs
#
create_project -part xc7a50tftg256-1 -force proj 
set_property target_language VHDL [current_project]
set_property default_lib work [current_project]
load_features ipintegrator
tclapp::install ultrafast -quiet

file delete -force ./ip
file mkdir ./ip

read_ip ../source/ip/sine_rom/sine_rom.xci
upgrade_ip  [get_ips *]
generate_target {all} [get_ips *]

# Read in the hdl source.
read_vhdl [glob ../source/chirp_gen.vhd]
read_vhdl [glob ../source/top.vhd]

read_xdc ../source/top.xdc

close_project


