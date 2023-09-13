// testbench.v

`timescale 1ns/100ps

module testbench;

// Parameters
parameter integer N = 16;
parameter integer CLK_PERIOD = 50;

// Signals
reg clk, reset, enable;
reg [N-1:0] input_data;
wire [N-1:0] filtered_output, delay_line_0;


// Instantiate DUT (Device Under Test)
lpf dut(
    .clk(clk),
    .reset(reset),
    .enable(enable),
    .input_data(input_data),
    .filtered_output(filtered_output),
	 .delay_line_0 (delay_line_0)
);

// Clock generation
initial
begin
    clk <= 1'b1;
    reset <= 1'b0;
    input_data <= 0;
    enable <= 1;
end


initial
begin
	#(CLK_PERIOD * 10)
		reset = 1;
	#(CLK_PERIOD * 5)
		reset = 0;
	#(CLK_PERIOD * 10)
		input_data = 16'hFFFF;
	#(CLK_PERIOD * 10)
		input_data = 16'b0;


end

always @(clk)
    #(CLK_PERIOD/2) clk <= !clk;



endmodule