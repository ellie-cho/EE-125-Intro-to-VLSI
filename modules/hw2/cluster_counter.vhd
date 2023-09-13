library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity cluster_counter is
   generic (
       BITS_IN: natural := 8;
       BITS_OUT: natural := 4); --integer(ceil(log2(real(BITS_IN+1)))));
   port (
       x: in std_logic_vector(0 to BITS_IN - 1);
       y: out std_logic_vector(BITS_OUT - 1 downto 0);
       ssd: out std_logic_vector(0 to 6)); 
end entity;
 
architecture dataflow of cluster_counter is
	type integer_array is array (0 to BITS_IN) of integer range 0 to BITS_IN;
	signal internal: integer_array; 
	signal max_ones: integer_array;
	
   begin
        internal(0) <= 1 when x(0) = '1' else 0;
		  max_ones(0) <= 1 when x(0) = '1' else 0;
        gen : for i in 1 to BITS_IN-1 generate
        internal(i) <= internal(i-1) + 1 when x(i) = '1' else 0;
		  max_ones(i) <= internal(i-1) when x(i) = '0' and internal(i-1) > max_ones(i-1) else max_ones(i-1);
        end generate;
		  internal(BITS_IN) <= internal(BITS_IN - 1);
		  max_ones(BITS_IN) <= internal(BITS_IN) when internal(BITS_IN) > max_ones(BITS_IN-1) else max_ones(BITS_IN-1);
	y <= std_logic_vector(to_unsigned(max_ones(BITS_IN), BITS_OUT));
	
	with max_ones(BITS_IN) select
		ssd <= 	"0000001" when 0,       --0
			"1001111" when 1, 	--1
			"0010010" when 2, 	--2
			"0000110" when 3, 	--3
			"1001100" when 4, 	--4
			"0100100" when 5, 	--5
			"0100000" when 6, 	--6
			"0001111" when 7,        --7
			"0000000" when 8,        --8
			"1111110" when others;  
end architecture;
