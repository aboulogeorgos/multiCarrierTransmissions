%%
% Copyright 2019, Alexandros-Apostolos A. Boulogeorgos, All rights reserved
% 
%%
%% 
% Description: This functions add cyclic prefix (CP) to the OFDM signal 
% Input:
%   nCP: CP length
%   xt:  signal in time domain w/o CP
% Output:
%   xt:  signal in time domain with CP
%%

function [ xt ] = addCP( nCP,xt )

    xt = [xt(:,[size(xt,2)-nCP+1:size(xt,2)]) xt];


end

