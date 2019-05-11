m = 1;
omega = 1;
L = 10^6;
nTap = 10;
Nfft = 128;
x = [0:0.01:3];
cd ..
[ ht, hF ] = channelCoefficient( m,omega,L,nTap,Nfft );

[ f ] = PDF( m, omega, x );
    for ii=1:nTap
        figure
           histogram(abs(ht(:,ii)),'Normalization','PDF')
           hold on
           plot(x,f)
           hold off
    end