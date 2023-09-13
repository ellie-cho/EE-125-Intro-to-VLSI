
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all; 
use ieee.std_logic_unsigned.all;
use ieee.math_real.all;

entity x_generator is
    port (
        clk, rst: in std_logic;
        sel: in std_logic_vector(1 downto 0);
        x: out std_logic
    );
end entity;

architecture structure of x_generator is
    signal count_max: natural;
    signal y: std_logic;
    signal counter: natural;
    signal hold: natural;
begin
    with sel select
        count_max <= 25_000_000 when "00", --2 Hz
                     14_800 when "01", -- 3333 Hz
                     4802 when "10", -- 9996 Hz
                     4750 when others; --10100 Hz (should overflow)
    process(clk)
        variable count: natural := 0;
    begin
        if rising_edge(clk) then
            count := count + 1;
            
            if (count = count_max) then
                y <= '1';
            end if;
            
            if (count = count_max + 200) then
                y <= '0';
                count := 0;
            end if;
        end if;
    end process;
    
    x <= y;
end architecture;