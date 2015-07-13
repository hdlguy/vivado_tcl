-- This block makes double accumulator linear FM chirp generator.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity chirp_gen is
port (
    clk     : in STD_LOGIC;
    reset   : in STD_LOGIC;
    cos     : out std_logic_vector(7 downto 0);
    sin     : out std_logic_vector(7 downto 0));
end chirp_gen;

architecture rtl of chirp_gen is

    constant chirp_rate   : unsigned(31 downto 0) := B"00000000_00010000_00000000_00000000";
    signal phase, freq : unsigned(31 downto 0);
    signal s_axis_phase_tdata : STD_LOGIC_VECTOR(15 DOWNTO 0);
    signal m_axis_data_tdata : STD_LOGIC_VECTOR(15 DOWNTO 0);

begin


    -- The double accumulator phase generator.
    regs_proc:process
    begin
        wait until rising_edge(clk);
        if reset = '1' then
            freq  <= (others=>'0');
            phase <= (others=>'0');
        else
            freq  <= freq  + chirp_rate;
            phase <= phase + freq;
        end if;
    end process;


    -- Pack the 12 phase bits into the silly axis bus.
    s_axis_phase_tdata(11 downto 0) <= std_logic_vector(phase(phase'left downto phase'left-11)); 

    -- The sine rom IP core.
    sine_rom_inst : entity work.sine_rom
    PORT MAP (
        aclk => clk,
        s_axis_phase_tvalid => '1',
        s_axis_phase_tdata => s_axis_phase_tdata,
        m_axis_data_tvalid => open,
        m_axis_data_tdata => m_axis_data_tdata);

    -- Rip the sine and cosine out of the silly axis bus.
    sin <= m_axis_data_tdata(15 downto 8);
    cos <= m_axis_data_tdata( 7 downto 0);

end rtl;
