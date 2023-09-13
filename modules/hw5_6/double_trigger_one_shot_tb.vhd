library ieee;
use ieee.std_logic_1164.all;

entity double_trigger_one_shot_TB is
end entity double_trigger_one_shot_TB;

architecture Behavioral of double_trigger_one_shot_TB is
    component double_trigger_one_shot
			port (
        clk      : in  std_logic;
        x1  : in  std_logic;
        x2    : in  std_logic;
        y : out std_logic
    );
    end component double_trigger_one_shot;
    
    -- Testbench signals
    signal clk_tb      : std_logic := '0';
    signal x1_tb  : std_logic := '0';
    signal x2_tb    : std_logic := '0';
    signal y_tb : std_logic;
    
    constant clk_period : time := 10 ns; 
    
begin
    -- Instantiate the DUT (Device Under Test)
    dut: double_trigger_one_shot
        port map (
            clk => clk_tb,
            x1  => x1_tb,
            x2  => x2_tb,
            y   => y_tb
        );
        
    -- Clock process
    clk_process: process
    begin
        while now < 500 ns loop -- Adjust the simulation time as needed
            clk_tb <= '0';
            wait for clk_period / 2;
            clk_tb <= '1';
            wait for clk_period / 2;
        end loop;
        wait;
    end process clk_process;
    
    -- Stimulus process
    stimulus_process: process
    begin
		  wait for clk_period;
        x1_tb <= '1';
		  x2_tb <= '1';
        wait for (clk_period * 6);
		  x1_tb <= '0';
		  
		  
		  wait for (clk_period * 2);
		  x2_tb <= '0';
        
        wait for (clk_period * 2);
		  x1_tb <= '1';
        
		  wait for (clk_period);
		  x2_tb <= '1';
		  
		  wait for (clk_period *3);
		  
        x2_tb <= '0';
		  x1_tb <= '0';
		  
		  wait for (clk_period);
		  x2_tb <= '1';
		  x1_tb <= '1';
		  
		  
		  wait for (clk_period);
		  
		  x2_tb <= '0';
		  x1_tb <= '0';
		  
		  wait for (clk_period);
		  
		  x2_tb <= '1';
		  
		  wait for (clk_period);
		  
		  x1_tb <= '1';
		  
		  wait for (clk_period * 3);
		  
		  x2_tb <= '0';
		  x1_tb <= '0';
		  
		  wait for (clk_period);
		  
		  x1_tb <= '1';
		  
		  wait for (clk_period);
		  
		  x2_tb <= '1';
		  
		  wait for (clk_period);
		  x1_tb <= '0';
		  
		  wait for (clk_period);
		  x1_tb <= '1';
		  
		  wait for (clk_period * 3);
			x2_tb <= '0';
		  wait for (clk_period);
		  x2_tb <= '1';
		  wait for (clk_period*2);
		  x1_tb <= '0';
		  wait for (clk_period);
		  x2_tb <= '0';
		  
        wait;
    end process stimulus_process;

    
end architecture Behavioral;
