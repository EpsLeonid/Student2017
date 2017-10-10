%Ôóíêöèÿ Var3_filt ôèëüòğ ñèãíàëà ñ âõîäíûìè äàííûìè:
%l,k,m1,m2 - êîíñòàíòû
%v - âõîäíîé ñèãíàë.
%Âûõîäíûå äàííûå ôóíêöèè Var3_filt:
%s - âûõîäíîé ñèãíàë ïğîøåäøèé ôèëüòğ cusp-like
function [ s ] = Var3_filt( l, k, m1, m2, v )
i=length(v);
[dk, dl, p, q, s]=deal(zeros(1,i));

for n=1:i
    
    if(n-k >=1)
    dk(n)=v(n)-v(n-k);                %dk(n)=v(n)-v(n-k),
    else
    dk(n)=v(n);
    end
end
    dl(1)=v(1);
for n=2:i
       
    dl(n)=v(n)-v(n-1);                %dl(n)=v(n)-v(n-1),
    
end
p(1)=dk(1);
q(1)=m2*p(1);
s(1)=q(1)+m1*p(1);                    %s(n)=s(n-1)+q(n)+m1*p(n), (n>=0).
for    n=2:i
    if (n-l >=1)
    p(n)=p(n-1)+dk(n)-k*dl(n-l);
    else
    p(n)=p(n-1)+dk(n);                %p(n)=p(n-1)+dk(n)-k*dl(n-l),(n>=0),
    
    end
    q(n)=q(n-1)+m2*p(n);              %q(n)=q(n-1)+m2*p(n), (n>=0),
    s(n)=s(n-1)+q(n)+m1*p(n);         %s(n)=s(n-1)+q(n)+m1*p(n), (n>=0).
end

end

