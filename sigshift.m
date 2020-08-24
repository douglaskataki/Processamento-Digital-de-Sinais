function [y,n] = sigshift(x,m,k)
% implementa y(n) = x(n-k)
% ------------------------------------
% [y,n] = sigshift(x,m,k)
n = m+k;
y = x;
end