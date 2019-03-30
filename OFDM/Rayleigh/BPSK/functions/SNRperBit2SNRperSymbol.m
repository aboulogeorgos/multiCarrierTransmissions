function [ EsN0dB ] = SNRperBit2SNRperSymbol( EbN0dB,nDSC,nFFT )

EsN0dB      = EbN0dB + 10*log10(nDSC/nFFT) + 10*log10(64/80); % converting to symbol to noise ratio



end

