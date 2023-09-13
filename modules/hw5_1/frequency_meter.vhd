library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
entity frequency_meter is
 generic (
 F_CLK: natural := 1; -- frequency of the clock in Hertz
 F_CLK_PRE: natural := 50_000_000; -- frequency of the predefined board clock
 COUNT_BITS: natural := 4 -- number of bits needed to count to max freq of 9999
                       	-- based on integer(ceil(log2(real(9999 + 1))))
 );
 port (
   x: in std_logic;
   clk: in std_logic;
   ssd3: out std_logic_vector (6 downto 0);
   ssd2: out std_logic_vector (6 downto 0);
   ssd1: out std_logic_vector (6 downto 0);
   ssd0: out std_logic_vector (6 downto 0);
   o_flow: out std_logic);
end entity;
 
architecture clock_domain of frequency_meter is
 constant CLK_MAX: natural := F_CLK_PRE/(F_CLK);
 constant CLK_BITS: natural := integer(ceil(log2(real(CLK_MAX+1))));
  signal ena0: std_logic;
  signal ena1: std_logic;
  signal ena2: std_logic;
  signal ena3: std_logic;
 
 signal fx: unsigned((4*COUNT_BITS)-1 downto 0);
 signal write_clear: std_logic;
 signal clock_count: unsigned(CLK_BITS - 1 downto 0);
 
 signal pulse_count3: unsigned(COUNT_BITS-1 downto 0);
 signal pulse_count2: unsigned(COUNT_BITS-1 downto 0);
 signal pulse_count1: unsigned(COUNT_BITS-1 downto 0);
 signal pulse_count0: unsigned(COUNT_BITS-1 downto 0);
 component pulse_conditioner is
   port (
   	clk: in std_logic;
   	pulse_in: in std_logic;
   	pulse_out: out std_logic);
 end component;
 
 begin
   pulse_cond: pulse_conditioner port map(clk, x, ena0);
   process(clk, write_clear)
   begin
   	if rising_edge(clk) then
       	clock_count <= clock_count + 1;
       	if clock_count = CLK_MAX then
           	clock_count <= (others => '0');
           	write_clear <= '1';
       	elsif clock_count = 0 then
           	write_clear <= '0';
       	end if;
   	end if;
 
   	if falling_edge(clk) then
       	if ena0 = '1' then
          	pulse_count0 <= pulse_count0 + 1;
          	if pulse_count0 = "1010" then
					ena1 <= '1';
					pulse_count0 <= "0000";
          	end if;
 
       	elsif ena1 = '1' then
           	pulse_count1 <= pulse_count1 + 1;
				ena1 <= '0';
           	if pulse_count1 = "1010" then
               	ena2 <= '1';
               	pulse_count1 <= "0000";
           	end if;
 
       	elsif ena2 = '1' then
           	pulse_count2 <= pulse_count2 + 1;
       	ena2 <= '0';
           	if pulse_count2 = "1010" then
               	ena3 <= '1';
               	pulse_count2 <= "0000";
           	end if;
 
       	elsif ena3 = '1' then
           	pulse_count3 <= pulse_count3 + 1;
       	ena3 <= '0';
           	if pulse_count2 = "1010" then
               	pulse_count2 <= "0000";
               	o_flow <= '1';
           	else
               	o_flow <= '0';
           	end if;
     	 
       	elsif write_clear = '1' then
           	pulse_count0 <= (others => '0');
           	pulse_count1 <= (others => '0');
           	pulse_count2 <= (others => '0');
           	pulse_count3 <= (others => '0');
       	end if;
   	end if;
   	if rising_edge(write_clear) then
       	fx <= pulse_count3(COUNT_BITS-1 downto 0) & pulse_count2(COUNT_BITS-1 downto 0) & pulse_count1(COUNT_BITS-1 downto 0) & pulse_count0(COUNT_BITS-1 downto 0) ;
   	end if;
   


    end process;

      with fx(15 downto 12) select
   				 ssd3 <= "1000000" when "0000",
                   	"1111001" when "0001",
                   	"0100100" when "0010",
                   	"0110000" when "0011",
                   	"0011001" when "0100",
                   	"0010010" when "0101",
                   	"0000010" when "0110",
                   	"1111000" when "0111",
                   	"0000000" when "1000",
							"0010000" when "1001",
                   	"0000100" when others;
   			  with fx(11 downto 8) select
   				 ssd2 <= "1000000" when "0000",
                   	"1111001" when "0001",
                   	"0100100" when "0010",
                   	"0110000" when "0011",
                   	"0011001" when "0100",
                   	"0010010" when "0101",
                   	"0000010" when "0110",
                   	"1111000" when "0111",
                   	"0000000" when "1000",
							"0010000" when "1001",
                   	"0000100" when others;
   			  with fx(7 downto 4)select
   				 ssd1 <= "1000000" when "0000",
                   	"1111001" when "0001",
                   	"0100100" when "0010",
                   	"0110000" when "0011",
                   	"0011001" when "0100",
                   	"0010010" when "0101",
                   	"0000010" when "0110",
                   	"1111000" when "0111",
                   	"0000000" when "1000",
							"0010000" when "1001",
                   	"0000100" when others;
   			  with fx(3 downto 0) select
   				 ssd0 <= "1000000" when "0000",
                   	"1111001" when "0001",
                   	"0100100" when "0010",
                   	"0110000" when "0011",
                   	"0011001" when "0100",
                   	"0010010" when "0101",
                   	"0000010" when "0110",
                   	"1111000" when "0111",
                   	"0000000" when "1000",
							"0010000" when "1001",
                   	"0000100" when others;
      
      	 
end architecture;
