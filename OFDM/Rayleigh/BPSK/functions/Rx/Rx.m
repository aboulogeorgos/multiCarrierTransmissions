%%
% Copyright 2019, Alexandros-Apostolos A. Boulogeorgos, All rights reserved
% 
%%

function [ rt,yOFDMsymbol,yt,yFbeforeEqualizer,yF,yMod,ipModHat,ipBitHat ] = Rx( ht,hF,xtPlusCP,nSym,nBitPerSym,nDSC,nFFT,nVSC,nTap,EsN0dB )

    [ rt ] = receivedSignal( ht,xtPlusCP,nSym,nTap,EsN0dB);
    [ yOFDMsymbol ] = receivedSignal2OFDMsymbol( rt,nTap,nSym);
    [ yt ] = removeCP( yOFDMsymbol );
    [ yFbeforeEqualizer ] = time2frequencyDomain( yt,nDSC,nFFT );
    [ yF ] = equalizer( hF,yFbeforeEqualizer );
    [ yMod ] = removeVirtualSubcarriers( nBitPerSym,nVSC,yF );
    [ ipModHat ] = BPSKdemodulator( yMod );
    [ ipBitHat ] = BPSKdetector( ipModHat,nBitPerSym,nSym );

end

