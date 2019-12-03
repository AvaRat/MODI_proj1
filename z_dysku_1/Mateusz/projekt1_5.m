clear;

syms u U s;

K = 3.5;
T1 = 4;
T2 = 8;
a1 = 0.56;
a2 = -0.8;
a3 = 0.35;
a4 = 0.2;

Tp = 1.0;
u_ = 0;
u1_ = -1;
u2_ = 0.25;
u3_ = 0.75;

A(U) = a1 + 2*a2*U + 3*a3*U^2 + 4*a4*U^3;
B(U) = (a1*U + a2*U^2 + a3*U^3 + a4*U^4) - A*U;

A1 = a1 + 2*a2*u1_ + 3*a3*u1_^2 + 4*a4*u1_^3;
B1 = (a1*u1_ + a2*u1_^2 + a3*u1_^3 + a4*u1_^4) - A1*u1_;

A2 = a1 + 2*a2*u2_ + 3*a3*u2_^2 + 4*a4*u2_^3;
B2 = (a1*u2_ + a2*u2_^2 + a3*u2_^3 + a4*u2_^4) - A2*u2_;

A3 = a1 + 2*a2*u3_ + 3*a3*u3_^2 + 4*a4*u3_^3;
B3 = (a1*u3_ + a2*u3_^2 + a3*u3_^3 + a4*u3_^4) - A3*u3_;

A_ = [-(T1+T2)/(T1*T2) 1; -1/(T1*T2) 0];
B_(u) = [0; K*(a1 + 2*a2*u + 3*a3*u^2 + 4*a4*u^3)/(T1*T2)];
C_ = [1 0];
D_ = 0;
I = eye(2);
G_(s,u) = C_*(s*I-A_)^(-1)*B_(u)+D_;

ys(u) = K*(a1*u+a2*u^2+a3*u^3+a4*u^4);
yl(u,U) = ys(U) + K*(a1+2*a2*U+3*a3*U^2+4*a4*U^3)*(u-U);

figure
fplot(ys);
title({['$y(u) = ' latex(vpa(sym(ys))) '$']}, 'Interpreter', 'latex');
xlabel('$u$', 'Interpreter', 'latex');
ylabel('$y(u)$', 'Interpreter', 'latex');
hold on
hold off
text(-4,100,'$y(u)$','Interpreter','latex','FontSize',12);

figure
fplot(G_(0,u));
title({['$K(\overline u) = 2.8\, \overline u^3 + 3.675\, \overline u^2 - 5.6\, \overline u + 1.96 $']}, 'Interpreter', 'latex');
xlabel('$\overline u$', 'Interpreter', 'latex');
ylabel('$K(\overline u)$', 'Interpreter', 'latex');
hold on
hold off