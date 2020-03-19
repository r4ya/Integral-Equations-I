% Fredholm Integral Equations with Constant Coefficients
% Example 8
% u(x) = cos(x) + 4*integral(u(t))dt   t=0, t=1
syms x;
syms t;
lambda = 4;
constant = 1;
a = 0;
b = 1;
f(x) = cos(x);
u(x) = f(x) + ((lambda*constant)/(1-lambda*constant*(b-a)))*int(f(t),t,a,b);
disp(u(x));
