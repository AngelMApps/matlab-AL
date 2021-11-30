clf
x=[3,1,5,3]
y=[0,-2,6,0]
z=[3,4,8,3]
P=[3 1 5 3;0 -2 6 0;3 4 8 3]
plot3(x,y,z,'r')
%Proyeccion en el plano XY
%Matriz de Proyeccion
hold on
M=[1 0 0;0 1 0;0 0 0]
P1=M*P
x1=P1(1,:)
y1=P1(2,:)
z1=P1(3,:)
plot3(x1,y1,z1,'b')
fill3(x1,y1,z1,'y')
grid on