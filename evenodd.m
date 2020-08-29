function [xe,xo,m] = evenodd(x,n)
% Decomposi��o de um sinal em parte par e �mpar
% ------------------------------------
% [xe,xo,m] = evenodd(x,n)
% 
% invertemos o vetor m
m = -fliplr(n);
% encontramos o m�ximo e m�nimo entre n e m, normalmente s�o
% respectivamente max(n) e min(-flip(n))
m1 = min([m,n]);
m2 = max([m,n]);
% criamos o vetor novo para os elementos das sequ�ncias par e �mpar
m = m1:m2;

nm = n(1)-m(1);
n1 = 1:length(n);
x1 = zeros(1,length(n));
% j� faz o "append" dos valores de x
x1(n1+nm) = x;
% atribui o valor de x1 para x
x = x1;
% separa��o entre sequ�ncia par e �mpar
xe = 0.5*(x+conj(fliplr(x)));
xo = 0.5*(x-conj(fliplr(x)));
end