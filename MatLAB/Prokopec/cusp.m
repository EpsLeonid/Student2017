function [s] = cusp(y, l, k, m_1, m_2) % ������z �������
N = length(y); % ������� ���������� �������

for i = 1:N; % �������� ���������� � ����� i=1
    
    d_k(i) = y(i); 
    d_1(i) = y(i);  % �������� ���������� � ���������� ������� �����������
 if i > k  
     
     d_k(i) = y(i) - y(i - k); 
 end
 
 if i > 1
     
     d_1(i) = y(i) - y(i - 1);
 end
 end
% ������������� �������� ���������� ������� � ������� � ����� ��� i=1
    p(1) = d_k(1); 
    q(1) = m_2 * p(1); 
    s(1) = q(1) + m_1 * p(1);
 % ���������� �������� ���������� ������� � ������� � ���������� ������� �����������   
for i = 2:N;
    p(i) = p(i - 1) + d_k(i);
    
 if i > l 
     
     p(i) = p(i - 1) + d_k(i) - k * d_1(i - l); 
 end
 
q(i)=q(i -1) + m_2 * p(i);
s(i)=s(i - 1) + q(i) + m_1 * p(i);
end
end