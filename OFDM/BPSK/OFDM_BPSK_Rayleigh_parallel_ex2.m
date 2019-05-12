%%
% Copyright 2019, Alexandros-Apostolos A. Boulogeorgos, All rights reserved
% 
%%

clear 
close all
clc

tic

resultsFilename='example2.mat';

cd 'examples';
    example2;
cd ..

cd 'functions'
    printSimulationParameters; 
    [ EsN0dB ] = SNRperBit2SNRperSymbol( EbN0dB,nDSC,nFFT,nCP );
    [ simBER ] = zeros(size(EsN0dB));

    myPool = parpool(4);
    
    parfor ii = 1:length(EbN0dB)
        cd 'Tx'
            [ ipBit,ipMod,ipModMapped,xF,xt,xtPlusCP ] = Tx( nBitPerSym,... 
                                                nSym,nDSC,nFFT,nVSC,nCP );
         cd ..
         cd 'channel'
            cd (channelType)
                [ht,hF] = Rayleigh( nTap,nSym,nFFT );
            cd ..
         cd ..
         cd 'Rx'
            [ rt,yOFDMsymbol,yt,yFbeforeEqualizer,yF,yMod,ipModHat,ipBitHat ] = ...
                     Rx( ht,hF,xtPlusCP,nSym,nBitPerSym,nDSC,nFFT,nVSC,... 
                     nTap,EsN0dB(ii));
         cd ..
         [ simBER(ii) ] = simulationBER( ipBit,ipBitHat );
    end

    [ theoryBER ] = theoreticalBER( EbN0dB );
    figure
    BERfigure( EbN0dB,simBER,theoryBER ); 
cd .. 

cd 'results'
save(resultsFilename);

cd ..

delete(myPool);
delete(gcp('nocreate')); 

toc