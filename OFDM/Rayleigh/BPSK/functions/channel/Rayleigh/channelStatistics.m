%%
% Copyright 2019, Alexandros-Apostolos A. Boulogeorgos, All rights reserved
% 
%%

function [ m,v ] = channelStatistics( ht,hF )
    mt = mean(abs(ht));
    vt = var(abs(ht));
    mF = mean(abs(hF));
    vF = var(abs(hF));
end

