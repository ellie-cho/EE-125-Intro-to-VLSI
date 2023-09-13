
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity top_level is
	port(
		clk: in std_logic;
       -- x: in std_logic;
		sel: in std_logic_vector(1 downto 0);
        ssd3, ssd2, ssd1, ssd0: out std_logic_vector(6 downto 0);
        o_flow: out std_logic
		);
end entity;

architecture connections of top_level is
	signal pulse: std_logic;

component frequency_meter is
    port (
        x: in std_logic;
        clk: in std_logic;
        ssd3: out std_logic_vector (6 downto 0);
        ssd2: out std_logic_vector (6 downto 0);
        ssd1: out std_logic_vector (6 downto 0);
        ssd0: out std_logic_vector (6 downto 0);
        o_flow: out std_logic);
end component;

component x_generator is 
    port(
		clk: in std_logic;
		sel: in std_logic_vector(1 downto 0);
		  x: out std_logic);
		  end component;
begin
	sig_gen: x_generator port map (clk, sel, pulse);
   freq_meter: frequency_meter port map (pulse, clk, ssd3, ssd2, ssd1, ssd0, o_flow);

end architecture;

