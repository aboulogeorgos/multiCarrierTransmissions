%%
% Copyright 2019, Alexandros-Apostolos A. Boulogeorgos, All rights reserved
% 
%%

function [ ipBit,ipMod,ipModMapped,xF,xt,xtPlusCP ] = Tx( nBitPerSym,nSym,nDSC,nFFT,nVSC,nCP )

    [ ipBit ] = bitGenerator( nBitPerSym,nSym );
    [ ipMod ] = BPSKmodulator( ipBit ); 
    [ ipModMapped ] = symbolMapping( ipMod,nBitPerSym,nSym );
    [ xF ] = subcarrierMapping( ipModMapped,nSym,nBitPerSym,nVSC );
    [ xt ] = frequency2timeSignal( xF,nDSC,nFFT );
    [ xtPlusCP ] = addCP( nCP,xt );


end

