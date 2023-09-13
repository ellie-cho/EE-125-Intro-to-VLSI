module peak_detection #(
    parameter DATA_IN_BITS = 16,
    parameter LEN = 3 // # of data points to look at at a time 
) (
    input wire [DATA_IN_BITS-1 : 0] input_data,
    input wire clk, 
    input wire reset,
    output reg [DATA_IN_BITS-1 : 0] output_data 
);


localparam [1:0] // 3 states for Moore state machine
    increasing = 2'b00,
    peak = 2'b01, 
    decreasing = 2'b10;

integer i; // to be used in for loops

// Internal signals
reg [DATA_IN_BITS-1 : 0] input_reg [0:LEN-1];
reg [1:0] stateMoore_reg, stateMoore_next;




initial begin
    
    for (i = 0; i < LEN; i = i + 1) begin
        input_reg[i] = 0;
    end
	 output_data = 0;
    stateMoore_reg = 2'b10;
    stateMoore_next = 2'b10;
end



//update the state machines
always @(posedge clk, posedge reset)
begin
    if(reset) // go to state "decreasing" if reset
        begin
        stateMoore_reg = decreasing;
		  for (i = 0; i < LEN; i = i + 1) begin
        input_reg[i] = 0;
        end
	 end
    else // otherwise update the states
        begin
        stateMoore_reg = stateMoore_next;
		  input_reg[2] = input_reg[1];
		  input_reg[1] = input_reg[0];
        input_reg[0] = input_data;
		  end
end



always @(stateMoore_reg, input_reg)
begin
     // store current state as next
    stateMoore_next = stateMoore_reg; // required: when no case statement is satisfied
	 output_data = 0;
        case(stateMoore_reg)
        increasing: // if state is increasing,
            begin
            if(input_data < input_reg[0]) // and comp is 0
                stateMoore_next = peak; // then go to state peak
            end
        peak:
            begin
                output_data = input_reg[1];
                if(input_data > input_reg[0]) // if increasing
                    stateMoore_next = increasing; // go to state increasing
                else    
                    stateMoore_next = decreasing; // else go to state decreasing
            end
        decreasing: 
            begin
            output_data = 0;
            if(input_data > input_reg[0]) //if comp is 1
                stateMoore_next = increasing; // then go to state increasing 
            end
			default:	begin
				output_data = 0;
				stateMoore_next = decreasing;
			end
        endcase        
end


endmodule