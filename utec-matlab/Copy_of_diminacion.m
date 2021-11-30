%Forma Matricial: AX=b
clc
A=[2 1;3 0;1 -1]
b=[1; 6; 4]
Aa=[A b]
%Paso 1
pivo=Aa(1,1)
%multiplicadores
m21=Aa(2,1)/pivo
m31=Aa(3,1)/pivo
Aa(2,:)=Aa(2,:)-m21*Aa(1,:)
Aa(3,:)=Aa(3,:)-m31*Aa(1,:)
%Paso 2
pivo=Aa(2,2)
m32=Aa(3,2)/pivo
Aa(3,:)=Aa(3,:)-m32*Aa(2,:)
Ea=Aa(:,1:2)
nb=Aa(:,3)

%Paso1 
x(3)=nb(3)/Ea(3,3)
%Paso 2
x(2)=(nb(2)-Ea(2,3)*x(3))/Ea(2,2)
%Paso 3
x(1)=(nb(1)-Ea(1,2)*nb(2)-Ea(1,3)*x(3))/Ea(1,1)