`timescale 1ns / 1ps
module tb_CountEvenOneZero;
	// Inputs
	reg data_in, clk, reset;
	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	CountEvenOneZero uut (
		.data_in(data_in),
		.clk(clk),
		.reset(reset),
		.out(out)
	);

	initial begin
        $dumpfile("tb_CountEvenOneZero.vcd");
        $dumpvars(0,tb_CountEvenOneZero);
	// Initialize Inputs
	data_in = 1;
	clk = 0;
	reset = 1;
	#4 reset = 0;
	#40 $finish;
	end

always #2 clk = ~clk;

always@(posedge clk) begin
       	data_in = $random;
end
endmodule

