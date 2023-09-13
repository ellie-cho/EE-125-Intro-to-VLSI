
/* File        : lpf.v
 * Description : Low Pass Filter module for the WMS demodulation of WISTLS.
 *               The following FPGA module implements a single-pole IIR 
 *               low pass filter. The constants of the IIR filter a[] and 
 *               b[] are determined by the MATLAB filter design script called 
 *               "".m in the Sphinx repo. To change the order, pass-band, 
 *              
 * Inputs:  clk         -- The built-in clock of the FPGA (45 MHz)
 *          reset       -- System reset of the low pass filter
 *          enable      -- Active high enable of the low pass filter
 *          input_data  -- Data to be filtered by the low pass filter
 * Outputs: filtered_output -- Filtered data outputted by the low pass filter
 * 
 *
 * Author      : Seunghee (Ellie) Cho
 *
 * Target      : ProASIC3E die: A3PE3000, package: 484 FBGA
 *
 *
 */



module lpf(
  input clk, 
  reset,
  input [23:0] input_data,
  output [23:0] filtered_output, delay_line_0
);

  // Filter coefficients
  parameter integer N = 1;  // Filter order
  parameter integer M = 32;  // Number of bits for filter coefficients
  wire [55:0] b [0:N];  // Feedforward coefficients
  wire [55:0] a [0:N];  // Feedback coefficients


  // Internal signals
  reg [55:0] input_delay_line [0:N];  // Input Delay line
  reg [55:0] output_delay_line [0:N]; // Output Delay line
  reg [111:0] sum_out;

  // Initialize filter coefficients
  
    // TODO: Assign appropriate values to filter coefficients based on desired filter response
    // For example, if you want a low-pass filter with a cutoff frequency of 1kHz and a ripple of 0.1dB,
    // you can design the filter using tools like MATLAB or Octave and then assign the calculated coefficients here.

  assign b[0] =  56'b0000_0000_0000_0000_0000_0000_0000_0000_1000_1001_1010_0000_0010_0111;

  assign b[1] =  56'b0000_0000_0000_0000_0000_0000_0000_0000_1000_1001_1010_0000_0010_0111;
  assign a[1] =  56'b0000_0000_0000_0000_0000_0000_1111_1110_1111_0000_0000_0000_0000_0000;
  assign a[0] = 1;  
  assign filtered_output = sum_out[87:64];
  assign delay_line_0 = input_data;

  // Filter operation
  always @(posedge clk or posedge reset) begin
    if (reset) begin
      // Reset filter state
      input_delay_line[0] = 55'b0;
      output_delay_line[0] = 55'b0;
      input_delay_line[1] = 55'b0;
      output_delay_line[1] = 55'b0;
    end else begin
      // Shift values in delay line
      input_delay_line[1] = input_delay_line[0];
      output_delay_line[1] = output_delay_line[0];
		
      // Update input sample
      input_delay_line[0] = input_data << 32;
      // Perform filter operation
      sum_out = input_delay_line[0] * b[0] + input_delay_line[1] * b[1] + output_delay_line[1] * a[1];      
      // Output filtered data
      output_delay_line[0] = sum_out[87:64];

    end
  end
endmodule
