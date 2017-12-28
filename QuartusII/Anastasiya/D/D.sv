module D (
	input wire clk,
	input wire d,
	output wire out);

always @ (posedge clk)
	begin
		out <= d;
	end 
endmodule