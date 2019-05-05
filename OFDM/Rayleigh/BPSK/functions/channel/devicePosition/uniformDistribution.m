%%
% Copyright 2019, Alexandros-Apostolos A. Boulogeorgos, All rights reserved
% 
%%

function [ p ] = uniformDistribution( xmin, xmax, ymin, ymax, K )

    x = xmin+(xmax-xmin)*rand(K,1);
    y = ymin +(ymax-ymin)*rand(K,1);
    p =[x y];


end

