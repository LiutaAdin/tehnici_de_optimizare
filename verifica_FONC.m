function verifica_FONC(f, punct)
    vars = symvar(f);  % variabilele simbolice
    grad_f = gradient(f, vars); 
    
    %gradientul in punct
    grad_f_punct = double(subs(grad_f, vars, punct));  
    
    if norm(grad_f_punct) < 1e-5
        fprintf('Punctul (%.2f, %.2f) satisface FONC (gradient aproape 0).\n', punct(1), punct(2));
    else
        fprintf('Punctul (%.2f, %.2f) NU satisface FONC (gradient = [%.4f, %.4f]).\n', ...
                punct(1), punct(2), grad_f_punct(1), grad_f_punct(2));
    end
end
