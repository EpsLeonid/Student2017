module Dtrigger
(
	input wire d,   //����
	input wire clc, //����
	output reg out); //�����
always @(posedge clc) begin //�� �������������� ������ �����
	out <= d; 
end 
endmodule