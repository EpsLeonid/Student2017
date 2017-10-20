function y = TreFil(n,t1,t2,k,l,M,A)                %функция треугольный фильтр
    function y = d(n)
        y = Gorbf(n,t1,t2,A) - Gorbf(n-k,t1,t2,A) ... 
        -Gorbf(n-l,t1,t2,A)+Gorbf(n-k-l,t1,t2,A);
    end

    function y = p(n)
        if n<0
              y=0;
        else
            y=p(n-1)+d(n);
        end 
    end
    function y=r(n)
        y=p(n)+M*d(n);
    end
    function y=s(n)
        if n<0
            y=0;
        else 
            y=s(n-l)+r(n);
        end
    end
y=s(n);
end
        
