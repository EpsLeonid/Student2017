import parameters::*;

module firstproject
(
input wire A,
input wire B,
output wire C
);
 
assign C = A * B;
endmodule

module D_trigger
(
input wire D,
input wire C,
output reg out
);

always @ (posedge C)
begin
	out = D;
end 

endmodule

module eight_registr
(
input wire [reg_in:0]A,
input wire [reg_in:0]B,
input wire [reg_in:0]C,
input wire clk,

output reg [reg_out:0]DATA_OUT
);

reg [reg_out:0]multy;
reg [reg_out:0]sum;
reg [reg_out:0]sum_2;
always@(posedge clk) 
begin
	multy <= A * B;
	sum <= C;
	sum_2 <= sum;
	DATA_OUT <= multy + sum_2;
end
endmodule 