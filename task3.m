%% paraboloid
clc; clear; close all;
x = linspace(-3, 3, 100);
y = linspace(-3, 3, 100);
[X, Y] = meshgrid(x, y);

zParab = X.^2 + Y.^2 + 2*sin(X) + 2*sin(Y);

figure;
surf(X, Y, zParab);
xlabel('X'); ylabel('Y'); zlabel('f(X, Y)');
title('Functia paraboloida');
colorbar;
shading interp;


%gasim minimul local
x0 = [0,0];
min_f = fminunc(@(v) f(v(1), v(2)), x0);

hold on;
plot3(min_f(1), min_f(2), f(min_f(1), min_f(2)), 'ro', 'MarkerSize', 10, 'LineWidth', 2);
hold off;

