K=3;
T1=6;
T2=7;
L1=0.39;
L2=0.37;
L3=-0.19;
L4=-0.2;
Tp=1;
%ul = 1;
syms ul s 
A = [ 1- Tp*(T1+T2)/(T1*T2) Tp;
    -Tp/(T1*T2) 1
    ]
B = [0;
    (K*Tp/(T1*T2))*(L1+2*L2*ul+3*L3*ul^2+4*L4*ul^3)
    ]
C = [1 0];
D = 0;
I = eye(2)
G = C*(s*I - A)^(-1)*B+D
%{
stairs(out.y_d.time, out.y_d.signals.values);
xlabel("Czas");
ylabel("Wartość sygnału");
hold on
stairs(out.y_dl.time, out.y_dl.signals.values);
legend(["Sygnał niezlinearyzowany", "Sygnał zlinearyzowany"],'Location', 'southeast');
%}


%print('Tp01.png','-dpng','-r400')
