%%
% Copyright 2019, Alexandros-Apostolos A. Boulogeorgos, All rights reserved
% 
%%

%% 
% Description: This function calculates the simmulation bit error rate (BER).
% Input:
%   ipBit:  transmitted bits
%   ipBitHat: estimated bits
% Output:
%   simBER: simulation BER
%%

function [ simBER ] = simulationBER( ipBit,ipBitHat )
    [ simBER ] = errorCounter( ipBit,ipBitHat )/length(ipBit);


end

