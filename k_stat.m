ul = -1:0.1:1;
K = (111*ul)/50 - (171*ul.^2)/100 - (12*ul.^3)/5 + 117/100
plot(u, K);
xlabel("u");
ylabel("K(u)");