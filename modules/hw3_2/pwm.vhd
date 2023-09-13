library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all; 

entity pwm is
  generic (
    F_CLK      : natural := 50;      -- Clock frequency in MHz
    T_CLK_PWM  : natural := 100;     -- PWM period in ns
    BITS_DUTY  : natural := 3;
	 MAX_DUTY	: natural := 6
  );
  port (
    clk, rst: in std_logic;
    duty: in  std_logic_vector(BITS_DUTY - 1 downto 0);
    pwm_out: out std_logic
  );
end entity;

architecture PWM_Generator_Architecture of pwm is
  
  signal clk_slow : std_logic;

  constant CLK_DIVIDER : integer := F_CLK * T_CLK_PWM / 1000; -- Clock divider value
  begin
	process (clk) --generating slow clk
		variable count: natural range 0 to CLK_DIVIDER-1 := 0;
	begin
		if rising_edge(clk) then
			
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
	
	
	process (clk_slow, rst, duty)
		variable counter: integer range 0 to MAX_DUTY := 0;
		variable flag : std_logic := '0';
	begin
		if rst = '1' or to_integer(unsigned(duty)) = 0 then
			pwm_out <= '0';
		elsif rising_edge(clk_slow) then
			if counter = 0 then
				pwm_out <= '1';
				counter := counter + 1;
			elsif counter = MAX_DUTY then
				counter := 0;
				if to_integer(unsigned(duty)) > 1 then
					pwm_out <= '1';
				end if;
			elsif counter >= (to_integer(unsigned(duty)) - 1) then
				pwm_out <= '0';
				counter := counter + 1;
			else
				counter := counter + 1;
			end if;
		end if;

	end process;

end architecture;
