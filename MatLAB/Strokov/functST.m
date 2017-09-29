function y = functST(t, t1, t2, A) %Заведём функцию functST. Тут всё очевидно!.
    if t < 0
        y = 0;
    else
        y = A * (exp(-t/t1) - exp(-t/t2)); 
    end
end