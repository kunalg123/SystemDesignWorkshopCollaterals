`timescale 1ns / 1ps
module tb_tx_gate;
        // Inputs
	reg sel, in;
        // Outputs
	wire out;

        // Instantiate the Unit Under Test (UUT)
	tx_gate uut (
		.out(out),
		.sel(sel),
		.in(in)
	);	
	initial begin
        $dumpfile("tb_tx_gate.vcd");
        $dumpvars(0,tb_tx_gate);
        // Initialize Inputs
	in = 1;
	sel = 0;
	#20 $finish;
	end

always #2 sel = ~sel;
always #1 in = $random;
endmodule
