function [ ht, hF ] = channelCoefficient( m,omega,L,nTap,Nfft )

[ R ] = nakagami_m_RV( m,omega,L,nTap );
[ phi ] = uniform_RV( L,nTap );

%varR = omega * (1 - (1/m) * (gamma(m+0.5)/gamma(m))^2 );

ht = R .* exp(1i*phi);

% computing and storing the frequency response of the channel, for use at recevier
hF = fftshift(fft(ht,Nfft,2));


end

