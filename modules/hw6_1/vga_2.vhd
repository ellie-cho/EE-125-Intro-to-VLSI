library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity vga_2 is
	 generic (
		F_CLK: natural := 50_000_000;  -- Hz
		
		
		-- describes number of clock cycles each portion is on for		
		H_LOW: natural := 96; -- width of the horizontal synchronization pulse
		HBP: natural := 48; -- horizontal back porch
		H_HIGH: natural := 640; -- active line display interval (horizontal resolution of screen)
		HFP: natural := 16; -- horizontal front porch
		V_LOW: natural := 2;	-- width of the verical synchronization pulse
		VBP: natural := 33; -- vertical back porch
		V_HIGH: natural := 480; -- active line display interval (vertical resolution of screen)
		VFP: natural := 10  -- vertical front porch
		);
	 port (
		clk: in std_logic; --50MHz system clock
		R_switch, G_switch, B_switch: in std_logic;
		Hsync, Vsync: out std_logic;
		R, G, B: out std_logic_vector(3 downto 0);
		BLANKn, SYNCn : out std_logic;
		
		key0_n: in std_logic;
		led0, led1: out std_logic;
		temp: out std_logic_vector(31 downto 0);
		
		sw: in std_logic_vector(1 downto 0)
		
		
		);	
end entity;

architecture rtl of vga_2 is
	signal Hactive, Vactive, dena: std_logic;
	signal clk_vga, Hsyn, Vsyn: std_logic;
	signal clk_green, clk_red: std_logic;
begin


	--CIRCUIT 1: CONTROL GENERATOR
	--Static signals for DAC:
	 BLANKn <= '1'; --no blanking
	 SYNCn <= '0'; --no sync on green
	 --Create VGA clock (50MHz -> 25MHz):
	 process (clk)
	 begin
		 if rising_edge(clk) then
			clk_vga <= not clk_vga;
		 end if;
	 end process;
	 
	 --Create horizontal signals:
	process (clk_vga)
		variable Hcount: natural range 0 to H_LOW + HBP + H_HIGH + HFP;
	begin
	 if rising_edge(clk_vga) then
		 Hcount := Hcount + 1;
		 if Hcount = H_LOW then
			Hsyn <= '1';
		 elsif Hcount = H_LOW + HBP then
			Hactive <= '1';
		 elsif Hcount = H_LOW + HBP + H_HIGH then
			Hactive <= '0';
		 elsif Hcount = H_LOW + HBP + H_HIGH + HFP then
			Hsyn <= '0';
			Hcount := 0;
		end if;
	end if;
	end process;
	 Hsync <= Hsyn; --internal signal converted to output

	 
	--Create vertical signals:
	process (Hsyn)
		variable Vcount: natural range 0 to V_LOW + VBP + V_HIGH + VFP;
	begin
		if rising_edge(Hsyn) then
			Vcount := Vcount + 1;
			if Vcount = V_LOW then
				Vsyn <= '1';
			elsif Vcount = V_LOW + VBP then
				Vactive <= '1';
			elsif Vcount = V_LOW + VBP + V_HIGH then
				Vactive <= '0';
			elsif Vcount = V_LOW + VBP + V_HIGH + VFP then
				 Vsyn <= '0';
				 Vcount := 0;
			end if;
		end if;
	end process;
	Vsync <= Vsyn; --not needed for Vsync; done just to match what was done to Hsync


	--Enable display:
	dena <= Hactive and Vactive;


	-- move bar clock
	
	process (clk)
		variable count_g: natural := 0;
		variable count_r: natural := 0;
		variable clk_divider_g, clk_divider_r: natural;
	begin
		-- 	clk_divider = scroll_time (us) / HIGH (pixels) * clk_in (Hz) / 1_000_000 (Hz)
		case sw is
			when "00" =>
				clk_divider_g := (8_000_000 / (V_HIGH)) * (F_CLK/1_000_000);
				clk_divider_r := (8_000_000 / (H_HIGH)) * (F_CLK/1_000_000);
			when "01" => 
				clk_divider_g := (4_000_000 / (V_HIGH)) * (F_CLK/1_000_000);
				clk_divider_r := (4_000_000 / (H_HIGH)) * (F_CLK/1_000_000);
			when "10" => 
				clk_divider_g := F_CLK/2;
				clk_divider_r := F_CLK/2;
			when "11" => 
				clk_divider_g := (2_000_000 / (V_HIGH)) * (F_CLK/1_000_000);
				clk_divider_r := (2_000_000 / (H_HIGH)) * (F_CLK/1_000_000);
		end case;

		
		
		if rising_edge(clk) then
			if count_g < clk_divider_g/2 then
				clk_green <= '1';
			else
				clk_green <= '0';
			end if;

			if count_g < clk_divider_g  then
				count_g := count_g + 1;
			else 
				count_g := 0;
			end if;
					
			if count_r < clk_divider_r/2 then
				clk_red <= '1';
			else
				clk_red <= '0';
			end if;

			if count_r < clk_divider_r  then
				count_r := count_r + 1;
			else 
				count_r := 0;
			end if;
		end if;
	end process;

	led0 <= clk_green;
	led1 <= clk_red;
	
	
	process (clk_green, clk_red)
	begin
	
	end process;
	
		
	---------------------------------------------------------
	-- image 2 generator
		---------------------------------------------------------
	process (all)
	
		variable x: natural range 0 to H_HIGH := 0;
		variable y: natural range 0 to V_HIGH := 0;
		variable count: natural := 0;
		variable first_row_green: natural range 0 to V_HIGH-1 := 0;
		variable first_row_red: natural range 0 to H_HIGH-1 := 0;
		variable g_thickness, r_thickness: natural := 100;
		
	begin
		
			
		if rising_edge(Hsyn) then
			if Vactive then
				y := y + 1;
			else
				y := 0;
			end if;
		end if;

		if rising_edge(clk_vga) then
			if Hactive then
				x := x + 1;
			else
				x := 0;
			end if;
		end if;
		

		if rising_edge(clk_green) then
			if first_row_green < V_HIGH then 
				first_row_green := first_row_green + 1;
			else 
				first_row_green := 0;
			end if;
		end if;
		
		if rising_edge(clk_red) then
			if first_row_red < H_HIGH then 
				first_row_red := first_row_red + 1;
			else 
				first_row_red := 0;
			end if;
		end if;
		
		 
		
		if dena then
			if (first_row_green+g_thickness>V_HIGH) then
				if (y > first_row_green) or (y < first_row_green + g_thickness - V_HIGH) then
					G <= (others => '1');	
				else
					G <= (others => '0');
				end if;
			elsif (y>first_row_green) and (y < first_row_green + g_thickness) then
				G <= (others => '1');
			else
				G <= (others => '0');
			end if;
			
			if (first_row_red+r_thickness>H_HIGH) then
				if (x > first_row_red) or (x < first_row_red + r_thickness - H_HIGH) then
					R <= (others => '1');	
				else
					R <= (others => '0');
				end if;
			elsif (x > first_row_red) and (x < first_row_red + r_thickness) then
				R <= (others => '1');
			else
				R <= (others => '0');
			end if;
			
		else
			R <= (others => '0');
			G <= (others => '0');
			B <= (others => '0');
		end if;
		
		
		temp <= std_logic_vector(to_unsigned(first_row_green, temp'length));
	end process;
end architecture;
---------------------

 


