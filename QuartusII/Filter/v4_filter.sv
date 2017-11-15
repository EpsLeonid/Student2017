import v4_parameters::*;
import package_settings::*;

module v4_filter
(
  input wire clk,
  input wire reset,
  input wire [SIZE_ADC_DATA - 1: 0] input_data,
  output reg [SIZE_FILTER_DATA - 1 :0] output_data
);

reg  [SIZE_FILTER_DATA - 1 :0] signal[14:0];
reg  [SIZE_FILTER_DATA - 1 :0] dkl, Mdkl, p, r, s;

always @ (posedge clk) 
begin
	if (reset == 0)
		begin 
		dkl <= 0;
		Mdkl <= 0;
		p <= 0;
		r <= 0;
		s <= 0;	
		for (integer i = 0; i<=SIZE_FILTER_DATA - 1; i++)
			begin
				signal[i] <= 0;
			end
		output_data <= 0;
		end
		
	else
		begin
			signal[0] <= input_data;
			for (integer i = 1; i<=SIZE_FILTER_DATA - 1; i++)
				begin
					signal[i] <= signal[i-1];
				end
			dkl	<= signal[0] - signal[k] + signal[l] - signal[k+l];
			Mdkl <= dkl * M;
			p <= p + dkl;
			r <= p + Mdkl;
			s <= s + r;
			output_data <= s;
		end
end

endmodule	


