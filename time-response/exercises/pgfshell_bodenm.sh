julia -q --eval "using ControlSystems; H= tf([1],[1.0, 1, 0]); print_step(H, 10);"
