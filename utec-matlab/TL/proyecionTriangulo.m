% PROYECCION DE UN TRIANGULO SOBRE EL PLANO XY
% Se ingresa en una matriz las componentes de los vertices de un triangulo en cada
% columna,repitiendo al final el primer vertice de manera que se cierre el triangulo
p=[3 0 2 3;1 -2 1 1;0 1 3 0];
% La primera fila de p corresponde a las componentes de los vertices en el eje X
% La segunda fila de p corresponde a las componentes de los vertices en el eje Y
% La tercera fila de p corresponde a las componentes de los vertices en el eje Z


% Se guardan estas filas en las variables x, y, z para poder realizar la grafica del triangulo
x=p(1,:);y=p(2,:);z=p(3,:);
plot3(x,y,z,'b') % realiza la grafica del triangulo original
title('PROYECCION DE UN TRIANGULO SOBRE EL PLANO XY')
a=[1 0 0;0 1 0;0 0 0]; % introduce la matriz asociada a la transformacion lineal
pt=a*p; % Calcula la matriz pt cuyas columnas son las imagenes de los vertices del triangulo original
hold on % congela la ventana grafica
xt=pt(1,:);yt=pt(2,:);zt=pt(3,:); % xt,yt y zt son vectores fila que contienen las primeras, segundas y terceras componentes respectivamente de los vertices transformados
fill3(xt,yt,zt,'r') % dibuja el triangulo transformado y lo pinta de rojo
grid % añade cuadricula a la grafica
hold off % desactiva el hold
% El aula virtual de Algebra Linea