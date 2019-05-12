function [ phi ] = uniform_RV( L,nTap )

 pd = makedist('Uniform','lower',0,'upper',2*pi);
 phi = random(pd,L,nTap);


end

