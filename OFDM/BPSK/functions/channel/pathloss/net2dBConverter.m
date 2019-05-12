%%
% Copyright 2019, Alexandros-Apostolos A. Boulogeorgos, All rights reserved
% 
%%
%%
% Description: This function convert a net number to dB
% Input:
%   net: net number
% Output:
%    dB: number in dB 
%%

function [ dB ] = net2dBConverter( net )
    dB = 10*log10(net);
end

