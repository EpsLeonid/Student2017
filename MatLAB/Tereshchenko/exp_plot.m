
%% Parameters 

A=1; 

t_1=16; 
t_2=5; 



%% Plot graph 
x=-10:1:100; 
 y=exponential(x,A,t_1,t_2); 
 plot(x,y); 
  grid on; 
  title('График') 
  xlabel('x') 
 ylabel('y')

 


