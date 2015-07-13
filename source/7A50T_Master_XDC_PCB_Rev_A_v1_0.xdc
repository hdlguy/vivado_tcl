# ----------------------------------------------------------------------------
#     _____
#    /     \
#   /____   \____
#  / \===\   \==/
# /___\===\___\/  AVNET ELECTRONICS MARKETING
#      \======/         www.em.avnet.com/drc
#       \====/    
# ----------------------------------------------------------------------------
# 
#  Created With Avnet Constraints Generator V0.8.0 
#     Date: Wednesday, September 03, 2014 
#     Time: 8:25:00 PM 
# 
#  This design is the property of Avnet.  Publication of this
#  design is not authorized without written consent from Avnet.
#  
#  Please direct any questions to:
#     Avnet Technical Community Forums
#     http://community.em.avnet.com
# 
#  Disclaimer:
#     Avnet, Inc. makes no warranty for the use of this code or design.
#     This code is provided  "As Is". Avnet, Inc assumes no responsibility for
#     any errors, which may appear in this code, nor does it make a commitment
#     to update the information contained herein. Avnet, Inc specifically
#     disclaims any implied warranties of fitness for a particular purpose.
#                      Copyright(c) 2014 Avnet, Inc.
#                              All rights reserved.
# 
# ----------------------------------------------------------------------------
# 
#  Notes: 
#
#  03 September 2014
#
#     The string provided in the comment field provides the Zynq device pin 
#     mapping through the expansion connector to the carrier card net name
#     according to the following format:
#
#     "<FPGA Pin>.<PCB Net>"
# 
# ----------------------------------------------------------------------------
  
  
# ----------------------------------------------------------------------------
# 32Kbit I2C EEPROM - Bank 14
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN R6 [get_ports {I2C_SCL_EEPROM}];  # "R6.I2C_SCL_EEPROM"
set_property PACKAGE_PIN R7 [get_ports {I2C_SDA_EEPROM}];  # "R7.I2C_SDA_EEPROM"


# ----------------------------------------------------------------------------
# Configuration QSPI Flash - Bank 14
# ----------------------------------------------------------------------------
set_property PACKAGE_PIN M15 [get_ports {NetR32_1}];  # "M15.NetR32_1"
set_property PACKAGE_PIN E8 [get_ports {QSPI_CLK}];  # "E8.QSPI_CLK"
set_property PACKAGE_PIN L12 [get_ports {QSPI_CS#}];  # "L12.QSPI_CS#"
set_property PACKAGE_PIN J13 [get_ports {QSPI_DQ0}];  # "J13.QSPI_DQ0"
set_property PACKAGE_PIN J14 [get_ports {QSPI_DQ1}];  # "J14.QSPI_DQ1"
set_property PACKAGE_PIN K15 [get_ports {QSPI_DQ2}];  # "K15.QSPI_DQ2"
set_property PACKAGE_PIN K16 [get_ports {QSPI_DQ3}];  # "K16.QSPI_DQ3"


# ----------------------------------------------------------------------------
# 200.00 MHz Clock Source - Bank 14
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN N11 [get_ports {SYS_CLK_I}];  # "N11.SYS_CLK_I"


# ----------------------------------------------------------------------------
# USB-UART - Bank 14
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN M12 [get_ports {USB_UART_RXD}];  # "N6.USB_UART_RXD"
set_property PACKAGE_PIN N6 [get_ports {USB_UART_TXD}];  # "M12.USB_UART_TXD"


# ----------------------------------------------------------------------------
# PHY Status - Bank 14
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN M6 [get_ports {PHY_ERROR_N}];  # "M6.PHY_ERROR_N"
set_property PACKAGE_PIN P9 [get_ports {PHY_STATE_N}];  # "P9.PHY_STATE_N"

# ----------------------------------------------------------------------------
# PHY1 RMII - Bank 14
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN N14 [get_ports {PHY1_CLKOUT}];  # "N14.PHY1_CLKOUT"
set_property PACKAGE_PIN M16 [get_ports {PHY1_CRS_DV}];  # "M16.PHY1_CRS_DV"
set_property PACKAGE_PIN R16 [get_ports {PHY1_LED_LINK}];  # "R16.PHY1_LED_LINK"
set_property PACKAGE_PIN N16 [get_ports {PHY1_MDC}];  # "N16.PHY1_MDC"
set_property PACKAGE_PIN P15 [get_ports {PHY1_MDIO}];  # "P15.PHY1_MDIO"
set_property PACKAGE_PIN P16 [get_ports {PHY1_REF_CLK}];  # "P16.PHY1_REF_CLK"
set_property PACKAGE_PIN R15 [get_ports {PHY1_RST_N}];  # "R15.PHY1_RST_N"
set_property PACKAGE_PIN L13 [get_ports {PHY1_RX_ERR}];  # "L13.PHY1_RX_ERR"
set_property PACKAGE_PIN M14 [get_ports {PHY1_RX0}];  # "M14.PHY1_RX0"
set_property PACKAGE_PIN K13 [get_ports {PHY1_RX1}];  # "K13.PHY1_RX1"
set_property PACKAGE_PIN R13 [get_ports {PHY1_TX0}];  # "R13.PHY1_TX0"
set_property PACKAGE_PIN T12 [get_ports {PHY1_TX1}];  # "T12.PHY1_TX1"
set_property PACKAGE_PIN L14 [get_ports {PHY1_TXEN}];  # "L14.PHY1_TXEN"

# ----------------------------------------------------------------------------
# PHY2 RMII - Bank 14
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN N12 [get_ports {PHY2_CLKOUT}];  # "N12.PHY2_CLKOUT"
set_property PACKAGE_PIN P11 [get_ports {PHY2_CRS_DV}];  # "P11.PHY2_CRS_DV"
set_property PACKAGE_PIN N9 [get_ports {PHY2_LED_LINK}];  # "N9.PHY2_LED_LINK"
set_property PACKAGE_PIN R12 [get_ports {PHY2_MDC}];  # "R12.PHY2_MDC"
set_property PACKAGE_PIN T13 [get_ports {PHY2_MDIO}];  # "T13.PHY2_MDIO"
set_property PACKAGE_PIN R10 [get_ports {PHY2_REF_CLK}];  # "R10.PHY2_REF_CLK"
set_property PACKAGE_PIN R11 [get_ports {PHY2_RST_N}];  # "R11.PHY2_RST_N"
set_property PACKAGE_PIN P10 [get_ports {PHY2_RX_ERR}];  # "P10.PHY2_RX_ERR"
set_property PACKAGE_PIN P14 [get_ports {PHY2_RX0}];  # "P14.PHY2_RX0"
set_property PACKAGE_PIN T14 [get_ports {PHY2_RX1}];  # "T14.PHY2_RX1"
set_property PACKAGE_PIN T15 [get_ports {PHY2_TX0}];  # "T15.PHY2_TX0"
set_property PACKAGE_PIN N13 [get_ports {PHY2_TX1}];  # "N13.PHY2_TX1"
set_property PACKAGE_PIN P13 [get_ports {PHY2_TXEN}];  # "P13.PHY2_TXEN"


# ----------------------------------------------------------------------------
# Pmod6 - Bank 14
# ----------------------------------------------------------------------------
set_property PACKAGE_PIN P8 [get_ports {PMOD6_D0_P}];  # "P8.PMOD6_D0_P" - J10 - Pin 1
set_property PACKAGE_PIN R8 [get_ports {PMOD6_D0_N}];  # "R8.PMOD6_D0_N" - J10 - Pin 2
set_property PACKAGE_PIN T7 [get_ports {PMOD6_D1_P}];  # "T7.PMOD6_D1_P" - J10 - Pin 3
set_property PACKAGE_PIN T8 [get_ports {PMOD6_D1_N}];  # "T8.PMOD6_D1_N" - J10 - Pin 4
set_property PACKAGE_PIN T9 [get_ports {PMOD6_D2_P}];  # "T9.PMOD6_D2_P" - J10 - Pin 7
set_property PACKAGE_PIN T10 [get_ports {PMOD6_D2_N}];  # "T10.PMOD6_D2_N" - J10 - Pin 8
set_property PACKAGE_PIN R5 [get_ports {PMOD6_D3_P}];  # "R5.PMOD6_D3_P" - J10 - Pin 9
set_property PACKAGE_PIN T5 [get_ports {PMOD6_D3_N}];  # "T5.PMOD6_D3_N" - J10 - Pin 10


# ----------------------------------------------------------------------------
# One wire Security EEPROM - Bank 14
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN P6 [get_ports {NetR8_2}];  # "P6.NetR8_2"


# ----------------------------------------------------------------------------
# I/O Test Point - Bank 14
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN K12 [get_ports {NetTP17_1}];  # "K12.NetTP17_1"


# ----------------------------------------------------------------------------
# 256MB DDR3 Memory - Bank 15
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN B14 [get_ports {DDR3_ADDR0}];  # "B14.DDR3_ADDR0"
set_property PACKAGE_PIN C14 [get_ports {DDR3_ADDR1}];  # "C14.DDR3_ADDR1"
set_property PACKAGE_PIN A9 [get_ports {DDR3_ADDR10}];  # "A9.DDR3_ADDR10"
set_property PACKAGE_PIN A8 [get_ports {DDR3_ADDR11}];  # "A8.DDR3_ADDR11"
set_property PACKAGE_PIN C9 [get_ports {DDR3_ADDR12}];  # "C9.DDR3_ADDR12"
set_property PACKAGE_PIN C8 [get_ports {DDR3_ADDR13}];  # "C8.DDR3_ADDR13"
set_property PACKAGE_PIN A14 [get_ports {DDR3_ADDR2}];  # "A14.DDR3_ADDR2"
set_property PACKAGE_PIN A13 [get_ports {DDR3_ADDR3}];  # "A13.DDR3_ADDR3"
set_property PACKAGE_PIN D9 [get_ports {DDR3_ADDR4}];  # "D9.DDR3_ADDR4"
set_property PACKAGE_PIN D8 [get_ports {DDR3_ADDR5}];  # "D8.DDR3_ADDR5"
set_property PACKAGE_PIN A12 [get_ports {DDR3_ADDR6}];  # "A12.DDR3_ADDR6"
set_property PACKAGE_PIN B12 [get_ports {DDR3_ADDR7}];  # "B12.DDR3_ADDR7"
set_property PACKAGE_PIN B11 [get_ports {DDR3_ADDR8}];  # "B11.DDR3_ADDR8"
set_property PACKAGE_PIN B10 [get_ports {DDR3_ADDR9}];  # "B10.DDR3_ADDR9"
set_property PACKAGE_PIN C16 [get_ports {DDR3_BA0}];  # "C16.DDR3_BA0"
set_property PACKAGE_PIN A15 [get_ports {DDR3_BA1}];  # "A15.DDR3_BA1"
set_property PACKAGE_PIN B15 [get_ports {DDR3_BA2}];  # "B15.DDR3_BA2"
set_property PACKAGE_PIN C11 [get_ports {DDR3_CAS_N}];  # "C11.DDR3_CAS_N"
set_property PACKAGE_PIN A10 [get_ports {DDR3_CK0_N}];  # "A10.DDR3_CK0_N"
set_property PACKAGE_PIN B9 [get_ports {DDR3_CK0_P}];  # "B9.DDR3_CK0_P"
set_property PACKAGE_PIN D13 [get_ports {DDR3_CKE}];  # "D13.DDR3_CKE"
set_property PACKAGE_PIN F12 [get_ports {DDR3_DM0}];  # "F12.DDR3_DM0"
set_property PACKAGE_PIN H11 [get_ports {DDR3_DM1}];  # "H11.DDR3_DM1"
set_property PACKAGE_PIN E12 [get_ports {DDR3_DQ0}];  # "E12.DDR3_DQ0"
set_property PACKAGE_PIN E13 [get_ports {DDR3_DQ1}];  # "E13.DDR3_DQ1"
set_property PACKAGE_PIN H13 [get_ports {DDR3_DQ10}];  # "H13.DDR3_DQ10"
set_property PACKAGE_PIN H16 [get_ports {DDR3_DQ11}];  # "H16.DDR3_DQ11"
set_property PACKAGE_PIN G16 [get_ports {DDR3_DQ12}];  # "G16.DDR3_DQ12"
set_property PACKAGE_PIN J15 [get_ports {DDR3_DQ13}];  # "J15.DDR3_DQ13"
set_property PACKAGE_PIN J16 [get_ports {DDR3_DQ14}];  # "J16.DDR3_DQ14"
set_property PACKAGE_PIN H14 [get_ports {DDR3_DQ15}];  # "H14.DDR3_DQ15"
set_property PACKAGE_PIN E11 [get_ports {DDR3_DQ2}];  # "E11.DDR3_DQ2"
set_property PACKAGE_PIN D11 [get_ports {DDR3_DQ3}];  # "D11.DDR3_DQ3"
set_property PACKAGE_PIN F13 [get_ports {DDR3_DQ4}];  # "F13.DDR3_DQ4"
set_property PACKAGE_PIN E16 [get_ports {DDR3_DQ5}];  # "E16.DDR3_DQ5"
set_property PACKAGE_PIN D16 [get_ports {DDR3_DQ6}];  # "D16.DDR3_DQ6"
set_property PACKAGE_PIN F15 [get_ports {DDR3_DQ7}];  # "F15.DDR3_DQ7"
set_property PACKAGE_PIN G12 [get_ports {DDR3_DQ8}];  # "G12.DDR3_DQ8"
set_property PACKAGE_PIN H12 [get_ports {DDR3_DQ9}];  # "H12.DDR3_DQ9"
set_property PACKAGE_PIN D15 [get_ports {DDR3_DQS0_N}];  # "D15.DDR3_DQS0_N"
set_property PACKAGE_PIN D14 [get_ports {DDR3_DQS0_P}];  # "D14.DDR3_DQS0_P"
set_property PACKAGE_PIN F14 [get_ports {DDR3_DQS1_N}];  # "F14.DDR3_DQS1_N"
set_property PACKAGE_PIN G14 [get_ports {DDR3_DQS1_P}];  # "G14.DDR3_DQS1_P"
set_property PACKAGE_PIN C13 [get_ports {DDR3_ODT}];  # "C13.DDR3_ODT"
set_property PACKAGE_PIN B16 [get_ports {DDR3_RAS_N}];  # "B16.DDR3_RAS_N"
set_property PACKAGE_PIN E15 [get_ports {DDR3_RESET_N}];  # "E15.DDR3_RESET_N"
set_property PACKAGE_PIN C12 [get_ports {DDR3_WE_N}];  # "C12.DDR3_WE_N"


# ----------------------------------------------------------------------------
# User DIP Switches - Bank 34
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN M5 [get_ports {NetRP3_5}];  # "M5.NetRP3_5"
set_property PACKAGE_PIN P3 [get_ports {NetRP3_6}];  # "P3.NetRP3_6"
set_property PACKAGE_PIN P4 [get_ports {NetRP3_7}];  # "P4.NetRP3_7"
set_property PACKAGE_PIN P1 [get_ports {NetRP3_8}];  # "P1.NetRP3_8"


# ----------------------------------------------------------------------------
# I/O Test Points - Bank 34
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN P5 [get_ports {NetTP7_1}];  # "P5.NetTP7_1"
set_property PACKAGE_PIN T3 [get_ports {NetTP8_1}];  # "T3.NetTP8_1"
set_property PACKAGE_PIN T4 [get_ports {NetTP9_1}];  # "T4.NetTP9_1"


# ----------------------------------------------------------------------------
# User LEDs - Bank 34
# ----------------------------------------------------------------------------
set_property PACKAGE_PIN L5 [get_ports {USER_LED1}];  # "L5.USER_LED1"
set_property PACKAGE_PIN L4 [get_ports {USER_LED2}];  # "L4.USER_LED2"
set_property PACKAGE_PIN M4 [get_ports {USER_LED3}];  # "M4.USER_LED3"
set_property PACKAGE_PIN N3 [get_ports {USER_LED4}];  # "M2.USER_LED4"
set_property PACKAGE_PIN N2 [get_ports {USER_LED5}];  # "M1.USER_LED5"
set_property PACKAGE_PIN M2 [get_ports {USER_LED6}];  # "N3.USER_LED6"
set_property PACKAGE_PIN N1 [get_ports {USER_LED7}];  # "N2.USER_LED7"
set_property PACKAGE_PIN M1 [get_ports {USER_LED8}];  # "N1.USER_LED8"


# ----------------------------------------------------------------------------
# User Reset Button - Bank 34
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN T2 [get_ports {PB_RST}];  # "T2.PB_RST"


# ----------------------------------------------------------------------------
# User Push Buttons - Bank 34
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN N4 [get_ports {PB1}];  # "N4.PB1"
set_property PACKAGE_PIN R2 [get_ports {PB2}];  # "R2.PB2"
set_property PACKAGE_PIN R1 [get_ports {PB3}];  # "R1.PB3"
set_property PACKAGE_PIN R3 [get_ports {PB4}];  # "R3.PB4"


# ----------------------------------------------------------------------------
# User DIP Switches - Bank 35
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN L3 [get_ports {ID_0}];  # "L3.ID_0"
set_property PACKAGE_PIN L2 [get_ports {ID_1}];  # "L2.ID_1"
set_property PACKAGE_PIN K3 [get_ports {ID_2}];  # "K3.ID_2"
set_property PACKAGE_PIN K2 [get_ports {ID_3}];  # "K2.ID_3"


# ----------------------------------------------------------------------------
# Pmod1 - Bank 35
# ----------------------------------------------------------------------------
set_property PACKAGE_PIN K1 [get_ports {PMOD1_D0_P}];  # "K1.PMOD1_D0_P" - J7 - Pin 1
set_property PACKAGE_PIN J1 [get_ports {PMOD1_D0_N}];  # "J1.PMOD1_D0_N" - J7 - Pin 2
set_property PACKAGE_PIN B7 [get_ports {PMOD1_D1_P}];  # "B7.PMOD1_D1_P" - J7 - Pin 3
set_property PACKAGE_PIN A7 [get_ports {PMOD1_D1_N}];  # "A7.PMOD1_D1_N" - J7 - Pin 4
set_property PACKAGE_PIN B6 [get_ports {PMOD1_D2_P}];  # "B6.PMOD1_D2_P" - J7 - Pin 7
set_property PACKAGE_PIN B5 [get_ports {PMOD1_D2_N}];  # "B5.PMOD1_D2_N" - J7 - Pin 8
set_property PACKAGE_PIN A5 [get_ports {PMOD1_D3_P}];  # "A5.PMOD1_D3_P" - J7 - Pin 9
set_property PACKAGE_PIN A4 [get_ports {PMOD1_D3_N}];  # "A4.PMOD1_D3_N" - J7 - Pin 10


# ----------------------------------------------------------------------------
# Pmod2 - Bank 35
# ----------------------------------------------------------------------------
set_property PACKAGE_PIN B4 [get_ports {PMOD2_D0_P}];  # "B4.PMOD2_D0_P" - J8 - Pin 1
set_property PACKAGE_PIN A3 [get_ports {PMOD2_D0_N}];  # "A3.PMOD2_D0_N" - J8 - Pin 2
set_property PACKAGE_PIN C7 [get_ports {PMOD2_D1_P}];  # "C7.PMOD2_D1_P" - J8 - Pin 3
set_property PACKAGE_PIN C6 [get_ports {PMOD2_D1_N}];  # "C6.PMOD2_D1_N" - J8 - Pin 4
set_property PACKAGE_PIN C3 [get_ports {PMOD2_D2_P}];  # "C3.PMOD2_D2_P" - J8 - Pin 7
set_property PACKAGE_PIN C2 [get_ports {PMOD2_D2_N}];  # "C2.PMOD2_D2_N" - J8 - Pin 8
set_property PACKAGE_PIN B2 [get_ports {PMOD2_D3_P}];  # "B2.PMOD2_D3_P" - J8 - Pin 9
set_property PACKAGE_PIN A2 [get_ports {PMOD2_D3_N}];  # "A2.PMOD2_D3_N" - J8 - Pin 10


# ----------------------------------------------------------------------------
# Pmod3 - Bank 35
# ----------------------------------------------------------------------------
set_property PACKAGE_PIN D6 [get_ports {PMOD3_D0_P}];  # "D6.PMOD3_D0_P" - J11 - Pin 1
set_property PACKAGE_PIN D5 [get_ports {PMOD3_D0_N}];  # "D5.PMOD3_D0_N" - J11 - Pin 2
set_property PACKAGE_PIN E3 [get_ports {PMOD3_D1_P}];  # "E3.PMOD3_D1_P" - J11 - Pin 3
set_property PACKAGE_PIN D3 [get_ports {PMOD3_D1_N}];  # "D3.PMOD3_D1_N" - J11 - Pin 4
set_property PACKAGE_PIN D4 [get_ports {PMOD3_D2_P}];  # "D4.PMOD3_D2_P" - J11 - Pin 7
set_property PACKAGE_PIN C4 [get_ports {PMOD3_D2_N}];  # "C4.PMOD3_D2_N" - J11 - Pin 8
set_property PACKAGE_PIN F5 [get_ports {PMOD3_D3_P}];  # "F5.PMOD3_D3_P" - J11 - Pin 9
set_property PACKAGE_PIN E5 [get_ports {PMOD3_D3_N}];  # "E5.PMOD3_D3_N" - J11 - Pin 10


# ----------------------------------------------------------------------------
# Pmod4 - Bank 35
# ----------------------------------------------------------------------------
set_property PACKAGE_PIN F4 [get_ports {PMOD4_D0_P}];  # "F4.PMOD4_D0_P" - J6 - Pin 1
set_property PACKAGE_PIN F3 [get_ports {PMOD4_D0_N}];  # "F3.PMOD4_D0_N" - J6 - Pin 2
set_property PACKAGE_PIN F2 [get_ports {PMOD4_D1_P}];  # "F2.PMOD4_D1_P" - J6 - Pin 3
set_property PACKAGE_PIN E1 [get_ports {PMOD4_D1_N}];  # "E1.PMOD4_D1_N" - J6 - Pin 4
set_property PACKAGE_PIN G5 [get_ports {PMOD4_D2_P}];  # "G5.PMOD4_D2_P" - J6 - Pin 7
set_property PACKAGE_PIN G4 [get_ports {PMOD4_D2_N}];  # "G4.PMOD4_D2_N" - J6 - Pin 8
set_property PACKAGE_PIN G2 [get_ports {PMOD4_D3_P}];  # "G2.PMOD4_D3_P" - J6 - Pin 9
set_property PACKAGE_PIN G1 [get_ports {PMOD4_D3_N}];  # "G1.PMOD4_D3_N" - J6 - Pin 10


# ----------------------------------------------------------------------------
# Pmod5 - Bank 35
# ----------------------------------------------------------------------------
set_property PACKAGE_PIN H5 [get_ports {PMOD5_D0_P}];  # "H5.PMOD5_D0_P" - J9 - Pin 1
set_property PACKAGE_PIN H4 [get_ports {PMOD5_D0_N}];  # "H4.PMOD5_D0_N" - J9 - Pin 2
set_property PACKAGE_PIN J5 [get_ports {PMOD5_D1_P}];  # "J5.PMOD5_D1_P" - J9 - Pin 3
set_property PACKAGE_PIN J4 [get_ports {PMOD5_D1_N}];  # "J4.PMOD5_D1_N" - J9 - Pin 4
set_property PACKAGE_PIN H2 [get_ports {PMOD5_D2_P}];  # "H2.PMOD5_D2_P" - J9 - Pin 7
set_property PACKAGE_PIN H1 [get_ports {PMOD5_D2_N}];  # "H1.PMOD5_D2_N" - J9 - Pin 8
set_property PACKAGE_PIN J3 [get_ports {PMOD5_D3_P}];  # "J3.PMOD5_D3_P" - J9 - Pin 9
set_property PACKAGE_PIN H3 [get_ports {PMOD5_D3_N}];  # "H3.PMOD5_D3_N" - J9 - Pin 10


# ----------------------------------------------------------------------------
# I/O Test Points - Bank 35
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN E6 [get_ports {NetTP11_1}];  # "E6.NetTP11_1"
set_property PACKAGE_PIN K5 [get_ports {NetTP12_1}];  # "K5.NetTP12_1"


# ----------------------------------------------------------------------------
# IOSTANDARD Constraints
#
# Note that these IOSTANDARD constraints are applied to all IOs currently
# assigned within an I/O bank.  If these IOSTANDARD constraints are 
# evaluated prior to other PACKAGE_PIN constraints being applied, then 
# the IOSTANDARD specified will likely not be applied properly to those 
# pins.  Therefore, bank wide IOSTANDARD constraints should be placed 
# within the XDC file in a location that is evaluated AFTER all 
# PACKAGE_PIN constraints within the target bank have been evaluated.
#
# Un-comment one or more of the following IOSTANDARD constraints according to
# the bank pin assignments that are required within a design.
# ---------------------------------------------------------------------------- 

# Set the bank voltage for IO Bank 14 to 3.3V by default.
# set_property IOSTANDARD LVCMOS33 [get_ports –of_objects [get_iobanks 14]];

# Set the bank voltage for IO Bank 34 to 3.3V by default.
# set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 34]];

# Set the bank voltage for IO Bank 35 to 3.3V by default.
# set_property IOSTANDARD LVCMOS33 [get_ports –of_objects [get_iobanks 35]];
