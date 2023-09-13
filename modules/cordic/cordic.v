module cordic 
	#(parameter N = 16)
	(input		clk,
	 input[31:0] A,
					FCW,
	 output reg [N:0]	Xout, 
							Yout,
	 output reg [31:0] phase); // Xout is sine, Yout is cosine
	wire signed [31:0] phase_wire;
	wire signed [N-1:0] Xin, Yin;
	wire signed [N:0] X, Y;

	localparam VALUE = 32000/1.647; // reduce by a factor of 1.647 since thats the gain of the system
	assign Xin = VALUE;
	assign Yin = 1'd0;
	
	phase_accumulator pa(.clk (clk),
							.phase (phase_wire),
							.FCW (FCW));
						
	
	phase_to_amplitude pta(.clock (clk),
								.angle (phase_wire),
								.Xin (Xin), 
								.Yin (Yin), 
								.Xout (X), 
								.Yout (Y));
								
	always @ (posedge clk) begin
		Xout <= X;
		Yout <= Y;
		phase <= phase_wire;
	end
								
endmodule