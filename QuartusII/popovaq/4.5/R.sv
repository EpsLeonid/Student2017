import p::*;  //подключаем параметризацию
module R (

//------------------------------------------------------------
// входные порты
//------------------------------------------------------------
	input  wire                                           clk,
	input  reg [SIZE_REG-1:0]                             a,
	input  reg [SIZE_REG-1:0]                             b,
	input  reg [SIZE_REG-1:0]                             c,
	
	

//------------------------------------------------------------
// выходные порты
//------------------------------------------------------------
	output  reg [SIZE_DATA_OUT-1:0]                     DATA_OUT,
    output  reg [SIZE_DATA_OUT-1:0]                     s,
    output  reg [SIZE_REG-1:0]                          c_1);
	
	
	
    
	always @(posedge clk ) //работа по клоку
	begin
		s           <= a*b;
		c_1         <= c;
		DATA_OUT    <= s+c_1;
		
	end
	
endmodule
	
