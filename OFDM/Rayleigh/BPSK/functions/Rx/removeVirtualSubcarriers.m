%%
% Copyright 2019, Alexandros-Apostolos A. Boulogeorgos, All rights reserved
% 
%%

function [ yMod ] = removeVirtualSubcarriers( nBitPerSym,nVSC,yF )

   yMod = yF(:,[nVSC/2+[1:nBitPerSym/2] nVSC/2+1+[nBitPerSym/2+1:nBitPerSym] ]); 



end

