`timescale 1ns / 1ps
module tb_pos_level_latch;
        // Inputs
        reg clk, din;
        // Outputs
        wire dout;

        // Instantiate the Unit Under Test (UUT)
	pos_level_latch uut (
		.dout(dout),
		.clk(clk),
		.din(din)
	);
        initial begin
        $dumpfile("tb_pos_level_latch.vcd");
        $dumpvars(0,tb_pos_level_latch);
        // Initialize Inputs
        din = 0;
        clk = 0;
        #50 $finish;
        end

always #2 clk = ~clk;
always #1 din = $random;
endmodule

