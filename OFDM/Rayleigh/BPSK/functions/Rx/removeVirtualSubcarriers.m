function [ yMod ] = removeVirtualSubcarriers( nBitPerSym,yF )

   yMod = yF(:,[6+[1:nBitPerSym/2] 7+[nBitPerSym/2+1:nBitPerSym] ]); 



end

