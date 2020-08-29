function [xe,xo,m] = evenodd(x,n)
% Decomposição de um sinal em parte par e ímpar
% ------------------------------------
% [xe,xo,m] = evenodd(x,n)
% 
% invertemos o vetor m
m = -fliplr(n);
% encontramos o máximo e mínimo entre n e m, normalmente são
% respectivamente max(n) e min(-flip(n))
m1 = min([m,n]);
m2 = max([m,n]);
% criamos o vetor novo para os elementos das sequências par e ímpar
m = m1:m2;

nm = n(1)-m(1);
n1 = 1:length(n);
x1 = zeros(1,length(n));
% já faz o "append" dos valores de x
x1(n1+nm) = x;
% atribui o valor de x1 para x
x = x1;
% separação entre sequência par e ímpar
xe = 0.5*(x+conj(fliplr(x)));
xo = 0.5*(x-conj(fliplr(x)));
end