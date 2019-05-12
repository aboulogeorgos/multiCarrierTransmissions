%%
% Copyright 2019, Alexandros-Apostolos A. Boulogeorgos, All rights reserved
% 
%%

function [ lambda,lambdaUnits ] = frequency2wavelenth( f, units )
    
    c = physconst('LightSpeed');
    
    if strcmp( units,'Hz' )
        f = f;
    elseif strcmp( units,'kHz' )
        f = f * 10^(3);
    elseif strcmp( units,'MHz' )
        f = f * 10^(6);
    elseif strcmp( units,'GHz' )
        f = f * 10^(9);
    elseif strcmp( units,'THz' )
        f = f * 10^(12);
    else
        error('Wrong frequency units');
    end
    
    lambda = c./f;
    lambdaUnits = 'm';

end

