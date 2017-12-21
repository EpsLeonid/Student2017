import package_settings::*;

module v6_filter

(    input wire clk, 
     input wire reset, 
     input wire [SIZE_ADC_DATA - 1:0] input_data, 
     output reg [SIZE_ADC_DATA * 2 + 2:0] output_data
);
import v6_parametery_2::*;
  reg signed [SIZE_ADC_DATA * 2 + 2:0] input_signal [size:0];
  reg signed [SIZE_ADC_DATA * 2 + 2:0] d1_d [size:0],d1_n, dk_n;
  reg signed [SIZE_ADC_DATA * 2 + 2:0] dk, d1, p, s, q, M1, M2;
  
always @ (posedge clk or negedge reset)
 begin
  if (!reset)
   begin
	dk <= 0;
	d1 <= 0;
	p <= 0;
    	q <= 0;
	s <= 0;
	dk_n <= 0;
	d1_n <= 0;
	for (integer n = 0; n <= size; n++)
			begin
				input_signal[n] <= 0;
				d1_d [n] <= 0;
			end
    output_data <= 0;
   end

  else
   begin
	input_signal[0] <= input_data;
	for (integer n = 1; n <= size; n++)
			begin
				input_signal[n] <= input_signal[n - 1];
			end
	dk <= input_signal[0] - input_signal[k];
	d1 <= input_signal[0] - input_signal[1];
	d1_d[0] <= d1;
	for (integer n = 1; n <= l-1; n++) 
			begin
				d1_d[n]	<= d1_d[n - 1];
			end
	dk_n = dk;
	d1_n = k * d1_d[l - 1];
	p = p + dk_n - d1_n;
	M2 = m2 * p;
	q <= q + M2;
	M1 = m1 * p;
	s = s + q + M1;
	output_data = s >>> 8;
   end
 end
endmodule					