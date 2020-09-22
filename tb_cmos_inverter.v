`timescale 1ns / 1ps
module tb_cmos_inverter;
	// Inputs
	reg inv_in;
        // Outputs
	wire inv_out;

	// Instantiate the Unit Under Test (UUT)
	cmos_inverter uut (
		.inv_in(inv_in),
		.inv_out(inv_out)
	);
	initial begin
	$dumpfile("tb_cmos_inverter.vcd");
	$dumpvars(0,tb_cmos_inverter);
	// Initialize Inputs
	inv_in = 0;
	#8 $finish;
	end
always #2 inv_in = ~inv_in;
endmodule

