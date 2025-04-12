disp("Finding roots of ax^2 +bx + c")
a = input("Enter a: ");
b = input("Enter a: ");
c = input("Enter c: ");
f = @(x) a*(x.^2) + b*x +c;

tmpx = linspace(-5, 5, 1000);
tmpy = f(tmpx);
plot(tmpx, tmpy, "r")
grid on 
title("Polynomial degree 2")
xlabel("X"), ylabel("Y");

syms x;% symbolic variable decleration.
r = solve( f(x) == 0, x);
tmp3 = roots([a, b, c]);
disp(r)