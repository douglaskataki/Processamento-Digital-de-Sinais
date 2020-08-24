clc;
clear;
%% Exemplo 2.7
x = [3,11,7,0,-1,4,2];
h = [2,3,0,-5,2,1];
nx = -3:3;
nh = -1:4;
[y1,n1] = conv_m(x,nx,h,nh);
stem(n1,y1)
xlabel('n');
ylabel('y(n)');