%%
% Copyright 2019, Alexandros-Apostolos A. Boulogeorgos, All rights reserved
% 
%%

function [ net ] = dB2netConvertor( dB )
    net = 10.^(dB/10);
end

