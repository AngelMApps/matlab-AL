clc  %permite borrar el area de trabajo
A=[1,-1,2,-1;2,-2,3,-3;1,1,1,0;1,-1,4,3];
b=[-8; -20; -2; 4];
[n,m]=size(A);
C=[A,b];
format rational
disp(C);

if n==m 
    for k=1:(n-1)
        fprintf('\n ETAPA %g=\n\n',k)
        mayor=0; 
        filam=k; 
        for p=k:n
            if mayor<abs(C(p,k)) 
                mayor=abs(C(p,k));
                filam=p; 
            end
        end
        if mayor ==0
            fprintf('\nEl sistema tiene infinitas soluciones\n')
            break 
        else
            if filam ~= k 
            for j=1:(n+1)
                aux=C(k,j); 
                C(k,j)=C(filam,j);
                C(filam,j)=aux;
            end
            end
        end
         for i=(k+1):n
            m(i,k)=C(i,k)/C(k,k);
            fprintf('\nm(%g,%g)=',i,k)
            disp(m(i,k));
            for j=k:(n+1)
                C(i,j)= C(i,j) - m(i,k)*C(k,j);
            end
         end
    end
         for i=n:-1:1
            suma=0;
               for p=(i+1):n
                suma = suma + C(i,p)*X(p);
               end
            X(i)=(C(i,n+1)-suma)/C(i,i);
            
         end
else 
     fprintf('\nERROR: La matriz NO es cuadrada\n');
end
fprintf('\n\nLa matriz Ab final:\n');
disp(C)



