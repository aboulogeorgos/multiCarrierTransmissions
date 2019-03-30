function [ yF ] = time2frequencyDomain( yt,nDSC,nFFT )
% converting to frequency domain
   yF = (sqrt(nDSC)/nFFT)*fftshift(fft(yt.')).'; 


end

