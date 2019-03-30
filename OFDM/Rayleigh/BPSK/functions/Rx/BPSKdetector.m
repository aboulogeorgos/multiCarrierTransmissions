function [ ipBitHat ] = BPSKdetector( ipModHat,nBitPerSym,nSym )

    ipBitHat = (ipModHat+1)/2;
    ipBitHat = reshape(ipBitHat.',nBitPerSym*nSym,1).';


end

