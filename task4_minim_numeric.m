function [x_min, f_min] = task4_minim_numeric(f, x0)
   % gaseste min numeri al functie
    % f - functia de minimizat
    % x0 - punctul de start
    
    x_min = fminunc(f, x0); % gaseste minimul
    f_min = f(x_min); % calculeaza valoarea functiei in minim
    
    fprintf('Minimul numeric: x = %.4f, f(x) = %.4f\n', x_min, f_min);
end
