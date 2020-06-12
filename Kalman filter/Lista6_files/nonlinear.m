function dydt = nonlinear(t,y, u)
g = 9.8;
kb = 0.12*10^(-3);
m = 21.2*10^(-3);
dydt = [y(2); (g-kb/m*(u/y(1))^2)];