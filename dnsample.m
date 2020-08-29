function [y,m] = dnsample(x,n,M)
% Realiza o downsampling de um fator M de uma sequência
% ------------------------------------
% [y,m] = dnsample(x,n,M)
% 
if length(n) < M
    error('Não é possível fazer o downsampling nessa sequência.');
end

m = round(min(n)/M)+1:round(max(n)/M)-1;
y = x(mod(min(n),M)+1:M:length(n)-mod(max(n),M));
end