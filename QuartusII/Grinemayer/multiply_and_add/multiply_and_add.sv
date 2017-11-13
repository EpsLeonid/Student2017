import params::*;

module multiply_and_add(
	input clock,
	input [INPUT_SIZE-1:0] A, B, C,
	output logic [OUTPUT_SIZE-1:0] result);

	logic [$clog2(STREAMS)-1:0] counter = 0;
	logic [STREAMS-1:0] divided_clock = 0;
	logic [OUTPUT_SIZE-1:0] results [STREAMS-1:0];

	generate
	genvar i;
	for (i = 0; i < STREAMS; i++) begin : mult_add8
		mult_add8 mult_add(
			.clock0(divided_clock[i]),
			.dataa_0(A),
			.datab_0(B),
			.dataa_1(C),
			.datab_1(1),
			.result(results[i]));
	end
	endgenerate

	always_ff @(posedge clock) begin
		if (counter < STREAMS-1) counter <= counter + 1;
		else counter <= 0;

		if (counter < STREAMS/2) begin
			divided_clock[0] <= 1;
		end
		else begin
			divided_clock[0] <= 0;
		end

		for (int i = 1; i < STREAMS; i++) begin
			if (divided_clock[i-1] == 1) begin
				divided_clock[i] <= 1;
			end
			else begin
				divided_clock[i] <= 0;
			end
		end

		result <= results[counter];
	end
endmodule
