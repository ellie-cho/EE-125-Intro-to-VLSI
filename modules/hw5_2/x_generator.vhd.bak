library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
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
begin
    with sel select
        count_max <= 6 when "00",
                     8 when "01",
                     5 when "10",
                     4 when others;

    process(clk)
        variable count: natural;
    begin
        if rising_edge(clk) then
            count := count + 1;
            
            if (count = count_max) then
                y <= '1';
            end if;
            
            if (count = count_max + 2) then
                y <= '0';
                count := 0;
            end if;
        end if;
    end process;
    
    x <= y;
end architecture;
