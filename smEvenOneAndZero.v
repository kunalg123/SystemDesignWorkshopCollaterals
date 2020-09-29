module CountEvenOneZero (
	// Inputs
	input wire data_in,
        input wire clk, 
	input wire reset,
	
	// Outputs	
	output reg out
	);	

// State encoding
localparam s0=2'b00, 
	   s1=2'b01, 
	   s2=2'b10, 
	   s3=2'b11;


// State reg declarations	
reg [1:0] CurrentState; 
reg [1:0] NextState;

// single bit output	
//assign out = (CurrentState == s0) ;

// State transition block
always@(posedge clk) begin
	if (reset) CurrentState <= s0;
	else CurrentState <= NextState;
end

always@ ( * ) begin
	NextState = CurrentState;
	case (CurrentState)
		s0: begin
		    if (data_in == 1) NextState = s1; 
		    if (data_in == 0) NextState = s2;
		    out <= 0;
		end
		
		s1: begin
		    if (data_in == 1) begin NextState = s0; out <= 1; end
		    if (data_in == 0) begin NextState = s3; out <= 0; end
		end
		
		s2: begin
		    if (data_in == 1) begin NextState = s3; out <= 0; end
		    if (data_in == 0) begin NextState = s0; out <= 1; end
		end
		
		s3: begin
		    if (data_in == 1) NextState = s2;
		    if (data_in == 0) NextState = s1;
		    out <= 0;
		end
	endcase
end

endmodule

