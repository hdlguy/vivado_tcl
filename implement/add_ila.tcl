# this subscript adds an In-system Logic Analyzer (ILA) to the design

# These are the signal we want to see in the ILA
#set_property mark_debug true [get_nets [list usb_uart_txd_OBUF]]
#set_property mark_debug true [get_nets [list usb_uart_rxd_IBUF]]


set_property mark_debug true [get_nets [list system_i/axi_quad_spi_0/U0/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/LOGIC_FOR_MD_0_GEN.SPI_MODULE_I/D_0]]
set_property mark_debug true [get_nets [list system_i/axi_quad_spi_1/U0/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/LOGIC_FOR_MD_0_GEN.SPI_MODULE_I/D_0]]

#
create_debug_core ila1 ila
set_property C_DATA_DEPTH 2048 [get_debug_cores ila1]

# Now find all the nets that are marked for debug.
set ila_nets [get_nets -hier -filter {MARK_DEBUG==1}]
set num_ila_nets [llength [get_nets [list $ila_nets]]]

set_property port_width 1 [get_debug_ports ila1/clk]
set_property port_width $num_ila_nets [get_debug_ports ila1/probe0]
connect_debug_port ila1/probe0 [get_nets [list $ila_nets ]]
get_nets [list $ila_nets]
connect_debug_port ila1/clk [get_nets [list system_i/clk_out1]]
#connect_debug_port u_ila_0/clk [get_nets [list system_i/clk_out1 ]]

write_debug_probes -force ./results/ila1.ltx
