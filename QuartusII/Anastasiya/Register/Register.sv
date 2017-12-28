import settings ::*;
module Register (
input reg [SIZE_REG_1-1:0]      A,
input reg [SIZE_REG_1-1:0]      B,
input reg [SIZE_REG_1-1:0]      C,
input wire                      reset, clk,
input  reg                      enable,
output reg [SIZE_REG_1-1:0]     C_1,C_2,
output reg [SIZE_REG_2-1:0]     DATA_OUT, mult, mult_1);

always @ (posedge clk or negedge reset)
begin
	if (!reset)
	begin
	DATA_OUT    <= 0;
	mult        <=0;

	end
	else
	begin
	if (enable)
	begin
	mult         <=A*B;
	C_1          <=C;

	DATA_OUT       <= mult + C_1;
	end
	else;

	end
end
endmodule