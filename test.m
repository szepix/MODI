syms x1(y)
syms x1(k)
syms x2(y)
syms x2(k)
syms T1
syms T2
syms Tp
syms u(k)

latex(x1(y) + x1(k) - Tp*(T1+T2)/(T1*T2)*x1(k) + Tp * x2(k));
latex(x2(y) & x2(k) - Tp/(T1*T2) * x1(k) + K*Tp/(T1*T2))