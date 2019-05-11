%%
% Copyright 2019, Alexandros-Apostolos A. Boulogeorgos, All rights reserved
% 
%%

clear 
close all
clc


resultsFilename='example1_no_parallel.mat';

tic

cd 'examples';
    example1;
cd ..

cd 'functions'
    printSimulationParameters; 
    [ EsN0dB ] = SNRperBit2SNRperSymbol( EbN0dB,nDSC,nFFT,nCP );
    [ simBER ] = zeros(size(EsN0dB));

    f = waitbar(0,'0','Name','Please wait...',...
    'CreateCancelBtn','setappdata(gcbf,''canceling'',1)');

    setappdata(f,'canceling',0);
   % myPool = parpool(4);
    
    for ii = 1:length(EbN0dB)
        cd 'Tx'

            [ ipBit,ipMod,ipModMapped,xF,xt,xtPlusCP ] = Tx( nBitPerSym,  ... 
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
         if getappdata(f,'canceling')
            break
         end
        % Update waitbar and message
        waitbar(ii/length(EbN0dB),f,sprintf('%f %%',ii/length(EbN0dB)*100))
    end
    delete(f)
    [ theoryBER ] = theoreticalBER( EbN0dB );
    figure
    BERfigure( EbN0dB,simBER,theoryBER ); 
cd .. 

cd 'results'
save(resultsFilename);

cd ..

cd 'functions'
    printSimulationResults
cd ..

toc 


