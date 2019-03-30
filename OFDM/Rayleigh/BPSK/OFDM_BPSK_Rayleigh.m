%%
% Copyright 2019, Alexandros-Apostolos A. Boulogeorgos, All rights reserved
% 
%%

clear 
close all
clc

cd 'examples';
    example1;
cd ..

cd 'functions'
    printSimulationParameters; 
    [ EsN0dB ] = SNRperBit2SNRperSymbol( EbN0dB,nDSC,nFFT );
    [ simBER ] = zeros(size(EsN0dB));

    for ii = 1:length(EbN0dB)
        cd 'Tx'
            [ ipBit,ipMod,ipModMapped,xF,xt,xtPlusCP ] = Tx( nBitPerSym,nSym,nDSC,nFFT,nVSC );
         cd ..
         cd 'channel'
            cd (channelType)
                [ht,hF] = Rayleigh( nTap,nSym );
            cd ..
         cd ..
         cd 'Rx'
            [ rt,yOFDMsymbol,yt,yFbeforeEqualizer,yF,yMod,ipModHat,ipBitHat ] = ...
                     Rx( ht,hF,xtPlusCP,nSym,nBitPerSym,nDSC,nFFT,nTap,EsN0dB(ii));
         cd ..
         [ simBER(ii) ] = simulationBER( ipBit,ipBitHat );
    end
    
    [ theoryBER ] = theoreticalBER( EbN0dB );
    figure
    BERfigure( EbN0dB,simBER,theoryBER ); 
cd .. 

