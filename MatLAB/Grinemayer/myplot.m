t = -10:100;
x = myfunc(t, 1, 16, 5); % A = 1, T1 = 16, T2 = 5
y = myfilter(x, 8, 5, 16); % k = 8, l = 5, M = 16

%plot(t, x);
plot(t, y);
