%hallar el nucleo de una transformacion
%A=[1 2 0;0 1 -3]
%rank(A)
%null(A,'r')

B=[-1 -2 1 1 1;1 0 1 -3 1;0 1 -1 1 1;0 1 -1 1 1;1 0 1 -3 1]
rank(B)
b=rref(B)
null(b,'r')