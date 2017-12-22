module Dtrigger
(
	input wire d,   //вход
	input wire clc, //клок
	output reg out); //выход
always @(posedge clc) begin //по положительному фронту клока
	out <= d; 
end 
endmodule