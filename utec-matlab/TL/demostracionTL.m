syms x u v k

u=[x1;y1]
v=[x2;y2]
funcion=5*x;
if eval(simplify(subs(funcion,x,u+v)-subs(funcion,x,u)-subs(funcion,x,v)))==0 && eval(simplify(subs(funcion,x,k*x)-k*funcion))==0
    disp('Es una transformación Lineal')
else
    disp('No es una transformación Lineal')
end