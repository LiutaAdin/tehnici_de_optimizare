function Dv_f = derivata_directie_simbolic(f, punct, v)
    vars = symvar(f);  %variabilele simbolice
    grad_f = gradient(f, vars); 
    v = v / norm(v);  
    
    grad_f_punct = double(subs(grad_f, vars, punct));  
    Dv_f = dot(grad_f_punct, v);
    
    fprintf('Derivata directionala simbolica: %.4f\n', Dv_f);
end
