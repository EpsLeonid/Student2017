import package_settings::*;
import v5_parameters::*;//параметризация

module v5_filter(   //входы и выходы
	input clk,
	input reset,
	input [SIZE_ADC_DATA-1:0] input_data,
	output [SIZE_FILTER_DATA-1:0] output_data);



	logic [SIZE_ADC_DATA-1:0] signal_window[k+l-1:0] = '{default:0};
	logic [SIZE_FILTER_DATA-1:0] d = 0, m = 0, p = 0, r = 0, s = 0;

	always_ff @(posedge clk) begin //работа по клоку
		if (reset) begin
			d <= input_data - signal_window[l] - signal_window[k] + signal_window[0]; //фильтр
			p <= d + p;
			m <= M * d;
			r <= p + m;
			s <= s + r;

			for (integer i = 0; i < k+l; i++) begin
				signal_window[i] <= i == (k+l-1) ? input_data : signal_window[i+1];
			end
		end
		else begin
			d <= 0;
			p <= 0;
			m <= 0;
			r <= 0;
			s <= 0;

			for (integer i = 0; i < k+l; i++) begin
				signal_window[i] <= 0;
			end
		end
	end

	assign output_data = s >>> 7;
endmodule
