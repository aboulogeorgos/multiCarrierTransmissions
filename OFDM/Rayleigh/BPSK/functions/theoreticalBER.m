%%
% Copyright 2019, Alexandros-Apostolos A. Boulogeorgos, All rights reserved
% 
%%

%%
% Description: 
%   It evaluates the bit error rate (BER) by employing the theoretical framework.
% Input: 
%   EbN0dB: SNR in dB
% Output:
%   theoryBER: theoretical bit error rate (BER)
%%

function [ theoryBER ] = theoreticalBER( EbN0dB )
    EbN0Lin = 10.^(EbN0dB/10);
    theoryBER = 0.5.*(1-sqrt(EbN0Lin./(EbN0Lin+1)));
end

