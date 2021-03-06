%% Compartment model 
% Kjartan Halvorsen
% 2021-05-26

Q = 1; % Flow between compartments
Qo = 0.5; % Flow out of compartment 1
V1 = 2; % Volume of compartment 1
V2 = 0.5; % Volume of compartment 1

A = [-(Q+Qo)/V1 Q/V1
    Q/V2 -Q/V2];
B = [1/V1; 0];

[Vv,D] = eig(A)
