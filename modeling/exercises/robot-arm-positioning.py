import sympy as sy
import numpy as np
import matplotlib.pyplot as plt
from scipy.integrate import solve_ivp

sy.init_printing()

M, m, b, k, s, F, Y = sy.symbols('M, m, b, k, s, F, Y')
A = (M*s**2 + b*s + k)
a = (m*s**2 + b*s + k)
B = (b*s+k)
Bf = 1

X = B/A * Y + Bf/A*F # eq1 solved
eq2 = a*Y - B*X
sol=sy.solve(eq2, Y)
print(sol)

print(sy.simplify(sy.expand(A*a-B*B)))

