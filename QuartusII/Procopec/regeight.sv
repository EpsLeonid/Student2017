module regeight(
input wire clock,
input wire [7:0]a,
input wire [7:0]b,
input wire [7:0]c,
output reg [7:0]data_out
);

always @(posedge clock) begin
 
	data_out <= a * b + c;
 end 
 
 endmodule