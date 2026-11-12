`timescale 1ns/1ps

module circuit2_tb;
	reg x1, x0, y1, y0;
	wire z0, z1, z2, z3;
	circuit2 uut (
		.x1(x1),
		.x0(x0),
		.y1(y1),
		.y0(y0),
		.z0(z0),
		.z1(z1),
		.z2(z2),
		.z3(z3)
	);
	integer i;
	initial begin
		$monitor("Time = %0t, x1 = %b x0 = %b y1 = %b y0 = %b, z0z1z2z3 = %b%b%b%b", $time, x1, x0, y1, y0, z0, z1, z2, z3);
		for (i = 0; i < 16; i = i + 1) begin
		{x1, x0, y1, y0} = i;
		#10;
		end
		$finish;
	end
endmodule

