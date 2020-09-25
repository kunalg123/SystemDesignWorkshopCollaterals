`include "tx_gate.v"
module pos_level_latch (dout, din, clk);
	output dout;
	input din, clk;
	wire clk_bar, w1_bar;
	wire tg1_w1, tg2_w1;

	tx_gate tg1(tg1_w1, clk, din);
	cmos_inverter inv1(clk_bar, clk);
	tx_gate tg2(tg2_w1, clk_bar, dout);
	cmos_inverter inv2(w1_bar, w1);
	cmos_inverter inv3(dout, w1_bar);
	or(w1, tg1_w1, tg2_w1);
endmodule

