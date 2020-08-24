clc;
clear;
%% Exemplo 2.9
% y(n)-y(n-1)+0.9*y(n-2) = x(n)
% a) Calcular a resposta ao impulso h(n) em n=-20,...,100.
% b) Calcular a resposta ao degrau s(n) em n=-20,...,100.
% c) O sistema especificado em h(n) � est�vel?
% Para calcularmos os valores de h(n) e s(n) iremos utilizar as fun��es do
% respectivamente impz e filter do matlab
% a)
b = 1;
a = [1 -1 0.9];
n = -20:120;
h = impz(b,a,n);
subplot(211)
stem(n,h);
title("Resposta ao impulso");
xlabel("n");
ylabel("h(n)");
% b)
x = stepseq(0,min(n),max(n));
y = filter(b,a,x);
subplot(212)
stem(n,y);
title("Resposta ao degrau");
xlabel("n");
ylabel("y(n)");
% c) Para determinar se eu sistema � est�vel, precisamos determinar h(n)
% para todo n. Como n�o aprendemos um m�todo aqui neste livro de como
% resolver equa��es diferenciais, nos podemos plotar a resposta ao impulso
% e verificar que h(n) tende a zero para valores maiores que 120. Logo,
% vamos determinar se o sistema � est�vel ou n�o verificando a soma do
% valor absoluto das componentes de h(n)
sum(abs(h));
% E disto, verificamos que o sistema � est�vel.
% Outra forma � verificar as ra�zes utilizando a fun��o roots.
z = roots(a);
magz = abs(z)
% Como a magnitude das ra�zes foi menor que 1, ent�o o sistema � est�vel