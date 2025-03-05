function Dv_f = derivata_directie_numerica(f, punct, v, h)
    v = v / norm(v); 
    f_punct = f(punct); 
    f_punct_h = f(punct + h * v); 

    Dv_f = (f_punct_h - f_punct) / h; 
    
    fprintf('Derivata directionala numerica: %.4f\n', Dv_f);
end
