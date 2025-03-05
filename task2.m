clc; clear; close all;
x = linspace(-5, 5, 100);
y = linspace(-5, 5, 100);
[X, Y] = meshgrid(x, y);

A = 20;

%% 1. Funcția Rastrigin
Z_rastrigin = A + X.^2 + Y.^2 - 10*(cos(2*pi*X) + cos(2*pi*Y));

%gasim minimele si maximele locale

minime_locale = islocalmin(Z_rastrigin, 1) & islocalmin(Z_rastrigin, 2);
maxime_locale = islocalmax(Z_rastrigin, 1) & islocalmax(Z_rastrigin, 2);

%Extragem coordonatele pentru minime si maxime
x_min = X(minime_locale);
y_min = Y(minime_locale);
f_min = Z_rastrigin(minime_locale);

x_max = X(maxime_locale);
y_max = Y(maxime_locale);
f_max = Z_rastrigin(maxime_locale);

figure;
surf(X, Y, Z_rastrigin, 'EdgeColor','none');
xlabel('X'); ylabel('Y'); zlabel('f(X, Y)');
title('Funcția Rastrigin');
colorbar;
colormap jet; shading interp;
hold on;

% 7. Marcam minimele locale cu cercuri rosii
plot3(x_min, y_min, f_min, 'ro', 'MarkerSize', 10, 'LineWidth', 2);

% 8. Marcam maximele locale cu cercuri verzi
plot3(x_max, y_max, f_max, 'go', 'MarkerSize', 10, 'LineWidth', 2);

% 9. Setari pentru vizualizare
xlabel('X'); ylabel('Y'); zlabel('f(X,Y)');
title('Functia Rastrigin - Minime si Maxime locale');
legend('f(x, y)', 'Minime locale', 'Maxime locale', 'Location', 'best');
hold off;

%% 2. Funcția Ackley
Z_ackley = -20 * exp(-0.2 * sqrt(0.5*(X.^2 + Y.^2))) ...
           - exp(0.5 * (cos(2*pi*X) + cos(2*pi*Y))) + exp(1) + 20;

%gasim minimele si maximele locale

minime_locale = islocalmin(Z_ackley, 1) & islocalmin(Z_ackley, 2);
maxime_locale = islocalmax(Z_ackley, 1) & islocalmax(Z_ackley, 2);

%Extragem coordonatele pentru minime si maxime
x_min = X(minime_locale);
y_min = Y(minime_locale);
f_min = Z_ackley(minime_locale);

x_max = X(maxime_locale);
y_max = Y(maxime_locale);
f_max = Z_ackley(maxime_locale);


figure;
surf(X, Y, Z_ackley);
xlabel('X'); ylabel('Y'); zlabel('f(X, Y)');
title('Funcția Ackley');
colorbar;
shading interp;
hold on;

% 7. Marcam minimele locale cu cercuri rosii
plot3(x_min, y_min, f_min, 'ro', 'MarkerSize', 10, 'LineWidth', 2);

% 8. Marcam maximele locale cu cercuri verzi
plot3(x_max, y_max, f_max, 'go', 'MarkerSize', 10, 'LineWidth', 2);

% 9. Setari pentru vizualizare
xlabel('X'); ylabel('Y'); zlabel('f(X,Y)');
title('Functia Rastrigin - Minime si Maxime locale');
legend('f(x, y)', 'Minime locale', 'Maxime locale', 'Location', 'best');
hold off;

%% 3. Funcția Griewank
Z_griewank = (X.^2 + Y.^2)/4000 - cos(X) .* cos(Y./sqrt(2)) + 1;

%gasim minimele si maximele locale

minime_locale = islocalmin(Z_griewank, 1) & islocalmin(Z_griewank, 2);
maxime_locale = islocalmax(Z_griewank, 1) & islocalmax(Z_griewank, 2);

%Extragem coordonatele pentru minime si maxime
x_min = X(minime_locale);
y_min = Y(minime_locale);
f_min = Z_griewank(minime_locale);

x_max = X(maxime_locale);
y_max = Y(maxime_locale);
f_max = Z_griewank(maxime_locale);


figure;
surf(X, Y, Z_griewank);
xlabel('X'); ylabel('Y'); zlabel('f(X, Y)');
title('Funcția Griewank');
colorbar;
shading interp;
hold on;

% 7. Marcam minimele locale cu cercuri rosii
plot3(x_min, y_min, f_min, 'ro', 'MarkerSize', 10, 'LineWidth', 2);

% 8. Marcam maximele locale cu cercuri verzi
plot3(x_max, y_max, f_max, 'go', 'MarkerSize', 10, 'LineWidth', 2);

% 9. Setari pentru vizualizare
xlabel('X'); ylabel('Y'); zlabel('f(X,Y)');
title('Functia Rastrigin - Minime si Maxime locale');
legend('f(x, y)', 'Minime locale', 'Maxime locale', 'Location', 'best');
hold off;
