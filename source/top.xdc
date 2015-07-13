current_instance system_i/microblaze_0/U0
set_false_path -to [get_pins MicroBlaze_Core_I/Reset_DFF/*/D]

current_instance -quiet
set_false_path -through [get_pins system_i/microblaze_0_local_memory/dlmb_v10/U0/SYS_Rst]
set_false_path -through [get_pins system_i/microblaze_0_local_memory/ilmb_v10/U0/SYS_Rst]

current_instance system_i/mdm_1/U0
create_clock -period 33.333 [get_pins Use*.BSCAN*/DRCK]
create_clock -period 33.333 [get_pins Use*.BSCAN*/UPDATE]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins Use*.BSCAN*/DRCK]]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins Use*.BSCAN*/UPDATE]]
set_clock_groups -logically_exclusive -group [get_clocks -of_objects [get_pins Use*.BSCAN*/DRCK]] -group [get_clocks -of_objects [get_pins Use*.BSCAN*/UPDATE]]

current_instance -quiet
set_property PACKAGE_PIN N11 [get_ports sys_clk]
set_property IOSTANDARD LVCMOS33 [get_ports sys_clk]

create_clock -period 5.000 [get_ports sys_clk]
set_input_jitter [get_clocks -of_objects [get_ports sys_clk]] 0.050

set_property PACKAGE_PIN T2 [get_ports sys_rst]
set_property IOSTANDARD LVCMOS33 [get_ports sys_rst]

current_instance system_i/rst_clk_wiz_1_100M
set_false_path -to [get_pins -hier *cdc_to*/D]

current_instance -quiet
set_property PACKAGE_PIN N6 [get_ports usb_uart_txd]
set_property IOSTANDARD LVCMOS33 [get_ports usb_uart_txd]
set_property PACKAGE_PIN M12 [get_ports usb_uart_rxd]
set_property IOSTANDARD LVCMOS33 [get_ports usb_uart_rxd]

current_instance system_i/axi_uartlite_0/U0
set_false_path -to [get_pins -hier *cdc_to*/D]

current_instance -quiet
set_property IOSTANDARD LVCMOS33 [get_ports {led[*]}]
set_property PACKAGE_PIN M1 [get_ports {led[7]}]
set_property PACKAGE_PIN N1 [get_ports {led[6]}]
set_property PACKAGE_PIN M2 [get_ports {led[5]}]
set_property PACKAGE_PIN N2 [get_ports {led[4]}]
set_property PACKAGE_PIN N3 [get_ports {led[3]}]
set_property PACKAGE_PIN M4 [get_ports {led[2]}]
set_property PACKAGE_PIN L4 [get_ports {led[1]}]
set_property PACKAGE_PIN L5 [get_ports {led[0]}]

set_property PACKAGE_PIN K1 [get_ports {spi1_csn[3]}]
set_property PACKAGE_PIN J1 [get_ports {spi1_csn[2]}]
set_property PACKAGE_PIN B7 [get_ports {spi1_csn[1]}]
set_property PACKAGE_PIN A7 [get_ports {spi1_csn[0]}]
set_property PACKAGE_PIN B6 [get_ports spi1_sck]
set_property PACKAGE_PIN B5 [get_ports spi0_csn]
set_property PACKAGE_PIN A5 [get_ports spi0_sck]
set_property IOSTANDARD LVCMOS33 [get_ports {spi1_csn[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {spi1_csn[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {spi1_csn[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {spi1_csn[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports spi1_sck]
set_property IOSTANDARD LVCMOS33 [get_ports spi0_csn]
set_property IOSTANDARD LVCMOS33 [get_ports spi0_sck]
