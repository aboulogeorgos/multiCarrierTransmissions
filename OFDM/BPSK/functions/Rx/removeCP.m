%%
% Copyright 2019, Alexandros-Apostolos A. Boulogeorgos, All rights reserved
% 
%%

function [ yt ] = removeCP( yt )
    yt = yt(:,[17:80]); % removing cyclic prefix
end

