function y = exponential(x,A,t_1,t_2) 
%UNTITLED Summary of this function goes here 
% Detailed explanation goes here 
%m=length(x);


x=-10:1:100;
A=1; 
t_1=16; 
t_2=5; 
m=length(x);
for z=1:1:m; 
y(z)=A*(exp(-(x(z))/t_1)-exp(-(x(z))/t_2)); 
if (x(z)<0) 
y(z)=0; 
end 
end 


end

