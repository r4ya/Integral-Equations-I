% PROVIDE SOLUTION of INTEGRAL EQUATION

% First Problem
% u(x) = f(x) + lambda*Integral(K(x,t)*u(t))dt  t=0, t=x
syms x;
syms t;
f = @(x) (3*x+2*x^3)/(3*(1+x^2)^2);
lambda = -1;
K = @(x,t) (3*x+2*x^3-t)/((1+x^2)^2);
u = @(x) x/((1+x^2)^(5/2));

I = K(x,t)*u(t);
disp('Solution 1: ');
solution = f(x)+lambda*int(I,t,0,x);
disp(solution)


