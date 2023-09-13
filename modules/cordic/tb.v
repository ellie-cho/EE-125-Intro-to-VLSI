`timescale 1 ns/100 ps
module tb;
	reg clock;
	wire signed [16:0] my_sine, my_cosine;
	wire A;
	wire [31:0] phase;
	wire [31:0] FCW;
	
	// Start the clock
	always #10 clock = ~clock; //500 MHz clock
	
	initial clock <= 0;
	
	// Assign variables
	assign A = 1;
	assign FCW = 100000;
	
	
	// Instantiate cordic design
	
	cordic c0 (.clk(clock),
					.A (A),
					.FCW (FCW),
				   .Xout (my_cosine),
					.Yout (my_sine),
					.phase (phase));
					
					
endmodule