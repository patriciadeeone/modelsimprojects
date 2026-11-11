module circuit1 (A,B,C,D,out_a,out_b,out_c,out_d,out_e,out_f,out_g);
	input A,B,C,D;
	output out_a,out_b,out_c,out_d,out_e,out_f,out_g;
    
	wire not_a, not_b, not_c, not_d;
	wire and0, and1, and2, and3, and4, and5, and6, and7, and8, and9, and10, and11, and12, and13, and14;

	not (not_a, A);
	not (not_b, B);
	not (not_c, C);
	not (not_d, D);

	and (and0, not_a, not_b, not_c, D);
	and (and1, not_a, B,not_c, not_d);
	and (and2, not_a, B, not_c, D);
	and (and3, not_a, B, C, not_d);
	and (and4, not_a, B, C, D);
	and (and5, A, not_b, not_c, not_d);
	and (and6, A, not_b, not_c, D);
	and (and7, A, not_b, C, not_d);
	and (and8, A, not_b, C, D);
	and (and9, A, B, not_c, not_d);
	and (and10, A, B, not_c, D);
	and (and11, A, B, C,not_d);
	and (and12, A, B,     C, D);
	and (and13, not_a, not_b, C, not_d);
	and (and14, not_a, not_b, C, D);

	or (out_a, and0, and1, and9, and8);
	or (out_b, and2, and4, and8, and9, and11);
	or (out_c, and13, and9, and11);
	or (out_d, and0, and1, and4, and7, and12);
	or (out_e, and0, and14, and1, and2, and4, and6);
	or (out_f, and0, and13, and14, and4, and10);
	or (out_g, and5, and0, and4, and9);

endmodule
