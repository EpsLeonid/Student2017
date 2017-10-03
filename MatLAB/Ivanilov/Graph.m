t=1:1:100;
t1=16; t2=5;
s=Gorbf(t,t1,t2,1);
plot(t,s)


function y = Gorbf(t,t1,t2,A)
if t<0
    y=0;
else
    y = A *(exp(-t/t1)-exp(-t/t2));
end

end

