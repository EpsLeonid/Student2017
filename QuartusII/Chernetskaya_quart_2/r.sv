import p::*;
module r (

//------------------------------------------------------------
// входные порты
//------------------------------------------------------------
	input  wire                                  clk,
	input  wire                                  a,
	input  wire                                  b,
   input  wire                                  d,
	input  reg [SIZE_REG-1:0]                    A,
	input  reg [SIZE_REG-1:0]                    B,
	input  reg [SIZE_REG-1:0]                    C,
	

//------------------------------------------------------------
// выходные порты
//------------------------------------------------------------

	output  wire                                 data,
	output  wire                                 out,
	output  reg [SIZE_DATA_OUT-1:0]              DATA_OUT);
    reg [SIZE_DATA_OUT-1:0]                     s ;
    reg [SIZE_REG-1:0]                          c_1 ;

	
//работа по клоку
	always @(posedge clk)
		begin
		data <=a*b;
	end
		always @(posedge clk)
		begin
		out  <=d;
	end
	always @(posedge clk ) 
	begin
		s           <= A*B;
		c_1         <= C ;
		DATA_OUT    <= s+C;
		
	end
endmodule