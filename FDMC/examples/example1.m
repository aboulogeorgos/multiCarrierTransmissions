s = rng(211);            % Set RNG state for repeatability
numFFT = 1024;           % Number of FFT points
numGuards = 212;         % Guard bands on both sides
K = 4;                   % Overlapping symbols, one of 2, 3, or 4
numSymbols = 100;        % Simulation length in symbols
bitsPerSubCarrier = 2;   % 2: 4QAM, 4: 16QAM, 6: 64QAM, 8: 256QAM
snrdB = 12;              % SNR in dB
