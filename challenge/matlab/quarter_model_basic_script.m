%% Defining variables for the quarter model

% Kjartan Halvorsen
% 2021-05-26

m2 = 350; % kg, sprung mass
m1 = 31; % kg, unsprung mass
k1 = 1.08e5; % N/m tire stiffness
k2 = 2.09e4; % N/m spring stiffness
b = 2e3; % N/(m/s) damping coefficient

% Displacement w - z_1, i.e. between road and tire at which the tire 
% looses contact with the road.
tire_spring_ll = -(m1+m2)*9.8/k1 
% Displacement z_1 - w, i.e. between road and tire at which the rim hits
% the pavement
tire_spring _ul = 0.1;
