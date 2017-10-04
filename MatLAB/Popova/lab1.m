clear

t = 0:1:100; 
A = 1;
t1 = 16;
t2 = 5;
k = 6;
l = 6;
M = 16;

%Заводим пустой массив
y = [];

%Заполненяем массив "y" значениями, которыt берутся из функции myfunc
for i = t
    y = [y myfunc(i, t1, t2, A)]; 
end
figure
plot(t,y)


%Обнуляем массив y, чтобы заполнить его с помощью новой функцией filtr5varpop 
y = [];

%Перезаполняем массив y
for n = t
    y = [y  filtr5varpop(n, t1, t2, k, l, M, A)];
end

%Строим 2й график

%Построение графика y от t
figure 
plot(t,y,'b','LineWidth',2)