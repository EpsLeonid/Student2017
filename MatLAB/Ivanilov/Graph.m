t=1:1:100;          
t1=16; t2=5;    %начальные данные
s=Gorbf(t,t1,t2,1);
plot(t,s)       %строим график горба


function y = Gorbf(t,t1,t2,A)       %функция "горб" задаётся простыми условиями, которая на входе ожидает параметры t1 t2 t A 
if t<0
    y=0;
else
    y = A *(exp(-t/t1)-exp(-t/t2));
end

end

