function cord=rotacion_x(m,xyz)
angu=m/180*pi; % Angulo de rotacion
C=cos(angu);
S=sin(angu);
%Rotacion alrededor del eje X
Rx=[1 0 0;0 C -S; 0 S C];
cord=Rx*xyz;
end