module fa_1bit (sum, cout, a, b, cin);
	output sum, cout;
	input a, b, cin;

	fa_sum sum_gate (sum, a, b, cin);
	fa_cout cout_gate (cout, a, b, cin);

endmodule


