function [] = RoucheFrobenius (A, b)  %AX = b
[m, n] = size (A);
Aa = [A b];
if (rank (Aa) ~= rank (A))
    fprintf('El sistema no tiene solucion \n')
else if (rank (A) == n)
    fprintf('El sistema tiene solucion unica \n')
else
    fprintf('El sistema tiene infinitas soluciones\n')
end
end