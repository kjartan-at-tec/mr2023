% Plot rhs of ode for car
v = linspace(0, 30, 600);
Fm = linspace(0, 900, 600);

Z = zeros(600, 600);
for v_=1:600
    for f_ =1:600
        Z(v_, f_) = f_ - v_^2;
    end
end

figure(1)
clf
surf(v, Fm, Z)
