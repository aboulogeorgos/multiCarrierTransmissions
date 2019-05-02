%%
% Copyright 2019, Alexandros-Apostolos A. Boulogeorgos, All rights reserved
% 
%%

function [ dB ] = net2dBConverter( net )
    dB = 10*log10(net);
end

