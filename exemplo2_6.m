clc;
clear;
%% Exemplo 2.6
% x(n) = [3,11,7,(0),-1,4,2], -3<=n<=3, h(n) = [2,(3),0,-5,2,1], -1<=n<=4
% y(n) = conv(x(n),y(n))
x = [3,11,7,0,-1,4,2];
h = [2,3,0,-5,2,1];
y = conv(x,h);
% Porém a função conv não aceita informações de tempo e desta forma
% precisamos de uma função que consiga melhorar essa visualização.
% Utilizaremos a função conv_m no exemplo 2.7