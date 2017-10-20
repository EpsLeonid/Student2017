%% Parameters 

k=9;
l=5;
M=16; 
y=exponential(x,A,t_1,t_2);
%% Plot graph 
x=-10:1:100; 
s = filtr( y,k,l, M); 
plot(x,s); 
grid on; 
title('График') 
xlabel('x') 
ylabel('y')