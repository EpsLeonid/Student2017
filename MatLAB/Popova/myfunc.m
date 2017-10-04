
function y = myfunc(t, t1, t2, A) 
    if t < 0
        y = 0;
    else
        y = A * (exp(-t/t1) - exp(-t/t2)); 
    end
end

