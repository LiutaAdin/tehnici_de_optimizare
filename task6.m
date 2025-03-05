clc; clear; close all;

syms x y
f = x^2 + y^2 + sin(x);  

punct = [1, 1];

verifica_FONC(f, punct);
[X, Y] = meshgrid(-2:0.2:2, -2:0.2:2);
Z = double(subs(f, {x, y}, {X, Y}));

grad_f = gradient(f, [x, y]);
grad_f_punct = double(subs(grad_f, {x, y}, {punct(1), punct(2)}));

figure;
surf(X, Y, Z);
hold on;
quiver3(punct(1), punct(2), double(subs(f, {x, y}, {punct(1), punct(2)})), ...
        grad_f_punct(1), grad_f_punct(2), 0, 'r', 'LineWidth', 2, 'MaxHeadSize', 0.5);
xlabel('X'); ylabel('Y'); zlabel('f(X,Y)');
title('Vectorul gradientului pe suprafata');
grid on;
