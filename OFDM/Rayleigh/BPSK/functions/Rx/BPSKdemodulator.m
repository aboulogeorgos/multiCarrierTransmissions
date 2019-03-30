%%
% Copyright 2019, Alexandros-Apostolos A. Boulogeorgos, All rights reserved
% 
%%

function [ ipModHat ] = BPSKdemodulator( yMod )

% BPSK demodulation
   % +ve value --> 1, -ve value --> -1
   ipModHat = 2*floor(real(yMod/2)) + 1;
   ipModHat(find(ipModHat>1)) = +1;
   ipModHat(find(ipModHat<-1)) = -1;


end

