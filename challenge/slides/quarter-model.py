import numpy as np
from control import matlab as cm

# Parameters From https://ctms.engin.umich.edu/CTMS/index.php?example=Suspension&section=SimulinkModeling
M1 = 2500    # Sprung mass
M1 = 0.2*M1    # Sprung mass
M2 = 320     # Unsprung mass
M2 = 0.2*M2     # Unsprung mass
b1 = 350     # Damping coeff
b1 = 8*b1     # Damping coeff
b2 = 15020   # Damping coeff
b2 = 0.5*b2   # Damping coeff
K1 = 80000   # Spring stiffness
K1 = 0.2*K1   # Spring stiffness
K2 = 200000  # Tire stiffness
Zr = 0.15     # Road input

# State space model

A = np.array([[0, 1, 0, 0],
[-(b1*b2)/(M1*M2), 0, (b1/M1)*(b1/M1 + b1/M2 + b2/M2)-K1/M1, -b1/M1],
[b2/M2, 0, -(b1/M1 + b1/M2 + b2/M2), 1],
[K2/M2, 0, -(K1/M1 + K1/M2 + K2/M2), 0]])
B = np.array([[0, 0],
[1/M1, b1*b2/(M1*M2)],
[0, -b2/M2],
[(1/M2+1/M1), -K2/M2]])
C = np.array([[1, 0, 0, 0],[0,0,1,0]])
D = np.array([[0,0],[0,0]])

ss_sys = cm.ss(A, B, C, D)

# Input signal
N = 240
tend = 6
tt = np.linspace(0, tend, N)
uw = np.zeros((2,N))
uw[1,40:70] = Zr*np.sin(np.linspace(0,np.pi,30))
uw[1,120:150] = -Zr*np.sin(np.linspace(0,np.pi,30))

yout, T, xout = cm.lsim(ss_sys, uw.T, tt)
kk = 10 # convert to dm for animation
x1 = kk * xout[::2,0]
x2 = x1 - kk*xout[::2,2]
w = uw[1,::2] * 10
T.shape=(len(T),1)
TT = T[::2]
dta = np.transpose(np.vstack((np.ravel(TT), x1, x2, w)))
np.savetxt('./quarter_model.dta', dta, delimiter=',', fmt='%8.4f')
