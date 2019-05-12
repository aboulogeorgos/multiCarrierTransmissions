%%
% Copyright 2019, Alexandros-Apostolos A. Boulogeorgos, All rights reserved
% 
%%

function [ PL, PLdB ] = freeSpaceLoss( Gt, Gr, fc, fcUnits, d, dUnits, L)
% Gt: dB
% Gr: dB
% fc: carrier frequency
% fcUnits: carrier frequncy units
% d: distance
% dUnits: units of d
% L: extra losses

[ Gt ] = dB2netConvertor( Gt );
[ Gr ] = dB2netConvertor( Gr );
[ L ] = dB2netConvertor( L );

[ lambda,lambdaUnits ] = frequency2wavelenth( fc, fcUnits );

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

PL = Gt .* Gr .* (lambda.^2)/( ((4*pi)^2) .* (d.^2) .* L );
PLdB = -10*log10(PL);
end

