%% Hummer example 
%
% Kjartan Halvorsen
% 2021-05-14

CdA = 2.46;
rho = 1.2
k = 0.5*rho*CdA
r = 490;
m = 5e3;

Pmax = 750e3; %Watt max power
rwheel = 35*0.024/2 % Wheel radius
Tmax = 14200; %Nm max torque

Fmax = Tmax/rwheel

vFmax = Pmax/Tmax % Max velocity at full torque

% Operating point
v0 = 22;
T = m/(v0*2*k)
K = 1/(v0*2*k)

f0 = r + k*v0^2

% step of 0 to 100
vnonlin = 23.49;
vlin = 23.54;
ynonlin = vnonlin - 22;
ylin = vlin - 22;
e100 = (ylin-ynonlin)/ynonlin * 100
