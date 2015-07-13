library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top is
port (
    reset   : in STD_LOGIC;
    clk     : in STD_LOGIC;
    cos     : out std_logic_vector(7 downto 0);
    sin     : out std_logic_vector(7 downto 0));
end top;

architecture rtl of top is
    --
    signal reset_reg         : std_logic;
    signal pre_cos, pre_sin  : std_logic_vector(7 downto 0);
    --
    attribute dont_touch : string;
    attribute dont_touch of reset_reg : signal is "true";
    attribute dont_touch of pre_cos : signal is "true";
    attribute dont_touch of pre_sin : signal is "true";
    --
begin


    regs_proc: process
    begin
        wait until rising_edge(clk);
        reset_reg <= reset;
        cos       <= pre_cos;
        sin       <= pre_sin;
    end process;


    uut: entity work.chirp_gen
    port map (
        clk     => clk,
        reset   => reset_reg,
        cos     => pre_cos,
        sin     => pre_sin);


end rtl;
