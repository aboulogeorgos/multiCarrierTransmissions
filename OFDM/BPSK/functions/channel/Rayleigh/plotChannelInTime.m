function [  ] = plotChannelInTime( nTap,nSym, Nfft,kTap )

    [ ht,hF] = Rayleigh( nTap,nSym, Nfft );
    timeInstanceIndex = [0:length(ht(:,kTap))-1];
    figure
    subplot(2,1,1)
    plot(timeInstanceIndex,(abs(ht(:,kTap)).^2));
    xlabel('time instance index')
    ylabel('Channel gain');
    subplot(2,1,2)
    plot(timeInstanceIndex,10*log10(abs(ht(:,kTap)).^2));
    xlabel('time instance index')
    ylabel('Channel gain (dB)');
end

