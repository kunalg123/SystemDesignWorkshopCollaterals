`timescale 1ns / 1ps
module tb_full_adder_sum;
	// Inputs
	reg a, b, c;
	// Outputs
	wire sum;

        // Instantiate the Unit Under Test (UUT)
	fa_sum uut (
		.a(a),
		.b(b),
		.c(c),
		.sum(sum)
	);

	initial begin
	$dumpfile("tb_full_adder_sum.vcd");
	$dumpvars(0,tb_full_adder_sum);
	// Initialize Inputs
	a = 0;
	b = 0;
	c = 0;
	#30 $finish;
	end

always #4 a = ~a;
always #2 b = ~b;
always #1 c = ~c;
endmodule

