module lpf_2(
	input clk, reset,
	input [15:0] input_data,
	output reg [15:0] filtered_output
);
