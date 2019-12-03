%%
% 
% MODI: Projekt I Zestaw 5                                  Mateusz Dziwulski
%
%
%
% Model:
%
% $\frac{dx_1(t)}{dt} = -\frac{T_1 + T_2}{T_1T_2}x_1(t) + x_2(t)$
%
% $\frac{dx_2(t)}{dt} = -\frac{1}{T_1T_2} + \frac{K}{T_1T_2}(\alpha_1u(t) + \alpha_2u(t)^2 + \alpha_3u(t)^3 + \alpha_4u(t)^4)$
%
% $y(t) = x_1(t)$
%
% Dane dla zestawu 5:
%
% $K = 3.5, T_1 = 4, T_2 = 8, \alpha_1 = 0.56, \alpha_2 = -0.8, \alpha_3 = 0.35, \alpha_4 = 0.2$
%
% $-1 \leq u \leq 1$
% 
%
%
projekt1_1;
%%
%
% $\frac{\partial y}{\partial u_1}(u_1,u_2) = -20u_1$
%
% $\frac{\partial y}{\partial u_2}(u_1,u_2) = 15u_2^2$
%
% $y(u_1,u_2) \approx y(\overline u_1,\overline u_2) + y'(u_1,u_2)|_{\overline u_1,\overline u_2} ((u_1,u_2) - (\overline u_1, \overline u_2))$
%
%
%
% a) Wykresy charakterystyk dla podanych zakresów:

%%
%
%

%%
%
% b) Wyznaczone powyżej analitycznie charakterystyki zlinearyzowane: