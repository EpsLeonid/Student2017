function x = myfunc(t, A, T1, T2)
	for i = 1:length(t)
		if (t(i) >= 0)
			x(i) = A * (exp(-t(i)/T1) - exp(-t(i)/T2));
		else
			x(i) = 0;
        end
    end
end
