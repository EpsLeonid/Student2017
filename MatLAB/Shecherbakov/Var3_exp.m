%������� Var3_exp
%������� ��������� ����.Var3_exp :
%t - �������� �������,
%� - ��������� �������,
%tau1 � tau2 - ������� ���������.
%�������� ��������� ������� Var3_exp:
%y - ������ ������� ��������.
function [ y ] = Var3_exp( tau1, tau2, t, A ) 
y=zeros(1,length(t)); 
for i=1:length(t)
    if t(i)<0
        y(i)=0;
    else
       y(i)=A*(exp(-(t(1,i))/tau1) - exp((-t(1,i)/tau2)));   %y=A*(exp(-t/tau1)-exp(-t/tau2)),
    end
end
end

