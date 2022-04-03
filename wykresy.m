u = -1:0.1:1;
y = K*(L1*u + L2*u.^2 + L3*u.^3 + L4*u.^4);
ul = -0.5;
plot(u, y);
hold on
xlabel('u');
ylabel('y');
title('Charakterystyka statyczna y(u)');
yl = K*(L1*u + L2*(ul.^2 + 2*ul*(u-ul)) + L3*(ul.^3 + 3*ul.^2*(u-ul)) + L4*(ul.^4 + 4*ul.^3*(u-ul)));
plot(u, yl);
legend(["charakterystyka niezlinearyzowana", "charakterystyka zlinearyzowana"],'Location', 'southeast');
