%%
% Copyright 2019, Alexandros-Apostolos A. Boulogeorgos, All rights reserved
% 
%%

%%
% This function generates a bit stream.
%%

function [ ipBit ] = bitGenerator( nBitPerSym,nSym )


    ipBit = rand(1,nBitPerSym*nSym) > 0.5; % random 1's and 0's


end

