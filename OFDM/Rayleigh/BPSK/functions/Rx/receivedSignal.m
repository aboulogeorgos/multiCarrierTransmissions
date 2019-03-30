%%
% Copyright 2019, Alexandros-Apostolos A. Boulogeorgos, All rights reserved
% 
%%

function [ yt ] = receivedSignal( ht,xtPlusCP,nSym,nTap,EsN0dB )

% convolution of each symbol with the random channel
   for jj = 1:nSym
      xht(jj,:) = conv(ht(jj,:),xtPlusCP(jj,:));
   end
   xt = xht;

   % Concatenating multiple symbols to form a long vector
   xt = reshape(xt.',1,nSym*(80+nTap-1));

   % Gaussian noise of unit variance, 0 mean
   nt = 1/sqrt(2)*[randn(1,nSym*(80+nTap-1)) + 1i*randn(1,nSym*(80+nTap-1))];

   % Adding noise, the term sqrt(80/64) is to account for the wasted energy due to cyclic prefix
   yt = sqrt(80/64)*xt + 10^(-EsN0dB/20)*nt;

end

