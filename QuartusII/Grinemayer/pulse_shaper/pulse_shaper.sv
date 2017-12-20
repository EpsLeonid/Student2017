import filter_params::*;

module pulse_shaper(
	input clk,
	input signed [7:0] signal_in,
	output logic signed [7:0] signal_out);

	logic signed [7:0] signal_window[k+l-1:0] = '{default:0};
	logic signed [15:0] d = 0, m = 0, p = 0, r = 0, s = 0;

	always_ff @(posedge clk) begin
		d <= signal_in - signal_window[l] - signal_window[k] + signal_window[0];
		p <= d + p;
		m <= M * d;
		r <= p + m;
		s <= s + r;

		for (integer i = 0; i < k+l; i++) begin
			signal_window[i] <= i == (k+l-1) ? signal_in : signal_window[i+1];
		end
	end

	assign signal_out = s[15:8];
endmodule
