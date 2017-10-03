
t=-10:1:100;
t1=16; t2=5; A=1;
k=5; l=5; M=16;   

y=[];
for i=t
     
    y=[y Gorbf(i,t1,t2,A)]
end
figure
plot(t,y)

y=[];
for n=t
    y=[y TreFil(n,t1,t2,k,l,M,A)]
end
    figure
plot(t,y)
     