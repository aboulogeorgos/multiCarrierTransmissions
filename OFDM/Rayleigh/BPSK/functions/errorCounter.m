%%
% Copyright 2019, Alexandros-Apostolos A. Boulogeorgos, All rights reserved
% 
%%

function [ nErr ] = errorCounter( ipBit,ipBitHat )

    nErr = size(find(ipBitHat - ipBit),2);

end

