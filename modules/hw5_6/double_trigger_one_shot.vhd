library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity double_trigger_one_shot is
    port (
        clk      : in  std_logic;
        x1  : in  std_logic;
        x2    : in  std_logic;
        y : out std_logic
    );
end entity double_trigger_one_shot;

architecture Behavioral of double_trigger_one_shot is
    signal pr_state : integer range 0 to 3 := 0;
	 signal nx_state : integer range 0 to 3;
	 
begin
    process (all)
    begin
        if rising_edge(clk) then
            pr_state <= nx_state;
			end if;
			case pr_state is
				when 0 =>
					y <= '0';
					if x1 = '1' and x2 = '0' then 
						nx_state <= 2;
						y <= '0';
					elsif x1 = '0' and x2 = '1' then
						nx_state <= 1;
					elsif x1 = '1' and x2 = '1' then
						nx_state <= 3;
					else
						nx_state <= 0;
					end if;
				when 1 =>
					if x1 = '1' and x2 = '1' then 
						nx_state <= 3;
						y <= '0';
					elsif x1 = '1' and x2 = '0' then
						nx_state <= 2;
						y <= '0';
					elsif x1 = '0' and x2 = '0' then
						nx_state <= 0;
						y <= '0';
					else
						nx_state <= 1;
						y <= '0';
					end if;
				when 2 => 
					if x1 = '1' then
						nx_state <= 2;
						y <= '0';
					else
						nx_state <= 0;
						y <= '0';
					end if;
				when 3 =>
					if x1 = '0' and x2 = '0' then
						nx_state <= 0;
						y <= '1';
					elsif x1 = '0' and x2 = '1' then
						nx_state <= 1;
						y <= '1';
					elsif x1 = '1' and x2 = '0' then
						nx_state <= 2;
						y <= '0';
					else
						nx_state <= 3;
						y <= '0';
					end if;
		
			end case;

    end process;

end architecture Behavioral;
