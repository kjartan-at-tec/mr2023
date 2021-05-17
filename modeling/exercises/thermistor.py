import sympy as sy
import numpy as np
import matplotlib.pyplot as plt
from scipy.integrate import solve_ivp

R0 = 5e3
B = 4e3
T0 = 273
T1 = T0+20

As, Bs, Ts, T1s, ys, xs = sy.symbols('A, B, T, T1, y, x')
Rs = As*sy.exp(Bs/Ts)
dRdT = sy.diff(Rs, Ts)
print(Rs)
print(dRdT)

A = R0*np.exp(-B/T0)
A = 0.002

dRdTp = float(dRdT.subs({As: A, Bs:B, Ts:T1}))
print(dRdTp)
print('a = %f' %dRdTp)

R1 = float(Rs.subs({As: A, Bs:B, Ts:T1}))
print('R1 = %f' %R1)

def Rf(T):
    global A, B
    return A*np.exp(B/T)

def Rfapprox(T):
    global A, B, T1, dRdTp, R1
    return (R1 + dRdTp*(T-T1))


print('R1 = %f' %Rf(T1))

TT = np.linspace(273, 320, 60)
plt.figure(figsize=(10,8))
plt.plot(TT, Rf(TT))
plt.plot(TT, Rfapprox(TT))
plt.xlabel('Temperature')
plt.ylabel('Resistance')
plt.show()

