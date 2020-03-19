% Fredholm Integral Equations with Constant Coefficients
% Example 7
% u(x) = f(x) + (l*c/(1-l*c*(b-a))*integral(f(t))dt   a,b
syms x;
syms t;
syms lambda; %lambda
constant = 2;
a = 0;
b = 1;
f(x) = exp(x);
u(x) = f(x) + ((lambda*constant)/(1-lambda*constant*(b-a)))*int(f(t),t,a,b);
disp(u(x));

