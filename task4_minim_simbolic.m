function [x_min, f_min] = task4_minim_simbolic(f_sym)
    % gaseste min numeri al functie 
    % f_sym - functie simolica definita cu syms

    syms x;
    df = diff(f_sym, x); % Derivata primei ordini
    sols = solve(df == 0, x); % Rezolvam ecuatia df/dx = 0

    % Convertim rezultatele in numere
    x_min = double(sols);
    f_min = double(subs(f_sym, x_min)); % valoare functie in minin

    fprintf('Minimul simbolic: x = %.4f, f(x) = %.4f\n', x_min, f_min);
end
