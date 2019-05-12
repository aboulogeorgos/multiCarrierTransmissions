function [  ] = verification(x,m,omega,L,nTap)

    [ R ] = nakagami_m_RV( m,omega,L,nTap );
    [ f ] = PDF( m, omega, x );
    for ii=1:nTap
        figure
           histogram(R(:,ii),'Normalization','PDF')
           hold on
           plot(x,f)
           hold off
    end
end

