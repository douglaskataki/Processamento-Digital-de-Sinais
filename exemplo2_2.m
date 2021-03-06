clc;
clear;
%% Exemplo 2.2
% x(n) = {1,2,(3),4,5,6,7,6,5,4,3,2,1}, -2<=n<=10
n = -2:10;
x = [1:7,6:-1:1];
% a) x1(n) = 2*x(n-5)-3*x(n+4)
% Primeiro, vamos encontrar x(n-5) e x(n+4)
[x11,n11] = sigshift(x,n,5);
[x12,n12] = sigshift(x,n,-4);
[x1,n1] = sigadd(2*x11,n11,-3*x12,n12);
subplot(211)
stem(n1,x1);
title('Sequencia exemplo 2.2a');
xlabel('n');
ylabel('x(n)');
% b) x2(n) = x(3-n)+x(n)*x(n-2)
% Encontrando x(3-n):
[x21,n21] = sigfold(x,n);
[x21,n21] = sigshift(x21,n21,3);
% Encontrando x(n)*x(n-2):
[x22,n22] = sigshift(x,n,2);
[x22,n22] = sigmult(x22,n22,x,n);
% Por fim, x2(n):
[x2,n2] = sigadd(x22,n22,x21,n21);
subplot(212)
stem(n2,x2);
title('Sequencia exemplo 2.2b');
xlabel('n');
ylabel('x(n)');