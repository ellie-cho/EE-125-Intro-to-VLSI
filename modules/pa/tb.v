`timescale 1 ns/100 ps
module tb;
	reg clock;
	wire [31:0] phase;
	wire [31:0] FCW;
	
	// Start the clock
	always #10 clock = ~clock; //50 MHz clock
	
	initial clock <= 0;
	
	// Assign variables
	assign FCW = 1;
	
	
	// Instantiate cordic design
	
	pa p0 (.clk(clock),
					.FCW (FCW),
					.phase (phase));
					
					
endmodule