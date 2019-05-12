%%
% Copyright 2019, Alexandros-Apostolos A. Boulogeorgos, All rights reserved
% 
%%

function [ xF ] = subcarrierMapping( ipMod,nSym,nBitPerSym, nVSC )
   % Assigning modulated symbols to subcarriers from [-26 to -1, +1 to +26]
   xF = [zeros(nSym,nVSC/2) ipMod(:,[1:nBitPerSym/2]) zeros(nSym,1) ipMod(:,[nBitPerSym/2+1:nBitPerSym]) zeros(nSym,(nVSC/2)-1)] ;


end

