library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity top is
port (
    sys_clk : in STD_LOGIC;
    sys_rst : in STD_LOGIC;
    led     : out std_logic_vector(7 downto 0);
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC;
    --
    spi0_sck : out std_logic;
    spi0_csn : out std_logic;
    --
    spi1_sck : out std_logic;
    spi1_csn : out std_logic_vector(3 downto 0));
end top;

architecture STRUCTURE of top is

    component system is
    port (
        sys_clk : in STD_LOGIC;
        sys_rst : in STD_LOGIC;
        gpio_rtl_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
        uart_rtl_rxd : in STD_LOGIC;
        uart_rtl_txd : out STD_LOGIC;
        --
        spi0_sdo : out STD_LOGIC;
        spi0_sck : out STD_LOGIC;
        spi0_csn : out STD_LOGIC_VECTOR ( 0 to 0 );
        spi0_sdi : in STD_LOGIC;
        --
        spi1_sdo : out STD_LOGIC;
        spi1_sdi : in STD_LOGIC;
        spi1_sck : out STD_LOGIC;
        spi1_csn : out STD_LOGIC_VECTOR ( 3 downto 0 )
    );
    end component system;
  
    signal spi0_sdo, spi0_sdi : std_logic;
    signal spi1_sdo, spi1_sdi : std_logic;
  
begin

    system_i: component system
    port map (
        sys_clk => sys_clk,
        sys_rst => sys_rst,
        --
        gpio_rtl_tri_o => led,
        --
        uart_rtl_rxd => usb_uart_rxd,
        uart_rtl_txd => usb_uart_txd,
        --
        spi0_sdo  =>  spi0_sdo ,
        spi0_sck  =>  spi0_sck ,
        spi0_csn(0)  =>  spi0_csn ,
        spi0_sdi  =>  spi0_sdi ,
        --        
        spi1_sdo  =>  spi1_sdo ,
        spi1_sdi  =>  spi1_sdi ,
        spi1_sck  =>  spi1_sck ,
        spi1_csn  =>  spi1_csn);

    spi0_sdi <= spi0_sdo;
    spi1_sdi <= spi1_sdo;
    
end STRUCTURE;
