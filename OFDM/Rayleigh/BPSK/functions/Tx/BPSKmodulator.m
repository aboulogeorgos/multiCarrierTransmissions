function [ ipMod ] = BPSKmodulator( ipBit )
    ipMod = 2*ipBit-1; % BPSK modulation 0 --> -1, 1 --> +1
end

