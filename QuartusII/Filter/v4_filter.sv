<<<<<<< .mine
import package_settings::*;

||||||| .r87
import v4_parameters::*;
import package_settings::*;

=======
>>>>>>> .r93
module v4_filter
(
  input wire clk,
  input wire reset,
  input wire [SIZE_ADC_DATA - 1: 0] input_data,
  output reg [SIZE_FILTER_DATA - 1 :0] output_data
);
<<<<<<< .mine
import v4_parameters::*;
||||||| .r87

=======
import v4_parameters::*;

>>>>>>> .r93
reg  [SIZE_FILTER_DATA * 2 + 2 :0] signal[0:N];
reg  [SIZE_FILTER_DATA * 2 + 2 :0] sum1, sum2, sum, dkl, Mdkl, p, r, s;

always @ (posedge clk) 
begin
	if (reset == 0)
		begin 
		dkl <= 0;
		Mdkl <= 0;
		p <= 0;
		r <= 0;
		s <= 0;	
		for (integer i = 0; i<= N; i++)
			begin
				signal[i] <= 0;
			end
		output_data <= 0;
		end
		
	else
		begin
			signal[0] <= input_data;
			for (integer i = 1; i <= N; i++)
				begin
					signal[i] <= signal[i-1];
				end
			dkl	<= signal[N] - signal[N-k] - signal[N-l] + signal[N-k-l];
			sum1 <= signal[N] - signal[N-k];
			sum2 <= signal[N-k-l] - signal[N-l];
			sum <= sum1 + sum2;
			Mdkl <= sum * M;
			p <= p + dkl;
			r <= p + Mdkl;
			s <= s + r;
			output_data <= s >>> 7;
		end
end

endmodule	


