%%
% Copyright 2019, Alexandros-Apostolos A. Boulogeorgos, All rights reserved
% 
%%

function [ PLdB ] = logNormalPathlossModel( fc, fcUnits, d0, d0Units, L, n, d, dUnits )

    [ FSL, FSPdB ] = freeSpaceLoss( 0, 0, fc, fcUnits, d0, d0Units, L);
    
    if strcmp( dUnits,'m' )
        d = d;
    elseif strcmp( dUnits,'km' )
        d = d*10^(3);
    elseif strcmp( dUnits,'dm' )
        d = 0.1 * d;
    elseif strcmp( dUnits,'cm' )
        d = 0.01 * d;
    elseif strcmp( dUnits,'mm' )
        d = 0.001 * d;
    elseif strcmp( dUnits,'um' )
        d = d * 10^(-6);
    elseif strcmp( dUnits,'nm' )
        d = d * 10^(-9);
    else 
        error('Wrong distance units');
    end
    
    if strcmp( d0Units,'m' )
        d0 = d0;
    elseif strcmp( dU0nits,'km' )
        d0 = d0*10^(3);
    elseif strcmp( d0Units,'dm' )
        d0 = 0.1 * d0;
    elseif strcmp( d0Units,'cm' )
        d0 = 0.01 * d0;
    elseif strcmp( d0Units,'mm' )
        d0 = 0.001 * d0;
    elseif strcmp( d0Units,'um' )
        d0 = d0 * 10^(-6);
    elseif strcmp( d0Units,'nm' )
        d0 = d0 * 10^(-9);
    else 
        error('Wrong distance units');
    end
    
    PLdB = FSPdB + 10*n*log10(d/d0);
end

