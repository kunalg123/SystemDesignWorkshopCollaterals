module nand2 (Y, A, B);
	output Y;
	input A, B;
	supply0 GND;
	supply1 PWR;

	pmos(Y, PWR, A);
      	pmos(Y, PWR, B);
	nmos(Y, w1, A);
	nmos(w1, GND, B);
endmodule
