%%
% Copyright 2019, Alexandros-Apostolos A. Boulogeorgos, All rights reserved
% 
%%

function [ ipMod ] = symbolMapping( ipMod,nBitPerSym,nSym )

    ipMod = reshape(ipMod,nBitPerSym,nSym).'; % grouping into multiple symbols


end

