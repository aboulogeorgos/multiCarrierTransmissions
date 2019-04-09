simulationTitle = 'BER of OFDM in Rayleigh enviroment using BPSK modulation';
%%
% Copyright 2019, Alexandros-Apostolos A. Boulogeorgos, All rights reserved
% 
%%

%%
% Description: It contains Example 2 simulation parameters.
%%

modulationType = 'BSPK';

nFFT        = 64;   % fft size
nDSC        = 52;   % number of data subcarriers
nBitPerSym  = 52;   % number of bits per OFDM symbol (same as the number of subcarriers for BPSK)
nSym        = 10^5; % number of symbols
nCP         = 16;   % CP

cd ..

cd 'functions'
    [ nVSC ] = numberOfVirtualSubcarriers( nDSC, nFFT );
cd ..

cd 'examples'

EbN0dB      = [0:2:40]; % bit to noise ratio

% channel
channelType = 'Rayleigh';
% number of Taps
nTap =10;

CSItype = 'perfect';