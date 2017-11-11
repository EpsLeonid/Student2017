module Dtrigg
(
input wire d, // информационный ¬ход
input wire clc,// вход синхронизации ( clock )
output reg out// выходной сигнал
);
always @(posedge clc) begin // тут написано "всегда когда  фронт clc положительнный начинать". 
	out <= d; 
end 
endmodule