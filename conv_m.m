function [y,ny] = conv_m(x,nx,h,nh)
% Convolu��o entre dois sinais
% ------------------------------------
% [y,ny] = conv_m(x1,nx,h,nh)
% [y,ny] = sinal convolu�do
% [x,nx] = primeiro sinal
% [h,nh] = segundo sinal

nyb = nx(1)+nh(1);
nye = nx(length(x))+nh(length(h));
ny = nyb:nye;
y = conv(x,h);
end