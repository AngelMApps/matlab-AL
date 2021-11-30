% Reflexion a traves del eje Y del punto (1;2).
x = -1;
y = 3;
grid on
plot(x,y,'b*'); % marca el punto (x;y) en el plano
hold on
A = [-1 0; 0 -1]; % matriz de reflexion
Refl_Y = A*[x;y];
plot(Refl_Y(1),Refl_Y(2),'r*'); % marca el punto reflejado
xlim([-2, 2]);
ylim([-4, 4]);