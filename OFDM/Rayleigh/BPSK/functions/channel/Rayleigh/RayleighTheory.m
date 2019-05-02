%%
% Copyright 2019, Alexandros-Apostolos A. Boulogeorgos, All rights reserved
% 
%%

function [ p ] = RayleighTheory( x,B,type )

if strcmp( type,'PDF' )
    p =raylpdf(x,B);
elseif strcmp( type,'CDF' )
    p =raylcdf(x,B);
else
    error('The type is not correct')
end

end

