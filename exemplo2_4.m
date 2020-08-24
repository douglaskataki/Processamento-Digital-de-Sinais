clc;
clear;
%% Exemplo 2.4
% x(n) = u(n)-u(n-10)
n = 0:10;
x = stepseq(0,0,10) - stepseq(10,0,10);
[xe,xo,m] = evenodd(x,n);
subplot(311)
stem(n,x);
title("Pulso retangular");
xlabel("n");
axis([-10 10 0 max(x)])
subplot(312)
stem(m,xe);
title("Parte par");
xlabel("n");
subplot(313)
stem(m,xo);
title("Parte impar");
xlabel("n");