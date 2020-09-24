`include "1bit_full_adder.v"
`include "full_adder_sum.v"
`include "full_adder_cout.v"
module ripple_carry_adder #(
	parameter WIDTH = 32 
	) (
	 input [WIDTH-1:0] input_a,
	 input [WIDTH-1:0] input_b,
	 input carry_in,
	 output [WIDTH-1:0] final_sum,
	 output carry_out
	);

	wire [WIDTH:0] carry;
	wire [WIDTH-1:0] incr_sum;

	// First full-adder has cin as logic 0
	assign carry_in = 1'b0;
	assign carry[0] = carry_in;
	genvar i;
	generate 
	  for (i=0; i<WIDTH; i=i+1)
	    begin
	      fa_1bit fa_1bit_inst (
		      .sum(incr_sum[i]), 
		      .cout(carry[i+1]), 
		      .a(input_a[i]), 
		      .b(input_b[i]), 
		      .cin(carry[i]) 
	      );
	    end
    	endgenerate  
        
	// Concatenate final_sum
	assign final_sum = {carry[WIDTH-1], incr_sum};
        assign carry_out = carry[WIDTH];
	
endmodule	
