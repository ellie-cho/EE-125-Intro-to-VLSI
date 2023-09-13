library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity ssd_fun is
   generic(
       F_CLK: natural := 50_000_000  -- clock frequency in Hz
       );
   port(
       clk, rst, start_btn, dir_btn, speed_btn: in std_logic;
       ssd: out std_logic_vector(6 downto 0));
end entity;
 
architecture fsm of ssd_fun is
	constant T2: natural := 10_000_000;
	type ssd_state_type is (one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve);
	type run_state_type is (start, stop);
	type dir_state_type is (cw, ccw);
	type speed_state_type is (two_hundred, one_forty, one_hundred, seventy);
	signal pr_state, nx_state: ssd_state_type;
	signal pr_run_state, nx_run_state: run_state_type;
	signal pr_dir_state, nx_dir_state: dir_state_type;
	signal pr_speed_state, nx_speed_state: speed_state_type;
	signal T1: natural;
	signal t: natural; -- keeps track of time after last ssd state
	signal clear: std_logic;
   begin
	 
 
       -- register for all states
       process(clk, rst)
           begin
               if rst = '1' then
                   pr_run_state <= start;
						 pr_state <= one;
						 pr_dir_state <= cw;
						 pr_speed_state <= two_hundred;
						 t <= 0;
               else
						if rising_edge(clk) then
							if (pr_state /= nx_state) then
								t <= 0;
							
							else 
								t <= t + 1;
							end if;
						
                   pr_run_state <= nx_run_state;
						 pr_state <= nx_state;
						 pr_dir_state <= nx_dir_state;
						 pr_speed_state <= nx_speed_state;
						 end if;
               end if;
					
       end process;  
		 
		 
		 -- start/stop state logic
       process(start_btn)
           begin
					if (rising_edge(start_btn)) then
						case pr_run_state is
							when  start =>
							  nx_run_state <= stop;
							when others =>
							  nx_run_state <= start;
						end case;
					end if;
       end process; 
		 
		 -- cw/ccw state logic
       process(dir_btn)
           begin
					if (rising_edge(dir_btn)) then
						case pr_dir_state is
							when cw =>
							  nx_dir_state <= ccw;
							when others =>
							  nx_dir_state <= cw;
						end case;
					end if;
       end process; 
		 
		 
		 -- speed state logic
       process(speed_btn)
           begin
					if (rising_edge(speed_btn)) then
						case pr_speed_state is
							when two_hundred =>
							  nx_speed_state <= one_forty;
							when one_forty =>
								nx_speed_state <= one_hundred;
							when one_hundred => 
								nx_speed_state <= seventy;
							when others =>
							  nx_speed_state <= two_hundred;
						end case;
					end if;
					
       end process; 
		 
		 
		 
		 -- ssd state logic
       process(all)
           begin
					case pr_state is
						when one =>
							if pr_run_state = start then
								if pr_dir_state = ccw then
									if t >= T1 then
										nx_state <= two;
									else
										nx_state <= one;
									end if;
								else
									if t >= T1 then 
										nx_state <= twelve;
									else
										nx_state <= one;
									end if;
								end if;
							else
								nx_state <= one;
							end if;
						when two =>
							if pr_run_state = start then
								if pr_dir_state = ccw then
									if t >= T2 then
										nx_state <= three;
									else
										nx_state <= two;
									end if;
								else
									if t >= T2 then 
										nx_state <= one;
									else
										nx_state <= two;
									end if;
								end if;
							else
								nx_state <= two;
							end if;
						when three =>
							if pr_run_state = start then
								if pr_dir_state = ccw then
									if t >= T1 then
										nx_state <= four;
									else
										nx_state <= three;
									end if;
								else
									if t >= T1 then 
										nx_state <= two;
									else
										nx_state <= three;
									end if;
								end if;
							else
								nx_state <= three;
							end if;
						when four =>
							if pr_run_state = start then
								if pr_dir_state = ccw then
									if t >= T2 then
										nx_state <= five;
									else
										nx_state <= four;
									end if;
								else
									if t >= T2 then 
										nx_state <= three;
									else
										nx_state <= four;
									end if;
								end if;
							else
								nx_state <= four;
							end if;
						when five =>
							if pr_run_state = start then
								if pr_dir_state = ccw then
									if t >= T1 then
										nx_state <= six;
									else
										nx_state <= five;
									end if;
								else
									if t >= T1 then 
										nx_state <= four;
									else
										nx_state <= five;
									end if;
								end if;
							else
								nx_state <= five;
							end if;
						when six =>
							if pr_run_state = start then
								if pr_dir_state = ccw then
									if t >= T2 then
										nx_state <= seven;
									else
										nx_state <= six;
									end if;
								else
									if t >= T2 then 
										nx_state <= five;
									else
										nx_state <= six;
									end if;
								end if;
							else
								nx_state <= six;
							end if;
						when seven =>
							if pr_run_state = start then
								if pr_dir_state = ccw then
									if t >= T1 then
										nx_state <= eight;
									else
										nx_state <= seven;
									end if;
								else
									if t >= T1 then 
										nx_state <= six;
									else
										nx_state <= seven;
									end if;
								end if;
							else
								nx_state <= seven;
							end if;
						when eight =>
							if pr_run_state = start then
								if pr_dir_state = ccw then
									if t >= T2 then
										nx_state <= nine;
									else
										nx_state <= eight;
									end if;
								else
									if t >= T2 then 
										nx_state <= seven;
									else
										nx_state <= eight;
									end if;
								end if;
							else
								nx_state <= eight;
							end if;
						when nine =>
							if pr_run_state = start then
								if pr_dir_state = ccw then
									if t >= T1 then
										nx_state <= ten;
									else
										nx_state <= nine;
									end if;
								else
									if t >= T1 then 
										nx_state <= eight;
									else
										nx_state <= nine;
									end if;
								end if;
							else
								nx_state <= nine;
							end if;
						when ten =>
							if pr_run_state = start then
								if pr_dir_state = ccw then
									if t >= T2 then
										nx_state <= eleven;
									else
										nx_state <= ten;
									end if;
								else
									if t >= T2 then 
										nx_state <= nine;
									else
										nx_state <= ten;
									end if;
								end if;
							else
								nx_state <= ten;
							end if;
						when eleven =>
							if pr_run_state = start then
								if pr_dir_state = ccw then
									if t >= T1 then
										nx_state <= twelve;
									else
										nx_state <= eleven;
									end if;
								else
									if t >= T1 then 
										nx_state <= ten;
									else
										nx_state <= eleven;
									end if;
								end if;
							else
								nx_state <= eleven;
							end if;
						when twelve =>
							if pr_run_state = start then
								if pr_dir_state = ccw then
									if t >= T2 then
										nx_state <= one;
									else
										nx_state <= twelve;
									end if;
								else
									if t >= T2 then 
										nx_state <= eleven;
									else
										nx_state <= twelve;
									end if;
								end if;
							else
								nx_state <= twelve;
							end if;
						when others =>
							nx_state <= pr_state;
				end case;
				if nx_state /= pr_state then
					clear <= '1';
				end if;
       end process; 
		 
		 
		 
		-- T1 logic
		
		process (all)
		begin
		if (rst = '1') then
			T1 <= 10_000_000; -- (1/50MHz)/200ms
		else
		case pr_speed_state is
			when two_hundred =>
				T1 <= 10_000_000;
			when one_forty =>
				T1 <= 7_000_000;
			when one_hundred =>
				T1 <= 5_000_000;
			when others =>
				T1 <= 3_500_000;
		
		end case;
		 
		end if;
		-- outputs
      case pr_state is
			when one =>
				ssd <=  "1111110";
			when two =>
				ssd <= "1111100";
			when three =>
				ssd <= "1111101";
			when four =>
				ssd <= "1111001";
			when five =>
				ssd <= "1111011";
			when six =>
				ssd <= "1110011";
			when seven =>
				ssd <= "1110111";
			when eight =>
				ssd <= "1100111";
			when nine => 
				ssd <= "1101111";
			when ten =>
				ssd <= "1001111";
			when eleven =>
				ssd <= "1011111";
			when twelve =>
				ssd <= "1011110";
			when others =>
				ssd <= "0000000";
		end case;
	end process;
  end architecture;
  

   				