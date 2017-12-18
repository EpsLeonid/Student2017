function s = myfilter(x, k, l, M)
	% For n < 0 p(n), s(n) and v(n) must be zero.
	% In this case, n < 0 corresponds to n < k+l+1.
	p(k+l) = 0;
	s(k+l) = 0;
	v = [zeros(1, k+l), x];

	for n = k+l+1:length(x)+k+l
		d_kl(n) = v(n) - v(n-k) - v(n-l) + v(n-k-l);
		p(n) = p(n-1) + d_kl(n);
		r(n) = p(n) + (M * d_kl(n));
		s(n) = s(n-1) + r(n);
    end

	s = s((k+l+1):(length(x)+k+l));
end
