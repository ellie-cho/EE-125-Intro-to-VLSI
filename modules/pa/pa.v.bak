module phase_accumulator
	(input		clk,
	 input [31:0] FCW,
	 output reg [31:0]	phase);

	always @ (posedge clk) begin
			phase <= phase + FCW;
		end
endmodule
