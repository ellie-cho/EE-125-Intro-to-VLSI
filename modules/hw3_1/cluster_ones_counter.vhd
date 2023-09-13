library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cluster_ones_counter is
   generic (
      BITS_IN: natural := 8;
      BITS_OUT: natural := 4
   );
   port (
      x: in std_logic_vector(BITS_IN - 1 downto 0);
      y: out std_logic_vector(BITS_OUT - 1 downto 0);
      ssd: out std_logic_vector(6 downto 0)
   );
end entity;

architecture sequential of cluster_ones_counter is
	signal output: std_logic_vector(BITS_OUT - 1 downto 0);
begin
   process (x)
      variable counter: integer;
		variable max: integer;
   begin
      counter := 0;
		max := 0;
      for i in x'range loop
         case x(i) is
            when '1' =>
               counter := counter + 1;
            when others =>
               counter := 0;
         end case;
			if max < counter then
				max := counter;
				end if;
      end loop;

      y <= std_logic_vector(to_unsigned(max, BITS_OUT));
		output <= std_logic_vector(to_unsigned(max, BITS_OUT));
   end process;

   with output select
      ssd <=  "0000001" when "0000",   --0
              "1001111" when "0001",   --1
              "0010010" when "0010",   --2
              "0000110" when "0011",   --3
              "1001100" when "0100",   --4
              "0100100" when "0101",   --5
              "0100000" when "0110",   --6
              "0001111" when "0111",   --7
              "0000000" when "1000",   --8
              "1111110" when others;
end architecture;

