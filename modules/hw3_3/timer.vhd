library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity timer is
  generic (
	F_CLK_IN: natural := 50;  -- MHz
	T_CLK_SLOW: natural := 1000000; -- us
	MAX_COUNT: natural:= 60
  );
  port (
    clk_in, rst, run: in std_logic; 
	 ssd0: out std_logic_vector(6 downto 0); --ssd digit 1
	 ssd1: out std_logic_vector(6 downto 0); --ssd digit 2
	 led: out std_logic
  );
end entity timer;

architecture slow_clock_generator of timer is
	constant CLK_DIVIDER: natural := F_CLK_IN*T_CLK_SLOW;
	signal flag: std_logic;
	signal clk_slow: std_logic;
	function int_to_ssd(input: integer) return std_logic_vector is
	begin
		case input is
			when 0 => return "1000000";
			when 1 => return "1111001";
			when 2 => return "0100100";
			when 3 => return "0110000";
			when 4 => return "0011001";
			when 5 => return "0010010";
			when 6 => return "0000010";
			when 7 => return "1111000";
			when 8 => return "0000000";
			when 9 => return "0010000";
			when others => return "1111110";
		end case;
	end function int_to_ssd;
	
begin
	process (clk_in)
		variable count: natural range 0 to CLK_DIVIDER-1 := 0;
	begin

		if rising_edge(clk_in) then
			
			if count = CLK_DIVIDER - 1 then 
				clk_slow <= '1';
				count := count + 1;
			elsif count = CLK_DIVIDER then
				clk_slow <= '0';
				count := 0;
			else
				count := count + 1;
			end if;	
		end if;
	end process;
	
	process (clk_slow, rst, run)
		variable count: integer range 0 to MAX_COUNT := 0;
		variable dig1, dig0: integer range 0 to 9 := 0;
		
	begin
		if rst = '1' then
			flag <= '0';
			count := 0;
			dig1 := 0;
			dig0 := 0;
		elsif run = '1' and rising_edge(clk_slow) then
			if count = MAX_COUNT - 1 then
				count := count + 1;
				dig1 := 6;
				dig0 := 0;
				flag <= '1';
			elsif count = MAX_COUNT then
				count := 0;
				dig1 := 0;
				dig0 := 0;
				flag <= '1';
			elsif flag = '0' then
				count := count + 1;
				if dig0 = 9 then
					dig1 := dig1 + 1;
					dig0 := 0;
				else
					dig0 := dig0 + 1;
				end if;
			end if;		
		end if;
		ssd1 <= int_to_ssd(dig1);
		ssd0 <= int_to_ssd(dig0);
		led <= flag;
		
		
	end process;

end architecture;
