function s = filtr(y,k,l,M)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

x=-10:1:100; 
m=length(x);
k=9;
l=5;
M=16;
z=1:1:m ;
for z=1:1:m 


if(z-k-l>0)
    dlk(z)=y(z)-y(z-k)-y(z-l)+y(z-k-l);
else
    if(k>l)
        k_1=k;
        l_1=l;
    else
        k_1=l;
        l_1=k;
    end
    if(z-k_1>0)
      dlk(z)=y(z)-y(z-k_1)-y(z-l_1);
    else
        if (z-l_1>0)
            dlk(z)=y(z)-y(z-l_1);
        else
            dlk(z)=y(z);
        end
    end
end

if(z-l>0)
    
p(z)=p(z-l)+dlk(z);
else
  p(z)=dlk(z); 
end
r(z)=p(z)+M*dlk(z);
if(z-l>0)
    s(z)=s(z-l)+r(z);
else
    if(r(z)<0)
        s(z)=0;
    else
        s(z)=r(z);
    end
end

end

end

