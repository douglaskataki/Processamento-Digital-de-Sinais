clc;
clear;
%% Exemplo 2.1
%%
% a) x(n) = 2*delta(n+2)-delta(n-4), -5<=n<=5
n = -5:5;
x = 2*impseq(-2,-5,5)-impseq(4,-5,5);
subplot(411)
stem(n,x);
title('Sequencia exemplo 2.1a');
xlabel('n');
ylabel('x(n)');
% b) n*(u(n)-u(n-10))+10*exp(-0.3*(n-10))*(u(n-10)-u(n-20)), 0<=n<=20
n = 0:20;
x1 = n.*(stepseq(0,0,20)-stepseq(10,0,20));
x2 = 10*exp(-0.3*(n-10)).*(stepseq(10,0,20)-stepseq(20,0,20));
x = x1+x2;
subplot(412)
stem(n,x);
title('Sequencia exemplo 2.1b');
xlabel('n');
ylabel('x(n)');
% c) cos(0.04*pi*n)+0.2*w(n), 0<=n<=50
n = 0:50;
x = cos(0.04*pi*n)+0.2*randn(size(n));
subplot(413)
stem(n,x);
title('Sequencia exemplo 2.1c');
xlabel('n');
ylabel('x(n)');
% d) x = [...,5,4,3,2,1,(5),4,3,2,1,5,4,3,2,1,...]; -10<=n<=9
n = -10:9;
x = [5,4,3,2,1];
% faz uma matriz com colunas de acordo com a periodiciadade do sinal
xtilde = x'*ones(1,4);
% junta todas as colunas e transforma em linha
xtilde = (xtilde(:))';
subplot(414)
stem(n,xtilde);
title('Sequencia exemplo 2.1d');
xlabel('n');
ylabel('x(n)');