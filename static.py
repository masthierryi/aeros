import os  
os.system('cls')

rho = 1.2754 #kg/m^3
V = 100 #m/s

L = 3 # N
D = 2
# D = 2
# D = 2


C_L = L/(1/2 * rho * V**2)
C_D = D/(1/2 * rho * V**2)
print(C_L, C_D)