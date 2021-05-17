import sympy as sy
import numpy as np
import matplotlib.pyplot as plt
from scipy.integrate import solve_ivp

sy.init_printing()

kd, bd, mc, bs, xi, xp = sy.symbols('kd, bd, mc, bs, xi, xp')

# Newton
# m_c\ddot{x_p} = k_d(x_{in} - x_p) + b_d(\dot{x_{in}} - \dot{x_p}) - b_sx_p
# \ddot{x_p} + k_d/m_c x_p + (b_d + b_s)/m_c \dot{x}_p = k_d/m_c x_{in} + b_d/m_c \dot{x}_{in}

# X_in(s) / X_p(s)= (b_d/m_c s + k_d/m_c) / (s^2 + (b_d+b_s)/m_c s + k_d/m_c)


R0 = 5e3
B = 4e3
T0 = 273
T1 = T0+20

Rs = As*sy.exp(Bs/Ts)
dRdT = sy.diff(Rs, Ts)
print(dRdT)

A = R0*np.exp(-B/T0)
A = 0.002

dRdTp = dRdT.subs({As: A, Bs:B, Ts:T1})
print(dRdTp)

print('A = %f' %A)

def Rf(T):
    global A, B
    return A*np.exp(B/T)


print('R1 = %f' %Rf(T1))

TT = np.linspace(273, 320, 60)
plt.figure(figsize=(10,8))
plt.plot(TT, Rf(TT))
plt.show()

