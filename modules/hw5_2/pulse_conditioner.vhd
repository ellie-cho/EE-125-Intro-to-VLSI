library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity pulse_conditioner is
   port (
       clk: in std_logic;
       pulse_in: in std_logic;
       pulse_out: out std_logic);
end entity;

architecture one_shot of pulse_conditioner is
   signal q0: std_logic;
   signal q1: std_logic;
   signal q2: std_logic;
begin
    process(clk)
    begin
        if rising_edge(clk) then
            q0 <= pulse_in;
            q1 <= q0;
            q2 <= q1;
        end if;
    end process; 
    pulse_out <= q1 and not q2;
end architecture;