%%
% Copyright 2019, Alexandros-Apostolos A. Boulogeorgos, All rights reserved
% 
%%

function [ yF ] = time2frequencyDomain( yt,nDSC,nFFT )
% converting to frequency domain
   yF = (sqrt(nDSC)/nFFT)*fftshift(fft(yt.')).'; 


end

