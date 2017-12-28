import settings ::*;
module Register (
input reg [SIZE_REG_in-1:0]		A,
input reg [SIZE_REG_in-1:0]		B,
input reg [SIZE_REG_in-1:0]		C,
input wire						clk,
output reg [SIZE_REG_out-1:0]	DATA_OUT);

reg [SIZE_REG_in-1:0]			C_reg;
reg [SIZE_REG_out-1:0]			mult;

always @ (posedge clk)
begin
	mult		<= A*B;
	C_reg		<= C;
	DATA_OUT	<= mult + C_reg;
end
endmodule