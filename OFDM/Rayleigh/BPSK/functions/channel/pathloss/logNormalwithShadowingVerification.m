%%
% Copyright 2019, Alexandros-Apostolos A. Boulogeorgos, All rights reserved
% 
%%

function [m,PLdBmeanTheory, v, varTheory] = logNormalwithShadowingVerification( fc, fcUnits, d0, d0Units, L, n, d, dUnits, sigma, Ns, N )
    
    PLdB = zeros(1, Ns);

for ii=1:1:Ns
    [ PLdB(ii) ] = logNormalwithShadowing( fc, fcUnits, d0, d0Units, L, n, d, dUnits, sigma );
end

    m = mean(PLdB);
    [ PLdBmeanTheory ] = logNormalPathlossModel( fc, fcUnits, d0, d0Units, L, n, d, dUnits );
    
    v = var(PLdB);
    varTheory = sigma^2;
    
    figure
    histogram(PLdB,N, 'normalization', 'pdf');

end

