function y = Gorbf(t,t1,t2,A)               %файл функция, которая записывает в массив, например в y значения диктуемые ниже
if t<0
    y=0;
else
    y = A *(exp(-t/t1)-exp(-t/t2));
end
end
