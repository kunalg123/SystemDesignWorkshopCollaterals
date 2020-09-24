`timescale 1ns / 1ps
module tb_1bit_full_adder;
	// Inputs
	reg a, b, c;
	// Outputs
	wire sum;
	wire cout;

        // Instantiate the Unit Under Test (UUT)
	fa_1bit uut (
		.a(a),
		.b(b),
		.cin(c),
		.sum(sum),
		.cout(cout)
	);

	initial begin
	$dumpfile("tb_1bit_full_adder.vcd");
	$dumpvars(0,tb_1bit_full_adder);
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

