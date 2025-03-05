clc; clear; close all;
syms x1 x2
f = x1^2 - x2^2;

grad_f = gradient(f, [x1, x2]);
hessian_f = hessian(f, [x1, x2]);

%x* = (0,0)
x_star = [0, 0];
grad_eval = double(subs(grad_f, [x1, x2], x_star));
hessian_eval = double(subs(hessian_f, [x1, x2], x_star));

%
if all(abs(grad_eval) < 1e-5)
    fprintf('FONC este indeplinita: ∇f(0,0) = [%.2f, %.2f]\n', grad_eval);
else
    fprintf('FONC NU este indeplinita: ∇f(0,0) = [%.2f, %.2f]\n', grad_eval);
end

eigenvalues = eig(hessian_eval);
if all(eigenvalues >= 0)
    fprintf('SONC este indeplinita: valorile proprii sunt ≥ 0\n');
else
    fprintf('SONC NU este indeplinita: Valorile proprii sunt [%.2f, %.2f]\n', eigenvalues);
end


[X1, X2] = meshgrid(-2:0.1:2, -2:0.1:2);
F_val = X1.^2 - X2.^2;
figure;
surf(X1, X2, F_val);
hold on;
plot3(0, 0, double(subs(f, {x1, x2}, {0, 0})), 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');
xlabel('x1'); ylabel('x2'); zlabel('f(x1, x2)');
title('Reprezentare 3D a funcției f(x) = x_1^2 - x_2^2');
grid on;
