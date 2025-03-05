clc; clear; close all;
syms x y
f = x^2 + y^2 + sin(x);
punct = [1, 1];
v = [1, -1]; %directie


derivata_directie_simbolic(f, punct, v);
f_num = matlabFunction(f, 'Vars', {[x, y]});
derivata_directie_numerica(f_num, punct, v, 1e-5);

[X, Y] = meshgrid(-2:0.2:2, -2:0.2:2);
Z = double(subs(f, {x, y}, {X, Y}));

figure;
surf(X, Y, Z);
hold on;
quiver3(punct(1), punct(2), double(subs(f, {x, y}, {punct(1), punct(2)})), ...
        v(1), v(2), 0, 'r', 'LineWidth', 2, 'MaxHeadSize', 0.5); % Vector 
xlabel('X'); ylabel('Y'); zlabel('f(X,Y)');
title('Vectorul directiei pe suprafata');
grid on;
