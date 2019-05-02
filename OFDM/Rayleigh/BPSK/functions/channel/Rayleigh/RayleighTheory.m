%%
% Copyright 2019, Alexandros-Apostolos A. Boulogeorgos, All rights reserved
% 
%%

%%
% Desciption: This function returns the theoretical PDF/CDF value of the
% Rayleigh distribution.
% Input:
%   x: the independent variable of the PDF/CDF
%   B: the Rayleigh distribution parameter
%   type: PDF or CDF
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

