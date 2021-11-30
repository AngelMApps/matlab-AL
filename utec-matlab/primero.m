clc
A=[1 2 -3; -3 -1 -1; 1 -1 1]
b=[5; -8; 0]

x=linsolve(A,b)
x=A\b;
x=inv(A)*b

Aa=[A b]

rA= rank(A)
rAb= rank(Aa)