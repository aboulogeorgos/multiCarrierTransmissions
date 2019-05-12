%%
% Copyright 2019, Alexandros-Apostolos A. Boulogeorgos, All rights
% reserved.
% 
%%
%%
% Description: This function returns the BPSK modulated symbols. In more
% detail, bit 0 is mapped to -1 and 1 to +1. 
% Input:
%  ipBit: transmitted bits vector
% Output:
%  ipMod: transmitted symbols vector
%%

function [ ipMod ] = BPSKmodulator( ipBit )
    ipMod = 2*ipBit-1; % BPSK modulation 0 --> -1, 1 --> +1
end

