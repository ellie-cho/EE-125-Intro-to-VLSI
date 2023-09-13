library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity vga_1 is
	 generic (
		F_CLK: natural := 50000000;  -- Hz
		
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
		
		sw: in std_logic_vector(1 downto 0)
		);	
end entity;

architecture rtl of vga_1 is
	signal Hactive, Vactive, dena: std_logic;
	signal clk_vga, Hsyn, Vsyn: std_logic;
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

	
	---------------------------------------------------------
	-- image 2 generator
		---------------------------------------------------------
	process (clk, R_switch, G_switch, B_switch)
		variable x: natural range 0 to H_HIGH;
		variable y: natural range 0 to V_HIGH;
		variable count: natural := 0;
		variable line_count: natural range 0 to V_HIGH;
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
		 
		if dena then
			case x is
				when 0 to 80 =>
						 R <= (others => R_switch);
						 G <= (others => G_switch);
						 B <= (others => B_switch);
				when 81 to (81+480) =>
					if y >= 0 and y < (480 + 81 - x) then
						R <= (others => R_switch);
						 G <= (others => G_switch);
						 B <= (others => B_switch);
					else
						R <= (others => not R_switch);
						 G <= (others => not G_switch);
						 B <= (others => not B_switch);
					end if;
				when others =>
					R <= (others => not R_switch);
						 G <= (others => not G_switch);
						 B <= (others => not B_switch);
			end case;
		else
			R <= (others => '0');
			G <= (others => '0');
			B <= (others => '0');
		end if;
	end process;
end architecture;
---------------------

