clear;
clc;
%% Problemas
%% P2.1
% 1)
n1 = -5:15;
x1 = 3*impseq(-2,min(n1),max(n1))+ 2*impseq(0,min(n1),max(n1))+5*impseq(7,min(n1),max(n1));
stem(n1,x1);
xlabel('n');
ylabel('x(n)');
%%
% 2)
n2 = -10:10;
x2 = impseq(0,min(n2),max(n2));
for k=-5:5
    x2 = x2+exp(-abs(k))*impseq(2*k,min(n2),max(n2));
end
stem(n2,x2);
xlabel('n');
ylabel('x(n)');
%%
% 3)
n3 = 0:20;
x3 = 10*stepseq(0,min(n3),max(n3))-5*stepseq(5,min(n3),max(n3))-10*stepseq(10,min(n3),max(n3))+5*stepseq(15,min(n3),max(n3));
stem(n3,x3);
xlabel('n');
ylabel('x(n)');
%%
% 4)
n4 =-30:20;
x4 = exp(0.1*n4).*(stepseq(-20,min(n4),max(n4))-stepseq(10,min(n4),max(n4)));
stem(n4,x4);
xlabel('n');
ylabel('x(n)');
%%
% 5)
n5 = -200:200;
x5 = 5*(cos(0.49*pi*n5)+cos(0.51*pi*n5));
stem(n5,x5);
xlabel('n');
ylabel('x(n)');
%%
% 6)
n6 = -200:200;
x6 = 2*sin(0.01*pi*n6).*cos(0.5*pi*n6);
stem(n6,x6);
xlabel('n');
ylabel('x(n)');
%%
% 7)
n7 = 0:100;
x7 = exp(-0.05*n7).*sin(0.1*pi*n7+pi/3);
stem(n7,x7);
xlabel('n');
ylabel('x(n)');
%%
% 8)
n8 = 0:100;
x8 = exp(0.01*n8).*sin(0.1*pi*n8);
stem(n8,x8);
xlabel('n');
ylabel('x(n)');
%% P2.2
nbins = 100; % bins
%%
% 1) Sequencia randomica de N=100000 amostras independentes e uniformemente
% distribuidas em [0,2]
N1 = 100000;
x1 = 2*rand(1,N1);
%%
histogram(x1,nbins);
%%
% 2) Sequencia randomica Guassiana de N=10000 amostras com media 10 e
% variancia 10.
N2 = 10000;
u = 10;
s = 10;
x2 = random('Normal',u,s,N2);
histogram(x2,nbins);
%%
% 3) x3(n) = x1(n)+x1(n-1)
n1 = 1:N1;
[x3,n3] = sigshift(x1,n1,1);
[x3,n3] = sigadd(x1,n1,x3,n3);
histogram(x3);
%%
% 4) x4(n) = sum(k=1:4)yk(n), yk(n) � uma sequencia independente das outras
% com distribui��o uniforme em [-0.5,0.5]
N4 = 1:10000;
y = zeros(1,length(N4));
for i=1:4
    y = y-rand(1,length(N4));
end
histogram(y,nbins);
% Distribui��o Normal. Lembrando que existe uma fun��o do matlab que
% encontra uma distribui��o mais pr�xima do histograma (histfit).
%% P2.3
% Exemplo do livro:
% xtilde = x'*ones(1,P);
% xtilde = xtilde(:);
% xtilde = xtilde';
%%
% a)
% x1(n)={...,-2,-1,0,1,2,...}
x1 = -2:2;
P1 = 5;
xp1 = x1'.*ones(1,P1);
xp1 = (xp1(:))';
stem(-2:2+P1*4,xp1);
xlabel('n');
ylabel('x_{1}(n)');
%%
% b)
% x2(n) = exp(0.1*n)(u(n)-u(n-20))
n2 = 0:20;
x2 = exp(0.1*n2).*(stepseq(0,min(n2),max(n2))-stepseq(20,min(n2),max(n2)));
P2 = 3;
xp2 = x2'.*ones(1,P2);
xp2 =(xp2(:))';
stem(xp2);
xlabel('n');
ylabel('x_{2}(n)');
%%
% c) x3(n) = sin(0.1*pi*n)(u(n)-u(n-10))
% 
n3 = 0:10;
x3 = sin(0.1*pi*n3).*(stepseq(0,min(n3),max(n3))-stepseq(10,min(n3),max(n3)));
P3 = 4;
xp3 = x3'.*ones(1,P3);
xp3 =(xp3(:))';
stem(xp3);
xlabel('n');
ylabel('x_{3}(n)');
%%
% d) x4(n) = [...,(1),2,3,...]+[...,(1),2,3,4,...] 0<=n<=24
%
x41 = 1:3;
x42 = 1:4;
xp41 = x41'.*ones(1,4);
xp42 = x42'.*ones(1,3);
xp4 = xp41(:)+xp42(:);
xp4 = xp4.*ones(1,2);
xp4 = (xp4(:))';
stem(xp4);
xlabel('n');
ylabel('x_{4}(n)');
%% P2.4
% x(n) = [2,4,-3,(1),-5,4,7]
n = -3:3;
x = [2,4,-3,1,-5,4,7];
%%
% a) x1(n) = 2x(n-3)+3x(n+4)-x(n)
[x11,n11] = sigshift(x,n,3);
[x12,n12] = sigshift(x,n,-4);
[x13,n13] = sigadd(2*x11,n11,3*x12,n12);
[x1,n1] = sigadd(x13,n13,-x,n);
stem(n1,x1);
xlabel('n');
ylabel('x_{1}(n)');
%%
% b) x2(n) = 4*x(n+4)+5x(n+5)+2x(n)
[x21,n21] = sigshift(x,n,-4);
[x22,n22] = sigshift(x,n,-5);
[x23,n23] = sigadd(4*x21,n21,5*x22,n22);
[x2,n2] = sigadd(x23,n23,2*x,n);
stem(n2,x2);
xlabel('n');
ylabel('x_{2}(n)');
%%
% c) x3(n) = x(n+3)x(n-2)+x(1-n)x(n+1)
[x31,n31] = sigshift(x,n,-3);
[x32,n32] = sigshift(x,n,2);
[x3a,n3a] = sigmult(x31,n31,x32,n32);
[x33,n33] = sigfold(x,n);
[x33,n33] = sigshift(x33,n33,-1);
[x34,n34] = sigshift(x,n,-1);
[x3b,n3b] = sigmult(x33,n33,x34,n34);
[x3,n3] = sigadd(x3a,n3a,x3b,n3b);
stem(n3,x3);
xlabel('n');
ylabel('x_{3}(n)');
%%
% d) x4(n)= 2exp(0.5*n)x(n) + cos(0.1*pi*n)x(n+2), -10<=n<=10;
nd = -10:10;
[x41,n41] = sigmult(2*exp(0.5*nd),nd,x,n);
[x42,n42] = sigshift(x,n,-2);
[x42,n42] = sigmult(x42,n42,cos(0.1*pi*nd),nd);
[x4,n4] = sigadd(x41,n41,x42,n42);
stem(n4,x4);
xlabel('n');
ylabel('x_{4}(n)');