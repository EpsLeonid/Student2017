module m (

//------------------------------------------------------------
// входные порты
//------------------------------------------------------------
	input  wire                                  clk,
	input  wire                                  a,
	input  wire                                  b,


//------------------------------------------------------------
// выходные порты
//------------------------------------------------------------

	output  wire  c
);
	
//работа по клоку
	always @(posedge clk)
		begin
		c<=a*b;
	end
endmodule
