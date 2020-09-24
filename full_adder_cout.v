module fa_cout (cout, a, b, c);
	output cout;
	input a, b, c;
	wire ab, bc, ac;

	and ab_gate (ab, a, b);
	and bc_gate (bc, b, c);
	and ac_gate (ac, a, c);
	or cout_gate (cout, ab, bc, ac);
endmodule
