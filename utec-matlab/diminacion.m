%Forma Matricial: AX=b
clc
A = [98 11 2 1 0.5; 11 118 13 4 0.88; 27 27 85 17 2; 1 3 17 142 25; 2 4 7 17 118]
b = [0.1100; 0.2235; 0.2800; 0.3000; 0.1400]
Aa=[A b]
%Paso 1
pivo=Aa(1,1)
%multiplicadores
m21=Aa(2,1)/pivo
m31=Aa(3,1)/pivo
m41=Aa(4,1)/pivo
m51=Aa(5,1)/pivo
Aa(2,:)=Aa(2,:)-m21*Aa(1,:)
Aa(3,:)=Aa(3,:)-m31*Aa(1,:)
Aa(4,:)=Aa(4,:)-m41*Aa(1,:)
Aa(5,:)=Aa(5,:)-m51*Aa(1,:)

%Paso 2
pivo=Aa(2,2)
m32=Aa(3,2)/pivo
m42=Aa(4,2)/pivo
m52=Aa(5,2)/pivo
Aa(3,:)=Aa(3,:)-m32*Aa(2,:)
Aa(4,:)=Aa(4,:)-m42*Aa(2,:)
Aa(5,:)=Aa(5,:)-m52*Aa(2,:)

%Paso 3
pivo=Aa(3,3)
%m34=Aa(3,2)/pivo
%Aa(3,:)=Aa(3,:)-m32*Aa(2,:)
%Ea=Aa(:,1:3)
%nb=Aa(:,4)

%Ea=Aa(:,1:5)
%nb=Aa(:,4)

%Paso1 
%x(3)=nb(3)/Ea(3,3)
%Paso 2
%x(2)=(nb(2)-Ea(2,3)*x(3))/Ea(2,2)
%Paso 3
%x(1)=(nb(1)-Ea(1,2)*nb(2)-Ea(1,3)*x(3))/Ea(1,1)