`timescale 1ns/1ps

module circuit1_tb;
	reg A, B, C, D;
	wire out_a, out_b, out_c, out_d, out_e, out_f, out_g;
	circuit1 uut(
		.A(A),
		.B(B),
		.C(C),
		.D(D),
		.out_a(out_a),
		.out_b(out_b),
		.out_c(out_c),
		.out_d(out_d),
		.out_e(out_e),
		.out_f(out_f),
		.out_g(out_g)
	);
	initial begin
		A = 0; B = 0; C = 0; D = 0;
		$monitor("Time = %0t, A = %b B = %b C = %b D = %b, abcdefg = %b%b%b%b%b%b%b", $time, A, B, C, D, out_a, out_b, out_c, out_d, out_e, out_f, out_g);
		{A, B, C, D} = 4'h0; #10;
		{A, B, C, D} = 4'h1; #10;
		{A, B, C, D} = 4'h2; #10;
		{A, B, C, D} = 4'h3; #10;
		{A, B, C, D} = 4'h4; #10;
		{A, B, C, D} = 4'h5; #10;
		{A, B, C, D} = 4'h6; #10;
		{A, B, C, D} = 4'h7; #10;
		{A, B, C, D} = 4'h8; #10;
		{A, B, C, D} = 4'h9; #10;
		{A, B, C, D} = 4'hA; #10;
		{A, B, C, D} = 4'hB; #10;
		{A, B, C, D} = 4'hC; #10;
		{A, B, C, D} = 4'hD; #10;
		{A, B, C, D} = 4'hE; #10;
		{A, B, C, D} = 4'hF; #10;
		$finish;
	end
endmodule


