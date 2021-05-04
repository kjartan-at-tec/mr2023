%% Creating data from simulation of car

tt = out.simout.Time;
dta = out.simout.Data;

t = (0:0.1:1.9)';
t2 = (0:0.01:2)';
t30 = linspace(0, 2, 60)';
t2 = t30;


data = [-0.5, 0, 0];

N = length(t2);
for i=1:N
    t_ = t2(i);
    id = find(tt <= t_);
    data = cat(1, data, cat(2, t_*3, dta(id(end),:)));
end

dlmwrite('car-drag-60.dta', data, 'delimiter', ',')


