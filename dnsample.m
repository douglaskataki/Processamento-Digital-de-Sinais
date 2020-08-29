function [y,m] = dnsample(x,n,M)
% Realiza o downsampling de um fator M de uma sequ�ncia
% ------------------------------------
% [y,m] = dnsample(x,n,M)
% 
if length(n) < M
    error('N�o � poss�vel fazer o downsampling nessa sequ�ncia.');
end

m = round(min(n)/M)+1:round(max(n)/M)-1;
y = x(mod(min(n),M)+1:M:length(n)-mod(max(n),M));
end