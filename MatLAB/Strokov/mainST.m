clear %������ ������� ��������. ��-��, ��� ����� ��� ���?

%����� ����������
t = -10:1:100; 
A = 1;
t1 = 16;
t2 = 5;
k = 9;
l = 5;
M = 16;

%������� ������ ������
y = [];

%����������� ������ y ����������, ������� �������� �� ��� ������, � ��������
%�� ������� functST
for i = t
    y = [y functST(i, t1, t2, A)]; 
end

%���������� ������� y �� t
plot(t,y,'b','LineWidth',2)

%�������� ������ y, ����� ��������� ��� � ������� �����, �� �� ���� �� �����
%���������� �������� trapfiltST 
y = [];

%������������� ������ y
for n = t
    y = [y trapfiltST(n, t1, t2, k, l, M, A)];
end

%������ 2� ������!
figure
plot(t,y,'b','LineWidth',2)
