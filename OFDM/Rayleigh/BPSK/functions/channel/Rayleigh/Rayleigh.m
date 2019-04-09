%%
% Copyright 2019, Alexandros-Apostolos A. Boulogeorgos, All rights reserved
% 
%%

function [ ht,hF] = Rayleigh( nTap,nSym, Nfft )

% multipath channel
   ht = 1/sqrt(2)*1/sqrt(nTap)*(randn(nSym,nTap) + 1i*randn(nSym,nTap));
% computing and storing the frequency response of the channel, for use at recevier
   hF = fftshift(fft(ht,Nfft,2));

end

