
import parmetry::*;

module poperol( //������� ������ � ��� �������� ���� � �� �����������
input  clock,
input wire [sizeIn-1:0]A,
input wire [sizeIn-1:0]B,
input wire [sizeIn-1:0]C,
output reg [sizeOut-1:0]Umm,
output reg [sizeOut-1:0]data_out 

);

//reg [sizeOut-1:0]A;
//reg [sizeOut-1:0]B;
//reg [sizeOut-1:0]C;
//reg [sizeOut-1:0]t;
reg [sizeIn-1:0]m;
reg [sizeIn-1:0]w;
 always @(posedge clock)
  begin  //always ������ ������. ��� ��������
 
	//A <= n_A;
	//B <= n_B;
	//C <= n_C;
	
	Umm <= A * B;
	//t <= Umm;
	m <= C;
	w <= m;
	data_out<=Umm+w;
 end 
 
 endmodule