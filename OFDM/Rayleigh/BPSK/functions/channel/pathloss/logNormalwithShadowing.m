function [ PLdB ] = logNormalwithShadowing( fc, fcUnits, d0, d0Units, L, n, d, dUnits, sigma )

    PLdB = logNormalPathlossModel( fc, fcUnits, d0, d0Units, L, n, d, dUnits )+ sigma*randn(size(d));

end

