/** @file */  // This line is to make doxygen happy.
/* **********************
This file should document the register map for the MAX2580 RF Prototype Board.
We will try to use Doxygen compatible comments wherever possible.
************************** */

/// Base address of all FPGA peripherals.
#define		PROTO_BASE_ADDRESS	0x40000000
#define		PROTO_SIZE		0x03D00000

/// This is a temporary Block RAM provided to support software development.
/// It is a safe place to direct reads and writes because it does nothing!
#define 	AXI_BRAM_0		0x40000000+0x00000000
#define 	AXI_BRAM_SIZE	 	64*1024

/// This is the all important SPI interface. The hardware is a Xilinx IP block
/// so there are bare metal drivers availble to setup and use this interface.
/// We need to decide how to incorporate these bare metal drivers into the API.
#define		AXI_QUAD_SPI_0		0x01E00000

/// This is the base address of a register file that is used to control all the 
/// custom XG logic of the prototype. Individual registers should be described 
/// here as they are defined.
#define 	AXI_REGFILE_0		0x03C00000
/// This is a 32 bit register that provides an intentification word.
#define 	FPGA_ID     		0x03C00000
#define 	FPGA_VERSION		0x03C00004

/// This is a Xilinx programmable timer core. It is not yet integrated into the 
/// hardware but eventually it will be used to control DSP timing.
#define		AXI_TIMER_0		0x02800000


/// Xilinx FPGAs contain an analog I/O block called the XADC.
/// This is the offset address to the XADC in this fpga.
#define		AXI_XADC		0x03C10000



