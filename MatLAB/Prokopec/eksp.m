function [y] = eksp( A,t_1,t_2,t ) % ������� � �������� �����������  'A,t_1,t_2,t' � �������� 'y'
  t = 0:1:100; % �������� �������
    if t < 0 % ������� ����������� ������
    y = 0;
    else    
    y = A * (exp(-t / t_1) - exp(-t / t_2)); % ������� ������ � ������� �����������
    end

% plot(t,y)
end