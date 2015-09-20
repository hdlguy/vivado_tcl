# Script to compile the FPGA with zynq processor system all the way to bit file.
set outputDir ./results
file mkdir $outputDir
open_project proj.xpr

synth_ip -force [get_ips *]

synth_design -top top
write_checkpoint -force $outputDir/post_synth.dcp
#report_timing_summary -file $outputDir/post_synth_timing_summary.rpt
#report_utilization -file $outputDir/post_synth_util.rpt
#reportCriticalPaths post_synth_critpath_report.csv

## add ila logic analyzer.
source add_ila.tcl

opt_design
#reportCriticalPaths post_opt_critpath_report.csv

place_design
#report_clock_utilization -file $outputDir/clock_util.rpt

phys_opt_design
#write_checkpoint -force $outputDir/post_place.dcp
#report_utilization -file $outputDir/post_place_util.rpt
#report_timing_summary -file $outputDir/post_place_timing_summary.rpt

route_design
write_checkpoint -force $outputDir/post_route.dcp
report_route_status -file $outputDir/post_route_status.rpt
report_timing_summary -file $outputDir/post_route_timing_summary.rpt
report_power -file $outputDir/post_route_power.rpt
report_drc -file $outputDir/post_imp_drc.rpt
report_io -file $outputDir/post_imp_io.rpt
xilinx::ultrafast::report_io_reg -verbose -file $outputDir/io_regs.rpt

set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 2.5 [current_design]

set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design]
set_property BITSTREAM.Config.SPI_BUSWIDTH 4 [current_design]
write_bitstream -verbose -force $outputDir/top.bit

close_project

write_cfgmem -force -format MCS -size 256 -interface SPIx4 -loadbit "up 0x0 ./results/top.bit" -verbose ./results/top.mcs





