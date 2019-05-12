%%
% Copyright 2019, Alexandros-Apostolos A. Boulogeorgos, All rights reserved
% 
%%
%%
% Description: 
%%
function [ yF ] = equalizer( hF,yF )

    % equalization by the known channel frequency response
   yF = yF./hF;


end

