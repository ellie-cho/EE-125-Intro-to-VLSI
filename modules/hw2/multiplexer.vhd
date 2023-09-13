library ieee; 
use ieee.std_logic_1164.all; 
use ieee.math_real.all; 
use ieee.numeric_std.all;

entity multiplexer is 
    generic (
        NUM_INPUTS: natural := 8; 
        NUM_BITS: natural := 4);
    port (
        a: in std_logic_vector((NUM_BITS * NUM_INPUTS - 1) downto 0); 
        sel: in std_logic_vector(integer(ceil(log2(real(NUM_INPUTS+1))))-1 downto 0);
        b: out std_logic_vector (NUM_BITS - 1 downto 0));   
end entity; 

architecture pre_defined_type of multiplexer is 
    signal sel_nat: natural range 0 to NUM_INPUTS;
begin 
    sel_nat <= to_integer(unsigned(sel)); 
    b <= a((sel_nat * NUM_BITS + (NUM_BITS - 1)) downto sel_nat * NUM_BITS); 
end architecture;