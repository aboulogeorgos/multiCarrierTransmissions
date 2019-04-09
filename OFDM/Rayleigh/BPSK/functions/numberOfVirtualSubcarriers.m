%%
% Copyright 2019, Alexandros-Apostolos A. Boulogeorgos, All rights reserved
% 
%%
%%
% Description: This function returns the number of virtual subcarriers. 
%%

function [ nVSC ] = numberOfVirtualSubcarriers( nDSC, nFFT )
    nVSC = nFFT - nDSC;
end

