`include "cmos_inverter.v"
module tx_gate (out, sel, in);
	output out;
	input sel, in;
	wire sel_bar;

	pmos(out, in, sel_bar);
	nmos(out, in, sel);
	cmos_inverter inv (sel_bar, sel);
	pulldown (out);
endmodule

