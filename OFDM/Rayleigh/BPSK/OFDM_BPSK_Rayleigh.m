%%
% Copyright 2019, Alexandros-Apostolos A. Boulogeorgos, All rights reserved
% 
%%

clear all
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

cd .. 

figure
semilogy(EbN0dB,theoryBER,'bs-','LineWidth',2);
hold on
semilogy(EbN0dB,simBER,'mx-','LineWidth',2);
axis([0 35 10^-5 1])
grid on
legend('Rayleigh-Theory', 'Rayleigh-Simulation');
xlabel('Eb/No, dB')
ylabel('Bit Error Rate')
title('BER for BPSK using OFDM in a 10-tap Rayleigh channel')


