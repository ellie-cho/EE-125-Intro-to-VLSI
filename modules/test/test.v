module test(
	input clk, reset,
	input [15:0] input_reg,
	output reg [15:0] sum
);


integer i;
always @(posedge clk or posedge reset) begin
	if (reset) begin
		sum <= 16'b0;
	end 
	else begin
		sum <= input_reg;
	end
end


endmodule