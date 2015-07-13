library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity chirp_gen_tb is 
generic(
    in_width   : natural := 8);
end entity chirp_gen_tb;

architecture rtl of chirp_gen_tb is
    --
    signal clk     :  std_logic;
    signal reset   : std_logic;
    signal cos     : std_logic_vector(7 downto 0);
    signal sin     : std_logic_vector(7 downto 0);
    --
    constant clk_period  : time := 10 ns;
    --
begin

    stim_proc:process
    begin
        reset <= '1';
        wait for clk_period*4;
        reset <= '0';
        wait;
    end process;

    uut: entity work.chirp_gen
    port map (
        clk     => clk,
        reset   => reset,
        cos     => cos,
        sin     => sin);
        
    clk_proc:process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;

end architecture rtl;
