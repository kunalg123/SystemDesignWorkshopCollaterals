module fa_sum (sum, a, b, c);
	output sum;
	input a, b, c;

	xor sum_gate (sum, a, b, c);
endmodule

