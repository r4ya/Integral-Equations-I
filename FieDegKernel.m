% FREDHOLM INTEGRAL EQUATIONS with DEGENERATE KERNEL
syms x;
syms t;
syms lambda;

% Example 9
% u(x) = 1 + lambda*I(exp(x-t)*u(t))dt; t = 0, t = 1
I1 = int(exp(-t),t,0,1);
I2 = int(exp(t-t),t,0,1);
A = I1/(1-lambda*I2);
disp('Example 9 - Solution: ');
disp(A);

% Example 10
% u(x) = 1+lambda * integral ( exp(x-t) * u(t) ) dt 
% K(x,t) = exp(x)/exp(t)
I1 = int(t*cos(t),t,0,pi/2);
I2 = int(3*cos(t),t,0,pi/2);
I3 = int(cos(t)*sin(t),t,0,pi/2);
A = (I1 + I2)/(1-I3);
disp('Example 10 - Solution: ');
disp(A);