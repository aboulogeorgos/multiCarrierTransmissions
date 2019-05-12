%%
% Copyright 2019, Alexandros-Apostolos A. Boulogeorgos. 
% All rights reserved.
% 
%%
%%
% Description: This function returns the ammount of errors.
% Inputs:
%   ipBit:  transmitted Bits
%   ipBitHat: estimated Bits
% Outputs:
%   nErr: number of estimation errors
%%

function [ nErr ] = errorCounter( ipBit,ipBitHat )

    nErr = size(find(ipBitHat - ipBit),2);

end

