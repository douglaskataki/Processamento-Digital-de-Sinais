clc;
clear;
%% Exemplo 2.5
% x(n) = u(n)-u(n-10)
% h(n) = (0.9)^n*u(n)
% y(n) = conv(x(n),h(n))
n = -5:20;
x = stepseq(0,min(n),max(n)) - stepseq(10,min(n),max(n));
h = (0.9.^n).*stepseq(0,min(n),max(n));
stem(conv(x,h))
ylabel("y(n)");
xlabel("n");
title("Sequência de saída");