function [y,n] = sigmult(x1,n1,x2,n2)
%  y(n) = x1(n)*x2(n)
% ------------------------------------
% [y,n] = sigadd(x1,n1,x2,n2)
% y = produto da sequ�ncia em n, o qual inclui n1 e n2
% x1 = primeira sequ�ncia em n1
% x2 = segunda sequ�ncia em n2
% n2 pode ser diferente de n1
n = min(min(n1),min(n2)):max(max(n1),max(n2));
y1 = zeros(1,length(n));
y2 = y1;
y1(find((n>=min(n1))&(n<=max(n1))==1))=x1;
y2(find((n>=min(n2))&(n<=max(n2))==1))=x2;
y = y1.*y2;
end