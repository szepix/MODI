u = [-1:0.1:1];
y = K*(L1*u + L2*u.^2 + L3*u.^3 + L4*u.^4);
plot(u, y);
xlabel('u');
ylabel('y');
title('Charakterystyka statyczna y(u)');