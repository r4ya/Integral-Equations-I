% PROVIDE SOLUTION of INTEGRAL EQUATION

% Second Problem
% u(x) = 0 + Integral(K(x,t)*u(t))dt  t=0, t=x | u(x) = 1/(pi*x^0.5)
f = @(x) 0;
lambda = 1;
K = @(x,t) 1/((x-t)^(1/2));
u = @(x) 1/(pi*(x^(1/2)));

I = K(x,t)*u(t);
disp('Solution 2: ');
solution = f(x)+lambda*int(I,t,0,x);
disp(solution)

