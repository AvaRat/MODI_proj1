clear;

syms u t s;

K = 3.5;
T1 = 4;
T2 = 8;
a1 = 0.56;
a2 = -0.8;
a3 = 0.35;
a4 = 0.2;

Tp = 1;
u_ = 2;

A = a1 + 2*a2*u_ + 3*a3*u_^2 + 4*a4*u_^3;
B = (a1*u_ + a2*u_^2 + a3*u_^3 + a4*u_^4) - A*u_;

A_ = [-(T1+T2)/(T1*T2) 1; -1/(T1*T2) 0];
B_ = [0; K*A/(T1*T2)];
C_ = [1 0];
D_ = 0;
I = eye(2);
G_(s) = C_*(s*I-A_)^(-1)*B_;


%{
A(t) = -(T_1+T_2)/(T_1*T_2)*x_1(t)+x_2(t);
B(t) = -1/(T_1*T_2)*x_1(t)+K/(T_1*T_2)*(a_1*u(t)+a_2*u(t)^2+a_3*u(t)^3+a_4*u(t)^4);
y(t) = x_1(t);
%}


for u_ = [-1 0 0.5]
ys(u) = K*(a1*u+a2*u^2+a3*u^3+a4*u^4);
yl(u) = ys(u_) + K*(a1+2*a2*u_+3*a3*u_^2+4*a4*u_^3)*(u-u_);

figure
fplot(ys);
title({['$y_s(u) = ' latex(vpa(sym(ys))) '$'],['$y_l(u) = ' latex(vpa(sym(yl))) '$ $for$ $\overline u =' latex(vpa(sym(u_))) '$']}, 'Interpreter', 'latex');
xlabel('$u$', 'Interpreter', 'latex');
ylabel('$y(u)$', 'Interpreter', 'latex');
hold on
fplot(yl);
hold off
text(-4,100,'$y_s(u)$','Interpreter','latex','FontSize',12);
text(-2,30,'$y_l(u)$','Interpreter','latex','FontSize',12);
end
