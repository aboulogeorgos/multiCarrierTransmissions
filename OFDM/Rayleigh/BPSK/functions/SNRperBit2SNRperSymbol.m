%%
% Copyright 2019, Alexandros-Apostolos A. Boulogeorgos, All rights reserved
% 
%%

%%
% Description: It convernts the SNR per bit to the SNR per OFDM symbol
% Input:
%   EbN0dB: SNR per bit
%     nDSC: number of active subcarriers
%     nFFT: length of FFT
%     nCP:  length of CP
%%

function [ EsN0dB ] = SNRperBit2SNRperSymbol( EbN0dB,nDSC,nFFT,nCP )

    EsN0dB      = EbN0dB + 10*log10(nDSC/nFFT) + 10*log10(nFFT/(nFFT+nCP)); % converting to symbol to noise ratio

end

