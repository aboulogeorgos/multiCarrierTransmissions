function [ L, KF, KL,dataSubCar,dataSubCarUp,sumFBMCSpec, sumOFDMSpec,numBits,inpData,rxBits,txSigAll,symBuf  ] = initialization( numFFT,numGuards, K,bitsPerSubCarrier,numSymbols )

% Transmit-end processing
%   Initialize arrays
L = numFFT-2*numGuards;  % Number of complex symbols per OFDM symbol
KF = K*numFFT;
KL = K*L;
dataSubCar = zeros(L, 1);
dataSubCarUp = zeros(KL, 1);

sumFBMCSpec = zeros(KF*2, 1);
sumOFDMSpec = zeros(numFFT*2, 1);

numBits = bitsPerSubCarrier*L/2;    % account for oversampling by 2
inpData = zeros(numBits, numSymbols);
rxBits = zeros(numBits, numSymbols);
txSigAll = complex(zeros(KF, numSymbols));
symBuf = complex(zeros(2*KF, 1));


end

