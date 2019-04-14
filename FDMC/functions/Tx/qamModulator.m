function [ modData ] = qamModulator( ipBits,bitsPerSubCarrier )

modData = qammod(ipBits, 2^bitsPerSubCarrier, ...
        'InputType', 'Bit', 'UnitAveragePower', true);

end

