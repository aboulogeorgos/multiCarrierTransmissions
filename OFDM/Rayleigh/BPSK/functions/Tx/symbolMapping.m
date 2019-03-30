function [ ipMod ] = symbolMapping( ipMod,nBitPerSym,nSym )

    ipMod = reshape(ipMod,nBitPerSym,nSym).'; % grouping into multiple symbols


end

