clc;
clear;
%% Exemplo 2.8
% x(n) = [3,11,7,(0),-1,4,2] -> -3<=n<=3
% y(n) = x(n-2) + w(n)

%% Sequencia 1 de ruídos
% Encontrar a correlação cruzada entre y(n) e x(n)
x = [3,11,7,0,-1,4,2]; nx = -3:3;
% x(n-2)
[y,ny] = sigshift(x,nx,2);
% w(n)
w = randn(1,length(y));
nw = ny;
% y(n) = x(n-2)+ w(n)
[y,ny] = sigadd(y,ny,w,nw);
% para fazermos a correlação cruzada, precisamos encontrar x(-n)
[x,nx] = sigfold(x,nx);
% Correlação cruzada
[rxy,nrxy] = conv_m(y,ny,x,nx);
subplot(211)
stem(nrxy,rxy);
title("Correlação cruzada entre x e y");
xlabel("variável com delay");
ylabel("rxy");

%% Sequencia 1 de ruídos
% Encontrar a correlação cruzada entre y(n) e x(n)
x = [3,11,7,0,-1,4,2]; nx = -3:3;
% x(n-2)
[y,ny] = sigshift(x,nx,2);
% w(n)
w = randn(1,length(y));
nw = ny;
% y(n) = x(n-2)+ w(n)
[y,ny] = sigadd(y,ny,w,nw);
% para fazermos a correlação cruzada, precisamos encontrar x(-n)
[x,nx] = sigfold(x,nx);
% Correlação cruzada
[rxy,nrxy] = conv_m(y,ny,x,nx);
subplot(212)
stem(nrxy,rxy);
title("Correlação cruzada entre x e y");
xlabel("variável com delay");
ylabel("rxy");

% LEmbrando que podemos encontrar da mesma forma utilizando a função
% xcorr(x,y) do Matlab