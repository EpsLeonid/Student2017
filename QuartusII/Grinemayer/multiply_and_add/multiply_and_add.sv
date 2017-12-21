import params::*;

module multiply(
	input [INPUT_SIZE-1:0] A, B,
	output logic [OUTPUT_SIZE-1:0] C);

	assign C = A * B;
endmodule

module d_trigger(
	input clk,
	input d,
	output logic out);

	always @(posedge clk) begin
		out <= d;
	end
endmodule

module multiply_and_add(
	input clock,
	input [INPUT_SIZE-1:0] A, B, C,
	output logic [OUTPUT_SIZE-1:0] result);

	
	logic [OUTPUT_SIZE-1:0] sum;
	logic [INPUT_SIZE-1:0] C_d;

	always_ff @(posedge clock) begin
		sum <= A + B;
		C_d <= C;
		result <= sum * C_d;
	end
endmodule




