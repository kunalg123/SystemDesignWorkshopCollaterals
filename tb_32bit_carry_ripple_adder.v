`timescale 1ns / 1ps
module tb_32bit_carry_ripple_adder;
	parameter N = 32;
	// Inputs
	reg [N-1:0] input_a = 0;
	reg [N-1:0] input_b = 0;
	reg carry_in = 0;
	// Outputs
	wire [N-1:0] final_sum;
	wire carry_out;

        // Instantiate the Unit Under Test (UUT)
	ripple_carry_adder #(
		.WIDTH(N)
		) uut (
		.input_a(input_a),
		.input_b(input_b),
		.carry_in(carry_in),
		.final_sum(final_sum),
		.carry_out(carry_out)
	);

	initial begin
	$dumpfile("tb_32bit_carry_ripple_adder.vcd");
	$dumpvars(0,tb_32bit_carry_ripple_adder);
	#30 $finish;
	end
always #1 input_a = $random; 
always #2 input_b = $random;
endmodule

