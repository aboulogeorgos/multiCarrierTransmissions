function [ yt ] = receivedSignal2OFDMsymbol( yt,nTap,nSym)

yt = reshape(yt.',80+nTap-1,nSym).'; % formatting the received vector into symbols


end

