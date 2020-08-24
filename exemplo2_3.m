clc;
clear;
%% Exemplo 2.3
% x(n) = exp(-0.1+j*0.3)*n -10<=n<=10
n = -10:10;
x = exp((-0.1+1i*0.3)*n);
subplot(221)
stem(n,abs(x));
title("magnitude");
xlabel("n");
subplot(222)
stem(n,(180/pi)*angle(x));
title("fase");
xlabel("n");
subplot(223)
stem(n,real(x));
title("parte real");
xlabel("n");
subplot(224)
stem(n,imag(x));
title("parte imaginária");
xlabel("n");