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
        count_max <= 25_000_000 when "00",
                     2_500_000 when "01",
                     250_000 when "10",
                     25_000 when others;

    process(clk)
        variable count: natural;
    begin
        if rising_edge(clk) then
            count := count + 1;
            
            if (count = count_max-200) then
                y <= '1';
            end if;
            
            if (count = count_max) then
                y <= '0';
                count := 0;
            end if;
        end if;
    end process;
    
    x <= y;
end architecture;
