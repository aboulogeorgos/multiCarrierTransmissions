%%
% Copyright 2019, Alexandros-Apostolos A. Boulogeorgos, All rights reserved
% 
%%
%% 
% Description: This functions add cyclic prefix (CP) to the OFDM signal 
%%

function [ xt ] = addCP( nCP,xt )

    xt = [xt(:,[size(xt,2)-nCP+1:size(xt,2)]) xt];


end

