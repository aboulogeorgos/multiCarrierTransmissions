%%
% Copyright 2019, Alexandros-Apostolos A. Boulogeorgos. 
% All rights reserved.
% 
%%
%%
% Description: This function transform the signal from the frequency to the
% time domain by employing a simple inverse fast Fourrier tranformation.
%%

function [ xt ] = frequency2timeSignal( xF,nDSC,nFFT )
    % Taking FFT, the term (nFFT/sqrt(nDSC)) is for normalizing the power 
    % of transmit symbol to 1 
   xt = (nFFT/sqrt(nDSC))*ifft(fftshift(xF.')).';
end

