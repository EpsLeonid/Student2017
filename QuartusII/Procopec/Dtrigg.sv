module Dtrigg
(
input wire d, // �������������� ����
input wire clc,// ���� ������������� ( clock )
output reg out// �������� ������
);
always @(posedge clc) begin // ��� �������� "������ �����  ����� clc �������������� ��������". 
	out <= d; 
end 
endmodule