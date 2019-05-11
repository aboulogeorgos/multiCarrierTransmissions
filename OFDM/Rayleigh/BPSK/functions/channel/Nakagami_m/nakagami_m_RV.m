function [ R ] = nakagami_m_RV( m,omega,L,nTap )

  pd = makedist('Nakagami','mu',m,'omega',omega);
  R = random(pd,L,nTap);


end

