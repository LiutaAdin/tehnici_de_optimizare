clc; clear; close all;


f1 = @(x) x.^4 - 3*x.^2 + 2*x; 
syms x;
f1_sym = x^4 - 3*x^2 + 2*x; % functie simbolica

% functie pentru minim numeric
task4_minim_numeric(f1, 0); 

% functie pentru minim simbolic
task4_minim_simbolic(f1_sym);
