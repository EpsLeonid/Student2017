import p::*;
module R (

//------------------------------------------------------------
// Input Ports
//------------------------------------------------------------
	input  wire                                  clk,
	input  reg [SIZE_REG - 1:0]                                 a,
	input  reg [SIZE_REG - 1:0]                                 b,
	input  reg [SIZE_REG - 1:0]                                 c,
	

//------------------------------------------------------------
// Output Ports
//------------------------------------------------------------

	output  reg [SIZE_DATA_OUT - 1:0]  DATA_OUT,
	output  reg [15:0]  s);
	
	always @(posedge clk)
		begin
		s<=a*b;
		DATA_OUT  <=s+c;
	end
endmodule
	
