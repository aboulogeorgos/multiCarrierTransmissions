function [ yF ] = equalizer( hF,yF )

    % equalization by the known channel frequency response
   yF = yF./hF;


end

