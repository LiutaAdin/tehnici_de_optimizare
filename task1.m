%Functie de o variabila
f = @(x) x.^4 - 6*x.^2 + 4*x + 12;
x = linspace(-3, 3, 1000);
y = f(x);

figure;
plot(x, y, 'b', 'LineWidth', 2); hold on;
xlabel('x');
ylabel('f(x)');
title('Identificarea minimelor locale și globale');
grid on;

syms x_sym
f_sym = x_sym^4 - 6*x_sym^2 + 4*x_sym + 12;
df_sym = diff(f_sym);
crit_points = double(solve(df_sym == 0, x_sym));
f_crit = double(subs(f_sym, x_sym, crit_points));
plot(crit_points, f_crit, 'ro', 'MarkerSize', 8,'MarkerFaceColor', 'r');

[x_min, f_min] = fminbnd(f, -3, 3);
plot(x_min, f_min, 'go', 'MarkerSize', 10, 'MarkerFaceColor','g');
legend('f(x)', 'Minime locale', 'Minim global');
hold off;

%%
%Functie de doua variabile
clc; clear; close all;
f = @(x, y) (1 - x).^2 + 100*(y - x.^2).^2;
x = linspace(-2, 2, 100);
y = linspace(-1, 3, 100);
[X, Y] = meshgrid(x, y);
Z = f(X, Y);
figure;
surf(X, Y, Z, 'EdgeColor', 'none');
xlabel('x');
ylabel('y');
zlabel('f(x, y)');
title('Reprezentarea 3D a funcției Rosenbrock');
colorbar;
hold on;
x0 = [0, 0]; 
[x_min, f_min] = fminunc(@(v) f(v(1), v(2)), x0);
plot3(x_min(1), x_min(2), f_min, 'ro', 'MarkerSize', 10,'MarkerFaceColor', 'r');
legend('f(x, y)', 'Minim global');
hold off;