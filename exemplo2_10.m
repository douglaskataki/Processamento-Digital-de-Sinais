clc;
clear;
%% Exemplo 2.10
% x(n) = u(n)-u(n-10)
% h(n) = (0.9).^n.*u(n)
% encontrar y(n) = conv(x,h)
% Verificar no livro a matemática
% Resolver y(n) - 0.9*y(n-1) = x(n)
b = 1;
a = [1 -0.9];
n = -5:50;
x = stepseq(0,min(n),max(n))-stepseq(10,min(n),max(n));
y = filter(b,a,x);
stem(n,y)
ylabel('y(n)');
xlabel('n');
title('Sequência de saída');