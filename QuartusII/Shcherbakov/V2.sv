import param_P::P;   //Параметр P

module V2				//задание 2 (пунктры 2 3 4 5 6)
(
input wire		a, 	//пункт 2
input wire		b,
output wire		c,

input wire[P-1:0]		AA,	//пункт 4 5
input wire[P-1:0]		BB,
input wire[P-1:0]		CC,
output reg [(P*2)-1:0]		data_out,

input wire        	d,		//пункт 3
input wire           clk,
output reg         	out
);

reg [(P*2)-1:0] mul;			//регистр для умножения
reg [(P*2)-1:0] CC_reg;		//регистр для С

assign c=a*b;					//умножение
//////////////////
always@(posedge clk)			//дтриггер 
begin: TASK3
	out <= d;					//записать на выход состояние провода D
end
/////////////////////
always@(posedge clk)			//пункт 4 5 с параметром Р
begin: TASK4
	begin
		mul <= AA * BB;		//умножение А на В
		CC_reg <= CC;			//запись С в регистр
		data_out	<= mul + CC_reg;		//сложение С и А*В и запись в выходной регистр
	end
end
endmodule                              