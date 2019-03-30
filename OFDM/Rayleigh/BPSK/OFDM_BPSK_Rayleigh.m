clear all
close all
clc

cd 'examples';
    example1;
cd ..

cd 'functions'
    printSimulationParameters; 
    [ EsN0dB ] = SNRperBit2SNRperSymbol( EbN0dB,nDSC,nFFT );
    [ nErr ] = zeros(size(EsN0dB));

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
         [ nErr(ii) ] = errorCounter( ipBit,ipBitHat );
    end

cd .. 

simBer = nErr/(nSym*nBitPerSym);
EbN0Lin = 10.^(EbN0dB/10);
theoryBer = 0.5.*(1-sqrt(EbN0Lin./(EbN0Lin+1)));

figure
semilogy(EbN0dB,theoryBer,'bs-','LineWidth',2);
hold on
semilogy(EbN0dB,simBer,'mx-','LineWidth',2);
axis([0 35 10^-5 1])
grid on
legend('Rayleigh-Theory', 'Rayleigh-Simulation');
xlabel('Eb/No, dB')
ylabel('Bit Error Rate')
title('BER for BPSK using OFDM in a 10-tap Rayleigh channel')


