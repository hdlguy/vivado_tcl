#################
set_property PACKAGE_PIN N11 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
#
create_clock -period 5.000 [get_ports clk]
#
set_property PACKAGE_PIN T2 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports reset]
#
#set_property IOSTANDARD LVCMOS33 [get_ports {led[*]}]
#set_property PACKAGE_PIN M1 [get_ports {led[7]}]
#set_property PACKAGE_PIN N1 [get_ports {led[6]}]
#set_property PACKAGE_PIN M2 [get_ports {led[5]}]
#set_property PACKAGE_PIN N2 [get_ports {led[4]}]
#set_property PACKAGE_PIN N3 [get_ports {led[3]}]
#set_property PACKAGE_PIN M4 [get_ports {led[2]}]
#set_property PACKAGE_PIN L4 [get_ports {led[1]}]
#set_property PACKAGE_PIN L5 [get_ports {led[0]}]
#
# Pmod1 - Bank 35
set_property IOSTANDARD LVCMOS33 [get_ports {cos[*]}]
set_property PACKAGE_PIN K1 [get_ports {cos[7]}];
set_property PACKAGE_PIN J1 [get_ports {cos[6]}];
set_property PACKAGE_PIN B7 [get_ports {cos[5]}];
set_property PACKAGE_PIN A7 [get_ports {cos[4]}];
set_property PACKAGE_PIN B6 [get_ports {cos[3]}];
set_property PACKAGE_PIN B5 [get_ports {cos[2]}];
set_property PACKAGE_PIN A5 [get_ports {cos[1]}];
set_property PACKAGE_PIN A4 [get_ports {cos[0]}];
#
# Pmod2 - Bank 35
set_property IOSTANDARD LVCMOS33 [get_ports {sin[*]}]
set_property PACKAGE_PIN B4 [get_ports {sin[7]}];
set_property PACKAGE_PIN A3 [get_ports {sin[6]}];
set_property PACKAGE_PIN C7 [get_ports {sin[5]}];
set_property PACKAGE_PIN C6 [get_ports {sin[4]}];
set_property PACKAGE_PIN C3 [get_ports {sin[3]}];
set_property PACKAGE_PIN C2 [get_ports {sin[2]}];
set_property PACKAGE_PIN B2 [get_ports {sin[1]}];
set_property PACKAGE_PIN A2 [get_ports {sin[0]}];


