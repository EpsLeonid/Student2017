
%% Parameters 

A=1; 

t_1=16; 
t_2=5; 
k=9;
l=5;
M=16;

%% Plot graph 
x=-10:1:100; 
 y=exponential(x,A,t_1,t_2); 
% plot(x,y); 
%  grid on; 
%  title('График') 
%  xlabel('x') 
%  ylabel('y')

 s=filtr(y,k,l,M);
 plot(x, max(y)/ max(s) * s, x, y);
 grid on; 
 title('График') 
 xlabel('x') 
 ylabel('dlk')



