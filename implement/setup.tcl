# This script sets up a Vivado project with all ip references resolved.
file delete -force proj.xpr *.os *.jou *.log proj.srcs proj.cache proj.runs
#
create_project -part xc7a50t-ftg256-1 -force proj 
set_property target_language VHDL [current_project]
set_property default_lib work [current_project]
load_features ipintegrator
tclapp::install ultrafast -quiet
# this is to bypass error about muxed reference clock to MMCM.
#set_property is_enabled false [get_drc_checks REQP-119] 

# Load in the custom IP block for the register file.
file delete -force ./ip
file mkdir ./ip
set_property ip_repo_paths ./ip [current_fileset]
update_ip_catalog
#update_ip_catalog -add_ip ../../source/regfilex16/user.org_user_regfilex16_v1_0_1.0.zip -repo_path ./ip

# Recreate the Block Diagram of the processor system.
source ../source/system.tcl
generate_target {synthesis implementation} [get_files ./proj.srcs/sources_1/bd/system/system.bd]

# add the max_rx_if_fifo
#read_ip ../source/max_if/ip/max_rx_fifo.xci
#generate_target {synthesis} [get_ips max_rx_fifo]

# Read in the hdl source.
read_vhdl [glob ../source/top.vhd]

# read in the files for the spi_slave.vhd test design.
#read_ip ../source/spi_slave/ip/spi_slave_mem.xci
#generate_target {synthesis} [get_ips spi_slave_mem]
#read_vhdl ../source/spi_slave/spi_slave.vhd

read_xdc ../source/top.xdc

# This associates the SDC elf output with the microblaze processor.
add_files -norecurse ../sdk/uart_test/Release/uart_test.elf
set_property SCOPED_TO_REF system [get_files -all -of_objects [get_fileset sources_1] {../sdk/uart_test/Release/uart_test.elf}]
set_property SCOPED_TO_CELLS { microblaze_0 } [get_files -all -of_objects [get_fileset sources_1] {../sdk/uart_test/Release/uart_test.elf}]

close_project



