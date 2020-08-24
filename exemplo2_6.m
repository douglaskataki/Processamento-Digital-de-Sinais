clc;
clear;
%% Exemplo 2.6
% x(n) = [3,11,7,(0),-1,4,2], -3<=n<=3, h(n) = [2,(3),0,-5,2,1], -1<=n<=4
% y(n) = conv(x(n),y(n))
x = [3,11,7,0,-1,4,2];
h = [2,3,0,-5,2,1];
y = conv(x,h);
% Por�m a fun��o conv n�o aceita informa��es de tempo e desta forma
% precisamos de uma fun��o que consiga melhorar essa visualiza��o.
% Utilizaremos a fun��o conv_m no exemplo 2.7