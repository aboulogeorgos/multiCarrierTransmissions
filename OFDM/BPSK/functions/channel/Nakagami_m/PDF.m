%%
% Copyright 2019, Alexandros-Apostolos A. Boulogeorgos, All rights reserved
% 
%%

%% Description
% This function returns the probability density function (PDF) of the
% Nakagami-m distribution.
%%

function [ f ] = PDF( m, Omega, x )

f = zeros(size(x));
for ii = 1:length(x)
    f(ii)=((2*m^m)/(gamma(m)*Omega^m))*x(ii)^(2*m-1)*exp(-((m/Omega)*x(ii)^2));
 end

end

