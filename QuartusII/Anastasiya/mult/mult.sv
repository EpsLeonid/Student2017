module mult (
input wire clk,
input wire A,
input wire B,
output wire C
);

always @ (posedge clk )
begin
C  <= A * B;
end
endmodule