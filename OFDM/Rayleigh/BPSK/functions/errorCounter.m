function [ nErr ] = errorCounter( ipBit,ipBitHat )

    nErr = size(find(ipBitHat - ipBit),2);

end

