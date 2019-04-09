%%
% Copyright 2019, Alexandros-Apostolos A. Boulogeorgos, All rights reserved
% 
%%

%% 
% Description: This function calculates the simmulation bit error rate (BER).
%%

function [ simBER ] = simulationBER( ipBit,ipBitHat )
    [ simBER ] = errorCounter( ipBit,ipBitHat )/length(ipBit);


end

