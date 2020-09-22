`timescale 1ns / 1ps
module tb_2_input_nand_gate;
        // Inputs
	reg A, B;
        // Outputs
	wire Y;

        // Instantiate the Unit Under Test (UUT)
	nand2 uut (
		.A(A),
		.B(B),
		.Y(Y)
	);
	
	initial begin
	$dumpfile("tb_2_input_nand_gate.vcd");
	$dumpvars(0,tb_2_input_nand_gate);
	// Initialize Inputs
	A = 0;
	B = 0;
	#20 $finish;
	end

always #2 A = ~A;
always #1 B = ~B;
endmodule

