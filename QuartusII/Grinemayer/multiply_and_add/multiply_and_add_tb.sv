`timescale 1 ns / 10 ps

module multiply_and_add_tb();
	parameter PERIOD = 5;

	logic clock = 0;	
	always #(PERIOD/2.0) clock = ~clock;

	logic [7:0] A, B, C;
	logic [16:0] result;

	multiply_and_add UUT(.*);
	
	initial begin
		for (int i = 0; i < 20; i++) begin
			A = $urandom_range(10);
			B = $urandom_range(10);
			C = $urandom_range(10);
			#PERIOD;
		end

		#50 $finish;
	end
endmodule
