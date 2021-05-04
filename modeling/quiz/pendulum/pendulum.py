import numpy as np
from scipy.integrate import solve_ivp

mu = 0.4
g = 9.8
l = 1

def dxdt(t, x):
    global mu, g, l
    xdot = x.copy()
    xdot[0] = x[1]
    xdot[1] = -mu*x[1] - g/l*np.sin(x[0])
    return xdot

x0 = np.array([1.0, 0])
sol = solve_ivp(dxdt, [0, 10], x0, t_eval=np.linspace(0,6, 60))

dta = np.transpose(np.vstack((np.ravel(sol.t), sol.y)))
np.savetxt('./pendulum.dta', dta, delimiter=',', fmt='%8.4f')
