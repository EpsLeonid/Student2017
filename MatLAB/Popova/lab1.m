clear

t = 0:1:100; 
A = 1;
t1 = 16;
t2 = 5;
k = 6;
l = 6;
M = 16;

%������� ������ ������
y = [];

%����������� ������ "y" ����������, ������t ������� �� ������� myfunc
for i = t
    y = [y myfunc(i, t1, t2, A)]; 
end
figure
plot(t,y)


%�������� ������ y, ����� ��������� ��� � ������� ����� �������� filtr5varpop 
y = [];

%������������� ������ y
for n = t
    y = [y  filtr5varpop(n, t1, t2, k, l, M, A)];
end

%������ 2� ������

%���������� ������� y �� t
figure 
plot(t,y,'b','LineWidth',2)